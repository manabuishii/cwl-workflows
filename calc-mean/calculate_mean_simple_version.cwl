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
  rscriptfile:
    type: File
    label: Script File
    doc: "R script file"
    default:
      location: "calculate_mean.R"
      class: File
outputs:
  output_file:
    type: File
    outputBinding: {glob: output.txt}
baseCommand: R
arguments:
  - "--slave"
  - "--no-restore"
  - "--file=$(inputs.rscriptfile.path)"
  - "--args"
  - $(inputs.inputdatafile.path)
stdout: output.txt
