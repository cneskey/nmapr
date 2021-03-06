% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test-ssl-strength.R
\name{test_ssl_strength}
\alias{test_ssl_strength}
\title{Report SSL Certificate Configuration Strength for one or more hosts}
\usage{
test_ssl_strength(host, port = 443L)
}
\arguments{
\item{port}{port to connect to. Defaults to \code{443}}

\item{hosts}{character. hostnames/IPs address to connect too}
}
\description{
This calls \code{nmap} with the \code{ssl-enum-ciphers} script. Said script repeatedly
initiates SSL/TLS connections, each time trying a new cipher or compressor
while recording whether a host accepts or rejects it. The end result is a
list of all the ciphers and compressors that a server accepts
}
\note{
Running this script is \emph{intrusive} since it must initiate many connections
to a server, and therefore is quite noisy. It may take several minutes
\emph{per-host}.
}
