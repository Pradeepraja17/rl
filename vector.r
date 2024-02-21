
X <- c(1, 4, 5, 2, 6, 7)
print('using c function')
print(X)
Y <- seq(1, 10, length.out = 5)
print('using seq() function')
print(Y)
Z <- 5:10
print('using colon')
print(Z)

#Accessing vector elements
X <- c(2, 5, 8, 1, 2)
print('using Subscript operator')
print(X[2])
Y <- c(4, 5, 2, 1, 7)
print('using c function')
print(Y[c(4, 1)])
Z <- c(5, 2, 1, 4, 4, 3)
print('Logical indexing')
print(Z[Z>3])

#Modifying a vector
X <- c(2, 5, 1, 7, 8, 2)
# modify a specific element
X[3] <- 11
print('Using subscript operator')
print(X)

# Modify using different logics.
X[X>9] <- 0
print('Logical indexing')
print(X)

# Modify by specifying the position or elements.
X <- X[c(5, 2, 1)]
print('using c function')
print(X)

#Deleting a vector
#Creating a vector
X <- c(5, 2, 1, 6)

# Deleting a vector
X <- NULL
print('Deleted vector')
print(X)


#Arithmetic operations
#Creating Vectors
X <- c(5, 2, 5, 1, 51, 2)
Y <- c(7, 9, 1, 5, 2, 1)

# Addition
Z <- X + Y
print('Addition')
print(Z)

# Subtraction
S <- X - Y
print('Subtraction')
print(S)

# Multiplication
M <- X * Y
print('Multiplication')
print(M)

# Division
D <- X / Y
print('Division')
print(D)

#Sorting of Vectors
#Creating a Vector
X <- c(5, 2, 5, 1, 51, 2)

# Sort in ascending order
A <- sort(X)
print('sorting done in ascending order')
print(A)

# sort in descending order.
B <- sort(X, decreasing = TRUE)
print('sorting done in descending order')
print(B)

#II Creating List
#Creating Vectors
vec1 <- c(1, 2, 3)
vec2 <- c(TRUE, FALSE)

# Creating a list of Vectors
listt = list(vec1, vec2)

# Printing List
print (listt)


#Adding elements to a list
# Creating Vectors
vec1 <- c(1, 2, 3)
vec2 <- c(TRUE, FALSE)

# Creating list of Vectors
lst = list(vec1, vec2)

# Creating a new Vector
vec3 <- c(1 + 3i)

# Adding Vector to list
lst[[3]]<- vec3

# Printing List
print (lst)

# determine the length of list
len <- length(lst)

# Creating new Vector
vec3 <- c(0.5, 2 + 2i)

# Using for loop to add elements
for( i in 1:2)
{
  
  # Adding vec to list
  lst[[len + i]]<- vec3
}
print (lst)

#Removing elements from a list
lst[[2]]<-NULL
print ("Modified List")
print (lst)

#Modifying elements in a list

# Creating Vectors
vec1 <- c(1, 2, 3)
vec2 <- c(TRUE, FALSE)

# Creating list of Vectors
lst = list(vec1, vec2)
print ("original list")
print (lst)

# Modifying List element
lst[[2]]<-c("TEACH", "CODING")
print ("Modified List")
print (lst)

#Merging two lists
# R program to merge two lists of Vectors

# Creating 1st list
list_data1 <- list(c(1:3), c(TRUE, FALSE))

# Creating 2nd list
list_data2 <- list(c(0.1, 3.4))
print("First List")
print (list_data1)
print ("Second List")
print (list_data2)
print("Merged List")

# Merging Lists
merged_list <- c(list_data1, list_data2)
print (merged_list)




