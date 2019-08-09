#' Hide non-function variables from function.
#'
#' @param ... Named functions and function definitions.
#' @return Nothing.

H = function(...) {

  function_names = names(as.list(substitute((...)))[-1])
  function_defs = list(...)
  envir = parent.env(parent.frame())

  for(i in 1:length(function_names)) {
    # if(exists(function_names[[i]], 1)) rm(function_names[[i]], 1)
    environment(function_defs[[i]]) = envir
    assign(x = function_names[[i]],
           value = function_defs[[i]],
           envir = envir)
  }

}
