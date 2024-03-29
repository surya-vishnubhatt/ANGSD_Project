# This is an automatically-generated R script designed to make a simple multiplot and/or pdf report for a sample.
message("STARTING...");
library(QoRTs);
unique.ID <- c("Untitled");
qc.data.dir <- c("/athena/angsd/scratch/spv4002/alignmentQC/SRR21190766_alignmentQC/");
qc.data.prefix <- c("");
decoder.raw <- data.frame(unique.ID = as.character(unique.ID), qc.data.dir = as.character(qc.data.dir), qc.data.prefix=as.character(qc.data.prefix),stringsAsFactors=FALSE);
decoder <- completeAndCheckDecoder(decoder = decoder.raw)
message(decoder);
message(lapply(names(decoder), function(n){ class(decoder[[n]]) }));
res <- read.qc.results.data("", decoder = decoder, calc.DESeq2 = FALSE, calc.edgeR = FALSE);
makeMultiPlot.basic(res, outfile = "/athena/angsd/scratch/spv4002/alignmentQC/SRR21190766_alignmentQC/QC.multiPlot.png", plotter.params = list(std.color = "blue", std.lines.lwd = 4), plot.device.name = "png");
makeMultiPlot.basic(res, outfile = "/athena/angsd/scratch/spv4002/alignmentQC/SRR21190766_alignmentQC/QC.multiPlot.pdf", plotter.params = list(std.color = "blue", std.lines.lwd = 4), plot.device.name = "pdf");
makeMultiPlot.basic(res, outfile.dir = paste0("/athena/angsd/scratch/spv4002/alignmentQC/SRR21190766_alignmentQC","QCplots/"), plotter.params = list(std.color = "blue", std.lines.lwd = 4), plot.device.name = "png", separatePlots = TRUE);
message("DONE...");



