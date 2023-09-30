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

#---------------------------------------------------------------#
#1.2.5 Using PyCall.jl
using Pkg
Pkg.add("Conda")

using Conda
Conda.add("packagename")

#define a block of Python Code:
py"""
import numpy as np

#define array in numpy:
mat1 = np.array(([4, 9, 8],
[2, 6, 3]))

mat2 = np.array(([1, 5, 2],
[6, 6, 0],
[4, 8, 3]))

#matix algebra
matprod_py = mat1 @ mat2
"""

#automatic type conversion from Python to Julia:
matprod = py"matprod_py"
matprod_type = typeof(matprod)
println("matprod_type: $matprod_type\n")
println("matprod: \n$matprod\n")


#---------------------------------------------------------------#
#---------------------------------------------------------------#
#1.3 External Data
#1.3.1 Data Sets in the Examples
using Pkg
Pkg.add("WooldridgeDatasets")
using WooldridgeDatasets, DataFrames

#load data:
wage1 = DataFrame(wooldridge("wage1"))

#get type:
type_wage1 = typeof(wage1)
println("type_wage1: $type_wage1\n")

#get first four ovservations and fort eight variables:
preview_wage1 = wage1[1:4, 1:8]
println("preview_wage1: \n$preview_wage1\n")

#---------------------------------------------------------------#
#1.3.2 Imprt and Export of Data Files
Pkg.add("CSV")
using CSV

#import a .CSV file with CSV .read:
df1 = CSV.read("data/sales.csv", DataFrame, delim=",",
        header=["year", "product1", "product2", "product3"])
println("df1: \n $df1\n")

#import a .txt file with CSV.read:
df2 = CSV.read("data/sales.txt", DataFrame, delim=" ")
println("df2: \n $df2\n")

#add a row to df1:
push!(df1, [2014, 10, 8, 2])
println("df1: \n $df1\n")

#export with CSV.write:
CSV.write("data/sales2.csv", df1)

#The most important arguments of CSV.read and CSV.write are:
#header: Integer specifying the variable names or a vector of variable names
#delim: Often columns are separated by a comma, i.e. delim=','. Instead, an arbitrary other character can be given. sep=';'
#skipto: Integer specifying the first row to import( and skipping all previous ones)

#---------------------------------------------------------------#
#1.3.3 Data from other Sources
Pkg.add("Dates")
Pkg.add("MarketData")
using Dates, MarketData

#download data for "F" (Ford) and defien start and end:
ticker = "F"
start_date = DateTime(2007, 12, 31)
end_date = DateTime(2017, 01, 01)

#import data as DataFrame:
F_data = DataFrame(yahoo(ticker, YahooOpt(period1=start_date, period2=end_date)))

preview_F_data = first(F_data, 5)
println("preview_F_data: \n $preview_F_data\n")


#---------------------------------------------------------------#
#---------------------------------------------------------------#
#1.4 Base Graphics with Plots.jl
#1.4.1 Basic Graphs
Pkg.add("Plots")
using Plots

#when you encounter Error: Could not load library "libGR.dll" 
Pkg.update()
ENV["GRDIR"]=""
Pkg.build("GR")

#create data:
x = [1, 3, 4, 7, 8, 9]
y = [0, 3, 6, 9, 7, 8]

#plot and save:
plot(x, y, color=:black)
savefig("JlGraphs/Graphs-Basics-a.pdf")

#scatter and save:
scatter(x, y, color=:black, markershape=:dtriangle, legend=false)
savefig("JlGraphs/Graphs-Basics-b.pdf")

Pkg.add("Distributions")
using Distributions

#support of quadratic function
# (creates an array with 100 equispaced elemnts from -3 to 2):
x1 = range(start= -3, stop=2, length=100)
#furnction values for all these values:
y1 = x1.^2

#plot quadratic function
plot(x1, y1, linestyle=:solid, color=:black, legend=false)

#same for normal density:
x2 = range(-4, 4, length=100)
y2 = pdf.(Normal(), x2)

