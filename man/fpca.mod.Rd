\name{fpca.mod}
\alias{fpca.mod}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The modularity values based on the DCBM and SBM assumptions along the path
}
\description{
Get the modularity values based on the DCBM and SBM assumptions for the estimators along the path. It is part of the function in \code{\link{fpca}}, the main part of this function is \code{\link{single.mod}}.
}
\usage{
fpca.mod(A, obj, fpca.cluster, K = 2, iso.seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
input matrix -- adjacency matrix of an observed graph based on the non-isolated nodes, of dimension \code{n.noniso} x \code{n.noniso}, where \code{n.noniso} is the number of the non-isolated nodes.
}
  \item{obj}{
a \code{\link{fpca.start}} object, which is a list containing \code{iso.seq}. This argument is used only if \code{iso.seq} is missing.
}
  \item{fpca.cluster}{
a list of vectors, with each vector as the estimator of the community labels of the non-isolated nodes in the network, of dimension \code{n.noniso}, values taken from 1 to K, where K is the number of communities.
}
  \item{K}{
the number of the communities, with 2 as the default value.
}
  \item{iso.seq}{
a vector of the indices of those isolated nodes in the graph. If it is missing, \code{obj} should be offered.
}
}
\value{
  \item{mod.dcbm.list}{a list of modularity values based on DCBM assumption for the estimator path.}
  \item{mod.sbm.list}{a list of modularity values based on SBM assumption for the estimator path.}
%% ...
}
\references{
Yang Feng, Richard J. Samworth and Yi Yu, Community Detection via Fused Principal Component Analysis, manuscript.
Holland, P.W., Laskey, K.B. and Leinhardt, S., 1983. Stochastic block models: first steps. Social Networks 5, 109-137.
Jin, J., 2012. Fast community detection by score.
Karrer, B. and Newman, M.E.J., 2011. Stochastic blockmodels and community structure in networks. Physical Review E 83, 016107.
}
\author{
Yang Feng, Richard J. Samworth and Yi Yu
}
\seealso{
\code{\link{single.mod}}, \code{\link{fpca}}, \code{\link{fpca.start}}.
}
\examples{
### please see the examples in fpca
}
 
