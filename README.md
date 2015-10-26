# pandaR

<a href="http://www.bioconductor.org/packages/devel/bioc/html/pandaR.html#since"><img border="0" src="http://www.bioconductor.org/shields/years-in-bioc/pandaR.svg" title="How long since the package was first in a released Bioconductor version (or is it in devel only)."></a> <a href="http://bioconductor.org/packages/stats/bioc/pandaR.html"><img border="0" src="http://www.bioconductor.org/shields/downloads/pandaR.svg" title="Percentile (top 5/20/50% or 'available') of downloads over last 6 full months. Comparison is done across all package categories (software, annotation, experiment)."></a> <a href="https://support.bioconductor.org/t/pandaR/"><img border="0" src="http://www.bioconductor.org/shields/posts/pandaR.svg" title="Support site activity, last 6 months: tagged questions/avg. answers per question/avg. comments per question/accepted answers, or 0 if no tagged posts."></a> <a href="http://www.bioconductor.org/packages/devel/bioc/html/pandaR.html#svn_source"><img border="0" src="http://www.bioconductor.org/shields/commits/bioc/pandaR.svg" title="average Subversion commits (to the devel branch) per month for the last 6 months"></a>

[![Travis-CI Build Status](https://travis-ci.org/QuackenbushLab/pandaR.svg?branch=master)](https://travis-ci.org/QuackenbushLab/pandaR)


The PANDA approach is to model the regulatory network as a bipartite network and estimate edge weights based on the evidence that information from a particular transcription factor i is successfully being passed to a particular gene j.
This package provides a straightforward tool for applying this established method.

Glass K, Huttenhower C, Quackenbush J, Yuan GC. Passing Messages Between Biological Networks to Refine Predicted Interactions, PLoS One, 2013 May 31;8(5):e64832

To get the latest development version:
```r
install.packages("devtools")
devtools::install_github("Quackenbush/pandaR")
```
