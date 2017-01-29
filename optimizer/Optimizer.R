##' Α generic class defining the interface of an optimizer
##'
##' @import methods
##' @export
Optimizer <- setRefClass(Class = "Optimizer",
                          fields = list(

                          ),
                          methods = list(
                            optimizeHParam = function(metafeature_dataset, algorithm,  ...) {
                              'Returns the list of optimal parameters for a specific machine learning algorithm and classification dataset.'
                              if(algorithm == "SvmClassifier") {
                                # load HPP model
                                # predict hyperparameters
                                # dummy values for testing
                                opt_parameters <- list(C = 1, sigma = 0.0001 )
                              }
                              else if(algorithm == "KnnClassifier") {
                                opt_parameters <- list(k = 1)
                              }
                              else if(algorithm == "TreeClassifier") {
                                opt_parameters <- list(maxdepth = 5, nu = 0.0001, iter =100 )
                              }
                              else if(algorithm == "AnnClassifier") {
                                opt_parameters <- list(size = 1, decay = 0.0001 )
                              }
                              else if(algorithm == "BayesClassifier") {
                                opt_parameters <- list(fL =  2, usekernel = FALSE, adjust = 0.2 )
                              }
                              return(opt_parameters)
                            },
                              initialize = function(...) {
                                callSuper(...)
                                .self
                              }
                            )
)