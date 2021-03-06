#' Run PhyloProfile app
#' @export
#' @return A shiny application - GUI version of PhyloProfile
#' @import bioDist
#' @import BiocStyle
#' @import Cairo
#' @importFrom colourpicker colourInput
#' @import dendextend
#' @import devtools
#' @import DT
#' @import energy
#' @import ExperimentHub
#' @import GenomeInfoDbData
#' @rawNamespace import(ggdendro, except = c(theme_dendro))
#' @import gplots
#' @import GO.db
#' @import gtable
#' @import knitr
#' @import praise
#' @rawNamespace import(rmarkdown, except = c(pdf_document, md_document,
#'     html_document))
#' @import scales
#' @import shinyBS
#' @rawNamespace import(shinyjs, except = colourInput)
#' @import shinycssloaders
#' @rawNamespace import(svMisc, except = package)
#' @import tidyr
#' @rawNamespace import(testthat, except = c(test_file, setup))
#' @import tree
#' @examples
#' ?runPhyloProfile
#' \dontrun{
#' runPhyloProfile()
#' }

runPhyloProfile <- function(){
    appDir <- system.file("PhyloProfile", package = "PhyloProfile")
    if (appDir == "") {
        stop(
            "Could not find apps director. Try re-installing `PhyloProfile`.",
            call = FALSE
        )
    }

    shiny::runApp(
        appDir,
        launch.browser = TRUE,
        display.mode = "normal"
    )
}