#plot nortmal density
plot(x2, y2, linestyle=:solid, color=:black, legned=false)
savefig("JlGraphs/Graphs-Basics-c.pdf")

#---------------------------------------------------------------#
#1.4.2 Customizing Graphs with Options
# The width of the liens cna be changed usiyng the argument linewidth
# The size of the marker symbols can be charged using the argument markersize (default markersize=4)
# The transparency of a line can be charged by the argument linealpha with a number betwwen 0 (complete transparnecy) and 1 (no transparency)
# The color of the lines and symbols can be changed using the argument color (also see linecolor, markercolor etc. for more flexibility)
# A title cna be added using title!("My Title")
# The horizontal and vertical axis cna be labeled using xlabel!("My x axis label") and ylabel!("my y axis label")
# The limits of the horizontal and the vertical axis can be chosen using xlims!(min, max) and ylims!(min, max) respectively

#---------------------------------------------------------------#
#1.4.3 Overlaying Several Plots

#support for all normal densities:
x = range(-4, 4, length=100)
# get different density evaluations:
y1 = pdf.(Normal(), x)
y2 = pdf.(Normal(1, 0.5), x)
y3 = pdf.(Normal(0, 2), x)

#plot
plot(x, y1, linestyle=:solid, color=:balck, label="standard normal")
plot!(x, y2, linestyle=:dash, color=:black,
linealpha=0.6, label= "mu =1, sigma = 0.5")
plot!(x, y3, linestyle=:dot, color=:black,
linalpha-0.3, label"mu = 0, sigma = 2")
xlims!(-3, 4)
title!("Normal Densities")
ylabel!("phi(x)")
xlabel!("x")
savefig("JlGraphs/Graphs-Overlaying-a.pdf")

#Here are more example
#hline!([y]) : adds a horizontal line at y
#vline!([x]) : adds a vertical line at x
#legend=position : adds the legend at a specific position, which can be :topleft, :top, :topright, :left, :inside, :right, :bottomleft, or :bottomright.
#size = (width, height) : sets the width and height of your graph(the default is (600, 400))

#---------------------------------------------------------------#
#1.4.4 Exproting a file
#savefig("filepath/filename.format")
using Plots, Distributions
#supprot for all normal densities:
x = range(-4, 4, length=100)
#get different density evaluations:
y1 = pdf.(Normal(), x)
y2 = pdf.(Normal(0, 3), x)

#plot(a):
plot(legned=false, size=(400, 600))
plot!(x, y1, linestyle=:solid, color=:black)
plot!(x, y2, linestyle=:dash, color=:black, linealpha=0.3)
savefig("JlGraphs/Graphs-Export-a.pdf")


#---------------------------------------------------------------#
#---------------------------------------------------------------#
#1.5 Descriptive Statistics
#1.5.1 Discrete Distribution: Frequencies and Contigency Tables
#combine(groupby(df, :x), nrow) or freqtable(df.x)

#For getting the sample shares intead of the counts we can use the comman proptable:(df.y)
#The overall sample share: proptable(df.x, df.y)
#The share within x values (row percentages): proptable(df.x, df.y, margins=1)
#The share within y values (column percentages): proptable(df.x, df.y, margins=2)
#kids = 1 if the repondent has at least one child
#ratemarr = Rating of the own marriage(1= verry unhappy, ..., 5=very happy)

using Pkg
Pkg.add("CategoricalArrays")
Pkg.add("FreqTables")

using WooldridgeDatasets, DataFrames, CategoricalArrays, FreqTables
affairs = DataFrame(wooldridge("affairs"))
#attarch labels to kids and convert it to categorical variable:
affairs.haskids = categorical(
        recode(affairs.kids, 0 => "no", 1 => "yes")
)

# ...a and ratemarr (for example: 1 = "very unhappy", ..., 5 = "very happy")
affairs.marriage = categorical(
        recode(affairs.ratemarr,
        1 => "very unhappy",
        2 => "unhappy",
        3 => "average",
        4 => "happy",
        5 => "very happy"
        )
)

