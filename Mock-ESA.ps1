
 Write-Host "`nCisco ESA CLI Mock (PowerShell)" -ForegroundColor Cyan
 Write-Host "Type 'help' for commands. Type 'exit' to quit.`n" -ForegroundColor Yellow

 while ($true) {
    $input = Read-Host ">"

 
 switch ($input.ToLower()) {
 'help' {
     Write-Host "`nAvailable Commands:" -ForegroundColor Green
     Write-Host " help  - Show this help menu"
     Write-Host " status - Show the status of this operation"
     Write-Host " showversion - Display the current build of this simulation"
     Write-Host " exit - Quit the simulation"
 }

 'status' {
   Write-Host "`nSystem Status:"
   Write-Host " Uptime: 4 days, 3 hours"
   Write-Host " Messages Processed: 12,534"
   Write-Host " Queue Size: 4"
 }

 'showversion' {
   Write-Host "`nCisco ESA v13.5.1 - Build 1234"
 }

 'exit' {
   Write-Host "`nexiting ESA CLI..."
}

 "" {
    # Ignore empty input
 }
 default {
    Write-Host "Unknown command: '$input'. Type 'help' to see available commands." -ForegroundColor Red
 }
}
 }

