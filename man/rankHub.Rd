% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkAnalysis.R
\name{rankHub}
\alias{rankHub}
\title{Prioritize networks hubs by degree.}
\usage{
rankHub(ig, bdeg = NULL, level = c("x", "y"))
}
\arguments{
\item{ig}{An igraph network object output from \code{\link{adj2igraph}}}

\item{bdeg}{If NULL, the ranking of hubs nodes is done by their 
highest degree in the \code{ig} network within their respective node 
\code{level = "y"} or \code{level = "x"}. 

If non-null, List output from list element of \code{\link{bootVote}}. 
Element \code{bdeg$yy[b,]} is an integer vector representing 
the degree distribution for the \eqn{b}th bootstrap replicate 
across the y nodes.  
Similarly, element \code{bdeg$xy[b,]} is an integer vector 
representing the degree distribution for the \eqn{b}th bootstrap 
replicate across the x nodes. 
If `bdeg` is available, the hubs will be prioritized according to 
their mean rank of degree across the \eqn{B} bootstrap replicates. 
Highly ranked hubs consistently have a larger degree than other 
nodes across the bootstrap replicates.}

\item{level}{Character value either 'y' or 'x' (defaults to 'x') 
specifying to rank hubs that are x or y nodes. Ranking levels 
x and y together is not supported.}
}
\value{
The igraph object \code{ig} updated with a 
'rank_hub' attribute containing each nodes' respective rank. 
If \code{bdeg} is non-null the mean degree rank across
bootstrap replicates is labeled with attribute 'mean_rank_hub',
and its corresponding standard deviation is labeled
as attribute 'sd_rank_hub'.
}
\description{
Rank hubs by degree either with the final network or 
according to how consistently the degree is high across bootstrap replicates.
}
\seealso{
\code{\link{adj2igraph}}, \code{\link{cisTrans}}, 
\code{\link{reportHubs}}, \code{\link{xHubEnrich}},
}