#frequency table (alphabetical order of elements):
ft_marriage = freqtable(affairs.marriage)
println("ft_marriage: \n $ft_marriage\n")

#frequncy table with groupby:
ft_groupby = combine(
        groupby(affairs, :haskids),
        nrow
)
println("ft_groupby: \n $ft_groupby\n")

#contingency tables with absolute and relative values:
ct_all_abs = freqtable(affairs.marriage, affairs.haskids)
println("ct_all_abs: \n $ct_all_abs\n")

ct_all_rel = proptable(affairs.marriage, affairs.haskids)
println("ct_all_rel: \n $ct_all_rel\n")

#share within "marriage (i.e. within a row):
ct_row = proptable(affairs.marriage, affairs.haskids, margins=1)
println("ct_row: \n $ct_row\n")

#share within "haskids" (i.e. within a column):
ct_col = proptable(affairs.marriage, affairs.haskids, margins=2)
println("ct_col: \n $ct_col\n")

using Plots
using StatsPlots
#counts for all graphs:
counts_m = sort(freqtable(affairs.marriage), rev=true)
levels_counts_m = String.(collect(keys(counts_m.dicts[1])))
colors_m = [:grey60, :grey50, :grey40, :grey30, :grey20]

ct_all_abs = freqtable(affairs.marriage, affairs.haskids)
levels_counts_all = String.(collect(keys(ct_all_abs.dicts[1])))
colors_all = [:grey80 :grey50]

# pie chart (a):
pie(levels_counts_m, counts_m, color =:grey, legend=false)
savefig("JLGraphs/Descr-pie.pdf")

#bar chart (b):
bar(levels_counts_m, counts_m, color=:grey, legend=false)
savefig("JLGraphs/Descr-bar.pdf")

#stacked bar plot (can:
groupedbar(ct_all_abs, bar_position=:stack, color = colors_all, label=["np" "yes"])
xticks!(1:5, levels_counts_all)
savefig("JLGraphs/Descr-Bar2.pdf")

#grouped bar plot (d):
groupedbar(ct_all_abs, bar_position=:dodge,
color_colors_all, label = ["no" "yes"])
xticks!(1:5, levels_counts_all)
savefig("J;Graphs/Descr-Bar3.pdf")

#---------------------------------------------------------------#
#1.5.2 Continuous Distributions: Histogram and Density
using WooldridgeDatasets, Plots, DataFrames

ceosall = DataFrame(wooldridge("ceosal1"))

#extract roe:
roe = ceosall.roe

#histogram with counts (a) :
histogram(roe, clor=:grey, legned=false)
ylabel!("Counts")
xlabel!("roe")
savefig("JLGraphs/Descr-hist.pdf")

#histogram with density and explicit breaks (b):
breaks = [0, 5, 10, 20, 30, 60]
histogram(roe, color=:grey, bins=breaks, normalize=true, legend=false)
xlabel!("roe")
ylabel!("Density")
savefig("JLGraphs/Descr-hist2.pdf")


#KDensity.jl
using KernelDensity

#estimate kernel density:
kde_est = KernelDensity.kde(roe)

#kernel density (a):
plot(kde_est.x, kde_est.density, color=:black, linewidth=2, legend=false)
ylabel!("density")
xlabel!("roe")
savefig("JLGraphs/Descr-kde.pdf")

#kernel density with overlayed histogram (b):
histogram(roe, color=:grey, normalize=true, legend=false)
plot!(kde_est.x, kde_est.density, color=:black, linewidth=2)
ylabel!("density")
xlabel!("roe")
savefig("JLGraphs/Descr-kde2.pdf")

#---------------------------------------------------------------#
#1.5.3 Empirical Cumulative Distribution Function (ECDF)
#The ECDF is a graph of all values x of a variable against the share of obsevations with a value less than or equal to x.
#A straightforward way to plot the ECDF for our ROE variable is shown in following code.
#Here, the argument  linetype=:strppre  implements a step function.

ceosall = DataFrame(wooldridge("ceosal1"))

