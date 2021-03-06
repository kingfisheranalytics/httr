% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/handle.r
\name{handle}
\alias{handle}
\title{Create a handle tied to a particular host.}
\usage{
handle(url, cookies = TRUE)
}
\arguments{
\item{url}{full url to site}

\item{cookies}{DEPRECATED}
}
\description{
This handle preserves settings and cookies across multiple requests. It is
the foundation of all requests performed through the httr package, although
it will mostly be hidden from the user.
}
\examples{
handle("http://google.com")
handle("https://google.com")

h <- handle("http://google.com")
GET(handle = h)
# Should see cookies sent back to server
GET(handle = h, config = verbose())

h <- handle("http://google.com", cookies = FALSE)
GET(handle = h)$cookies
}

