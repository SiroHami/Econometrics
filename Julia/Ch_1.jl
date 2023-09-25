#---------------------------------------------------------------#
#--------------------  Introduction  ---------------------------#
#---------------------------------------------------------------#


#---------------------------------------------------------------#
#---------------------------------------------------------------#
#1.1 Getting Started
#This is a comment
#in the next line, we try to enker Shakespeare:
"To be, or not to be: that is the question"
#let's try some sensible math:
sqrt(16)
print((1 +2) * 5)


#---------------------------------------------------------------#
#1.1.2 Julia Scripts
result1 = 1+ 1
print("reseult1 = $result1\n")

result2 = 5 * (4 - 1)^2
println("result2 = $result2")

result3 = [result1, result2]
print("result3: \n $result3")

#combine text we want to print with variables
#print("some text $variablename")


#---------------------------------------------------------------#
#1.1.3 Packages
#Example:
#using Packages
#Pkg.add("PackageName")
#Pkg.update("PackageName")
#Pkg.status

using Statistics

a = [2, 6, 4, 9, 1]

a_mean = mean(a)

a_var = Statistics.var(a)

println("a_var = $a_var")


#---------------------------------------------------------------#
#1.1.4 File Naems and Working Directory
#absoolute path: /home/username/Documents/Julia/Ch_1.jl


#---------------------------------------------------------------#
#1.1.5 Errors
#Errors: DomainError with xy: The argument xy to function is not valid.
#Example: 
sqrt(-1)


#ERROR: MethodError: no method matyching xy: There is no finction available
#Example: 
"a" + "b"

#ERROR: UndefVarError: x not defined: We bave tried to duse a variable x that isn't defined (yet).

#ERROR: IOError: cd("pathxy"): no such file or Directory

#ERROR: ArgumentError: Package xyz not found in current path


#---------------------------------------------------------------#
#1.1.6 Other Resources
# The official Julia learning section (includes the documentation, tutorials and books):
#https://julialang.org/learning/
# Quantitative economic modeling with Julia
#https://julia.quantecon.org/intro.html
# A digital version of the book Julia Data Science by Storopoli, Huijzer, and Alonso (2021):
#https://juliadatascience.io
# Stack Overflow: A general discussion forum for programmers, including many Julia users:
#https://stackoverflow.com
# Cross Validated: Discussion forum on statistics and data analysis with an active Julia community: https://stats.stackexchange.com
# Recently, large language models like (Chat)GPT have become very powerful tools for learning
#a language like Julia. They can explain, comment, and improve given code or help to write new
#code from scratch


#---------------------------------------------------------------#
#---------------------------------------------------------------#
#1.2 Objects in Julia

#1.2.1 variables
#Just type a LATEX math symbol (starting with the backslash) and press −−→−−→ .
#Example:
δ = 0.1
β = 0.9
α_1 = 0.8

#---------------------------------------------------------------#
#1.2.2 Bullit-in Objects in Julia

result1 = 1 + 1
# datermine the type:
type_result1 = typeof(result1)
# print the result:
println("type_result1: $type_result1\n")

result2 = 2.5
type_result2 = typeof(result2)
println("type_result2: $type_result2\n")

result3 = "To be, or not to be: that is the question"
type_result3 = typeof(result3)
println("type_result3: $type_result3\n")


#Logical Operators
# x==y: x is equal to y
# x!=y: x is not equal to y
# x<y: x is less than y
# x>y: x is greater than y
# x<=y: x is less than or equal to y
# x>=y: x is greater than or equal to y
# x===y: x is identical to y
# x!==y: x is not identical to y
# x && y: x and y are both true
# x || y: x or y is true
# !x: x is false
# x ⊻ y: x or y is true, but not both
# x & y: x and y are both true
# x | y: x or y is true
# x ⩵ y: x is identical to y
# x ≠ y: x is not identical to y
# x ≰ y: x is less than or equal to y
# x ≱ y: x is greater than or equal to y
# x ≮ y: x is not less than or equal to y
# x ≯ y: x is not greater than or equal to y
# x ≈ y: x is approximately equal to y
# x ≉ y: x is not approximately equal to y
# x ≂ y: x is asymptotically equal to y
# x ≃ y: x is asymptotically equal to y
# x ≄ y: x is not asymptotically equal to y
# x ≅ y: x is congruent to y
# x ≇ y: x is not congruent to y

#type
# Int64 : whole numbers (integers)
# Float64 : real numbers (floating point numbers)
# String : text
# Bool : Boolean (true or false)
# Char : a single character
# Vector{T} : a vector of elements of type T
# Matrix{T} : a matrix of elements of type T
# Array{T, N} : an array of N dimensions, with elements of type T
# Tuple{T, N} : a tuple of N dimensions, with elements of type T
# Dict{T1, T2} : a dictionary with keys of type T1 and values of type T2
# Set{T} : a set of elements of type T
# Function : a function
# Module : a module
# DataType : a data type
# Any : any type
# Missing : a missing value
# Nothing : nothing

