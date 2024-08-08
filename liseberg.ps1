$attList = @(
    3,
    6,
    15,
    16,
    18,
    28,
    31,
    32,
    33,
    36,
    39,
    42,
    45,
    47,
    55,
    56,
    57,
    61,
    64,
    69,
    71,
    72,
    73,
    74,
    75,
    76,
    77,
    78,
    79,
    80,
    83,
    87,
    88,
    89,
    92,
    96,
    103,
    104,
    105,
    107
)

foreach ($attNum in $attList) {
    try {
        $idResult = Invoke-RestMethod -Method Get -Uri "https://www.liseberg.se/sv/api/queue/$attNum"
	$openCheck = Invoke-RestMethod -Method Get -Uri "https://www.liseberg.se/sv/api/opening-hours/"
    }
    catch {
        Add-Content -Path "/home/villetf/sapmon.log" -Value "[ERROR] $(get-date -Format "yyyy-MM-dd HH:mm:ss"): Failade med anrop på ID ${attNum}:"
        Add-Content -Path "/home/villetf/sapmon.log" -Value "$_"
        Add-Content -Path "/home/villetf/sapmon.log" -Value ""
        Add-Content -Path "/home/villetf/sapmon.log" -Value ""
    }
    [int]$hour = Get-Date -Format "HH"
    [int]$openingTime = $openCheck.from
    [int]$closingTime = $openCheck.to
    
    if ($idResult.status -match "Kö: ") {
	if (($openCheck.closed -eq $false) -and ($hour -ge $openingTime) -and ($hour -le $closingTime)) {
            [int]$idResultId = $idResult.id
            [int]$idResultTime = $idResult.status -replace "Kö: \d{1,3}-", "" -replace " min.*$", ""
	    if ($idResult.status -match "stänger") {
                [int]$idResultClose = $idResult.status -replace "^.*stänger\s{1,2}", "" -replace ":\d{2}$", ""
	    } else {
	        $idResultClose = 0
	    }
	} else {
	    [int]$idResultId = $idResult.id
	    $idResultTime = 0
	    $idResultClose = 0
	}
    } else {
        [int]$idResultId = $idResult.id
        $idResultTime = 0
        $idResultClose = 0
    }
    try {
        Invoke-Expression -Command "mysql --skip-ssl -u villetf -pkevsuger liseberg -h 192.168.1.13 -e 'INSERT INTO attraction_metrics (a_id, time, queue_time, closing_time) VALUES ($attNum, DATE_FORMAT(NOW(), ''%Y-%m-%d %H:%i:00''), $idResultTime, $idResultClose);UPDATE attractions SET status = ''$($idResult.status)'' WHERE a_id = $attNum'"
    }
    catch {
        Add-Content -Path "/home/villetf/sapmon.log" -Value "[ERROR] $(get-date -Format "yyyy-MM-dd HH:mm:ss"): Failade vid skrivning till databas på ID ${attNum}:"
        Add-Content -Path "/home/villetf/sapmon.log" -Value "$_"
        Add-Content -Path "/home/villetf/sapmon.log" -Value ""
        Add-Content -Path "/home/villetf/sapmon.log" -Value ""
    }
}
