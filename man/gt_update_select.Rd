% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shiny.R
\name{gt_update_select}
\alias{gt_update_select}
\title{Update a \strong{gt} selection in Shiny}
\usage{
gt_update_select(outputId, rows, session = shiny::getDefaultReactiveDomain())
}
\arguments{
\item{outputId}{\emph{Shiny output ID}

\verb{scalar<character>} // \strong{required}

The id of the \code{\link[=gt_output]{gt_output()}} element to update.}

\item{rows}{\emph{Row indices}

\verb{<integer>} // \strong{required}

The id of the \code{\link[=gt_output]{gt_output()}} element to update.}

\item{session}{\emph{Shiny session}

\verb{scalar<ShinySession>} // \strong{required}

The session in which the \code{\link[=gt_output]{gt_output()}} element can be found. You almost
certainly want to leave this as the default value.}
}
\value{
A call to the JavaScript binding of the table.
}
\description{
Update the selection in an interactive \strong{gt} table rendered using
\code{\link[=render_gt]{render_gt()}}. The table must be interactive and have selection enabled (see
\code{\link[=opt_interactive]{opt_interactive()}}).
}
\section{Function ID}{

12-3
}

\seealso{
Other Shiny functions: 
\code{\link{gt_output}()},
\code{\link{render_gt}()}
}
\concept{Shiny functions}
