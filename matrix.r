vector1 <- c(1, 2, 3)
vector2 <- c(10, 15, 3, 11, 16, 12)
result <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(result)

#Operations on Arrays
#Naming columns and rows
vector1 <- c(1, 2, 3)
vector2 <- c(10, 15, 3, 11, 16, 12)
column.names <- c("COL1", "COL2", "COL3")
row.names <- c("R1", "R2", "R3")
matrix.names <- c("Matrix.NO1", "Matrix.NO2")
result <- array(c(vector1, vector2), dim = c(3, 3, 2), 
                dimnames = list(row.names, column.names, matrix.names))
print(result)

#Manipulating array elements
vector1 <- c(1, 2, 3)
vector2 <- c(4, 6, 8, 0, 2, 4)
array1 <- array(c(vector1, vector2), dim = c(3, 3, 2))
vector3 <- c(3, 2, 1)
vector4 <- c(2, 4, 6, 8, 3, 5)
array2 <- array(c(vector3, vector4), dim = c(3, 3, 2))
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]
result <- matrix1 + matrix2
print(result)

result<-matrix1-matrix2
print(result)
result<-matrix1*matrix2
result<-matrix1/matrix2

#Accessing Array elements
vector1 <- c(1, 2, 3)
vector2 <- c(10, 15, 3, 11, 16, 12)
column.names <- c("COLUMN1", "COLUMN2", "COLUMN3")
row.names <- c("ROW1", "ROW2", "ROW3")
matrix.names <- c("Matrix.NO1", "Matrix.NO2")

# taking vector as input
result <- array(c(vector1, vector2), dim = c(3, 3, 2), dimnames = list(row.names, column.names, matrix.names))
print(result)

# print third row of second matrix
print(result[3,,2])


#Calculation across array element

vector1 <- c(3, 2, 1)
vector2 <- c(2, 4, 6, 8, 0, 1)
new.array <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(new.array)

# using apply and calculate the sum of rows in matrices
result <- apply(new.array, c(1), sum)
print(result)


#Creation of Matrices:
  
  # Elements are arranged sequentially by row.
  M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

#Matrices Addition
# Creating 1st Matrix
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3) 

# Creating 2nd Matrix
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

# Getting number of rows and columns
num_of_rows = nrow(B)
num_of_cols = ncol(B)

# Creating matrix to store results
sum = matrix(, nrow = num_of_rows, ncol = num_of_cols)

# Printing Original matrices
print(B)
print(C)

# Calculating diff of matrices
for(row in 1:num_of_rows) 
{	
  for(col in 1:num_of_cols) 
  {
    diff[row, col] <- B[row, col] - C[row, col]
  }
}

# Printing resultant matrix
print(diff)
# Calculating product of matrices
for(row in 1:num_of_rows) 
{
  for(col in 1:num_of_cols) 
  {
    prod[row, col] <- B[row, col] * C[row, col]
  }
}

# Printing resultant matrix
print(prod)

# R program for matrix multiplication
# using '*' operator

# Creating 1st Matrix
B = matrix(c(1, 2 + 3i, 5.4), nrow = 1, ncol = 3) 

# Creating 2nd Matrix
C = matrix(c(2, 1i, 0.1), nrow = 1, ncol = 3)

# Printing the resultant matrix
print (B * C)


#Matrices Division
# Creating 1st Matrix
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3) 

# Creating 2nd Matrix
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

# Getting number of rows and columns
num_of_rows = nrow(B)
num_of_cols = ncol(B)
# Creating matrix to store results
div = matrix(, nrow = num_of_rows, ncol = num_of_cols)

# Printing Original matrices
print(B)
print(C)
# Calculating product of matrices
for(row in 1:num_of_rows) 
{
  for(col in 1:num_of_cols) 
  {
    div[row, col] <- B[row, col] / C[row, col]
  }
}

# Printing resultant matrix
print(div)

# Creating 1st Matrix
B = matrix(c(4, 6i, -1), nrow = 1, ncol = 3) 

# Creating 2nd Matrix
C = matrix(c(2, 2i, 0), nrow = 1, ncol = 3)

# Printing the resultant matrix
print (B / C)
