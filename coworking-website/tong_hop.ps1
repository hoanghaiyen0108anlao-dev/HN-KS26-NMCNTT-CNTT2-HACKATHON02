# Script: tong_hop.ps1
# Tac gia: Hoang Hai Yen
# Ngay tao: 11/11/2026

Write-Host "Dang loc log..."

"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-Content logs/member.log |Select-String "status=404 >> logs/tong_hop.txt
(Get-Content logs/member.log |Select-String "status=500"| Measure-Object).Count >> logs/tong_hop.txt


Write-Host "Hoan Thanh!"