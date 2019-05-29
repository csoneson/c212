\name{c212.monitor.samples}
\alias{c212.monitor.samples}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generate a template for choosing which samples to monitor.}
\description{
This function generate a template for choosing which samples to monitor based on the model and hierarchy. As some of the MCMC model 
simulations require large amounts of memory choosing not to monitor samples reduced the overall memory footprint.}
%\details{
%}
\usage{
	c212.monitor.samples(model = "1a", hier = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{
Allowed values are "1a" and "BB". "BB" models include a point-mass. 
}
  \item{hier}{
Allowed values are 2 and 3. Generate a template for a 2 or 3 level hierarchy.
}
}
\value{
A dataframe containing two columns:

\emph{variable}: the name of a class of variables e.g. "theta"
\emph{monitor}: 0 - don't monitor, 1 - monitor.
}
\author{
R. Carragher
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
\dontrun{
c212.monitor.samples("1a", hier = 3)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{c212.monitor.samples}
\keyword{Bayesian} % __ONLY ONE__ keyword per line
\keyword{Hierarchy} % __ONLY ONE__ keyword per line
\keyword{Berry and Berry} % __ONLY ONE__ keyword per line
