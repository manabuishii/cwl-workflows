# Run with cwltool

```
cwltool calculate_mean.cwl job.json
```

## Run with different data

```
cwltool calculate_mean.cwl job.json --inputdatafile input2.txt
```

### Result

```console
$ cat input2.txt
10
10
20
20
$ cat output.txt
15
```


## Run with different R script

```
cwltool calculate_mean.cwl job.json --inputdatafile input3.txt --rscriptfile calculate_sum.R
```

### Result

```console
$ cat input3.txt
100
10
$ cat output.txt
110
```

## Run with different input data and R script

```
cwltool calculate_mean.cwl job.json --inputdatafile input1.txt --rscritfile calculate_sum.R
```

# Run with docker

```
docker run -u 1000:1000 --rm  -w /work -v $PWD:/work r-base:3.4.4 R --slave --no-restore  --file=/work/calculate_mean.R --args /work/input1.txt
```

