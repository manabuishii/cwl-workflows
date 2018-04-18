# Run with cwltool

```
cwltool calculate_mean.cwl job.json
```


# Run with docker

```
docker run -u 1000:1000 --rm  -w /work -v $PWD:/work r-base:3.4.4 R CMD BATCH --slave --vanilla /work/calculate_mean.R
```

