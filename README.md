# Nmapivs
A pre-configured grep query to clean up the fluff of an Nmap scan.
I understand that using regex and certain grep queries can help with getting what you want out of an nmap scan. However, I wanted to tailor my nmap output by adding the lines I didn't want to see in my nmap output. This handy little tool will perform an inverted match ( grep -v ) on each line in the array. 

With how it works, you can effectively use it as you would a grep query. either pipe your nmap scan to it,

```
nmap 127.0.0.1 | Nmapivs.sh
```

or you can use it against a standard output file from nmap (-oN)

```
nmap -oN nmap.txt 127.0.0.1
Nmapivs.sh nmap.txt
```
OR
```
cat nmap.txt | Nmapivs.sh
```

Hope this helps!
