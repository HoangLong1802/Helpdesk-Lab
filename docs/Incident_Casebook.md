
---

### 4. `Incident_Casebook.md` – Nhật ký tình huống thực tế

```md
# Nhật ký xử lý sự cố

## Tình huống 1: Không kết nối được ổ mạng
- Ngày báo lỗi: 2024-05-10
- Nguyên nhân: Chưa map ổ mạng
- Giải pháp:
   ```powershell
   .\map_network_drive.ps1 -DriveLetter Z: -NetworkPath "\\SERVER\Shared"
