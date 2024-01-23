The included filed are simple updating scripts demonstration for Debian-based UNIX/LINUX operating system (Ubuntu 22.04 "Jammy Jelly Fish" and R. 
The bash shell script (all.sh) first updates necessary packages and its dependencies on Ubuntu then it invokes R script to update necessary packages and its dependencies on base R. Based on graduate level course assignments, projects and thesis research, updating packages and its dependencies on base R seemed to reduce possible software updating and installng issues. This seemed particularly true for Bioconductor, biology focused software on R.

The updating scripts requires "sudo" administrator privileges on debian-based UNIX/LINUX operating system along with installation of base R (any version).

Once two updating scripts are placed in a same folder, a user initiates the updating script by typing "sudo ./all.sh" and the updating script will also invoke R updating script.
