# sbdf

sbdf - smart bdf 

target systems - Unix machines (for linux machines df -h command is better suited)

It is a tweak of bdf command - it does show the output of total, available, used sizes of file systems in GB, MB or KB based on their sizes instead of showing all of them in kbytes along with remaining details of bdf.

usage: 
brute force way: we can simply copy and paste the entire script code in the command prompt and press enter
standard way: 
1. copy the sbdf.sh file to the destination system location /usr/bin
2. change the file name sbdf.sh to sbdf command: mv sbdf.sh sbdf
3. add executable permissions command: chmod +x sbdf
4. then run the sbdf command in the terminal of the system (best experience when terminal is maximized)


Note: worked best on HP-UX ignitesr B.11.31 machine
