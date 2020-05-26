# Python Cluster Manager

## Brief

While learning about C MPI distributed programming I came up with the idea for making a cluster manager which can monitor the slaves and pass the information to the C MPI program.

It would also be able to show the stats of the cluster nodes and show their temperature and processor load.

## Objectives

* Monitor slave processor load and core temperature
* Monitor slave presence and create the hosts file for C MPI
* Lightweight.

## Initial Thoughts

* Use a lightweight messaging protocol like MQTT
* Web-page for monitoring the cluster
* Configured as a linux daemon which connect at startup
