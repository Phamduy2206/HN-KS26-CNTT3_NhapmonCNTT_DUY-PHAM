# Tac gia: PHAM_NGOC_DUY
# Ngay tao: 5_11_2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO GREENFIELD FC ===" > .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=404" >> .\logs\tong_hop.txt
(Get-Content .\logs\access.log | Select-String "status=500").Count >> .\logs\tong_hop.txt