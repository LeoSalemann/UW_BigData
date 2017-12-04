# TERMINAL 1
cd /opt/bitnami/kafka
bin/kafka-topics.sh --create --zookeeper localhost:2181 -replication-factor 1 --partitions 1 --topic leohw2
bin/kafka-topics.sh --list --zookeeper localhost:2181

cd /home/kafkacluster/
python sample_producer.py weather_sample.csv date leohw2

#TERMINAL 2
cd /home/kafkacluster/
python sample_consumer.py leohw2
