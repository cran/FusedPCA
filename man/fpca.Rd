\name{fpca}
\alias{fpca}
\alias{fpca.nonscore}
\alias{fpca.score}
\alias{fpca.start}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fused Principal Component Analysis path.
}
\description{
Get the fused principal component analysis path object.
}
\usage{
fpca(A, maxsteps = 200, tol = 1e-3, normalised = T, K = 2, score = F, 
ridge = T, approx = F)
fpca.nonscore(A, maxsteps = 100, tol = 1e-3, normalised = T, K = 2, 
ridge = T, approx = FALSE)
fpca.score(A, maxsteps = 100, tol = 1e-3, K = 2, ridge = T, approx = F)
fpca.start(A, maxsteps = 200, tol = 1e-3, normalised = T, K = 2, score = F, 
ridge = T, approx = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
input matrix -- adjacency matrix of an observed graph based on the non-isolated nodes, of dimension \code{n.noniso} x \code{n.noniso}, where \code{n.noniso} is the number of the non-isolated nodes.
}
  \item{maxsteps}{
an integer specifying the maximum number of steps for the algorithm to takebefore termination. Default is 200.
}
  \item{tol}{
a numeric variable giving the tolerance used in the calculation of the hitting andleaving times. A larger value is more conservative, and may cause the algorithmto miss some hitting or leaving events (do not change unless you know whatyou are getting into!). Default is 1e-3.
}
  \item{normalised}{
a logic variable indicating whether normalised Laplacian matrix is used in community detection.
}
  \item{K}{
input integer -- the pre-specified number of communities, with the default value 2.
}
  \item{score}{
a logical variable indicating whether the RoE is used.
}
  \item{ridge}{
a logical variable, indicating whether to penalise the \eqn{\ell_2} norm of the estimator, with penalty equal to \code{eps = 1e-8}. For convenience, we didn't leave this as an argument.
}
  \item{approx}{
a logical variable indicating if the approximate solution path should be used (with no dual coordinates leaving the boundary). Default is \code{FALSE}.
}
}
\details{
This function is a wrap-up of functions \code{\link{fpca.start}}, \code{\link{fpca.cluster}}, \code{\link{fpca.cut}} and \code{\link{get.cluster}}.
}
\value{
  \item{final.ratio.cluster}{
the final estimator of the community labels according to the ratio cut criterion.
}
  \item{ratio.location}{
the location of the chosen estimator on the path according to the ratio cut criterion.
}
  \item{final.normalised.cluster}{
the final estimator of the community labels according to the normalised cut criterion.
}
  \item{normalised.location}{
the location of the chosen estimator on the path according to the normalised cut criterion.
}
  \item{final.whole}{
a matrix if \code{K = 2} and an array if \code{K > 2}, which is the estimators of the fused loadings estimators along the path. The matrix is of dimension number of the non-isolated nodes x steps on the path. The array is of dimension number of the non-isolated nodes x steps on the path x (K - 1). If \code{score = T}, the estimators are the ratio of eigenvectors.
}
  \item{iso.seq}{
a vector of indices of the isolated nodes.
}
  \item{final.matrix}{
a matrix if \code{K = 2} and an array if \code{K > 2}, which is the estimators of the fused loadings estimators along the path. The matrix is of dimension number of the non-isolated nodes x steps on the path. The array is of dimension number of the non-isolated nodes x steps on the path x (K - 1). It only appears if \code{score = T}.
}
}
\references{
Feng, Y., Samworth, R. J. and Yu, Y., Community Detection via Fused Principal Component Analysis, manuscript.
Holland, P.W., Laskey, K.B. and Leinhardt, S., 1983. Stochastic block models: first steps. Social Networks 5, 109-137.
Jin, J., 2012. Fast community detection by score.
Karrer, B. and Newman, M.E.J., 2011. Stochastic blockmodels and community structure in networks. Physical Review E 83, 016107.
}
\author{
Yang Feng, Richard J. Samworth and Yi Yu
}
\seealso{
\code{\link{fpca.start}}, \code{\link{fpca.cluster}}, \code{\link{fpca.cut}}, \code{\link{get.cluster}}.
}
\examples{
## sbm

## setting

seed = 2
n = 100
theta.in = 0.03
theta.bw = 0.001
K = 2

A = gen.sbm(n, theta.in, theta.bw, K, seed)

# you can try the following to get separate results
# fit.A = fpca.nonscore(A, maxsteps = 100, tol = 1e-3, normalised = TRUE, K = 2, 
# ridge = FALSE, approx = TRUE)
#A.cluster = fpca.nonscore.cluster(fit.A$final.whole)
#A.cut = fpca.cut(A, fit.A, A.cluster)
#get.cluster(A, fit.A$iso.seq, A.cut, A.cluster)

# in fpca.start function, only the matrix/array of the fused loadings estimators
# are get. no further estimation are calculated.
#fit.start.A = fpca.start(A, maxsteps = 100, tol = 1e-3, normalised = TRUE, K = 2, 
# ridge = TRUE, approx = TRUE)
fit.A.wrapup = fpca(A, maxsteps = 200, tol = 1e-3, normalised = TRUE, K = 2, 
ridge = FALSE, approx = TRUE)

## you can also try the following example
### degree-corrected block model
# seed = 2
# K = 2
# n = 100
# theta.in = 0.03
# theta.bw = 0.001
# theta = rep(0, n*K)
# for(i in 1:(n*K)){
#	theta[i] = 0.75 + 0.475*(i/n/K)
# }

# A = gen.dcbm(n = n, theta.in = theta.in, theta.bw = theta.bw, theta = theta, K = 2, 
# seed = seed)
# you can try the following to get separate results
# fit.A = fpca.score(A, maxsteps = 200, tol = 1e-3, K = 2, ridge = FALSE, 
# approx = TRUE)
# in fpca.start function, only the matrix/array of the fused loadings estimators
# are get. no further estimation are calculated.
#fit.start.A = fpca.start(A, maxsteps = 100, tol = 1e-3, normalised = TRUE, K = 2, 
#ridge = TRUE, approx = TRUE, score = TRUE)

# fit.A.wrapup = fpca(A, maxsteps = 200, tol = 1e-3, normalised = TRUE, K = 2, 
# ridge = FALSE, approx = FALSE, score = TRUE)


}
