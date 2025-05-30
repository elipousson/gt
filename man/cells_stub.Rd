% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{cells_stub}
\alias{cells_stub}
\title{Location helper for targeting cells in the table stub}
\usage{
cells_stub(rows = everything())
}
\arguments{
\item{rows}{\emph{Rows to target}

\verb{<row-targeting expression>} // \emph{default:} \code{everything()}

The rows to which targeting operations are constrained. The default
\code{\link[=everything]{everything()}} results in all rows in \code{columns} being formatted.
Alternatively, we can supply a vector of row IDs within \code{c()}, a vector of
row indices, or a select helper function (e.g. \code{\link[=starts_with]{starts_with()}},
\code{\link[=ends_with]{ends_with()}}, \code{\link[=contains]{contains()}}, \code{\link[=matches]{matches()}}, \code{\link[=num_range]{num_range()}}, and
\code{\link[=everything]{everything()}}). We can also use expressions to filter down to the rows we
need (e.g., \verb{[colname_1] > 100 & [colname_2] < 50}).}
}
\value{
A list object with the classes \code{cells_stub} and \code{location_cells}.
}
\description{
\code{cells_stub()} is used to target the table's stub cells and it
is useful when applying a footnote with \code{\link[=tab_footnote]{tab_footnote()}} or adding a custom
style with \code{\link[=tab_style]{tab_style()}}. The function is expressly used in each of those
functions' \code{locations} argument. Here are several ways that a stub location
might be available in a \strong{gt} table: (1) through specification of a
\code{rowname_col} in \code{\link[=gt]{gt()}}, (2) by introducing a data frame with row names to
\code{\link[=gt]{gt()}} with \code{rownames_to_stub = TRUE}, or (3) by using \code{\link[=summary_rows]{summary_rows()}} or
\code{\link[=grand_summary_rows]{grand_summary_rows()}} with neither of the previous two conditions being
true.
}
\section{Examples}{


Using a transformed version of the \code{\link{sza}} dataset, let's create a \strong{gt}
table. Color all of the \code{month} values in the table stub with \code{\link[=tab_style]{tab_style()}},
using \code{cells_stub()} in \code{locations}.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{sza |>
  dplyr::filter(latitude == 20 & tst <= "1000") |>
  dplyr::select(-latitude) |>
  dplyr::filter(!is.na(sza)) |>
  tidyr::pivot_wider(
    names_from = "tst",
    values_from = sza,
    names_sort = TRUE
  ) |>
  gt(rowname_col = "month") |>
  sub_missing(missing_text = "") |>
  tab_style(
    style = list(
      cell_fill(color = "darkblue"),
      cell_text(color = "white")
      ),
    locations = cells_stub()
  )
}\if{html}{\out{</div>}}

\if{html}{\out{
<img src="https://raw.githubusercontent.com/rstudio/gt/master/images/man_cells_stub_1.png" alt="This image of a table was generated from the first code example in the `cells_stub()` help file." style="width:100\%;">
}}
}

\section{Function ID}{

8-17
}

\section{Function Introduced}{

\code{v0.2.0.5} (March 31, 2020)
}

\seealso{
Other location helper functions: 
\code{\link{cells_body}()},
\code{\link{cells_column_labels}()},
\code{\link{cells_column_spanners}()},
\code{\link{cells_footnotes}()},
\code{\link{cells_grand_summary}()},
\code{\link{cells_row_groups}()},
\code{\link{cells_source_notes}()},
\code{\link{cells_stub_grand_summary}()},
\code{\link{cells_stub_summary}()},
\code{\link{cells_stubhead}()},
\code{\link{cells_summary}()},
\code{\link{cells_title}()},
\code{\link{location-helper}}
}
\concept{location helper functions}
