Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C794E00746
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 17:31:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Apr 2012 17:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="131405713"
Received: from unknown (HELO envy.home) ([10.255.12.43])
	by orsmga002.jf.intel.com with ESMTP; 11 Apr 2012 17:31:23 -0700
Message-ID: <4F862237.50200@linux.intel.com>
Date: Wed, 11 Apr 2012 17:30:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
In-Reply-To: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
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
X-List-Received-Date: Thu, 12 Apr 2012 00:31:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/11/2012 01:42 PM, Chris Tapp wrote:
> Is there a page somewhere that gives a rough idea of how quickly a full build runs on various systems?
> 
> I need a faster build platform, but want to get a reasonable price / performance balance ;-)
> 
> I'm looking at something like an i7-2700K but am not yet tied...
> 


We really do need to get some pages up on this as it comes up a lot.

Currently Yocto Project builds scale well up to about 12 Cores, so first
step is to get as many cores as you can. Sacrifice some speed for cores
if you have to. If you can do dual-socket, do it. If not, try for a six
core.

Next up is storage. We read and write a LOT of data. SSDs are one way to
go, but we've been known to chew through them and they aren't priced as
consumables. You can get about 66% of the performance of a single SSD
with a pair of good quality SATA2 or better drives configured in RAID0
(no redundancy). Ideally, you would have your OS and sources on an SSD
and use a RAID0 array to build on. This data is all recreatable, so it's
"OK" if you lose a disk and therefor ALL of your build data.

Now RAM, you will want about 2 GB of RAM per core, with a minimum of 4GB.

Finally, software. Be sure to run a "server" kernel which is optimized
for throughput as opposed to interactivity (like Desktop kernels). This
implies CONFIG_PREEMPT_NONE=y. You'll want a 64-bit kernel to avoid the
performance penalty inherent with 32bit PAE kernels - and you will want
lots of memory. You can save some IO by mounting your
its-ok-if-i-lose-all-my-data build partition as follows:

/dev/md0        /build          ext4
noauto,noatime,nodiratime,commit=6000

As well as drop the journal from it when you format it. Just don't power
off your machine without properly shutting down!

That should get you some pretty good build times.

I run on a beast with 12 cores, 48GB of RAM, OS and sources on a G2
Intel SSD, with two Seagate Barracudas in a RAID0 array for my /build
partition. I run a headless Ubuntu 11.10 (x86_64) installation running
the 3.0.0-16-server kernel. I can build core-image-minimal in < 30
minutes and core-image-sato in < 50 minutes from scratch.

Hopefully that gives you some ideas to get started.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

