param(
  [string]$DriveLetter = "Z:",
  [string]$NetworkPath = "\\SERVER\Share"
)
if (!(Test-Path $DriveLetter)) {
  New-PSDrive -Name $DriveLetter.TrimEnd(":\") -PSProvider FileSystem -Root $NetworkPath -Persist
  Write-Output "Mapped $DriveLetter to $NetworkPath"
} else {
  Write-Output "$DriveLetter is already mapped."
}