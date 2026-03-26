# EmailSender
A program that sends emails only in a very specific circumstance.
## Configuration
The configuration file is **conf.mk** and has the following	variables: 
- **lab**: The directory name of the folder that contains the student's code (do not put in quotes).
- **from**: The semail address that you are sending from in double quotes.
- **server**: The **SMTP server address:port** that you are using to send the mail in double quotes. For smail you may use "smtp2.iitm.ac.in:587". 
- **uname**: The username for the server in double quotes. for the smtp2 server mentioned, it is the seme as your email.
- **password**: Password for your username on the SMTP server. For smtp2 it is your LDAP password.
- **selfroll**: The last numeric part of any specific iitm cs roll number. Eg: cs25b001 -> 1.
## Making files executable
The files `sender.sh` `gena.sh` `geno.sh` need to be made executable for the application to run.  
For this, run the following commands in the application directory (I am using bash):
```bash
chmod +x sender.sh
chmod +x gena.sh
chmod +x geno.sh
```
## Running the programme
The programme runs through the Makefile, using **make** commands. There are four maker commands:
- `make gena` : Generates .awk files for all roll numbers cs25b001 to cs25b095, **both inclusive**.
- `make geno` : Generates .awk file only for the roll number specified in **selfroll in conf.mk**.
- `make send` : Send an email containing a false url of the rollnumber.awk file to rollnumber@smail.iitm.ac.in
- `make clean` : Removes the lab directory as well as email.txt which is a temporary file. 