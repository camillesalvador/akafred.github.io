---
layout: post
title:  "Creating the akafred blog site"
date:   2014-12-07 12:00:00
update: 2014-12-09 10:10:00
categories: static-site-generation jekyll docker
---
_Aller anfang ist schwer_ my German teacher told us, and oh my! does that apply to blogging when you are a techie, who—in theory at least—could have *built* a blogging platform _if you just had the time_. It does not help that you have [extremely capable colleagues][kodemaker] who probably have done just that. Obviously the abandoned WordPress-blog from yesteryear does not cut it anymore ...

As [static site generators][ssg] are all the rage now, I decided to try the most popular one, [Jekyll][jekyll]. Jekyll was originally created 6 years ago by the now ousted Github founder, [Tom Preston-Werner][tpw], but seems to be [in active development][jekyll-stats] still. There are [other popular static site generators][6-static-blog-generators-arent-jekyll], but I chose to just go with the flow, trying not to create extra pre-blogging hurdles for myself. 

Static site generators have a some very nice characteristics:

* Page generation happens generation-time, not when serving the page, which means a faster site and lower server load.
* Less code and fewer components on the server reduces the attack vector, your site can be made more secure.
* No relational database with state, and in fact, after the site is generated it is immutable - which makes it easier to reason about.
* Usually your site is generated from plain old text files (and perhaps the odd image), which is very amenable to revision control systems.

While static site generators demand very little from your web server you still need infrastructure to run your generator, and sometimes that may be non-trivial to set up. I love [Docker][docker] and isolating the generator using containerization is a really sweet idea. The presence of a [Docker image with Jekyll][grahamc_jekyll] made choosing Jekyll even easier. 

There are drawbacks to using static site generators, too, we'll get back to those in later posts.

Another great thing about Jekyll, is that it is what Github uses for its User, Project and Organization pages, so if you can leave it to them to do both page generation and serve the pages - if you want to.

Setting up your own [Github Pages][pages] site is easy, and when you've [generated a Jekyll site][jekyll] locally you can just push it to your Pages repo. If you want a custom domain name (not *.github.io) there are just [a few small things you have to do with your DNS provider][CNAME-record], and [add a file to your repo][CNAME-file].

Basically that is what I did and you'll find [the git repo backing this site on Github][akafred-github-io].

[kodemaker]: http://www.kodemaker.no/
[ssg]:    https://staticsitegenerators.net/
[jekyll]: http://jekyllrb.com
[tpw]:    http://tom.preston-werner.com/
[jekyll-stats]: https://github.com/jekyll/jekyll/graphs/contributors
[docker]: https://docs.docker.com/
[grahamc_jekyll]: https://registry.hub.docker.com/u/grahamc/jekyll/
[pages]: https://pages.github.com/
[CNAME-file]: https://help.github.com/articles/adding-a-cname-file-to-your-repository/
[CNAME-record]: https://help.github.com/articles/tips-for-configuring-a-cname-record-with-your-dns-provider/
[6-static-blog-generators-arent-jekyll]: http://www.sitepoint.com/6-static-blog-generators-arent-jekyll/
[akafred-github-io]: http://github.com/akafred/akafred.github.io
