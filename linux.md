# Linux

- [port in use](https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/){:target="_blank"}

```sh
# This command displays the contents of all files in the /etc directory that end with '-release'.
# These files typically contain information about the Linux distribution and version.
cat /etc/*-release
```

```sh
# socket statistics
ss -tulpn | grep LISTEN
```

<details>
<summary>ss commands - socket statistics</summary>

The ss command in Linux is used to display socket statistics.  
It provides detailed information about network connections and sockets, including TCP, UDP, and Unix domain sockets.  
It's a modern replacement for the netstat command and offers more features and performance.  

Here's a breakdown of common ss commands and their uses:

## Basic Usage:
```sh
ss: Displays all established socket connections.
ss -l: Lists all listening sockets (sockets waiting for incoming connections).
ss -a: Displays both listening and non-listening sockets.
ss -t: Displays all TCP sockets.
ss -u: Displays all UDP sockets.
ss -x: Displays all Unix domain sockets.
ss -s: Displays summary statistics about socket usage. 
ss -p: Show the process using the socket.
ss -n: Show numerical addresses instead of resolving hostnames.
```

## Filtering:
```sh
ss -o state established 'dport = :22': Displays all established TCP connections to port 22 (SSH).
ss -o state fin-wait-1 '( sport = :http or sport = :https )' dst 193.233.7/24: Lists all TCP sockets in FIN-WAIT-1 state connected to the network 193.233.7/24 for HTTP and HTTPS.
ss sport = :80: Displays sockets with a source port of 80 (typically HTTP).
ss dport = :443: Displays sockets with a destination port of 443 (typically HTTPS).
ss -6: Displays IPv6 sockets in addition to IPv4.
ss -4: Displays IPv4 sockets (this is the default if -6 is not specified).
```

## Advanced Options:
```sh
ss -o: Displays timer information related to sockets, such as retransmission and keepalive values.
ss -m: Displays socket memory usage.
ss -i: Displays internal TCP information.
ss -p: Displays the processes using the sockets. 
Other Useful Examples:
ss -tuln: Lists all listening TCP and UDP ports numerically. 
ss -a -Z: Displays all TCP sockets with SELinux security contexts. 
ss -x src /tmp/.X11-unix/*: Finds all local processes connected to the X server. 
```

## Installation:
The ss command is usually pre-installed on most Linux distributions. If it's not, you can install it via iproute or iproute2 packages (e.g., sudo apt install iproute2 on Debian/Ubuntu systems). 

</details>

```sh
find . -type f -name "*my-service*.log"
```