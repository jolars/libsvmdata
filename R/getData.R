#' Download and Format Data Set from LIBSVM Homepage
#'
#' @param name name of dataset
#' @param response type of response in data set
#' @param type type of data set
#' @param compression whether and how the data set is compressed
#' @param scaled wheter the dataset was scaled (or more precisely that it
#'   was named as such on the LIBSVM webpage)
#'
#' @return If there are several types of datasets (training, test, etc),
#'   a list of datasets named as such will be returned. Otherwise,
#'   a single list with components `x` and `y` for the
#'   feature matrix and response respectively.
#' @export
#'
#' @examples
#' \dontrun{
#'   phishing <- libsvmdata::getData("phishing",
#'                                   "binary",
#'                                   "all",
#'                                   NULL)
#' }
getData <- function(name,
                    response = c("binary",
                                 "multiclass",
                                 "regression",
                                 "multilabel",
                                 "string"),
                    type = c("all", "train", "test", "validate"),
                    compression = c(NULL, "bz2"),
                    scaled = FALSE) {

  type <- match.arg(type, several.ok = TRUE)
  response <- match.arg(response)

  typeid <- match(type, c("all", "train", "test", "validate"))

  typeext <- c("", ".tr", ".t", ".val")[typeid]

  data <- vector("list", length(typeid))
  names(data) <- type

  uri <- paste("https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets",
               response,
               name,
               sep = "/")

  for (i in seq_along(data)) {
    tmp_file <- tempfile()

    uri2 <- paste0(uri, typeext[i])

    if (isTRUE(scaled))
      uri2 <- paste0(uri2, "_scale")

    if (!is.null(compression))
      uri2 <- paste0(uri2, ".", compression)

    utils::download.file(uri2, tmp_file)

    if (is.null(compression)) {
      tmp_dat <- e1071::read.matrix.csr(tmp_file)
    } else {
      tmp_dat <- e1071::read.matrix.csr(bzfile(tmp_file))
    }

    data[[i]]$x <- methods::as(tmp_dat$x, "dgCMatrix")
    data[[i]]$y <- tmp_dat$y

    unlink(tmp_file)
  }

  if (length(data) == 1L)
    data <- data[[1L]]

  data
}