#extract roe:
roe = ceosall.roe

#calculate ECDF:
x = sort(roe)
n = length(x)
y = range(start=1, stop=n) / n

#plot a step function:
plot(x, y, linetype=:steppre, color=:black, legned=false)
xlabel!("roe")
savefig("JLGraphs/Descr-ecdf.pdf")

#---------------------------------------------------------------#
#1.5.4 Funcdamental Statistics
#mean(x): Sample average
#median(x): Sample median
#var(x): Sameple variance
#std(x): Sample standard deviation
#cov(x,y): Sample covariance
#cor(x,y): Sample correlation
#quantile(x, q): q qunatile=100Q percentile, e.g quantile(x, 0.5)=sample median


#Descr-Stats.jl
using WooldridgeDatasets, DataFrames ,Statistics

ceosal1 = DataFrame(wooldridge("ceosal1"))

#extract roe and salary:
roe = ceosal1.roe
salary = ceosal1.salary

#sample average:
roe_mean = mean(roe)
println("roe_mean: $roe_mean\n")

#sample median:
roe_median = median(roe)
println("roe_median: $roe_median\n")

#corrected standard deviation (n-1 scaling):
roe_std = std(roe)
println("roe_std: $roe_std\n")

#correlation with roe:
roe_corr = cor(roe, salary)
println("roe_corr: $roe_corr\n")

#correlation matrix with roe:
roe_corr_mat = cor(hcat(roe, salary))
println("roe_corr_mat: \n$roe_corr_mat\n")

#Descr-Boxplot.jl
using WooldridgeDatasets, DataFrames, Statistics

ceosal1 = DataFrame(wooldridge("ceosal1"))

#extract roe and salary:
roe = ceosal1.roe
salary = ceosal1.salary

#sample average:
roe_mean = mean(roe)
println("roe_mean: $roe_mean\n")

#sample median:
roe_med = median(roe)
println("roe_med: $roe_med\n")

#corrected standard deviation (n-1 scaling):
roe_std = std(roe)
println("roe_std: $roe_std\n")

#correlation with roe:
roe_corr = cor(roe, salary)
println("roe_corr: $roe_corr\n")

#correlation matrix with roe:
roe_corr_mat = cor(hcat(roe, salary))
println("roe_corr_mat: \n$roe_corr_mat\n")


#Descr-Boxplot.jl
using WooldridgeDatasets, DataFrames, StatsPlots

ceosal1 = DataFrame(wooldridge("ceosal1"))

#extract roe and salary:
roe = ceosal1.roe
consprod = ceosal1.consprod

#plotting descriptive statistics:
boxplot(roe, orientation=:h, linecolor=:black, color=:white, legend=false)
yticks!([1], [""])
ylabel!("roe")
savefig("JLGraphs/Descr-boxplot.pdf")

#plotting descriptive statistics (logical indexing):
roe_cp0 = roe[consprod.==0]
roe_cp1 = roe[consprod.==1]
boxplot([roe_cp0, roe_cp1], liencolor=:black, color=:white, legend=false)
xticks!([1, 2], ["consprod=0", "consprod=1"])
ylabel!("roe")
savefig("JLGraphs/Descr-boxplot2.pdf")

#---------------------------------------------------------------#
#1.6 Probability Distributions
#Appendix B of Wooldridge (2019)
#The commands for evaluationg the proba bility density functtion (PDF) for continusous,
#the probability mass function (PMF) for discrete, and the cumulative distiribution function (CDF) as well as quantile function (inverse CDF)
# for the most relevant distribution are shown inn above markdown. The function are available after executing using Distrubutions

using Distributions

#Distribution 
#Parameters Combine code with 
#PMF/PDF: pdf(..., x)
#CDF: cdf(..., x)
#Quantile: quantile(..., p)

#Discrete distribution:
#Bernoulli(p): Bernoulli distribution with success probability p
#Binomial(n, p): Binomial distribution with n trials and success probability p
#Hypergeometric(s, f, n): Hypergeometric distribution with s successes, f failures, and n trials
#Poisson(lambda): Poisson distribution with mean lambda
#Geometric(p): Geometric distribution with success probability p

