Steps
=====
* ./install-prereq.sh
* vagrant up
* ./post_install.sh

Examples
=======

### Quick Start

Start the guestbook with one command:

```console
$ kubectl create -f examples/guestbook/all-in-one/guestbook-all-in-one.yaml
service "redis-master" created
deployment "redis-master" created
service "redis-slave" created
deployment "redis-slave" created
service "frontend" created
deployment "frontend" created
```

### Step by Step
```console
$kubectl create -f examples/redis-master-service.yaml 
service "redis-master" created
$kubectl create -f examples/redis-master-deployment.yaml 
deployment "redis-master" created
$kubectl create -f examples/redis-slave.yaml 
service "redis-slave" created
deployment "redis-slave" created
$kubectl create -f examples/frontend.yaml 
service "frontend" created
deployment "frontend" created
```

### Remove
```console
$kubectl delete deployments,service -l "app in (redis,guestbook)"
deployment "frontend" deleted
deployment "redis-master" deleted
deployment "redis-slave" deleted
service "frontend" deleted
service "redis-master" deleted
service "redis-slave" deleted
```

