Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EBE3E0059A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 01:45:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3D8jTL7032273;
	Fri, 13 Apr 2012 09:45:29 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29772-10; Fri, 13 Apr 2012 09:45:25 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3D8jMi1032267
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 13 Apr 2012 09:45:23 +0100
Message-ID: <1334306723.7309.54.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 13 Apr 2012 09:45:23 +0100
In-Reply-To: <4F86E7E0.4080704@linux.intel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Fri, 13 Apr 2012 08:45:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2012-04-12 at 07:34 -0700, Darren Hart wrote:
> 
> On 04/12/2012 07:08 AM, Björn Stenberg wrote:
> > Darren Hart wrote:
> >> /dev/md0        /build          ext4 
> >> noauto,noatime,nodiratime,commit=6000
> > 
> > A minor detail: 'nodiratime' is a subset of 'noatime', so there is no
> > need to specify both.
> 
> Excellent, thanks for the tip.

Note the key here is that for a system with large amounts of memory, you
can effectively keep the build in memory due to the long commit time.

All the tests I've done show we are not IO bound anyway.


> > Yet for all the combined horsepower, I am unable to match your time
> > of 30 minutes for core-image-minimal. I clock in at around 37 minutes
> > for a qemux86-64 build with ipk output:
> > 
> > ------ NOTE: Tasks Summary: Attempted 1363 tasks of which 290 didn't
> > need to be rerun and all succeeded.
> > 
> > real    36m32.118s user    214m39.697s sys     108m49.152s ------
> > 
> > These numbers also show that my build is running less than 9x
> > realtime, indicating that 80% of my cores sit idle most of the time.
> 
> Yup, that sounds about right. The build has a linear component to it,
> and anything above about 12 just doesn't help. In fact the added
> scheduling overhead seems to hurt.
>
> > This confirms what "ps xf" says during the builds: Only rarely is
> > bitbake running more than a handful tasks at once, even with
> > BB_NUMBER_THREADS at 64. And many of these tasks are in turn running
> > sequential loops on a single core.
> > 
> > I'm hoping to find time soon to look deeper into this issue and
> > suggest remedies. It my distinct feeling that we should be able to
> > build significantly faster on powerful machines.
> > 
> 
> Reducing the dependency chains that result in the linear component of
> the build (forcing serialized execution) is one place we've focused, and
> could probably still use some attention. CC'ing RP as he's done a lot there.

The minimal build is about our worst case single threaded build as it is
highly dependency ordered. We've already done a lot of work looking at
the "single thread" of core dependencies and this is for example why we
have gettext-minimal-native which unlocked some of the core path
dependencies. When you look at what we build, there is a reason for most
of it unfortunately. There are emails from me about what I looked and
found on the mailing list, I tried to keep a record of it somewhere at
least. You can get some wins with things like ASSUME_PROVIDED +=
"git-native".

For something like a sato build you should see more parallelism. 

I do also have some small gains in some pending patches:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/t2&id=2023801e25d81e8cffb643eac259c18b9fecda0b
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/t2&id=ecf5f5de8368fdcf90c3d38eafc689d6d265514b
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/t2&id=2190a51ffac71c9d19305601f8a3a46e467b745a

which look at speeding up do_package, do_package_write_rpm and do_rootfs
(with rpm). There were developed too late for 1.2 and are in some cases
only partially complete but they show some ways we can squeeze some
extra performance out the system.

There are undoubtedly ways we can improve performance but I think we've
done the low hanging fruit and we need some fresh ideas.

Cheers,

Richard



