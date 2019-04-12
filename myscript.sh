#!/bin/bash

x="/root/d2/hdfs-site.xml"
y="/root/d2/hive-site.xml"
z="/root/d2/hbase-site.xml"

cmd=find $x -type f -mtime -1
cmd1=find $y -type f -mtime -1
cmd2=find $z -type f -mtime -1

ssh root@ec2-54-81-21-172.compute-1.amazonaws.com; $cmd do ssh root@ec2-3-81-150-229.compute-1.amazonaws.com cd /root/d3 mv hdfs-site.xml hdfs-site.xml_$date;
scp $x root@ec2-3-81-150-229.compute-1.amazonaws.com:/root/d3/; mailx -s " Subject" mailid@gmail.com exit done

ssh root@ec2-54-81-21-172.compute-1.amazonaws.com; $cmd1 do ssh root@ec2-3-81-150-229.compute-1.amazonaws.com cd /root/d3 mv hive-site.xml hive-site.xml_$date;
scp ec2-54-81-21-172.compute-1.amazonaws.com $y root@ec2-3-81-150-229.compute-1.amazonaws.com:/root/d3/; mailx -s " Subject" mailid@gmail.com done

ssh root@ec2-54-81-21-172.compute-1.amazonaws.com; $cmd2 do ssh root@ec2-3-81-150-229.compute-1.amazonaws.com cd /root/d3 mv hbase-site.xml hbase-site.xml_$date;
scp $z root@ec2-3-81-150-229.compute-1.amazonaws.com:/root/d3/; mailx -s " Subject" mailid@gmail.com done