#Continuous distribution:
#Uniform(a, b): Uniform distribution on the interval [a, b]
#Logistic(mu, theta): Logistic distribution with mean mu and scale theta
#Exponential(1 / lambda): Exponential distribution with mean 1 / lambda
#Normal(): Standard normal distribution
#Normal(mu, sigma): Normal distribution with mean mu and standard deviation sigma
#LogNormal(mu, sigma): Log-normal distribution with mean mu and standard deviation sigma
#Chisq(n): Chi-squared distribution with n degrees of freedom
#TDist(n): Student's t-distribution with n degrees of freedom
#FDist(m, n): F-distribution with m and n degrees of freedom

#---------------------------------------------------------------#
#1.6.1 Discrete Distributions
#The PMF f(x) = P(X=x) gives the probability that a random variable X with this distribution takes tyhe given value x.
#For most important of those distributions(Bernoulli, Binomial, Hypergeometic, Poission and Geometirc)

#PMF-binom.jl
using Distributions

#pedestrian approach:
p1 = binomial(10, 2) * (0.2^2) * (0.8*8)
println("p1: $p1\n")

#package function:
p2 = pdf(Binomial(10, 0.2), 2)
println("p2: $p2\n")


#PMF-example.jl
using Distributions, DataFrames, Plots

#PMF for all values between 0 and 10:
x = 0:10
fx = pdf.(Binomial(10, 0.2), x)

#collect values in DataFrame:
result = DataFrame(x=x, fx=fx)
println("result: \n$result\n")

# plot:
bar(x, fx, color=:grey, alpha=0.6, legend=false)
xlabel!("x")
ylabel!("f(x)")
savefig("JLGraphs/Prob-PMF.pdf")

#---------------------------------------------------------------#
#1.6.2 Continuous Distributions
# uniform, logistic, exponential, normal, t, chi, F``

using Plots, Distributions
#support of normal density:
x_range = range(-4, 4, length=100)

# PDF for all these values:
pdf_normal = pdf.(Normal(), x_range)

# plot:
plot(x_range, pdf_normal, color=:black, legend=false)
xlabel!("x")
ylabel!("dx")
savefig("JLGraphs/Prob-PDF.pdf")

#---------------------------------------------------------------#
#1.6.3 Cumulative Distribution Function (CDF)
#For all distribution, the CDF F(x) = P(X<=x) represents the probability that the random variable X takes a value of at most x.
#The probability that X is between two values a and b is P(a < X <= b) = F(b) = F(a)
#We can directly use the Distributions functions in Table 1.6 in combination with the function cdf to these calculations as demonstrated in code

#CDF-example.jl
using Distributions
#binonmial CDF:
p1 = cdf(Binomial(10, 0.2), 3)
println("p1: $p1\n")

#normal CDF:
p2 = cdf(Normal(), 1.96) - cdf(Normal(), -1.96)
println("p2: $p2\n")

#B.6 Probability for a Normal Random Variable
using Distributions

#first example using the transformation:
p1_1 = cdf(Normal(), 2 / 3) - cdf(Normal(), -2 / 3)
println("p1_1: $p1_1\n")

#first example working directly with the distribution of X:
p1_2 = cdf(Normal(4, 3), 6) - cdf(Normal(4, 3), 2)
println("p1_2: $p1_2\n")

#second example:
p2 = 1 - cdf(Normal(4,3), 2) + cdf(Normal(4, 3), -2)
println("p2: $p2\n")

#CDF-figure.jl
#binomial CDF:
x_binom = range(-1, 10, length=100)
cdf_binom = cdf.(Binomial(10, 0.2), x_binom)

plot(x_binom, cdf_binom, linetytpe=:steppre, color=:black, legend=false)
xlabel!("x")
ylabel!("F(x)")
savefig("JLGraphs/Prob-CDF.pdf")

