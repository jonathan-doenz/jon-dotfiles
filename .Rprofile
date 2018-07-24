se <- function (x) { sd(x)/sqrt(length(x))}
#ci <- function (x) {len=length(x); qt(.95, len-1)*se(x)}
ci <- function (x) {1.96*se(x)}
threshold <-2.5
clmean <- function (x) {m <- mean(x);d <- sqrt(var(x)); mean(x[(x-m)/d<threshold]);}

startTeXfile <- function (TeXFileTitle, graphicsFolderPath, TeXfilename, TeXfileFolder, TeXdocType)
{
  if(!file.exists(graphicsFolderPath))
  { print(paste("The graphic's folder: ", graphicsFolderPath, "had to be created",sep=""))
    dir.create(file.path(graphicsFolderPath))  }
  
  # Create new TeX file
  if(file.exists(paste("~/Dropbox/R_stuff/",TeXdocType,sep="")))
  {
    commandToShell_createNewTeXfile<-
      paste("cp ~/Dropbox/R_stuff/",TeXdocType, " ", TeXfileFolder, "/", TeXfilename,sep="")
    system(commandToShell_createNewTeXfile)
  }
  if(TeXdocType=="presentation")
  {
    commandToShell_createNewTeXfile<-
      paste("cp ~/Dropbox/R_stuff/newTeXPresentation_template.tex ", TeXfileFolder, "/", TeXfilename,sep="")
    system(commandToShell_createNewTeXfile)
  }
  if(TeXdocType=="article")
  {
    commandToShell_createNewTeXfile<-
      paste("cp ~/Dropbox/R_stuff/newTeXArticle_template.tex ", TeXfileFolder, "/", TeXfilename,sep="")
    system(commandToShell_createNewTeXfile)
  }
  
  # Graphics' path replacement
  tmpstr<-gsub("([~])", "/Users/jonathandoenz", graphicsFolderPath); tmpstr2<-paste(tmpstr,"/",sep="")
  graphicsFolderPath_bslashed<-gsub("([/])", "\\\\\\1", tmpstr2)
  system(paste("sed 's/givemethefigurespath/",graphicsFolderPath_bslashed,"/' ",
               TeXfileFolder, "/", TeXfilename," > ", TeXfileFolder, "/temp.tex",sep=""))
  system(paste("mv ", TeXfileFolder, "/temp.tex ", TeXfileFolder, "/", TeXfilename,sep=""))
  
  # Title replacement
  TeXFileTitle_bslashed<-gsub("([ ])", "\\\\\\1", TeXFileTitle)
  system(paste("sed 's/givemethetitle/",TeXFileTitle_bslashed,"/' ",
               TeXfileFolder, "/", TeXfilename," > ", TeXfileFolder, "/temp.tex",sep=""))
  system(paste("mv ", TeXfileFolder, "/temp.tex ",TeXfileFolder, "/", TeXfilename,sep=""))
}

addFigInLaTeX <- function (figure_filename, TeXfile, figsFolder, figureCaption="nocaption") {
  ifelse (figureCaption!="nocaption",#
          lineToAdd<-paste("\\begin{center}\n\\begin{figure}\n\\includegraphics[width=\\linewidth]{",figure_filename,"}\n\\caption{", figureCaption, "}\n\\end{figure}\n\\end{center}\n",sep=""),#
          lineToAdd<-paste("\\begin{center}\n\\includegraphics[width=0.9\\linewidth]{",figure_filename,"}\n\\end{center}\n",sep=""))
  # Add line to .tex file
  cat(lineToAdd,file=TeXfile,append=TRUE)
  # Move the figure file into the Figures directory
  commandToShell_figures<-paste("mv", figure_filename, figsFolder, sep=" ");
  system(commandToShell_figures)
}

addFileInLaTeX <- function (filename, TeXfile, TeXfilesFolder) {
  lineToAdd<-paste("\\input{./",filename,"}\n",sep="")
  # Add line to .tex file
  cat(lineToAdd,file=TeXfile,append=TRUE)
  # Move the input file into the TeX_files directory
  commandToShell_files<-paste("mv", filename, TeXfilesFolder, sep=" ");
  system(commandToShell_files)
}

