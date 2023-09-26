#1.2.1 Basic Calculations and Objects
#abs(v) = Absolute value of v
#sqrt(v) = Square root of v
#exp(v) = Exponential of v
#log(v) = Natural logarithm of v
#round(v, digits=n) = Round v to n digits
#factorial(v) = Factorial of v
#choose(n,k) = Binomial coefficient n choose k

#generate object x (no output):
x <- 5

#display x& x^2:

x

x^2

#generate objects y&z with imediate displaying suing ()
(y <- 3)

(z <- y^x)

# a list of all currently defined object names
ls()

#checks wether an object("name") exists
exists("name")

#-------------------------------------------------------
#1.2.2 Vectors

# Define a with immediate output through parantheses
(a <- c(1,2,3,4,5,6))

(b <- a+1)

(c <- a+b)

(d <- b*c)

sqrt(d)

#R functions specifically for vectors
#length(v) = Length of v
#max(v), min(v) = Maximum, minimum of v
#sort(v) = Sort v in increasing order
#sum(v) = Sum of elements of v
#prod(v) = Product of elements of v
#numeric(n) = Vector of length n with all elements 0
#rep(x, times=n) = Vector of length n with all elements x
#seq(t) = Vector of length 1 with element t
#seq(a, t) = Vector with elements from a to t: a, a+1, a+2, . . . , t
#seq(a, t, s) = Vector with elements from a to t in step s: a, a+s, a+2s, . . . , t

#Define a vector
(a <- c(7,2,6,9,4,1,3))

sort(a)

length(a)

min(a)

max(a)

sum(a)

prod(a)

numeric(20)

rep(1, 20)

seq(50)

5:15

seq(4, 20, 2)

#Logical Operators
# x==y : x is equal to y
# x!=y : x is not equal to y
# x<y : x is less than y
# x>y : x is greater than y
# x<=y : x is less than or equal to y
# x>=y : x is greater than or equal to y
# x&y : x and y are both TRUE
# x|y : x or y is TRUE
# !x : x is FALSE

#-------------------------------------------------------
#1.2.3 Special types of Vectors

cities <- c("New york", "Los Angeles", "Chicago")

cities

#Bscis comparisons
0 ==1

0<1

#Logical vectors
(a <-  c(7,2,6,9,4,1,3))

(b <- a<3 | a>=6)

xf <- factor(x, labels=mylabes)

#Original ratings:
x <- c(3, 2, 2, 3, 1, 2, 3, 2, 1 ,2)

xf <- factor(x, labels=c("bad", "ok", "good"))

x

xf

#-------------------------------------------------------
#1.2.4 Naming and Indexing Vectors
#Create a vector "avgs"
avgs <- c(.366, .358, .356, .349, .346)

#Create a string vector of names:
players <- c("Cobb", "Hornsby", "Jackson", "O'Doul", "Delahanty")

#Assign names to vector and display vecrot:
names(avgs) <- players

avgs

avgs[2]

avgs[1:4]

#Indices by name
avgs["Jackson"]

#Logical indices
avgs[ avgs >= 0.35]

#-------------------------------------------------------
#1.2.5 Matrices
#matrix(vec, nrow=m) : takes the numbers stored in vector vec and put them into a mtrix with m rows
#rbind(r1, r2, ...) : takes the rows r1, r2, . . . and puts them together to form a matrix
#cbind(c1, c2, ...) : takes the columns c1, c2, . . . and puts them together to form a matrix

#Generating matrix A trom one vector with all values:
v <- c(2, -4, -1, 5, 7, 0)

(A <- matrix(v, nrow=2))

#Generating matrix A from two vectors with values for each row:
row1 <- c(2, -1, 7); row2 <- c(-4, 5, 0)

(A <- rbind(row1, row2))

#Generating matrix A from two vectors with values for each column:
col1 <- c(2, -4); col2 <- c(-1, 5); col3 <- c(7, 0)

(A <- cbind(col1, col2, col3))

#Giving names to rows and columns:
colnames(A) <- c("Alpha", "Beta", "Gamma")

