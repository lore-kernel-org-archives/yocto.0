Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19601E0030B
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 15:39:30 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:59751
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SL00e-0003nO-M3; Thu, 19 Apr 2012 23:39:28 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F8F2A4A.108@linux.intel.com>
Date: Thu, 19 Apr 2012 23:39:26 +0100
Message-Id: <01C0F110-AD9E-4C0A-996D-EDDB7B4BF4A4@keylevel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com>
	<9AE35C40-C519-49ED-9790-0E4BC9A42F39@keylevel.com>
	<4F875D98.7020100@linux.intel.com>
	<E3DA5E46-34FB-449B-BDE2-E5E0F8EFECFD@keylevel.com>
	<4F8F2A4A.108@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Thu, 19 Apr 2012 22:39:31 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 18 Apr 2012, at 21:55, Darren Hart wrote:

<snip>

> A couple of things to keep in mind here. The minimal build is very
> serialized in comparison to something like a sato build. If you want =
to
> optimize your build times, look at the bbmatrix* scripts shipped with
> poky to find the sweet spot for your target image and your build =
system.
> I suspect you will find your BB_NUMBER_THREADS and PARALLEL_MAKE
> settings are two high for your system. I'd start with them at 8 and 8,
> or 8 and 6 respectively.

I've run a few of the matrix variants (it's going to take a few days to =
get a full set). 8 and 16 threads are giving the same results (within a =
few seconds) for parallel make values in the range 6 to 12.

I tried a core-image-sato build and it completed in 61m/244m/40m, which =
is much closer to your <50m than I thought I would get.

One thing I noticed during the build was that gettext-native seemed =
slow. Doing a 'clean' on it and re-baking shows that it takes over 4 =
minutes to build with most of the time (2m38) being spent in =
'do_configure'. It also seems as if this is on the critical path as =
nothing else was getting scheduled while it was building. There seems to =
be a lot of 'nothing' going on during the do_configure phase (i.e. very =
little CPU use). Or, to put it another way, 2.5% of the build time is =
taken up configuring this package!

> IPK is faster than RPM. This is what I use on most of my builds.

Makes no noticeable difference in my testing so far, but I'll stick with =
IPK from now on.

<snip>

> Run the ubuntu server kernel to eliminate some scheduling overhead.
> Reducing the parallel settings mentioned above should help here too.

I'm running 11.x server as you mentioned this before ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com