#normal CDF:
x_norm = range(-4, 4, length=1000)
cdf_norm = cdf.(Normal(), x_norm)

plot(x_norm, cdf_norm, color=:black, legend=false)
xlabel!("x")
ylabel!("F(x)")
savefig("JLGraphs/Prob-CDF2.pdf")


#Qunatile
#The q-quantile x(q) of a random variable is the value for which the probability to xample a value
#x <= x[q] is just q. 
#These values are important for example for calculating critical values of test statistics

q_975 = quantile(Normal(), 0.975)
println("q_975: $q_975\n")

#---------------------------------------------------------------#
#1.6.4 Random Draws from Probability Distributions
using Distributions

#smaple-Bernoulli.jl
sample = rand(Bernoulli(0.5), 10)
println("sample: $sample\n")

#Sample-Norm.jl
sample = rand(Normal(), 6)
sample_rounded = round.(sample, digits=5)
println("sample_rounded: $sample_rounded\n")

#Random-Number.jl
using Distributions, Random

Random.seed!(12345)
#sample from a standard normal RV with sample size n=3:
sample1 = rand(Normal(), 3)
println("sample1: $sample1\n")

#a different sample from the same distribution:
sample2 = rand(Normal(), 3)
println("sample2: $sample2\n")

#set the seed of the random number generator and take two samples:
Random.seed!(54321)
sample3 = rand(Normal(), 3)
println("sample3: $sample3\n")

sample4 = rand(Normal(), 3)
println("sample4: $sample4\n")

#reset the seeed to the same value to get the same samples again:
Random.seed!(54321)
sample5 = rand(Normal(), 3)
println("sample5: $sample5\n")

sample6 = rand(Normal(), 3)
println("sample6: $sample6\n")


#---------------------------------------------------------------#
#---------------------------------------------------------------#
#1.7 Confidence Intervals and Statistical Inference

#---------------------------------------------------------------#
#1.7.1 Confidecnce Intervals
# Confidence intervals are introduced in Wooldridege Appencix C.5
# Thy are constructed clearly: For 95% of all samples,
#the implied CI includes th populatyion Parameters


#Example-C-2.jl
using Distributions

#manually enter raw data from Wooldridge Table C.3
SR87 = [10, 1, 6, 0.45, 1.25, 1.3, 1.06, 3, 8.18, 1.67,
0.97, 1, 0.45, 5.03, 8, 9, 18, 0.28, 7, 3.97]
SR88 = [3, 1, 5, 0.5, 1.54, 1.5, 0.8, 2, 0.67, 1.17, 0.51, 
0.5, 0.61, 6.7, 4, 7, 19, 0.2, 5, 3.83]

# calcualte change:
Change = SR88 .- SR87

#ingredients to CI formula:
avgCH = mean(Change)
println("avgCH: $avgCH\n")

n = length(Change)
sdCH = std(Change)
se = sdCH / sqrt(n)
println("se: $se\n")

c = quantile(TDist(n-1), 0.975)
println("c: $c\n")

#confidence interval:
lowerCI = avgCH - c * se
println("lowerCI: $lowerCI\n")
upperCI = avgCH + c * se
println("upperCI: $upperCI\n")


#Exampel-C-3.jl
using Distributions, DataFrames, WooldridgeDatasets

audit = DataFrame(wooldridge("audit"))
y = audit.y

#ingredients to CI formula:
argy = mean(y)
n = length(y)
sdy = std(y)
se = sdy / sqrt(n)
c95 = quantile(Normal(), 0.975)
c99 = quantile(Normal(), 0.995)

#95% confidence interval:
lowerCI95 = argy - c95 * se
println("lowerCI95: $lowerCI95\n")

upperCI95 = argy + c95 * se
println("upperCI95: $upperCI95\n")

#99% confidence interval:
lowerCI99 = argy - c99 * se
println("lowerCI99: $lowerCI99\n")

upperCI99 = argy + c99 * se
println("upperCI99: $upperCI99\n")

#---------------------------------------------------------------#
#1.7.2 t Tests