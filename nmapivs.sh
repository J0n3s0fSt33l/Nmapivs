#! /bin/bash

function grepview
{
ivArray=(
        "initiating NSE at|" 
        "initiating connect scan|" 
        "initiating ping scan|" 
        "initiating service scan|" 
        "starting nmap|" 
        "NSE: script scanning|" 
        "host is up|" 
        "completed NSE at|" 
        "completed connect scan|" 
        "completed ping scan|" 
        "completed service scan|" 
        "parallel DNS|" 
        "scan timing:|" 
        "not shown: |" 
        "increasing send delay|" 
        "nmap scan report|" 
        "nmap done at |" 
        "service detection performed|" 
        "NSE: script post-scanning|" 
        "NSE: loaded 155 scripts|"  
        "NSE: starting runlevel|" 
        "NSE: script pre-scanning|" 
        "NSE Timing: |"
        "Scanned at |"
        "couldn't find|"
        "nothing found|"
        "scripts for scanning.|"
        "scanning $targetip|"
        "services on $targetip|"
        "Initiating Traceroute at |"
        "Retrying OS detection "
        )

view=$(for iv in ${!ivArray[@]}; do echo "${ivArray[$iv]}" | tr -d '\n'; done)
grep -viEw "$view"
}

grepview
