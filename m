Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35DDEE0132F
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 13:56:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Apr 2012 13:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132565667"
Received: from unknown (HELO envy.home) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 18 Apr 2012 13:56:11 -0700
Message-ID: <4F8F2A4A.108@linux.intel.com>
Date: Wed, 18 Apr 2012 13:55:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com>
	<9AE35C40-C519-49ED-9790-0E4BC9A42F39@keylevel.com>
	<4F875D98.7020100@linux.intel.com>
	<E3DA5E46-34FB-449B-BDE2-E5E0F8EFECFD@keylevel.com>
In-Reply-To: <E3DA5E46-34FB-449B-BDE2-E5E0F8EFECFD@keylevel.com>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Wed, 18 Apr 2012 20:56:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/18/2012 12:41 PM, Chris Tapp wrote:
> On 12 Apr 2012, at 23:56, Darren Hart wrote:
>> Get back to us with times, and we'll build up a wiki page.
> 
> Some initial results / comments:
> 
> I'm running on:
>  - i7 3820 (quad core, hyper-treading, 3.6GHz)
>  - 16GB RAM (1600MHz XMP profile)
>  - Asus P9X79 Pro motherboard
>  - Ubuntu 11.10 x86_64 server installed on a 60GB OCZ Vertex 3 SSD on a 3Gb/s interface
>  - Two 60GB OCZ Vertex 3s as RAID-0 on 6Gb/s interfaces.
> 
> The following results use a DL_DIR on the OS SSD (pre-populated) -
> I'm
not interested in the speed of the internet, especially as I've only got
a relatively slow connection ;-)
> 
> Poky-6.0.1 is also installed on the OS SSD.
> 
> I've done a few builds of core-image-minimal:
> 
> 1) Build dir on the OS SSD
> 2) Build dir on the SSD RAID + various bits of tuning.
> 
> The results are basically the same, so it seems as if the SSD RAID
makes no difference. Benchmarking it does show twice the read/write
performance of the OS SSD, as expected. Disabling journalling and
increasing the commit time to 6000 also made no significant difference
to the build times, which were (to the nearest minute):


That is not surprising. With 4 cores and a very serialized build target,
I would not expect your SSD to be the bottleneck.

> 
> Real   : 42m
> User   : 133m
> System : 19m
> 
> These time were starting from nothing, and seem to fit with your 30
minutes with 3 times as many cores! BTW, BB_NUMBER_THREADS was set to 16
and PARALLEL_MAKE to 12.

A couple of things to keep in mind here. The minimal build is very
serialized in comparison to something like a sato build. If you want to
optimize your build times, look at the bbmatrix* scripts shipped with
poky to find the sweet spot for your target image and your build system.
I suspect you will find your BB_NUMBER_THREADS and PARALLEL_MAKE
settings are two high for your system. I'd start with them at 8 and 8,
or 8 and 6 respectively.

> 
> I also tried rebuilding the kernel:
>    bitbake -c clean linux-yocto
>    rm -rf the sstate bits for the above
>    bitbake linux-yocto
> 
> and got the following times:
> 
> Real   : 39m
> User   : 105m
> System : 16m
> 
> Which kind of fits with an observation. The minimal build had
something like 1530 stages to complete. The first 750 to 800 of these
flew past with all 8 'cores' running at just about 100% all the time.
Load average (short term) was about 19, so plenty ready to run. However,
round about the time python-native, the kernel, libxslt, gettext kicked
in the cpu usage dropped right off - to the point that the short term
load average dropped below 3. It did pick up again later on (after the
kernel was completed) before slowing down again towards the end (when it
would seem reasonable to expect that less can run in parallel).
> 
> It seems as if some of these bits (or others around this time)
> aren't
making use of parallel make or there is a queue of dependent tasks that
needs to be serialized.
> 
> The kernel build is a much bigger part of the build than I was
expecting, but this is only a small image. However, it looks as if the
main compilation phase completes very early on and a lot of time is then
spent building the modules (in a single thread, it seems) and in
packaging - which leads me to ask if RPM is the best option (speed
wise)? I don't use the packages myself (though understand they are
needed internally), so I can use the fastest (if there is one).

IPK is faster than RPM. This is what I use on most of my builds.

> 
> Is there anything else I should be considering to improve build
> times?

Run the ubuntu server kernel to eliminate some scheduling overhead.
Reducing the parallel settings mentioned above should help here too.

Welcome to Ubuntu 11.10 (GNU/Linux 3.0.0-16-server x86_64)

dvhart@rage:~
$ uname -r
3.0.0-16-server


As I said above, this is just a rough-cut at some benchmarking and I
plan to do some more, especially if there are other things to try and/or
any other information that would be useful.
> 
> Still, it's looking much, much faster than my old build system :-)
> 
> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

