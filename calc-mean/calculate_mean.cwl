#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0
doc: "Calculate mean value of input1.txt"
requirements:
  DockerRequirement:
    dockerPull: r-base:3.4.4
inputs:
  file1:
    type: File
    label: Input File
    doc: "Input file that has values"
    inputBinding: {position: 2}
  file2:
    type: File
    label: Script File
    doc: "R script file"
    inputBinding: {position: 1}
outputs:
  output_file:
    type: File
    outputBinding: {glob: output.txt}
baseCommand: R
arguments: ["CMD", "BATCH", "--slave", "--vanilla","--args"] 
stdout: output.txt