addCommandInLaTeX <- function (commandName, value, TeXfilePath) {
  lineToAdd<-paste("\\newcommand{\\", commandName, "}{", value, "}\n", sep="")
  # Add line to .tex file
  cat(lineToAdd,file=TeXfilePath,append=TRUE)
}

addItemizeInLaTeX <- function (stringsList, TeXfile) {
  cat("\\begin{itemize}\n",file=TeXfile,append=TRUE)
  nItems<-length(stringsList)
  for (item in 1:nItems)
  {
    lineToAdd<-paste("\\item ",stringsList[item],"\n",sep="")
    cat(lineToAdd,file=TeXfile,append=TRUE)
  }
  cat("\\end{itemize}\n",file=TeXfile,append=TRUE)
}

addEnumerateInLaTeX <- function (stringsList, TeXfile) {
  cat("\\begin{enumerate}\n",file=TeXfile,append=TRUE)
  nItems<-length(stringsList)
  for (item in 1:nItems)
  {
    lineToAdd<-paste("\\item ",stringsList[item],"\n",sep="")
    cat(lineToAdd,file=TeXfile,append=TRUE)
  }
  cat("\\end{enumerate}\n",file=TeXfile,append=TRUE)
}


cor.mtest <- function(mat, conf.level = 0.95) {
  mat <- as.matrix(mat)
  n <- ncol(mat)
  p.mat <- lowCI.mat <- uppCI.mat <- matrix(NA, n, n)
  diag(p.mat) <- 0
  diag(lowCI.mat) <- diag(uppCI.mat) <- 1
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(mat[, i], mat[, j], conf.level = conf.level)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
      lowCI.mat[i, j] <- lowCI.mat[j, i] <- tmp$conf.int[1]
      uppCI.mat[i, j] <- uppCI.mat[j, i] <- tmp$conf.int[2]
    }
  }
  return(list(p.mat, lowCI.mat, uppCI.mat))
}


# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  require(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}


saveAnovaInDF <- function (summarized_anova, standardStruct, startingLine, Var) {
  # Ensure input variables are ok
  if (is(summarized_anova)!="summary.aovlist")
  {stop("The anova input should be a summary(aov())")}
  colsRequired<-c('Df1','Df2','Fval','pval','cond','Var')
  if (any(is.element(colsRequired, names(standardStruct))==F))
  {stop("Data frame should at least contain the following column names: Df1, Df2, Fval, pval, cond, Var")}
  
  for (aa in 2:length(summarized_anova))
  {
    lineIndex<-startingLine+aa-2
    # Save variables into the data frame
    standardStruct[lineIndex, "Df1"]<-summarized_anova[[aa]][[1]]$"Df"[1]
    standardStruct[lineIndex, "Df2"]<-summarized_anova[[aa]][[1]]$"Df"[2]
    standardStruct[lineIndex, "Fval"]<-summarized_anova[[aa]][[1]]$"F value"[1]
    standardStruct[lineIndex, "pval"]<-summarized_anova[[aa]][[1]]$"Pr(>F)"[1]
    standardStruct[lineIndex, "Var"]<-Var
    standardStruct[lineIndex, "cond"]<-gsub("Error: ([[:alpha:]])", "\\1", names(summarized_anova)[aa])
  }
  return(standardStruct)
}


