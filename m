Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C434CE006D7
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2013 15:12:38 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Jan 2013 15:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,433,1355126400"; d="scan'208";a="274461748"
Received: from unknown (HELO [10.255.14.52]) ([10.255.14.52])
	by fmsmga002.fm.intel.com with ESMTP; 08 Jan 2013 15:12:37 -0800
Message-ID: <1357686756.2515.50.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Tue, 08 Jan 2013 17:12:36 -0600
In-Reply-To: <50E746F7.6000306@dynamicdevices.co.uk>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
	<CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
	<50E746F7.6000306@dynamicdevices.co.uk>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>, Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake and task offloading onto multiple cloud-based servers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Jan 2013 23:12:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-01-04 at 21:17 +0000, Alex J Lennon wrote:
> On 04/01/2013 21:08, Chris Larson wrote:
> > 
> > 
> > On Fri, Jan 4, 2013 at 1:56 PM, Alex J Lennon
> > <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> > wrote:
> > 
> >     Can anybody advise on whether bitbake currently supports offloading of
> >     build tasks onto multiple systems? Perhaps cloud based?
> > 
> >     I'm thinking that it would be more efficient for me if I could bring up
> >     a number of Amazon EC2 servers (or similar) then have bitbake
> >     parallelise the build onto those servers to significantly reduce my
> >     build times?
> > 
> >     I see bitbake supports a level of task parallelisation on a single box.
> > 
> >     Can parallelisation of build onto multiple systems be achieved?
> > 
> >     Is it something that should even be a goal?
> > 
> > 
> > It's not supported today. It could be implemented, but nobody has made
> > it a priority and done so.
> 
> Do you have any feeling for the level of difficulty of such an
> implementation / what would have to change / how invasive it would be to
> the codebase ?
> 
> I'm wondering if it could be along the lines of creating a "remote task"
> class and then, say, having that class ssh into one of a pool of servers
> (running a standard image with all tools preinstalled maybe) then
> bitbaking the recipes for the particular and waiting on completion
> before pulling back the output rpm/deb/ipkg ?
> 
> Things are usually more complex than expected when you get into the
> nitty gritty though. What would the challenges be do you think?
> 
> Where would one start to look in the bitbake code to add this kind of
> support in?
> 

Hi, just catching up on my vacation e-mail and saw this...

In the 1.1 timeframe I proposed something similar for a demo/research
project - I'll just copy the proposal verbatim below in case any of the
ideas could be of any value.  At the time, it was proposed in the
context of creating a demo that would use java in a new
'machine-to-machine' layer, thus the references to 'm2m' and java in the
writeup.

I never got past the proposal phase - not enough time, etc, but I still
think it could make for an interesting research project.

The initial comments that were made that made me think it would be a
bigger job than I'd assumed and kind of made me drop the idea for the
time being were that because of build-time dependencies, an overall
build of a complete image is still pretty linear - if throwing a
40-processor system at a build doesn't really help much it's not likely
to be of much help either to distribute the individual pieces out to the
'cloud'.

The other barrier at the time was that we didn't have any self-hosting
Yocto images that could themselves be used to build Yocto images, but
that's no longer the case.

Probably the first step in making something like this feasible would be
to increase the granularity of parallelization and also decrease the
size of the build-time dependencies.  I have no concrete idea at the
moment on how to actually do that, but in general the more you can break
down the problem into separate pieces that can be built in parallel, the
more opportunity you'd have to move those pieces into the cloud.
Combine that with the other resource considerations you'd need to track
such as network bandwidth, etc, I guess you'd have all the pieces you'd
need and the whole thing becomes a continuously-updating dynamic
optimization problem.

Well, enough handwaving - I do think it's an interesting problem and is
still worth at least investigating - feel free to use or expand on any
of the ideas below, if they're of any value for what you're thinking
of...

----

capybara: Cloud Assembly Protocol for Yocto Build And Runtime Arrays

The basic idea is that you have a 'cloud' of Yocto build machines, each
of course running Yocto, that use a smart but simple protocol to
coordinate the building of a new Yocto image by farming out portions of
the overall build to each machine in the cloud, each according to its
capacity.  In other words, extending the parallel build across machines
and assembling it into a final image somewhere in the cloud.  The whole
process is completely peer-to-peer with no single node in charge - in
that context, a more appropriate name for it might be 'BuildTorrent'.

