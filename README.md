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

#       Add Image Task Bahs


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

![Screenshot 2025-04-28 021738](https://github.com/user-attachments/assets/5ccab78f-c5c7-428d-8f8f-1c5c2ef637cb)

# Using bind9

Description: With this method, you set up a local DNS server (like bind9) to resolve domains and IPs in a more flexible manner.

How it works: With bind9, you can set up rules to redirect traffic (from IP to domain or vice versa) using the server’s configuration files.

Example: In bind9, you can modify the DNS config file to include:


![Screenshot 2025-04-28 023358](https://github.com/user-attachments/assets/56385c0b-6352-45bc-bcb2-538c08230b6f)


# 
![Screenshot 2025-04-28 024156](https://github.com/user-attachments/assets/ece8739a-de0e-45be-b3cc-16228b4e1776)

