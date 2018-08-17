n <- 3; m <- 100
cov <- matrix(0,n,n)
for(i in 1:n) {
  for(j in 1:n) {
    cov[i,j] <- 0.5^abs(i-j)
  }
}
A <- matrix(rep(0.8,m^2),m,m)
diag(A) <- rep(1,m)
AI <- ginv(A)
AI[1,1]

COV <- cov%x%A
covI <- ginv(cov)
COVI <- ginv(COV)
covI
COVI
