
pathResults <- "../../publication/results/"
pathScripts <- "scripts/"
pathFigures <- "figures/"
pathImages <- "images/"
pathLocal <- "local/"
if(!file.exists(pathResults)) dir.create(pathResults)
if(!file.exists(pathScripts)) dir.create(pathScripts)
if(!file.exists(pathFigures)) dir.create(pathFigures)
if(!file.exists(pathImages)) dir.create(pathImages)
if(!file.exists(pathLocal)) {
  dir.create(pathLocal)
  con <- file(paste0(pathLocal, ".gitignore"))
  writeLines(c("*","","!.gitignore"), con)
  close(con)
}

library(knitr)
outputFormat <- knitr::opts_knit$get("rmarkdown.pandoc.to")
if (!is.null(outputFormat) && outputFormat=="latex") knitr::opts_chunk$set(fig.width=6, fig.height=4, fig.path=pathFigures, fig.align='center')
knitr::opts_chunk$set(warning=FALSE, message=FALSE)
knitr::opts_knit$set(self.contained=FALSE)
knitr::opts_chunk$set(cache.path = paste0(pathLocal, "cache/"))

require(pander)
panderOptions("table.style", "simple")
panderOptions("table.split.table", 120)
#panderOptions('knitr.auto.asis', FALSE)
