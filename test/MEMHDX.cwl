#!/usr/bin/env cwl-runner

cwlVersion: v1.0
id: MEMHDX
label: This tool allows users to perform an automated workflow to analyze, validate
  and visualize large HDX-MS datasets.
inputs:
  INPUT1:
    label: Mass spectrometry data
    format: http://edamontology.org/format_3475
    type: File
    inputBinding:
      prefix: --INPUT1
outputs:
  OUTPUT1:
    label: Plot
    format: ''
    type: File
    outputBinding:
      glob: OUTPUT1.ext
baseCommand: COMMAND
doc: "This tool allows users to perform an automated workflow to analyze, validate\
  \ and visualize large HDX-MS datasets. The input file is the output of DynamX software\
  \ from Waters. Output files provide a plot of the data, the fitted model for each\
  \ peptide, a plot of the calculated p -values, and a global visualization of the\
  \ experiment. User could also obtain an overview of all peptides on the 3D structure.\n\
  \nTool Homepage: http://memhdx.c3bi.pasteur.fr/"
class: CommandLineTool
