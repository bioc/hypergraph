\name{Hypergraph-class}
\docType{class}
\alias{Hypergraph-class}
\alias{hyperedges,Hypergraph-method}
\alias{inciMat,Hypergraph-method}
\alias{initialize,Hypergraph-method}
\alias{nodes,Hypergraph-method}
\alias{numNodes,Hypergraph-method}
\alias{toGraphNEL,Hypergraph-method}

\title{Class Hypergraph}
\description{A hypergraph consists of a set of nodes and a set of
  hyperedges.  Each hyperedge is a subset of the node set.  This class
  provides a representation of a hypergraph that is (hopefully) useful
  for computing.
 }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Hypergraph", nodes, hyperedges)}.
You can also use the convenience function \code{Hypergraph}.  The
\code{nodes} argument should be a character vector of distinct labels
representing the nodes of the hypergraph.  The \code{hyperedges}
argument must be a list of \code{\link{Hyperedge-class}} objects.
}
\section{Slots}{
  \describe{
    \item{\code{nodes}:}{A \code{"character"} vector specifying the nodes}
    \item{\code{hyperedges}:}{A \code{"list"} of
      \code{\link{Hyperedge-class}} objects}
  }
}
\section{Methods}{
  \describe{
    \item{hyperedges}{\code{signature(.Object = "Hypergraph")}: Return
    the list of \code{Hyperedge} objects }
    \item{inciMat}{\code{signature(.Object = "Hypergraph")}: Return the
    incidence matrix representation of this hypergraph }
    \item{initialize}{\code{signature(.Object = "Hypergraph")}: Create
    an instance}
    \item{nodes}{\code{signature(object = "Hypergraph")}: Return the
    vector of nodes (character vector) }
    \item{numNodes}{\code{signature(object = "Hypergraph")}: Return the
    number of nodes in the hypergraph }
    \item{toGraphNEL}{\code{signature(.Object = "Hypergraph")}: Return
    the \code{graphNEL} representation of the hypergraph (a bipartite
    graph) }
  }
}
\author{Seth Falcon}
\note{ ~~further notes~~ }

\seealso{
  \code{\link{Hyperedge-class}}
  \code{\link{DirectedHyperedge-class}}
  \code{\link{graphNEL-class}}
}
\examples{
nodes <- LETTERS[1:4]
hEdges <- lapply(c("A", LETTERS[1:2], LETTERS[3:4]), "Hyperedge")
hg <- new("Hypergraph", nodes=nodes, hyperedges=hEdges)
}
\keyword{classes}