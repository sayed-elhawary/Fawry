# Task-Fawry
#    TASK FAWRY INTERN DEVOPS 

#    Custom Command Bash 

      git clone https://github.com/sayed-elhawary/Fawry.git

#     command line This Is Permesstion execute User 

      chmod +x mygrep.sh

#      RUN Coomand Bash Script 

       ./mygrep.sh hello testfile.txt
       ./mygrep.sh -n hello testfile.txt
        ./mygrep.sh -vn hello testfile.txt
        ./mygrep.sh -v testfile.txt

#       Add Image Task Bash


![WhatsApp Image 2025-04-28 at 00 43 23_3bbdda4e](https://github.com/user-attachments/assets/a1eefdcd-7741-449d-a87f-7f0f220051d0)

      

#       Supporting regex or -i/-c/-l options:
To extend the script with support for regular expressions, the grep command itself can be used with the -E option to enable extended regex patterns. For case-insensitive search, the -i option can be added to grep, which would ignore case while matching the search string.

If we were to support -i, -c, and -l, we would add additional condition checks for these options:

-i: This would pass the -i flag to grep to perform a case-insensitive search.

-c: This would modify the script to output the count of matching lines instead of the lines themselves. This can be done by passing the -c flag to grep.

-l: This option would list only the filenames containing matches, not the actual matching lines. This can be achieved by passing the -l flag to grep.

The structure would change slightly to handle these new flags. For example, the script would need additional conditionals to check if -i, -c, or -l were passed and then add the corresponding options to the grep
#        Image  Commands Plane

![Screenshot 2025-04-28 005519](https://github.com/user-attachments/assets/d3969f2d-1f7e-4d3b-8b5d-d0cc2e610c2e)

The complexity of the script would increase as it needs to combine multiple options correctly, but it would still maintain its modularity by checking for each option individually and modifying the grep command as necessary.

#   What part of the script was hardest to implement and why?
The hardest part of implementing the script was handling the combination of multiple options like -vn or -nv in a seamless way. Ensuring that the script could handle multiple flags in any order (such as -n first or -v first) without causing errors or unexpected behavior required careful checking of the arguments. Additionally, ensuring that all combinations of flags were supported (e.g., -n, -v, -nv, -vn) without duplicating logic for each specific combination added complexity.

To manage this, I used conditionals to check each flag individually and appended the appropriate options to the grep command. This approach helped in keeping the code simple and adaptable for further extensions, such as adding support for other options like -i, -c, or -l.

#  Bonus:
Adding support for the --help flag:
To improve user experience, adding a --help flag would be beneficial. This can be easily implemented by checking if the --help argument is passed and then displaying a message explaining how to use the script.

Here’s an example implementation:
![Screenshot 2025-04-28 005944](https://github.com/user-attachments/assets/90ae0a97-fdb9-4035-a86e-8ce8bc204a81)


#   Task 2 Scenario

# Using /etc/hosts:
Description: This method is simple and effective when working in a local environment or if you need a quick solution to map a domain to a specific IP address without setting up a full DNS server.

How it works: You simply add the line that links the domain with the IP address in the /etc/hosts file.
![Screenshot 2025-04-28 141753](https://github.com/user-attachments/assets/76a81647-061a-4e37-b255-189728b49c1c)


# Using bind9

Description: With this method, you set up a local DNS server (like bind9) to resolve domains and IPs in a more flexible manner.

How it works: With bind9, you can set up rules to redirect traffic (from IP to domain or vice versa) using the server’s configuration files.

Example: In bind9, you can modify the DNS config file to include:




# 

![Screenshot 2025-04-28 142142](https://github.com/user-attachments/assets/ef521288-4f33-49b3-b3c8-5baa2eae0e7c)

#  Conected to DNS

dig -x 192.168.75.137 @127.0.0.1 
#
![Screenshot 2025-04-28 164004](https://github.com/user-attachments/assets/c1859e5f-89c5-4503-919b-6576d51d9ca6)

#
dig -x 192.168.75.137 @127.0.0.1 +short#

![Screenshot 2025-04-28 164251](https://github.com/user-attachments/assets/ea974c95-20b1-4148-a58d-b361cdb36d03)

#

![Screenshot 2025-04-28 164104](https://github.com/user-attachments/assets/391e6865-bdf9-49da-afb3-c1ecb14ee67e)

#
dig +short internal.example.com

# 
ping internal.example.com
#
![Screenshot 2025-04-28 164141](https://github.com/user-attachments/assets/8b00b3e7-18f7-4a68-9b3f-25a6fdad0fd5)
# 
curl -v http://internal.example.com
#
![Screenshot 2025-04-28 163017](https://github.com/user-attachments/assets/080b57f0-b108-4fbe-9b8a-16d8dd0356a3)
#
telnet internal.example.com 80
#
![Screenshot 2025-04-28 163408](https://github.com/user-attachments/assets/540cd1e8-c4a6-4873-b1c1-fbea98d77a36)

# Firewall Blocking
sudo iptables -L -n | grep 53
sudo iptables -L -n | grep 80
sudo iptables -L -n | grep 443

# Routing Issues
traceroute internal.example.com
#
![Screenshot 2025-04-28 165054](https://github.com/user-attachments/assets/5d698a2d-76c8-49df-8157-945b9efe2b69)

# SELinux or Firewall Restrictions
sudo getenforce
sudo setenforce 0

#  Test
ping internal.example.com
curl http://internal.example.com
#
![Screenshot 2025-04-28 164141](https://github.com/user-attachments/assets/c88d3214-6a73-48fe-b6d0-543fc9f8e604)

#
![Screenshot 2025-04-28 163017](https://github.com/user-attachments/assets/2a1492a4-7693-4720-8ab9-b66ccd8a0cfa)

# Persist DNS Settings (Systemd-resolved)
vim /etc/systemd/resolved.conf
#
[Resolve]
DNS=192.168.138.2
FallbackDNS=8.8.8.8
# restart service 
sudo systemctl restart systemd-resolved
