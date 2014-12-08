---
layout: post
title:  "Docker daemon crash"
date:   2014-12-08 23:00:00
categories: docker devops spof
---
Got a good reminder at work today. We're investing in [Docker][docker] containers as our primary deployment units and a Docker daemon died on us - _which instantly brought down every Docker container on that host_. Thankfully the product we're working on is not ready for production so we still have time to make our setup more robust, e.g eliminate the most critical and obvious [SPOFs][spof] (which we were planning to address at some point, but now it suddenly got more mindshare ...)

Even if we take care to address our SPOFs, a Docker daemon crash is a pretty big deal and tomorrow we'll make sure to report the crash (unless we find it has already been reported).

On the positive note our setup is automated using a configuration management tool (in our case [SaltStack][salt]) so getting everything up and running again was just one command away (`salt "*" state.highstate`).

[docker]: https://docs.docker.com/
[spof]: http://en.wikipedia.org/wiki/Single_point_of_failure
[salt]: http://docs.saltstack.com/
