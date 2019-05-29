\name{c212.GBH}
\alias{c212.GBH}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Implementaion of Group Bonferroni-Hochberg procedure for control of the False Discovery Rate}
\description{
The Group Benjamini-Hochberg procedure for control of the False Discovery Rate is designed to take advantage of possible groupings which may exist within 
sets of hypotheses. The procedure estimates the number of true null hypotheses in each grouping and uses this to weight the p-values which are then compared to a weighted level for control. The procedure asymptotically
controls the False Discovery Rate at the required level.
}
\usage{
c212.GBH(trial.data, pi0 = "TST", alpha)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{trial.data}{
File or data frame containing the p-values for the hypotheses being tested. 
The data must contain the following columns: \emph{B}: the index or name of the groupings; \emph{p}: the p-values of the hypotheses.
}
\item{pi0}{
The estimator to use for the estimation of the number of true null hypotheses in each group. Valid values are
\emph{"TST"} and \emph{"LSL"}.
}
\item{alpha}{
The level for FDR control. E.g. 0.05.
}
}
\value{
The subset of hypotheses in \emph{file} or \emph{trial.data} deemed significant by the Group Benjamini-Hochberg process.
}
\references{
Hu, J. X. and Zhao, H. and Zhou, H. H. (2010). False Discovery Rate Control With Groups. J Am Stat Assoc, 105(491):1215-1227.

Y. Benjamini, A. M. Krieger, and D. Yekutieli (2006). Adaptive linear step-up procedures that
control the false discovery rate. Biometrika, 93(3):491–507.

Benjamini Y, Hochberg Y. (2000). On the Adaptive Control of the False Discovery Rate in Multiple Testing
With Independent Statistics. Journal of Educational and Behavioral Statistics, 25(1):60–83.

}
\author{
R. Carragher
}
\note{
The estimator "\emph{TST}" is the two-stage estimator of Benjamini, Krieger, and Yekutieli. 
The estimator  "\emph{LSL}" is the least-slope estimator of Benjamini and Hochberg.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
trial.data <- data.frame(B = c(1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4),
j = c(1, 1, 2, 3, 4, 1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5),
AE = c("AE1", "AE2", "AE3", "AE4", "AE5", "AE6", "AE7", "AE8", "AE9", "AE10", "AE11",
"AE12", "AE13", "AE14", "AE15", "AE16", "AE17"),
p = c(0.135005, 0.010000, 0.001000, 0.005000, 0.153501, 0.020000, 0.0013, 0.0023,
0.011, 0.023000, 0.016, 0.0109, 0.559111, 0.751986, 0.308339, 0.837154, 0.325882))


c212.GBH(trial.data, pi = "TST", 0.05)

\dontrun{
   B j   AE        p   p_weighted
1  3 1  AE6 0.020000 0.0000000000
2  3 2  AE7 0.001300 0.0000000000
3  3 3  AE8 0.002300 0.0000000000
4  3 4  AE9 0.011000 0.0000000000
5  3 5 AE10 0.023000 0.0000000000
6  3 6 AE11 0.016000 0.0000000000
7  3 7 AE12 0.010900 0.0000000000
8  2 2  AE3 0.001000 0.0003333333
9  2 3  AE4 0.005000 0.0016666667
10 2 1  AE2 0.010000 0.0033333333
11 2 4  AE5 0.153501 0.0511670000
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{c212.GBH}
