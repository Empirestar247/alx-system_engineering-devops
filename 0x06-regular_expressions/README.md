0x06. Regular expression

A regular expression (regex or regexp) is a sequence of characters that forms a search pattern. It is a powerful tool used to match, search, and manipulate text based on specific patterns. In programming and text processing, regular expressions provide a flexible and efficient way to perform string operations.

Here are some common components used in regular expressions:

Characters: Regular expressions can include ordinary characters like letters, digits, and symbols, which match themselves in the text.

Metacharacters: These characters have special meanings in regular expressions. Some common metacharacters are:

. (dot): Matches any single character except a newline.
(asterisk): Matches the preceding character 0 or more times.
(plus): Matches the preceding character 1 or more times.
? (question mark): Matches the preceding character 0 or 1 time.
^ (caret): Matches the beginning of a line or string.
$ (dollar sign): Matches the end of a line or string.
| (pipe): Acts as an OR operator, matching either of the patterns on its sides.

Character Classes: These define sets of characters that can match a single character in the text. Common examples include:

[abc]: Matches any character 'a', 'b', or 'c'.
[0-9]: Matches any digit from 0 to 9.
[a-zA-Z]: Matches any uppercase or lowercase letter.

Quantifiers: These specify the number of occurrences of a pattern. Examples include:

{n}: Matches exactly 'n' occurrences of the preceding pattern.
{n,}: Matches at least 'n' occurrences of the preceding pattern.
{n,m}: Matches between 'n' and 'm' occurrences of the preceding pattern.

Escape Sequences: Special characters can be escaped to match them literally. For example, to match a literal dot, you would use '.'.

Regular expressions are used in various programming languages (e.g., Python, JavaScript, Java) and text editors to perform tasks such as validation, searching, extracting information, and text substitution. They are a powerful tool for text manipulation and pattern matching.


Overall, regular expressions are a valuable skill for text processing, data extraction, and pattern matching tasks. Learning and mastering regular expressions can significantly enhance ones abilities as a developer or data analyst.



Background Context
For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
Resources
Read or watch:

Regular expressions - basics
Regular expressions - advanced
Rubular is your best friend
Use a regular expression against a problem: now you have 2 problems
Learn Regular Expressions with simple, interactive exercises
Requirements
General
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 20.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
The first line of all your Bash scripts should be exactly #!/usr/bin/env ruby
All your regex must be built for the Oniguruma library
