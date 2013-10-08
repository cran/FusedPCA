\name{fused.trans}
\alias{fused.trans}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The graph based penalty transformation matrix
}
\description{
Get the graph based penalty transformation matrix, i.e. \eqn{D_p} in \eqn{p_{\lambda}(\beta) = \lambda\|D_p\beta\|_1.}
}
\usage{
fused.trans(A)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
input matrix -- adjacency matrix of an observed graph based on the non-isolated nodes, of dimension \code{n.noniso} x \code{n.noniso}, where \code{n.noniso} is the number of the non-isolated nodes.
}
}
\value{
the graph based penalty transformation matrix, of dimension \eqn{|E| \times n}, where \eqn{|E|} is the number of edges in the graph and \eqn{n} is the number of nodes.
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

## the graph based transformation matrix
fused.trans(A)
}