# SEQUENTIAL BAYES --------------------------------------------------------
#' Plot a sequence of Bayes factors
#' 
#' This function creates a lineplot of a sequence of log Bayes factors. As a default, the function expects raw Bayes factors (i.e., non-logged Bayes factors). 
#' If you provide Bayes factors that are already logged (e.g., from the output of the \code{\link{ttest.tstat}} function), set \code{log.it} to \code{FALSE}.
#' This function is in particular useful for plotting the trajectory of a sequential Bayes factor test
#' @title Plot a Bayes factor object
#' @param n A vector of numbers for the x axis
#' @param bf A vector of Bayes factors (same length as x)
#' @param linetype If several lines should be drawn, this variable defines which data point belongs to which line
#' @param linetype.label The heading of the linetype legend
#' @param xlab Label for x axis
#' @param ylab Label for y axis
#' @param ylim Limits of y axis, in raw BF units. If NA, plot is automatically adjusted to range of data.
#' @param main Main title
#' @param log.it Should the Bayes factor in the \code{bf} parameter be logged?
#' @param forH1 If \code{TRUE}, positive BFs mean evidence in favor of H1 ("H1 over H0" Bayes factor). This is the default in the Bayes factor package.
#' @param fontsize Controls the font size of the annotation
#'
#' @export
#' @import ggplot2
#' @import BayesFactor
#' @importFrom grid unit
#' @importFrom grid grid.draw
#'
#' @author Felix D. Schönbrodt (\email{felix@@nicebread.de})
#' @examples
#' ## Sleep data from t test example
#' data(sleep)
#' 
#' # Compute accumulating evidence from n1=5 participants to n2=10 participants
# bf <- c()
# for (i in 5:10) {
#   bf0 <- ttestBF(
#     x = sleep$extra[sleep$group==1][1:i], 
#   	y = sleep$extra[sleep$group==2][1:i], paired=TRUE)
# 	bf <- c(bf, as.vector(bf0))
# }
#' 
#' seqBFplot(5:10, bf)
#' seqBFplot(1:100, cumsum(rnorm(100, 2)))

