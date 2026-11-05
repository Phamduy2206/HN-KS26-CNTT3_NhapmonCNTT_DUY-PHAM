# Bài làm – GreenField FC

Họ và tên: PHẠM NGỌC DUY  
Lớp: CNTT3

## 4.2 Thao tác CLI
Lệnh đã chạy: 
```Powershell
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> pwd
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> ls -Force
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> mv .\ghi-chu-ban-giao.txt ".\docs"
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> mkdir backup
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> cp ".\data\danh-sach-cau-thu.xlsx" ".\backup"
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> rm .\temp_002.tmp
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> cd .\logs
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\logs> Get-Content .\access.log
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\logs> cd ..
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> Get-ChildItem -Force -Recurse
```
Kết quả liệt kê toàn bộ dự án (bao gồm file ẩn):

 Directory: C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:41 PM                backup
d-----         11/5/2026   1:40 PM                data
d-----         11/5/2026   1:38 PM                docs
d-----         11/5/2026   1:28 PM                evidence
d-----         11/5/2026   1:29 PM                logs
d-----         11/5/2026   1:19 PM                web
-a----         11/5/2026   1:18 PM             92 .env
-a----         11/5/2026   1:18 PM            701 bai_lam.md
-a----         11/5/2026   1:18 PM          43407 danh-sach-cau-thu.xlsx.in
                                                  spect.ndjson


    Directory:
    C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM           8624 danh-sach-cau-thu.xlsx


    Directory: C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM           8624 danh-sach-cau-thu.xlsx


    Directory: C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM            554 ghi-chu-ban-giao.txt


    Directory: C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM            560 access.log


    Directory: C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:19 PM                images
-a----         11/5/2026   1:18 PM            750 app.js
-a----         11/5/2026   1:18 PM            680 index.html
-a----         11/5/2026   1:18 PM            401 style.css


    Directory:
    C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:18 PM           2115 greenfield-logo.png
-a----         11/5/2026   1:18 PM            413 greenfield-logo.svg
## 4.3 Lọc log
**a) Lệnh lọc status=500:**
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> Get-Content .\logs\access.log | Select-String "status=500" > .\logs\loi_500.txt

Hai dòng đầu của loi_500.txt:

2026-10-28 18:03:25 GET /api/players status=500
2026-10-28 18:05:12 GET /api/players status=500

**b) Lệnh đếm status=404 và kết quả:**
PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> (Get-Content .\logs\access.log | Select-String "status=404").Count

4

## 4.4 Script báo cáo
Lệnh chạy script:

PS C:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc> .\tong_hop.ps1

Nội dung logs/tong_hop.txt:

=== BAO CAO GREENFIELD FC ===

2026-10-28 18:03:22 GET /images/logo-sai.png status=404
2026-10-28 18:07:44 GET /fixtures status=404
2026-10-28 18:13:52 GET /favicon.ico status=404
2026-10-28 18:32:18 GET /api/players status=404


3


## 4.6 Kiểm tra website và báo cáo lỗi
| Tab | Tên file/thông báo | Cách khắc phục |
|---|---|---|
| Network | Không hiển thị logo | Đổi tên file logo thành đúng tên file trong web\images |
| Console | Không hiển thị bảng | |

**Context:** Lỗi Console không hiển thị bảng

**Expected:** Sửa lỗi hiển thị
 
**Actual:** Không sửa được

**Log:** Nhóm trưởng giúp mình với

Câu tìm kiếm Google: http://stackoverflow.com/ "Lỗi console"

## Ghi chú Excel
Công thức/khó khăn đã gặp:
