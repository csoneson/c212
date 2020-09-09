\name{c212.BH.adjust.pvals}
\alias{c212.BH.adjust.pvals}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Benjamini-Hochberg procedure adjusted p-values}
\description{
Benjamini-Hochberg procedure adjusted p-values.
}
\usage{
c212.BH.adjust.pvals(trial.data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{trial.data}{
File or data frame containing the p-values for the hypotheses being tested. The data must include a column called \emph{p} which contains
the p-values of the hypotheses.
}
}
\value{
Returns the original data frame, ordered by \emph{p}, with an additional column \emph{p_adj}.
}
\note{
The adjusted p values may be directly compared to a value \emph{alpha} to determine whether to declare a hypothesis significant under the Benjamini-Hochberg procedure at level \emph{alpha}.
}
\references{
D. V. Mehrotra and J. F. Heyse (2004). Use of the false discovery rate for evaluating clinical
safety data. Stat Methods Med Res, 13(3):227–38, 2004.
}
\author{
R. Carragher<raymond.carragher@strath.ac.uk>
}

\note{
No check is made for duplicate rows in the input file or data frame.
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{

trial.data <- data.frame(B = c(1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4),
j = c(1, 1, 2, 3, 4, 1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5),
AE = c("AE1", "AE2", "AE3", "AE4", "AE5", "AE6", "AE7", "AE8", "AE9", "AE10", "AE11",
"AE12", "AE13", "AE14", "AE15", "AE16", "AE17"),
p = c(0.135005, 0.010000, 0.001000, 0.005000, 0.153501, 0.020000, 0.0013, 0.0023,
0.011, 0.023000, 0.016, 0.0109, 0.559111, 0.751986, 0.308339, 0.837154, 0.325882))


adj <- c212.BH.adjust.pvals(trial.data)


\dontrun{
adj:
====
   B j   AE        p      p_adj
1  2 2  AE3 0.001000 0.01105000
2  3 2  AE7 0.001300 0.01105000
3  3 3  AE8 0.002300 0.01303333
4  2 3  AE4 0.005000 0.02125000
5  2 1  AE2 0.010000 0.02671429
6  3 7 AE12 0.010900 0.02671429
7  3 4  AE9 0.011000 0.02671429
8  3 6 AE11 0.016000 0.03400000
9  3 1  AE6 0.020000 0.03777778
10 3 5 AE10 0.023000 0.03910000
11 1 1  AE1 0.135005 0.20864409
12 2 4  AE5 0.153501 0.21745975
13 4 3 AE15 0.308339 0.39571386
14 4 5 AE17 0.325882 0.39571386
15 4 1 AE13 0.559111 0.63365913
16 4 2 AE14 0.751986 0.79898513
17 4 4 AE16 0.837154 0.83715400
}

adj[adj$p_adj <= 0.05, ]

\dontrun{
   B j   AE      p      p_adj
1  2 2  AE3 0.0010 0.01105000
2  3 2  AE7 0.0013 0.01105000
3  3 3  AE8 0.0023 0.01303333
4  2 3  AE4 0.0050 0.02125000
5  2 1  AE2 0.0100 0.02671429
6  3 7 AE12 0.0109 0.02671429
7  3 4  AE9 0.0110 0.02671429
8  3 6 AE11 0.0160 0.03400000
9  3 1  AE6 0.0200 0.03777778
10 3 5 AE10 0.0230 0.03910000
}


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{c212.BH.adjust.pvals}
\keyword{BH adjusted p-values}
\keyword{Benjamini-Hochberg adjusted p-values}
