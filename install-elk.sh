#!/bin/bash
kubectl create ns logging
helm -n logging install elk-elasticsearch elastic/elasticsearch -f values-e.yaml
helm -n logging install elk-kibana elastic/kibana -f values-k.yaml 
helm -n logging install elk-logstash elastic/logstash -f values-l.yaml 
helm -n logging install elk-filebeat elastic/filebeat -f filebeat.yaml