rownames(A) <- c("Aleph", "Bet")

A

#Diaginal and identitiy matrices:
#Diag(v) (where v is a vector) creates a diagonal matrix with the elements of v on the main diagonal
diag( c(4,2,6) )

#Diag(n) (where n is scalar) creates the n x n identitiy matrix
diag(3)

#Indexing for extracting elements (still using A from Above):
A[2, 1] #row 2, column 1

A[2] # second element of A (columnwise)

A[,c(1,3)] #all rows, columns 1 and 3

A[2,] #row 2, all columns


#Matrics Operator
#A+B : Matrix sum (A and B must have the same dimensions)
#A-B : Matrix difference (A and B must have the same dimensions)
#A*B : Matrix product (A and B must have compatible dimensions)
#A%*%B : Matrix product (A and B must have compatible dimensions)
#A^k : Matrix power (A must be square)
#t(A) : Transpose of A
#solve(A) : Inverse of A (A must be square and nonsingular)

A <- matrix( c(2, -4, -1, 5, 7, 0), nrow=2)
B <- matrix( c(2, 1, 0, 3, -1, 5), nrow=2)

A

B

A*B

#Transpose
(C <- t(B))

#Matricx multiplication
(D <- A %*% C)

#Inverse
solve(D)

#-------------------------------------------------------
#1.2.6Lists

#myList <- list( name1=component1, name2=component2, ...)

#Generate a list object:
mylist <- list( A=seq(8, 36, 4), this="that", idm = diag(3))

#Print whole list:
mylist

#Vector of names:
names(mylist)

#Print component "A":
mylist$A

#-------------------------------------------------------
#1.3 DataFrames and Data files
year <- c(2008, 2009, 2010, 2011, 2012, 2013)

#Define a matrix of y values:
product1 <- c(0, 3, 6, 9, 7 ,8); product2<-c(1,2,3,5,9,6); product3<-c(2,4,4,2,3,2)

sales_mat <- cbind(product1, product2, product3)

rownames(sales_mat) <- year

#The matrix looks like this:
sales_mat

#Create a data frame and display it:
sales <- as.data.frame(sales_mat)
sales

#Accessing a single variable:
sales$product2

#Generating a new variable in the data frame:
sales$totalv1 <- sales$prodict1 + sales$product2 + sales$product3

#The same but using "with":
sales$totalv2 <- with(sales, product1 + product2 + product3)

#The same but using "attach":
attach(sales)

sales$totalv3 <- product1 + product2 + product3

detach(sales)

#Ressult:
sales

#-------------------------------------------------------
#1.3.2 Subsets of Data
#Full data frame (from Data-frames.R, has to be run first)
sales

#Subset: all years in which sales of product 3 were >=3
subset(sales, product3>=3)


#-------------------------------------------------------
#R Data Files

#save(x, file="filename") : Saves the object x in a file called filename

#load(file="filename") : Loads the object x from a file called filename

#-------------------------------------------------------
#1.3.4 Basic information on a Dat set

#head(df) : Displays the first few rows of the data frame df
#str(df) : Displays the structure of the data frame df
#summary(df) : Displays a summary of the data frame df
#colMeans(df) : Displays the column means of the data frame df

#Note: "sales" is defined in Data-frames.R, so it has to be run first!
# save(sales, file = 'oursalesdata.RData')
save(sales, file = 'oursalesdata.RData')

#remove data frma "sales" from memory
rm(sales)

#Check if "sales" is still in memory
exists("sales")

#load data frame "sales" from current directory
load("oursalesdate.RData")

#Does variables "sales" exist now?
exists("sales")

sales

#averages of the variables:
colMeans(sales)

#-------------------------------------------------------
#1.3.5 Import and Export of Text files
#newsdataframe <- read.table(filename, ...)

#header= True: THe text file include but not limeited to
#sep = "," : Instead of spaces or tabs, the columns are separated by commas
#sep = ";" : Instead of spaces or tabs, the columns are separated by semicolons
#dec = "," : The decimal point is a comma

#row.names=number : The values in column number 'number' are used as row anmes instead of variables