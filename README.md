# simple-spring-openshift-metrics-example
Simple Example of using App metrics monitoring with SpringBoot


## Pre-Requisites
- OCP 4.10+
- [Must enable User Workload Monitoring on Cluster](https://docs.openshift.com/container-platform/4.8/monitoring/enabling-monitoring-for-user-defined-projects.html)


## Steps
1 Deploy Sample Application 

- Run Deploy Command
    ```bash
    oc apply -k ./deploy
    ```

- Start Image Build

    ```bash
    oc start-build bc/simple-spring-openshift-metrics-example-git -n simple-metrics-test
    ```

2 If using integrated OpenShift Monitorting stack

- Create ServiceMonitor

    ```bash
    oc apply -k ./monitor
    ```