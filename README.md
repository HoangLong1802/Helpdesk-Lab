/** Helpdesk Lab Project **/

A self-contained Helpdesk lab simulating real-world entry-level IT Helpdesk tasks. Includes GLPI deployment using Docker, SOP documentation, automation scripts, and an incident casebook. Ideal for showcasing in CVs and GitHub portfolios.

🖥️ Technologies Used

- GLPI: Open-source ticketing and asset management system
- Docker + Docker Compose: Easy and fast environment deployment
- MariaDB: Database backend for GLPI
- phpMyAdmin: GUI for managing the database
- PowerShell, Batch, Bash: Task automation across platforms
- Markdown: SOP and documentation format

📁 Directory Structure

helpdesk-lab/
├─ docker-compose.yml           # Docker service configuration
├─ README.md                    # Project guide and documentation
├─ scripts/                     # Automation scripts
│  ├─ map_network_drive.ps1     # PowerShell: network drive mapping
│  ├─ backup_logs.bat           # Batch: log backup
│  └─ user_setup.sh             # Bash: Linux user creation
├─ docs/                        # SOPs and incident casebook
│  ├─ SOP_User_Onboarding.md
│  ├─ SOP_Password_Reset.md
│  ├─ SOP_Printer_Troubleshooting.md
│  └─ Incident_Casebook.md
└─ glpi-config/
   └─ init.sql                  # Sample ticket data for GLPI

🧭 Setup Instructions by Operating System

🪟 Windows

Install Docker Desktop
Download: https://www.docker.com/products/docker-desktop/

Restart your PC after installation

Open PowerShell or CMD and run:
docker-compose up -d

Access GLPI and phpMyAdmin:
GLPI: http://localhost:8080

phpMyAdmin: http://localhost:8081

Import sample data into GLPI:

docker exec -i helpdesk_lab_db mysql -u root -psecret < glpi-config/init.sql

Run automation scripts:

PowerShell: .\scripts\map_network_drive.ps1 -DriveLetter Z: -NetworkPath "\\SERVER\Share"

CMD: scripts\backup_logs.bat

🐧 Linux (Ubuntu)

Install Docker and Docker Compose

sudo apt update
sudo apt install docker.io docker-compose -y
sudo systemctl enable docker.service
sudo systemctl start docker.service

If you encounter systemctl: command not found, use:

sudo service docker start

start the project:
docker-compose up -d

Access services:

GLPI: http://localhost:8080

phpMyAdmin: http://localhost:8081

Initialize sample data:

docker exec -i helpdesk_lab_db mysql -u root -psecret < glpi-config/init.sql

Run Linux script: