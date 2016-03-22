Logstash configration file
================

This is the configration files for ElasticSeach Logstash job.

* logstash_kafka.conf reads from Kafka and write into ElasticSearch
* logstash_logfile.conf reads from stdin, filters and write into ElasticSearch
  * batch_load_log_into_logstash.sh is a shell helper for this configuration to pipeline the files in a dir into the job.
* logstash_test.conf reads from stdin (just an ip) and write into ElasticSearch
