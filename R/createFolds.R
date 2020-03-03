#'@title createFolds
#'@description Description for function
#'@param data Dataframe containing all observations and features
#'@param numFolds Number of cross valdiation folds to generate
#'@return List containing indices for each cross validation fold
#'@import
#'@export createFolds

createFolds <- function (data,
                         numFolds) {
  cvFolds <- list()
  sizePerFold <- rep(floor(dim(data)[1]/numFolds), numFolds)

  remainder <- dim(data)[1] - numFolds * floor(dim(data)[1] / numFolds)

  for (i in 1:remainder) {
    sizePerFold[i] <- sizePerFold[i] + 1
  }

  randomizedRowOrder <- sample(dim(data)[1], dim(data[1]))

}