#define arrays:
testarray1D = [1, 5, 41.3, 2.0]
println("type(testarray1D): $typeof(testarray1D))\n")

testarray2D = [4 9 8 3
               2 6 3 2
               1 1 7 4]
# same as
testarray2D = [4 9 8 3; 2 6 3 2; 1 1 7 4]
testarray2D = [[4 9 8 3] [2 6 3 2] [1 1 7 4]]
testarray2D = [[4, 2, 1] [9, 6, 1] [8, 3, 7] [3, 2, 4]]
# not same as
testarray2D_4 = [[4 2 1] [9 6 1] [8 3 7] [3 2 4]]

#get dimensions of testarray2D:
dim = size(testarray2D)
println("dim: $dim\n")

#access elelmnets by inddicies:
third_elem = testarray1D[3]
println("third_elem: $third_elem\n")

second_third_elem = testarray2D[2, 3] #element in 2nd row and 3rd column
println("second_third_elem: $second_third_elem\n")

second_to_third_col = testarray2D[:, 2:3] #each row in the 2nd and 3rd column
println("second_to_third_col: $second_to_third_col\n")

last_col = testarray2D[:, end] #each row in the last column
println("last_col = $last_col\n")

#access elements by Array
first_third_elem = testarray1D[[1, 3]]
println("first_third_elem: $first_third_elem\n")

#same with Bolean array:
first_third_elem2 = testarray1D[[true, false, true, false]]
println("first_third_elem2: $first_third_elem2\n")

k = [[true false false false]
     [false false true false]
     [false false false true]]
    
elem_by_index = testarray2D[k] #1st elem in 1st row, 3rd elem in 2nd row, 4th elem in 3rd row
print("elem_by_index: $elem_by_index\n")

#Important Functions for Vectors and Matrices
# x .+ y : Element-wise sum of all elements of x and y
# x .- y : Element-wise subtraction of all elements of x and y
# x .* y : Element-wise multiplication of all elements of x and y
# x ./ y : Element-wise division of all elements of x and y
# x .^ y : Element-wise rasising of x to the power of y
# x .== y : Element-wise comparison of all elements of x and y
# x .!= y : Element-wise comparison of all elements of x and y
# x .< y : Element-wise comparison of all elements of x and y
# exp.(x) : Element-wise exponential of all elements in x
# sqrt.(x) : Element-wise square root of all elements in x
# log.(x) : Element-wise natural logarithm of all elements in x

# sum(x) : SUm of all elements in x
# minimum(x) : Minimum of all elements in x
# maximum(x) : Maximum of all elements in x
# lehngth(x) : Total number of elements
# size(x) : Rows and/ or columns of a matrix x
# ndims(x) : Dimension of x 
# sort(x) : Sort elements in vector x in ascending order

# inv(x) Inverse of matrix x
# x * y : Matrix multiplication of x and y
# transepose(x) or x' : Transpose of matrix x

#define arrays:
vec1 = [1, 4, 64, 36]
mat1 = [4 9 8 3
    2 6 3 2
    1 1 7 4]

#Apply some functions:
sort!(vec1) #sorts vec1 in ascending order
println("vec1: $vec1\n")

vec2 = sqrt.(vec1) #apply sqrt to each element of vec1
vec3 = vec1 + vec2
println("vec3: $vec3\n")

#get dimensions of mat1:
dim_mat1 = size(mat1)
println("dim_mat1: $dim_mat1\n")

#initialize matrix with each elemnt set to zero:
zero_mat = zeros(4, 3)
println("zero_mat: \n$zero_mat\n")

#initialize matrix with each elemnt set to one:
one_mat = ones(2, 5)
println("one_mat: \n$one_mat\n")

#uninitialized matrix (filled with arbitrary nonense elemnts):
empty_mat = Array{Float64}(undef, 2, 2)
println("empty_mat: \n$empty_mat\n")

#test_dict_a = Dict([("key1", object1), ("key2", object2)])
#test_dict_b = Dict("key1" => object1, "key2" => object2)

#define and print a dict:
var1 = ["Florian", "Daniel"]
var2 = [96, 49]
example_dict = Dict("name" => var1, "points" => var2)
println("example_dict: \n$example_dict\n")

#get data type:
type_example_dict = typeof(example_dict)
println("type_exmple_dict: $type_example_dict\n")

#access "points" :
type_example_dict = typeof(example_dict)
println("type_exampel_dict: $type_example_dict\n")

#access "points of "Daniel":
points_daniel = example_dict["points"][2]
println("example_dict: \n$example_dict\n")

#add a new component "grade":
example_dict["grade"] = [1.3, 4.0]

#delete component "points":
delete!(example_dict, "points")
print("example_dict: \n$example_dict\n")


#Other important Functions
# Range: range(start, stop, step) or range(start, stop, length=L)
# Example: range(0, 10, step=2) or range(0, 10, length=5)