From the user's perspective, simply turning on a machine running an
'm2m' yocto image immediately, automatically, and seamlessly adds the
horsepower of that machine to the build - there's nothing else to do,
since the protocol automatically discovers the new build machine and
enlists it into the network.  Theoretically, adding enough machines to
the cloud would allow a new image to be built instantaneously (actually,
having a trivially easy-to-use system like this, and a way to monitor
the protocol and dynamically tweak tunables would allow for a lot of
experimentation with the build system parameters and immediate
observation of the results, and could provide some good insights into
the build system dynamics, which in the end just might allow approaching
that goal).

To accomplish this, it should be possible to design and implement a
simple protocol that would basically split the build up into a number of
independent 'work units' e.g. recipes, and match those up with whichever
machines in the cloud have the best currently available capacity for
building a given recipe.  The 'currently available capacity' metric
would change dynamically for any given machine, and would be essentially
a metric or set of metrics culled from dynamically-generated performance
data available on that machine (from e.g. the numerous tracing and
performance tools we have in Yocto).  The machine with the 'best'
currently available capacity for a given recipe would be chosen by
combining the current capacity metric for a given machine with other
factors such as network bandwidth to the image destination, etc. and
matching that up with the 'weight' of the recipe, essentially a
statically defined relative cost value associated with building that
recipe.  When a recipe completes, it sends that info out into the cloud,
which removes it from the list of remaining work (while building, it's
'pending').

Implementation-wise, each peer in the cloud would be running a Yocto
image containing a Java Virtual Machine instance running the 'capybara'
service.  The capybara service would itself be layered on top of some
basic and simple m2m-enabling messaging code.  Presumably, all of this
would be included in the 'meta-m2m' layer and would make it easy to add
as a feature to any Yocto image.

That's the basic idea in a nutshell.  If we combine that (JVM, meta-m2m
layer containing capybara on top of basic m2m messaging), the new Chrome
browser with JVM plugin support, and some minimal hooks into the build
system, I think we might have the basis for a pretty interesting demo
that actually uses Yocto to build Yocto and more importantly should
actually be useful in its own right for analyzing the build system and
speeding up builds for anyone with idle hardware.

Part of the reason I'd like to see this happen too is that I have a
bunch of hardware here that sits idle, and some of it actually pretty
powerful that shouldn't be going unused - it would be great to just kick
off a build and do nothing more than switch on these machines whenever I
wanted to make use of them, without having to actually set anything up
or type a command to do that (which is actually what prevents me from
making use of that hardware as it stands - may be laziness, but really I
don't have time to be bothered with being derailed by small tasks like
that all the time).

I don't think the full-fledged idea can be implemented in the 1.1 demo
timeframe, but I think a sufficiently interesting subset can.  So, I've
broken it into a couple phases, Phase I, which I think can be done in
the 1.1 demo timeframe, and Phase II, the follow-on:

Phase I: simply implement the 'work unit' breakup and the capacity
monitoring side of the protocol, but build on only a single machine
(i.e. only one machine would 'accept' work).  The protocol and m2m stack
would be running on any number of machines, each one actually reporting
capacity metrics into the cloud, and each one also monitoring the
protocol e.g. recipe-pending and -completion messages, and using that
information to display the overall build progress on each machine, in
the Java-enabled Chrome browser running on each machine (or maybe
modifying the demo from last ELC that showed Yocto commits graphically
to show completed recipes by machine or something instead).

We already have all the basic componentry we need, but it would require
some modest amount of Java development work to enable a minimal portion
of the protocol, some minimal hooks into the build system to at least
emit recipe-completion and -pending messages, and some minimal work to
extract and packetize the performance metrics that each machine sends
out (note that the performance data for Phase I would mainly be for demo
purposes and not actually used in the single-machine build (but they
would be real in the sense that they would provide real information over
the real protocol being monitored, and could be relatively simple-minded
at this point).  All of the above should be doable within the 1.1 demo
timeframe.

Phase II:

Everything else.


Well, I'll flesh out Phase II if/when it makes sense.  Just thought I'd
throw the basic idea out there as a possibility - if it doesn't make
sense as a demo, I still think it would be worthwhile as a side project,
so any comments would be welcome regardless...

----

Thanks,

Tom

> Thanks,
> 
> Alex
> 
> 
> > -- 
> > Christopher Larson
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



