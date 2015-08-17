# Evolutionary algorithms applied to Feature Selection problems (EAFS)
This repository contains the code concerning a scientific experiment which has
not yet been concluded or published.


###  Abstract

This experiment aims to provide an exhaustive comparison of modern feature selection methods and novel nature inspired approaches.
The comparison is performed in regards to properties like performance, accuracy,
complexity, ... .

Additionally we aim to provide novel tactics concerning evolutionary and nature
inspired methods in the field of feature selection(e.g. smart selection, crossover,
mutation tactics, ... ).

## Project Structure

+ **experiments/** This is the folder of the subproject that contains all the
    experiments and their documentation. Each experiment has it's own subfolder.
    Their data, code, and documentation will serve as basis for any resulting publication.
    
+ **experiments/template/** This is the basic template folder for each experiment.
    If you want to create a new experiment just copy this folder and rename it 
    accordingly (use the format: ``experiment_name``).
    Don't forget to rename the .Rmd file too.
    
+ **experiments/experiment_name/experiment_name.Rmd** This is the actual document 
    that contains almost all the R code as well as documentation for the whole experiment. 
    In general this is probably the only document you should edit.
    
+ **experiments/experiment_name/references.bib** The Bibtex references if needed.

+ **experiments/experiment_name/scripts/** This folder is version controlled. 
    It should be used for common code files (such as .R scripts), that
    for some reason do not belong in the Rmd file.
    
+ **experiments/experiment_name/local/** This folder is **not** version controlled 
    and serves as your personal sandbox. If you want to try out code in temporary 
    script files then this is the place to put them

+ **experiments/experiment_name/figures/** Dynamically generated figures by the documentation file. 
    This folder serves as storage for plots that were *generated using R code*.
    
+ **experiments/experiment_name/images/** Static figures. If you have any images 
    that should be included in the document, then put it into this folder.

+ **experiments/experiment_name/config/** This folder contains metadata such as the latex template
    for the PDF version. In general you should never need to change anything in there

## Getting Started with R

The following web resources should help guide you through the learning process.
R has a little bit of a learning curve to it, but it's worth it. 
The list is ordered in such a way that it makes sense to start from the top and work your way down

* [Very basic video series: Learning R](https://www.youtube.com/watch?v=UYclmg1_KLk&list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU&index=2)

    * Very basic step by step. introductionIf you are new to R, then I encourage you to start with this video series 
      and simply go at your own pace.

* [Introduction Video: Data Structures and Operations](https://www.youtube.com/watch?v=vGY5i_J2c-c):

    * This is also a good video to start with. 
      It helps you understand what kind of data structures R works with

* [Introduction Video: Objects and Attributes in R](https://www.youtube.com/watch?v=9iWGfmaNefs)

    * Very short video (4 min) and is worth watching
    
* [Introduction Video: Reproducible Research](https://www.youtube.com/watch?v=pjL2uP-fmPY)

    * I highly encourage you to watch the three videos about Reproducible Research. 
      This kind of thinking is crucial if you are interested in a career in data science 
      or machine learning.
      
* [Introduction Video: Literate Statistical Programming](https://www.youtube.com/watch?v=eeHdvoaN-bc)

    * Essentially the reasoning behind using R-Markdown, and why it is important.

* [R-Markdown basics:](http://rmarkdown.rstudio.com/)

    * We use R markdown to combine programming with documenation. This way
      every set and transformation we perform is documented and this documentation
      is also never out of sync with the actual data. Most importently, all our results
      are reproducible. This is part of the modern approach to reproducible research.
      Apart from this practical use, R-Markdown is also very convenient to work with.

* [R Coding style guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml):

    * Note that an exception to the usual naming convention we denote variable-names 
      in the same style as in scala, meaning we use ``myVariable`` instead of the 
      typical R style ~~``my.variable``~~ or ~~``my_variable``~~.
      However, sometimes it makes sense to name related variables similar. Here we can use the
      dot as it would denote a member variable. For example ``myVariable.url`` and ``myVariable.timeStamp``
      
    * Notice that in contrast to scala, we denote functions with a capital first letter;
      which means ``MyFunction`` instead of ~~``myFunction``~~ or ~~``my_function``~~.

## Advanced Topics

If you feel like you get the hang of R, you should start with these topics
that are more specific to our project.

* [More R-Markdown:](http://rmarkdown.rstudio.com/authoring_pandoc_markdown.html)

    * This is also a nice source of reference if you forget how to create a table for example

* [Video: lapply, sapply](https://www.youtube.com/watch?v=F4lCTQObdNw)

    * These loop functions such as ``lapply`` are the R equivalents to Scalas ``map``
    


### Library: [dplyr](https://github.com/hadley/dplyr) - A Grammar of Data Manipulation (v0.4.2)

A fast, consistent tool for working with data frame like objects,
    both in memory and out of memory.

Essentially it provides a few functions that make it convenient to
work with data tables.

* [Introduction Video:](https://www.youtube.com/watch?v=aywFompr1F4) 
  
    * Great short video introduction the dplyr package

* [Detailed Video:](https://www.youtube.com/watch?v=8SGif63VW6E)

    * A very detailed tutorial of dplyr presented by the author
      of the package

* [Introduction Tutorial](http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)

* [Cheat sheet for using dplyr](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)


### Library: [ggplot2](http://ggplot2.org) - An Implementation of the Grammar of Graphics (v1.0.1)

An implementation of the grammar of graphics
    in R. It combines the advantages of both base and
    lattice graphics: conditioning and shared axes are
    handled automatically, and you can still build up a
    plot step by step from multiple data sources. It also
    implements a sophisticated multidimensional
    conditioning system and a consistent interface to map
    data to aesthetic attributes. See http://ggplot2.org
    for more information, documentation and examples.

ggplot2 is in my opinion a fantastic library to visualize data (if not the best throughout all languages).
It's not only very convenient to work with, but also produces very beautiful, publication-ready plots.
There is no doubt that it is worth learning. Once you are fluent in using this package,
you will be very effective when exploring and visualizing data

The following two videos are a great introduction to using the library.

* [Introduction Video: Plotting with ggplot2: part1](https://www.youtube.com/watch?v=HeqHMM4ziXA) 

* [Introduction Video: Plotting with ggplot2: part2](https://www.youtube.com/watch?v=n8kYa9vu1l8)

* [Google Tech Talk: Data Analysis with R and ggplot2](https://www.youtube.com/watch?v=TaxJwC_MP9Q)

    * This is an hour long talk, where the presenter goes through some
      practical examples of what ggplot2 (and dplyr) can do to make analysis easier.

### Further Reading



