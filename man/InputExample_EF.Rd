% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_features.R
\name{InputExample_EF}
\alias{InputExample_EF}
\title{Construct objects of class \code{InputExample_EF}}
\usage{
InputExample_EF(unique_id, text_a, text_b = NULL)
}
\arguments{
\item{unique_id}{Integer or character; a unique id for this example.}

\item{text_a}{Character; the untokenized text of the first sequence.}

\item{text_b}{(Optional) Character; the untokenized text of the second
sequence.}
}
\value{
An object of class \code{InputExample_EF}.
}
\description{
An InputExample_EF is a single test example for feature extraction. Note that
this class is similiar to the InputExample class used for simple sequence
classification, but doesn't have a label property. The name of the id
property is also annoyingly different; should eventually standardize better
than the Python folks did. (RBERT issue #28.)
}
\examples{
input_ex <- InputExample_EF(
  unique_id = 1,
  text_a = "I work at the bank."
)
}
