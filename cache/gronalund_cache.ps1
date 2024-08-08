$attList = @(
   19
   29
   30
   33
   35
   36
   37
   39
   40
   41
   42
   43
   44
   45
   46
   47
   48
   49
   50
   51
   54
   55
   56
   57
   58
   59
   60
   79
   110
)

$id19 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/vilda-musen/page-data.json"
$id29 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/kvasten/page-data.json"
$id30 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/insane/page-data.json"
$id33 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/kattingflygaren/page-data.json"
$id35 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/katapulten/page-data.json"
$id36 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/lustiga-huset/page-data.json"
$id37 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/karlekstunneln/page-data.json"
$id39 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/pop-expressen/page-data.json"
$id40 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/barnradiobilarna/page-data.json"
$id41 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/fritt-fall/page-data.json"
$id42 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/flygande-mattan/page-data.json"
$id43 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/blackfisken/page-data.json"
$id44 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/bla-taget/page-data.json"
$id45 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/rock-jet/page-data.json"
$id46 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/twister/page-data.json"
$id47 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/jetline/page-data.json"
$id48 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/nyckelpigan/page-data.json"
$id49 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/house-of-nightmares/page-data.json"
$id50 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/flygande-elefanterna/page-data.json"
$id51 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/eclipse/page-data.json"
$id54 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/tekopparna/page-data.json"
$id55 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/pettson-och-findus-varld/page-data.json"
$id56 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/cirkuskarusellen/page-data.json"
$id57 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/tuff-tuff-taget/page-data.json"
$id58 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/veteranbilarna/page-data.json"
$id59 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/lyktan/page-data.json"
$id60 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/lilla-pariserhjulet/page-data.json"
$id79 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/ikaros/page-data.json"
$id110 = Invoke-RestMethod -Method Get -Uri "https://www.gronalund.com/page-data/attraktioner/monster/page-data.json"

try {
   $queueList = Invoke-RestMethod -Method Get -Uri "https://prs-cdp-prod-webapiproxy.azurewebsites.net/api/glt/QueueTimes/"
   $opentimeList = Invoke-RestMethod -Method Get -Uri "https://prs-cdp-prod-webapiproxy.azurewebsites.net/api/glt/openinghours/"
}
catch {
   Add-Content -Path "/home/villetf/gronalund.log" -Value "[ERROR] $(Get-Date -Format "yyyy-MM-dd HH:mm:ss"): Failade med API-anrop:"
   Add-Content -Path "/home/villetf/gronalund.log" -Value "$_"
   Add-Content -Path "/home/villetf/gronalund.log" -Value ""
   Add-Content -Path "/home/villetf/gronalund.log" -Value ""
}

$date = Get-Date
$open = $false

foreach ($time in $opentimeList) {
   if (($date -ge $time.opens) -and ($date -le $time.closing)) {
      $open = $true
      break
   }
}

foreach ($attraction in $queueList) {
   if ($attraction.attractionId -in $attList) {
      [int]$attId = $attraction.attractionId
      $definingStatusVar = "id$attId"
      $statusVar = Get-Variable -Name $definingStatusVar -ValueOnly
      if (($open) -and ($statusVar -notmatch "avstängd")) {
         [int]$queueTime = $attraction.queueTime + 10
      } else {
         $queueTime = 0
      }
      try {
         #Invoke-Expression -Command "mysql -u villetf -pkevsuger gronalund -h 192.168.1.13 -e 'INSERT INTO attraction_metrics (a_id, time, queue_time) VALUES ($attId, DATE_FORMAT(NOW(), ''%Y-%m-%d %H:%i:00''), $queueTime);UPDATE attractions SET status = $queueTime WHERE a_id = $attId'"
	 Add-Content ./gronalund.csv "`"$attId`",`"$((Get-Date).AddHours(-2).ToString("yyyy-MM-dd HH:mm:00"))`",`"$queueTime`""
      }
      catch {
         Add-Content -Path "/home/villetf/gronalund.log" -Value "[ERROR] $(Get-Date -Format "yyyy-MM-dd HH:mm:ss"): Failade vid skrivning till databas på ID ${attId}:"
         Add-Content -Path "/home/villetf/gronalund.log" -Value "$_"
         Add-Content -Path "/home/villetf/gronalund.log" -Value ""
         Add-Content -Path "/home/villetf/gronalund.log" -Value ""
      }
   }
}

