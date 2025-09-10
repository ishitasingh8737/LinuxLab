# LAB-2
## Scripts Chosen
### Code 1-
```bash
#!/bin/bash
colors=("red" "green" "blue")
for color in "${colors[@]}"
do
echo "Color: $color
```
#### Meaning
📝 Step by step

`#!/bin/bash` → Shebang, tells the system to use Bash.

`colors=("red" "green" "blue")` → Declares an array named colors with 3 elements: "red", "green"
"blue".

`for color in "${colors[@]}" `→ A for loop that goes through each element in the
array.

`${colors[@]}` expands to all elements of the array. Each time, the variable color takes one value (red, then green, then blue).

`do ... done` → Loop body. Inside it, we run:
```bash
echo "Color: $color"
```
Which prints each color with the prefix "Color:".
### Output 1-
![alttext](<./Screenshot 2025-09-10 180709.png>)
### Code 2-
```bash
#!/bin/bash
echo "Hello, World!"
name="Ishita"
age=18
echo "My name is $name and I am $age years old."
```
#### Meaning
1. `#!/bin/bash` → This is the shebang line. It tells the system to run the script using
the Bash shell.
2. `echo "Hello, World!"` → Prints the classic “Hello, World!” message.
3. `name="Ishita"` and `age=18` → Define two variables: 
* name stores the string "Ishita"
* age stores the number "18"
4. `echo "My name is $name and I am $age years old."` → Prints a sentence that uses the variables.
`$name` and `$age` are expanded to their values.
### Output 2-
```bash
My name is Ishita and I am 18 years old.
```
## Extra Questions
#### What is the purpose of #!/bin/bash at the top of a script? 
That line is called a shebang ( #! ).

👉 Purpose of #!/bin/bash at the top of a script:

It tells the operating system which interpreter to use to run the script. Here, /bin/bash means the script should be executed with the Bash shell.

Without it, the script might run with another default shell (like sh or dash), which can cause errors if your script uses Bash-specific features.

#### How to make a script executable?
1. Save the script.
2. Open a terminal in that directory.
3. Run this command:
chmod = change file permissions
+x = add "execute" permission
4. Now you can run it as:
Output 2-
Extra Questions
What is the purpose of #!/bin/bash at the top of a script?
How to make a script executable?
chmod +x myscript.sh
./myscript.sh