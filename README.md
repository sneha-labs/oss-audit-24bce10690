# oss-audit-24bce10690
Open Source System Audit Toolkit
Student Details

Name: Sneha Mary Sam
Roll Number: 24BCE10690

Chosen Software: Python (Open Source Programming Language)

Project Description
This project consists of a set of Bash scripts developed to understand and apply core concepts of Linux and open-source software. Each script performs a specific task such as retrieving system information, checking installed packages, auditing directories, analyzing log files, and generating a simple open-source manifesto.
The main objective of this project is to gain hands-on experience with Linux commands and scripting while also understanding the principles of open-source software, including transparency, collaboration, and the freedom to use and modify software.

Description of Scripts
Script 1: System Identity Report (script1.sh)
This script displays basic system information including the operating system, kernel version, current user, system uptime, and date. It provides a quick overview of the system environment.
Script 2: FOSS Package Inspector (script2.sh)
This script checks whether Python is installed on the system. If installed, it displays details such as version and description. It also includes a short note about the importance of open-source software.
Script 3: Disk and Permission Auditor (script3.sh)
This script examines important system directories and displays their permissions, ownership, and disk usage. It also checks the Python configuration directory to ensure it exists and reports its permissions.
Script 4: Log File Analyzer (script4.sh)
This script reads a specified log file and searches for a given keyword (by default, “error”). It counts how many times the keyword appears and displays the last few matching lines for context.
Script 5: Open Source Manifesto Generator (script5.sh)
This script interacts with the user by asking a few questions and generates a personalized open-source manifesto. The output is saved to a text file.

Dependencies
To run this project, the following are required:
A Linux environment (such as Ubuntu or WSL)
Bash shell
Standard Linux utilities such as grep, awk, du, ls, and cat
dpkg package manager (for Debian/Ubuntu-based systems)
Python installed on the system
Steps to Run the Scripts
Open the terminal in your Linux environment.
Navigate to the project directory using the cd command.
Example:
cd path/to/project
Make all scripts executable:
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
Run each script as follows:
To run Script 1:
./script1.sh
To run Script 2:
./script2.sh
To run Script 3:
./script3.sh
To run Script 4:
./script4.sh /path/to/logfile error
Example:
./script4.sh /var/log/syslog error
To run Script 5:
./script5.sh

Learning Outcome
Through this project, I was able to understand how Linux commands and Bash scripting work in practice. It helped me learn how to interact with system files, analyze logs, and automate simple tasks. The project also gave me a better understanding of the philosophy and importance of open-source software.

License Note
This project is based on open-source tools and follows the principles of the GNU General Public License (GPL), which promotes the free use, modification, and sharing of software.
