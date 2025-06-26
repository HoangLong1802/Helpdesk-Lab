
---

### 3. `SOP_Printer_Troubleshooting.md`

```md
# SOP: Printer Troubleshooting

## Common Issues
- Printer offline
- Paper jam
- Driver missing

## Checklist
- Check printer is powered and connected to network
- Restart printer
- On user PC:
   - Reinstall printer driver
   - Clear print queue

## Commands
```powershell
Get-Printer | Restart-PrintJob
