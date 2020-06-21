##General

builtins() # List all built-in functions
options()  # Set options to control how R computes & displays results

?NA        # Help page on handling of missing data values
abs(x)     # The absolute value of "x"
append()   # Add elements to a vector
c(x)       # A generic function which combines its arguments 
cat(x)     # Prints the arguments
cbind()    # Combine vectors by row/column (cf. "paste" in Unix)
diff(x)    # Returns suitably lagged and iterated differences
gl()       # Generate factors with the pattern of their levels
grep()     # Pattern matching
identical()  # Test if 2 objects are *exactly* equal
jitter()     # Add a small amount of noise to a numeric vector
julian()     # Return Julian date
length(x)    # Return no. of elements in vector x
ls()         # List objects in current environment
mat.or.vec() # Create a matrix or vector
paste(x)     # Concatenate vectors after converting to character
range(x)     # Returns the minimum and maximum of x
rep(1,5)     # Repeat the number 1 five times
rev(x)       # List the elements of "x" in reverse order
seq(1,10,0.4)  # Generate a sequence (1 -> 10, spaced by 0.4)
sequence()     # Create a vector of sequences
sign(x)        # Returns the signs of the elements of x
sort(x)        # Sort the vector x
order(x)       # list sorted element numbers of x
tolower(),toupper()  # Convert string to lower/upper case letters
unique(x)      # Remove duplicate entries from vector
system("cmd")  # Execute "cmd" in operating system (outside of R)
vector()       # Produces a vector of given length and mode

formatC(x)     # Format x using 'C' style formatting specifications
floor(x), ceiling(x), round(x), signif(x), trunc(x)   # rounding functions

Sys.getenv(x)  # Get the value of the environment variable "x"
Sys.putenv(x)  # Set the value of the environment variable "x"
Sys.time()     # Return system time
Sys.Date()     # Return system date
getwd()        # Return working directory
setwd()        # Set working directory
?files         # Help on low-level interface to file system
list.files()   # List files in a give directory
file.info()    # Get information about files

# Built-in constants:
pi,letters,LETTERS   # Pi, lower & uppercase letters, e.g. letters[7] = "g"
month.abb,month.name # Abbreviated & full names for months
