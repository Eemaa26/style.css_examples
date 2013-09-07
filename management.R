## file.exists("style.css examples/rinker_vignette")

library(reports)
fls <- system.file("extdata/style.css_library", package = "reports")
x <- file.path(fls, dir(fls), "style.css")

n <- 1
file.exists("temp")
x[n]

library(reports)
dirnm <- basename(gsub("/style.css", "", x[n]))
xname <- folder(folder.name=file.path("style.css_examples", dirnm))
file.copy(dir("temp"), xname, recursive = TRUE)
cssname <- folder(folder.name=file.path(xname, "css"))
file.copy(x[n], cssname, recursive = TRUE)

library(knitr); library(markdown)
knit2html(input=file.path(xname, "minimal template.Rmd"), output = file.path(xname, "minimal template.md"))
markdownToHTML(file.path(xname, "minimal template.md"), file.path(xname, "minimal template.html"), 
    stylesheet=file.path(xname, "css/style.css"))


## copy to website
delete(file.path("C:/Users/trinker/GitHub/trinker.github.com", "style.css_examples"))
folder(folder.name=file.path("C:/Users/trinker/GitHub/trinker.github.com", "style.css_examples"))
loc <- file.path(getwd(), "style.css_examples")
fls2copy <- file.path(loc, dir(loc))
file.copy(fls2copy, 
    file.path("C:/Users/trinker/GitHub/trinker.github.com", "style.css_examples"), recursive=TRUE)




