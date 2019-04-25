#! /usr/bin/sh


# https://help.aliyun.com/document_detail/28124.html

for i in {1..100..2}
do
    spark-submit \
        --master yarn          \
        --driver-memory 30g    \
        --executor-memory 5g   \
        --num-executors $i      \
        spark_speedtest.py   \
        > speedtest.s$i
done

exit 0;
