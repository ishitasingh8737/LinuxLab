## Code
![alttext](<./Screenshot 2025-09-20 193403.png>)

### Line by line explanation

- #!/bin/bash-Shebang. Tells the OS to run this script with /bin/bash (the Bash shell).

- *#factorial.sh"-Comment: short name/description of the file (ignored by the shell).

- "Usage: /factorial.sh 5"-Comment: example of how to call the script.

- fact() (Start of a function named fact. Everything up to the matching) is the function body.

- n=$1-Assign the function's first positional argument to variable n. (Note: this is a global variable unless you use local n=$1.)

- if [ "Sn" -le 1]; then - Numeric test if $n is less than or equal to 1 (base case for factorial), run the then branch. -le is "less than or equal". Quoting "In" protects against empty values.

- echo 1-Print 1 to stdout (the factorial of 0 and 1 is 1). This is the function's output for the base case.

- return Exit the function immediately and retum control to the caller. (No numeric return value is provided; return without an argument gives exit status 0.)

- fi-End of the if block.

- res=1-Initialize the accumulator variable res to 1. This will hold the running product. (Again, res is global unless declared local.)

- for (i=2;i<=n;i++)); do-C-style for loop (arithmetic context); start i at 2, loop while i <= n, increment i by 1 each iteration. This multiplies numbers 2.п.

- res=$((resi)) - Arithmetic evaluation and assignment: multiply res by i and store back in res. S(()) performs integer arithmetic.

- done-End of the for loop.

- echo "$res" - Print the final factorial result to stdout. The function communicates its result by printing (so callers use command substitution to capture it).

- } - End of the fact function definition

- (blank line - ignored; separates function from main script) $#-lt 1]; then Check the number of command-line arguments. $

- #is the "if [count: -It 1 means "less than 1". If no arguments were given, run the then branch.

- echo "Usage: $0 [another-Print a usage message. $0 expands to the script name as invoked. The message shows the script expects at least one non-negative integer, and can accept more.

- exit 1- Exit the entire script with status 1 (conventional non-zero status = error).

- fi-End of the if block.

- (blank line-ignored; readability)

- for arg in "$@"; do- Iterate over all command-line arguments ("$@" preserves each argument as a separate word, including those containing spaces). Each iteration sets test-so this if triggers when arg is not a non-negative integer. Note: [[...] is Bash's regex match operator.

- echo "$arg: not a non-negative integer, skipping." - Inform the user that this argument is invalid and will be skipped.

- continue Skip the rest of the loop body for this argument and proceed to the next arg.

- fi-End of the validation if.

- echo "$arg! = $(fact "Sarg")"-Compute and print the factorial: $(fact "Sarg") runs the fact function with the argument and substitutes its stdout (the factorial). The whale line prints a friendly n! result message. Quoting "Sarg" ensures arguments with spaces (not relevant for digits but good habit) are passed safely.

- done - End of the for loop (finished processing all arguments).

## Output 
![alttext](<./Screenshot 2025-09-20 193435.png>)