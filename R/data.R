#' ijcnn1
#'
#' Training, test, and validation data from the
#' IJCNN 2001 Neural Network Competition.
#'
#' @section Preprocessing:
#' The dataset has been preprocessed with Winner's transformation.
#'
#' @format A list of training, test, and validation data, each
#' containing
#' \describe{
#'   \item{x}{a sparse feature matrix of class `'dgCMatrix'` with
#'            23 variables representing features of a a physical system}
#'   \item{y}{a binary response factor vector in `{-1, 1}`,
#'            `-1` indicating a normal fire and `1` indicating
#'            misfire}
#' }
#' with 35000, 91701, and 14990 observations respectively.
#' @source <https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary.html#ijcnn1>
#' @source Danil Prokhorov. IJCNN 2001 neural network competition. Slide
#'   presentation in IJCNN'01, Ford Research Laboratory, 2001.
#'   <http://www.geocities.ws/ijcnn/nnc_ijcnn01.pdf>
#' @keywords binary
"ijcnn1"


#' phishing
#'
#' A data set of phishing and non-phishing websites.
#'
#'@format The data set is given as a list, featuring
#'\describe{
#'  \item{x}{a sparse feature matrix of class `'dgCMatrix'` with
#'           69 variables representing web page attributes}
#'  \item{y}{a binary response factor vector in `{-1, 1}`, with
#'           `-1` indicating a non-phishing website, and `1` indicating
#'           the opposite}
#'}
#'
#'@source <https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary.html#phishing>
#'@source Donors: Rami Mustafa A Mohammad, Lee McCluskey, Fadi Thabtah
#'@source <https://archive.ics.uci.edu/ml/datasets/phishing+websites>
#'@source Yuchin Juan, Yong Zhuang, Wei-Sheng Chin, and Chih-Jen Lin.
#'  Field-aware factorization machines for CTR prediction. In Proceedings of the
#'  ACM Recommender Systems Conference (RecSys), 2016.
#'@keywords binary
"phishing"

#' Adult Data Set (a9a)
#'
#' Census data of adults.
#'
#' @section Preprocessing:
#' From the LIBSVM website:
#' "The original Adult data set has 14 features, among which six are continuous
#' and eight are categorical. In this data set, continuous features are
#' discretized into quantiles, and each quantile is represented by a binary
#' feature. Also, a categorical feature with m categories is converted to m
#' binary features. Details on how each feature is converted can be found in the
#' beginning of each file from."
#'
#' @format A list of training and set sets representing 32561 observations,
#' each containing
#' \describe{
#'   \item{x}{a sparse feature matrix of class `'dgCMatrix'` with
#'            123 variables}
#'   \item{y}{a binary response factor in `{-1, 1}`, where `1` indicates
#'            a yearly income exceeding $50,000}
#' }
#'
#' @source Donors: Ronny Kohavi and Barry Becker (Data Mining and
#'   Visualization, Silicon Graphics)
#' @source <https://archive.ics.uci.edu/ml/datasets/adult>
#' @source <https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary.html#a9a>
#' @keywords binary
"a9a"