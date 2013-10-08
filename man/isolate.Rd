\name{isolate}
\alias{isolate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Isolated nodes collection
}
\description{
Get the indices of the isolated nodes in the graph.
}
\usage{
isolate(A)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
input matrix -- adjacency matrix of an observed graph, of dimension n-nodes x n-nodes.
}
}
\value{
  \item{isolate}{the indices of the isolated nodes in the graph with adjacency matrix \code{A}.}
  \item{nonisolate}{the indices of the non-isolated nodes in the graph with adjacency matrix \code{A}.}
}
\references{
Yang Feng, Richard J. Samworth and Yi Yu, Community Detection via Fused Principal Component Analysis, manuscript.
}
\author{
Yang Feng, Richard J. Samworth and Yi Yu
}
\examples{
%% to generate an adjacency matrix
A = matrix(c(0,1,1,1,0,0,1,0,0), byrow = TRUE, ncol = 3)

%% have a look at A
A

%% get the isolated collection
iso.A = isolate(A)

%% the isolated node collection
iso.A$isolate

%% the non-isolated node collection
iso.A$nonisolate

}

