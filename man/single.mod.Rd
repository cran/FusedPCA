\name{single.mod}
\alias{single.mod}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Modularity based on DCBM and SBM assumptions
}
\description{
Get the modularity values based on DCBM and SBM assumptions for a single community detection estimator.
}
\usage{
single.mod(A, clusters, K = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
input matrix -- adjacency matrix of an observed graph based on the non-isolated nodes, of dimension \code{n.noniso} x \code{n.noniso}, where \code{n.noniso} is the number of the non-isolated nodes.
}
  \item{clusters}{
input vector -- the estimator of the community labels of the non-isolated nodes in the network, of dimension \code{n.noniso}, values taken from 1 to K, where K is the number of communities.
}
  \item{K}{
the number of the communities, with 2 as the default value.
}
}
\value{
  \item{mod.dcbm}{the modularity value based on the DCBM assumption.}
  \item{mod.sbm}{the modularity value based on the SBM assumption.}
%% ...
}
\references{
Yang Feng, Richard J. Samworth and Yi Yu, Community Detection via Fused Principal Component Analysis, manuscript.
}
\author{
Yang Feng, Richard J. Samworth and Yi Yu
}
\examples{
## to generate an adjacency matrix
A = matrix(c(0,1,1,1,0,0,1,0,0), byrow = TRUE, ncol = 3)

## have a look at A
A

## ratio and normalised cut values 
## given the community labels 1, 1 and 2 to nodes 1, 2 and 3
single.mod(A, c(1,1,2))
}

