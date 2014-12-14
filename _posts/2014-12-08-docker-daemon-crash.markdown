---
layout: post
title:  "Docker daemon crash"
dek:    "Are you prepared for all your containers to insta-crash?" 
lede:   "There is a lot of interest in the Docker containerization technology these days, but while adding a layer of indirection solves some problems there are also risks."
date:   2014-12-08 23:00:00
update: 2014-12-09 09:00:00
categories: docker devops spof
---
Got a good reminder at work today. We're investing in [Docker][docker] containers as our primary deployment units and a Docker daemon died on us - _which instantly brought down every Docker container on that host_. Thankfully the product we're working on is not ready for production so we still have time to make our setup more robust, e.g eliminate the most critical and obvious [SPOFs][spof] (which we were planning to address at some point, but now it suddenly got more mindshare ...)

Even if we take care to address our SPOFs, a Docker daemon crash is a pretty big deal and tomorrow we'll make sure to report the crash (unless we find it has already been reported).

On the positive note our setup is automated using a configuration management tool (in our case [SaltStack][salt]) so getting everything up and running again was just one command away (`salt "*" state.highstate`).

_Update_: The crash seems [to be related to logging][docker-issue-8832], and is most likely fixed in Docker's master-branch, but yet unreleased. We have a theory about what we're doing that triggers this crash so we'll see if we can fix our logging while we wait for Docker 1.4.


[docker]: https://docs.docker.com/
[spof]: http://en.wikipedia.org/wiki/Single_point_of_failure
[salt]: http://docs.saltstack.com/
[docker-issue-8832]: https://github.com/docker/docker/issues/8832
