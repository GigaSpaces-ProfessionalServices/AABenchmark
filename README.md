# AABenchmark
American Airlines Benchmark 

## Requirements
* Maven
* JDK

## Getting Started
This package contains a script (demo-start.sh) that automatically builds and deploys GigaSpaces with Space. The Space is configured to initially load data from the configured data source, so you can explore the functionality of the GigaSpaces product and build applications on top of it.

## For Space with MEMORYXTEND
* Update GS_HOME in scripts/my-app-values.yaml and scripts/my-app-env.sh files 
* Update export MEMORYXTEND="true" in scripts/my-app-env.sh file
* For Hostname update "host ip" in space/src/main/resources/META-INF/spring/sla.xml and update COMMAND_HOST in scripts/my-app-env.sh file also 
* run ./demo-start.sh
* run ./feeder.sh in command line you will get the benchmark results

## For Space without MEMORYXTEND
* Update GS_HOME in scripts/my-app-values.yaml and scripts/my-app-env.sh files 
* Update export MEMORYXTEND="false" in scripts/my-app-env.sh file
* For Hostname update "host ip" in space/src/main/resources/META-INF/spring/sla.xml and update COMMAND_HOST in scripts/my-app-env.sh file also
* run ./demo-start.sh
* run ./feeder.sh in command line you will get the benchmark results
