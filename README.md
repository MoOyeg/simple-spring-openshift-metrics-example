# simple-spring-openshift-metrics-example
Simple Example of using the integrated OpenShift application metrics monitoring with SpringBoot Apps.


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

2 Confirm Deployment and Observe

- If everything is up correctly our pod should show up as a target under Observe->Target
![Target being successfully scraped by OCP](./images/target.png)

- And we can use the OCP console to see the captured application metrics with PromQL under Observe->Metrics
![Graph from metrics scraped from application](./images/metrics.png)

3 Cleanup

```bash
oc delete -k ./deploy
```