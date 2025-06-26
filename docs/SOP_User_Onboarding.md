# SOP: User Onboarding

## Goal
Standard procedure for onboarding a new employee.

## Steps
1. Create user in system:
   ```bash
   sudo useradd -m -s /bin/bash Long
   sudo passwd 123456
   sudo usermod -aG sudo Long
