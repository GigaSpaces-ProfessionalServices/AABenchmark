# AABenchmark
American Airlines Benchmark 

## Requirements
* Maven
* JDK

## Getting Started
This package contains a script (demo-start.sh) that automatically builds and deploys GigaSpaces with Space. The Space is configured to initially load data from the configured data source, so you can explore the functionality of the GigaSpaces product and build applications on top of it.

## For Space with MEMORYXTEND
Update GS_HOME in scripts/my-app-values.yaml and scripts/my-app-env.sh files 
Update export MEMORYXTEND="true"
For Hostname update "host ip" in space-zipkin/src/main/resources/META-INF/spring/sla.xml
run ./demo-start.sh
run ./feeder.sh

## For Space without MEMORYXTEND
Update GS_HOME in scripts/my-app-values.yaml and scripts/my-app-env.sh files 
Update export MEMORYXTEND="false"
For Hostname update "host ip" in space_without_memoryXtend-zipkin/src/main/resources/META-INF/spring/sla.xml
run ./demo-start.sh
run ./feeder.sh