seqBFplot <- function(n, bf, linetype=NA, linetype.label="Alternative", xlab="n", ylab="log(BF)", main="", ylim=NA, log.it=TRUE, forH1=TRUE, fontsize=3.2) {
  if (length(n) != length(bf)) stop("`n` and `bf` should have the same length")
  if (length(n) < 1) stop("`n`and `bf` must habe length > 1")
  
  if (log.it==TRUE) bf <- log(bf)
  
  # automatically set ylim
  y_breaks <- c(c(-log(c(100, 30, 10, 3)), 0, log(c(3, 10, 30, 100))))
  if (is.na(ylim[1])) {
    # find out in which y_break interval the lowest and highest bf fall
    min_boundary_x <- as.numeric(cut(min(bf)*1.02, c(-Inf, y_breaks, Inf)))-1
    max_boundary_x <- as.numeric(cut(max(bf)*1.02, c(-Inf, y_breaks, Inf)))
    
    if (min_boundary_x == 0 | min_boundary_x > length(y_breaks)) {
      min_boundary <- min(bf)*1.02
    } else {
      min_boundary <- y_breaks[min_boundary_x]
    }
    if (max_boundary_x > length(y_breaks)) {
      max_boundary <- max(bf)*1.02
    } else {
      max_boundary <- y_breaks[max_boundary_x]
    }
    
    # ... but always show at least "anecdotal" in each direction
    if (min_boundary > log(1/3)) min_boundary <- log(1/3)
    if (min_boundary > min(bf)) min_boundary <- min(bf)*1.02
    if (max_boundary < log(3)) max_boundary <- log(3)
    if (max_boundary < max(bf)) max_boundary <- max(bf)*1.02
    ylim <- c(min_boundary, max_boundary)
  } else {
    ylim <- log(ylim)
  }
  
  
  df <- data.frame(n, bf, Alt=factor(linetype))
  p1 <- ggplot(df, aes(x=n, y=bf)) + theme_bw() + ylab(ylab) + xlab(xlab)# + theme(axis.text.x = element_text(size=unit(fontsize, "points")), axis.text.y = element_text(size=unit(fontsize, "points"))) 
  
  # more than one data point? Line plot
  if (length(n) > 1) {
    if (is.na(linetype[1])) {
      p1 <- p1 + geom_line()
    } else {
      p1 <- p1 + geom_line(aes(linetype=Alt, group=Alt)) + scale_linetype_discrete(linetype.label) + theme(legend.position = "top", legend.direction="vertical")
    }
    
    
    # custom labeler: find breaks with pretty numbers, and not more than 5
    # find good divisor
    steps <- c(2, 4, 5, 10, 15, 20, seq(30, 1000, by=10), seq(1100, 50000, by=100))
    i <- 1
    repeat {
      mod <- (max(n)-min(n)+1) %/% steps[i]
      if (mod <= 5) {break} else {i <- i+1}
    }
    
    x.breaks <- seq(steps[i], max(n), by=steps[i])
    names(x.breaks) <- x.breaks
  }
  
  # One data point? Plot a single point
  if (length(n) == 1) {
    p1 <- p1 + geom_point()
    x.breaks <- n
  }
  
  p1 <- p1 + scale_x_continuous(breaks=x.breaks) + coord_cartesian(ylim=ylim)
  
  
  # All the annotation stuff ...
  hlines <- c(-log(c(100, 30, 10, 3)), log(c(3, 10, 30, 100)))
  hlines_sel <- hlines[which(hlines > min(ylim) & hlines < max(ylim))]
  p1 <- p1 + geom_hline(yintercept=hlines_sel, linetype="dotted", color="darkgrey")
  p1 <- p1 + geom_hline(yintercept=log(1), linetype="dashed", color="grey20")
  
  if (min(ylim)<= -5.15) {
    p1 <- p1 + annotate("text", x=Inf, y=-5.15, label=paste0("~~Extreme~H[", ifelse(forH1==TRUE,0,1), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  
  if (min(ylim)<= -4) {
    p1 <- p1 + annotate("text", x=Inf, y=-4.00, label=paste0("~~Very~strong~H[", ifelse(forH1==TRUE,0,1), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  
  if (min(ylim)<= -2.85) {	
    p1 <- p1 + annotate("text", x=Inf, y=-2.85, label=paste0("~~Strong~H[", ifelse(forH1==TRUE,0,1), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  
  if (min(ylim)<= -1.7) {	
    p1 <- p1 + annotate("text", x=Inf, y=-1.7 , label=paste0("~~Moderate~H[", ifelse(forH1==TRUE,0,1), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  
  p1 <- p1 + annotate("text", x=Inf, y=-.55 , label=paste0("~~Anectodal~H[", ifelse(forH1==TRUE,0,1), "]"), 
                      hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  p1 <- p1 + annotate("text", x=Inf, y=.55  , label=paste0("~~Anectodal~H[", ifelse(forH1==TRUE,1,0), "]"), 
                      hjust=0, vjust=.5, vjust=.5, size=fontsize, color="black", parse=TRUE)
  
  if (max(ylim) >= 5.15) {
    p1 <- p1 + annotate("text", x=Inf, y=5.15, label=paste0("~~Extreme~H[", ifelse(forH1==TRUE,1,0), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  if (max(ylim) >= 4) {
    p1 <- p1 + annotate("text", x=Inf, y=4.00, label=paste0("~~Very~strong~H[", ifelse(forH1==TRUE,1,0), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  if (max(ylim) >= 2.86) {
    p1 <- p1 + annotate("text", x=Inf, y=2.86 , label=paste0("~~Strong~H[", ifelse(forH1==TRUE,1,0), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  if (max(ylim) >= 1.7) {
    p1 <- p1 + annotate("text", x=Inf, y=1.7  , label=paste0("~~Moderate~H[", ifelse(forH1==TRUE,1,0), "]"), 
                        hjust=0, vjust=.5, size=fontsize, color="black", parse=TRUE)
  }
  
  
  # set scale ticks
  p1 <- p1 + scale_y_continuous(breaks=y_breaks, labels=c("-log(100)", "-log(30)", "-log(10)", "-log(3)", "log(1)", "log(3)", "log(10)", "log(30)", "log(100)"))
  
  
  if (main != "") p1 <- p1 + ggtitle(main)
  
  p1 <- p1 + theme(plot.margin = grid::unit(c(1,5,1,1), "lines"))
  
  # TODO: The annotation only works with this work-around; but now no ggplot-object is returned (which would be nice for users, to add their own themes, e.g.). Set x = Inf
  # Code to override clipping, from http://stackoverflow.com/questions/10014187/displaying-text-below-the-plot-generated-by-ggplot2 
  gt <- ggplot_gtable(ggplot_build(p1))
  gt$layout$clip[gt$layout$name == "panel"] <- "off"
  grid::grid.draw(gt)
  
  # return(p1)
}

#seqBFplot(1:3, c(2, 5, 10))
#seqBFplot(1:4, c(1/4, 0.1, 0.02, 115))
#seqBFplot(1:3, c(1, 5, 100), fontsize=2)

# set.seed(0xBEEF)
# x <- cumsum(rnorm(100,0.03,0.3))
# seqBFplot(10:(length(x)+9), x, log.it=FALSE, ylim=c(1/33, 150))
