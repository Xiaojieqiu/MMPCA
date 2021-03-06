% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_BBC.R
\name{simulate_BBC}
\alias{simulate_BBC}
\title{simulate_BBC}
\usage{
simulate_BBC(N, L, epsilon = 0, lambda = 1, theta_true = NULL)
}
\arguments{
\item{N}{number of observations.}

\item{L}{vector of length N containing the total count per observations.
Duplicated if integer.}

\item{epsilon}{The noise level in the latent space. Quantify how far the
distribution is from theta_true}

\item{lambda}{A parameter quantifying the class proportion. lambda=1 means
balanced cluster sizes, lower means that the last clusters are bigger, with
an geometric decay in cluster size for the first ones.}

\item{theta_true}{The true parameter theta for the simulation. If \code{NULL}
(default) then it is initialized to the default value of the experimental
section of the paper.}
}
\value{
A list with names \itemize{ \item \code{dtm.full}: A
  \code{\link[tm]{DocumentTermMatrix}} object containing the simulated
  document-term matrix \item \code{Ytruth}: the simulated partition \item
  theta_true The parameter of the simulation }
}
\description{
This function simulate from the MMPCA model with an additional
  noise parameter epsilon. The number of cluster is Q=6 for K=4 topics. The
  parameter beta is taken to be the row normalized document-term matrix of 4
  BBC messages contained in BBCmsg.
}
\examples{
simu <- simulate_BBC(N = 100, L = 200, epsilon = 0, lambda = 1)
dtm <- simu$dtm.full
Ytruth <- simu$Ytruth

}
