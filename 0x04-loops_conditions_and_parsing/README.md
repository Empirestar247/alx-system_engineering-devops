**0x04. Loops, conditions and parsing**

**How to create SSH keys:**

Creating SSH Keys: SSH keys are used for secure authentication in SSH (Secure Shell) connections. To create SSH keys, you can use the ssh-keygen command, which is typically available on most Unix-like systems.

To create an SSH key pair, open a terminal and run the following command:


ssh-keygen -t rsa -b 4096


This will generate an RSA key pair with a 4096-bit key size. The command will prompt you to choose a location to save the keys and optionally provide a passphrase for added security.

**What is the advantage of using #!/usr/bin/env bash over #!/bin/bash**

Advantage of #!/usr/bin/env bash over #!/bin/bash: The shebang (#!/bin/...) is used at the beginning of a script to specify the interpreter that should be used to execute the script. Using #!/usr/bin/env bash has an advantage over #!/bin/bash because it allows for better portability.

When you use #!/usr/bin/env bash, the system will search for the bash executable in the directories listed in the user's PATH environment variable. This means that the script will work even if bash is installed in a different location from /bin/bash.

On the other hand, using #!/bin/bash assumes that bash is located in the /bin directory. This can cause issues if the script is run on a system where bash is installed in a different location.

Using Loops: a. While Loop: The while loop executes a block of code repeatedly as long as a specified condition is true.


while [ condition ]
do
    # Code to be executed while the condition is true
done


b. Until Loop:
The until loop is similar to the while loop but continues to execute a block of code until a specified condition becomes true.


until [ condition ]
do
    # Code to be executed until the condition becomes true
done


c. For Loop:
The for loop is used to iterate over a sequence of values, such as elements in an array or a range of numbers.
for variable in value1 value2 ... valueN
do
    # Code to be executed for each value in the sequence
done

Using Conditional Statements: a. If-Else Statement: The if statement is used to execute a block of code if a certain condition is true. Optionally, you can use else to specify code that will be executed if the condition is false.



if [ condition ]
then
    # Code to be executed if the condition is true
else
    # Code to be executed if the condition is false
fi


b. Elif (Else If) Statement:
The elif statement allows you to check multiple conditions in sequence.


if [ condition1 ]
then
    # Code to be executed if condition1 is true
elif [ condition2 ]
then
    # Code to be executed if condition2 is true
else
    # Code to be executed if all conditions are false
fi

day="Sunday"
if [ "$day" == "Saturday" ]
then
    echo "It's the weekend!"
elif [ "$day" == "Sunday" ]
then
    echo "It's still the weekend!"
else
    echo "It's a weekday."
fi


c. Case Statement:
The case statement is used for multiple-choice scenarios, where different code blocks are executed based on the value of a variable.


case "$variable" in
    pattern1)
        # Code to be executed if variable matches pattern1
        ;;
    pattern2)
        # Code to be executed if variable matches pattern2
        ;;
    *)
        # Code to be executed if no pattern matches
        ;;
esac



fruit="Apple"
case "$fruit" in
    "Apple")
        echo "It's an apple."
        ;;
    "Banana")
        echo "It's a banana."
        ;;
    *)
        echo "Unknown fruit."
        ;;
esac


Using the cut Command: The cut command is used to extract sections from lines of input. It is often used for text processing.

cut OPTIONS FILE


Some common options for the cut command are:

-c or --characters: Select specific characters.
-f or --fields: Select specific fields (based on a delimiter).
-d or --delimiter: Specify the delimiter used for fields.

Examples:


# Extract the first 10 characters from each line of file.txt
cut -c 1-10 file.txt

# Extract the second field (based on ':' delimiter) from each line of file.txt
cut -f 2 -d ':' file.txt

File and Other Comparison Operators: Comparison operators are used in conditional statements to compare values. Here are some commonly used comparison operators:

File Operators:

-e FILE: True if the FILE exists.
-f FILE: True if the FILE exists and is a regular file.
-d FILE: True if the FILE exists and is a directory.
-r FILE: True if the FILE exists and is readable.
-w FILE: True if the FILE exists and is writable.
-x FILE: True if the FILE exists and is executable.

Other Comparison Operators:

a -eq b: True if 'a' is equal to 'b'.
a -ne b: True if 'a' is not equal to 'b'.
a -lt b: True if 'a' is less than 'b'.
a -le b: True if 'a' is less than or equal to 'b'.
a -gt b: True if 'a' is greater than 'b'.
a -ge b: True if 'a' is greater than or equal to 'b'.

These operators can be used with if statements or while loops to control the flow of the script based on certain conditions. For example:


if [ "$a" -eq "$b" ]
then
    # Code to be executed if 'a' is equal to 'b'
fi

while [ "$count" -lt 10 ]
do
    # Code to be executed while 'count' is less than 10
    ((count++))
done


Parsing: Parsing refers to the process of extracting relevant information from a text or data source. In shell scripting, parsing is often done using various tools like awk, grep, sed, and string manipulation techniques.
Example using awk:
Suppose you have a file named data.txt containing lines with the format: <name>:<age>:<occupation>.

# Extract the names and ages from the file
awk -F ':' '{print "Name:", $1, "\tAge:", $2}' data.txt

Example using grep:
Suppose you have a file named log.txt containing log lines with the format: timestamp - message.

# Extract lines containing "error" from the log file
grep "error" log.txt

