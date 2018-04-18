#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0
doc: "Calculate mean value of input1.txt"
requirements:
  DockerRequirement:
    dockerPull: r-base:3.4.4
inputs:
  inputdatafile:
    type: File
    label: Input File
    doc: "Input file that has values"
    inputBinding:
      position: 13
  rscriptfile:
    type: File
    label: Script File
    doc: "R script file"
    default:
      type: File
      location: "calculate_mean.R"
    inputBinding:
      position: 11
      prefix: --file=
      separate: false
outputs:
  output_file:
    type: File
    outputBinding: {glob: output.txt}
baseCommand: R
arguments:
  - "--slave"
  - valueFrom: "--no-restore"
    position: 10
  - valueFrom: "--args"
    position: 12
stdout: output.txt