#collect: collect(range(0, 10, step=2)) or collect(range(0, 10, length=5)) or collect(0:2:10) or collect(0:5:10)
#Example: collect(0:2:10)

#Tuple: tuple(x, y, z)
#Pair: pair(x, y) : bind two objects with the syntax object1 => object2
#Symbol is defined with the colon by :symbol 

#Bulit-in Data type_result1
#Int64
a = 5

#Float64
a = 5.3

#String
a = "abc"

#Bool
a = true

#Array
a = [1, 3, 1.5]

#Dict
a = Dict("a" => [1, 2], "c" => [5, 3])

#Range
a = 0:4:20

#Tuplea 
a = (b=[1, 2], c=3, d="abc")

#Pair
a = ["a", "b"] => [1, 2, 3]

#Symbol
a = :varname


#---------------------------------------------------------------#
#1.2.3 Matrix Algebbra in LilearAlgebra.jl

using LinearAlgebra
#Basic matix algera inclue:
#Matrix multiplication: A * B
#Matrix addition: A + B
#Element-wise multiplication: A .* B
#Element-wise division: A ./ B
#Transpose: A' or transpose(A)
#Inverse: inv(A)

#define matrices:
mat1 = [4 9 8
        2 6 3]

mat2 = [1 5 2
        6 6 0
        4 8 3]

#use exp() and apply it to each element:
result1 = exp.(mat1)
result1_rounded = round.(result1, digits=4)
println("result1_rounded: \n$result1_rounded\n")

result2 = mat1 .+ mat2[1:2, :]
println("result2: \n$result2\n")

#use another function:
mat1_tr = transpose(mat1) #or mat1'
println("mat1_tr: \n$mat1_tr\n")

#matrix algebra:
matpord = mat1 * mat2
println("matpord: \n$matpord\n")


#---------------------------------------------------------------#
#1.2.4 Objects in DataFrames.jl

using Pkg
Pkg.add("DataFrames")
using DataFrames

#defien a Dataframe:
icecream_sales = [30, 40, 35, 130, 120, 60]
weather_coded = [0, 1, 0, 1, 1, 0]
customers = [2000, 2100, 1500, 8000, 7200, 2000]
df = DataFrame(
        icecream_sales = icecream_sales,
        weather_coded = weather_coded,
        customers = customers
        )

#print the DataFrame:
println("df: \n $df\n")

#access columns by variable reference:
sybset1 = df[!, [:icecream_sales, :customers]]
println("sybset1: \n $sybset1\n")

#access second to fourth row:
subset2 = df[2:4, :]
println("subset2: \n $subset2\n")

#access rows and columns by variable integer positins:
subset3 = df[2:4, 1:2]

#access rows by variable integer positions:
subset4 = df[2:4, [:icecream_sales, :weather_coded]]
println("subset4: \n $subset4\n")

#Important DataFrames Functions
#first(df, i) : First i observations in df
#last(df, i) : Last i observations in df
#decribe(df) : Print descriptive statistics in df
#ncol(df) : Number of variables in df
#nrow(df) : Number of observations in df
#names(df) : Variable names in df
#df.x or df[!, :x] : Access x in df
#df[i, j] : Access variables and observations in df by integer positions
#push!(df, row) : Add one observation at the end of df in-place
#vcat(df, df2) : Bind two data frames df and df2 vertically if variable names matyching
#deleteat!(df, i) : Delete row i in data frame df in-place
#sort(df, :x) : Sort data in df by variable x in ascending ortder
#subset(df, :x => ByRow(condition)) : Extract rows in df, which match the provided condition in variable xy
#grooupby(df, :x) : Create subgroups of df according to x in a grouped data frame
#combine(gdf, :x => function) : Apply a function to variable x in a grouped data frame gdf
using Pkg
Pkg.add("CategoricalArrays")
Pkg.add("Statistics")

using DataFrames, CategoricalArrays, Statistics

#define a DataFrames:
icecream_sales = [30, 40, 35, 130, 120, 60]
weather_coded = [0, 1, 0, 1, 1, 0]
customers = [2000, 2100, 1500, 8000, 7200, 2000]
df = DataFrame(
        icecream_sales = icecream_sales,
        weather_coded = weather_coded,
        customers = customers
        )

#get som descriptive statistics:
descr_stats = describe(df)
println("descr_stats: \n $descr_stats\n")

# add one observations with more than 2500 customers:
subset_df = subset(df, :customers => ByRow(>(2500)))
println("subset_df: \n $subset_df\n")

#use a CategoricalArray object to attach labbels (0 = "bad"; 1 = > "good")
df.weather = recode(df[!, :weather_coded], 0 => "bad", 1 => "good")
println("df: \n $df\n")

#mean sales for each weather category by
#grouping and splitting data:
grouped_data = groupby(df, :weather)
#apply the mean to icecream_sales and combine the results:
group_means = combine(grouped_data, :icecream_sales => mean)
println("group_means: \n $group_means\n")       

