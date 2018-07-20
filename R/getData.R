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
                    type = c("all", "training", "testing", "validating"),
                    scaled = FALSE) {
  type <- match.arg(type, several.ok = FALSE)

  ind <- name == data_sets$name &
    type == data_sets$type &
    scaled == data_sets$scaled

  if (!any(ind))
    stop("that data set is not supported or does not exist")

  sub <- data_sets[ind, , drop = FALSE]
  response <- sub$response
  filename <- sub$file

  uri <- paste("https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets",
               response,
               filename,
               sep = "/")

  tmp_file <- tempfile()

  utils::download.file(uri, tmp_file)

  if (grepl("\\.bz2$", filename)) {
    tmp_dat <- e1071::read.matrix.csr(bzfile(tmp_file), fac = FALSE)
  } else if (grepl("\\.tar\\.gz$", filename)) {
    tmp_dat <- e1071::read.matrix.csr(gzfile(tmp_file), fac = FALSE)
  } else {
    tmp_dat <- e1071::read.matrix.csr(tmp_file, fac = FALSE)
  }

  unlink(tmp_file)

  x <- methods::as(tmp_dat$x, "dgCMatrix")
  x <- Matrix::Matrix(x)

  y <- tmp_dat$y

  list(x = x, y = y)
}