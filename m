Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B250E011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 07:24:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qARFOJkc001591
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 27 Nov 2012 07:24:19 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 27 Nov 2012 07:24:19 -0800
Message-ID: <50B4DB1F.2070904@windriver.com>
Date: Tue, 27 Nov 2012 10:24:15 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Yu Pan <panyu2000@gmail.com>
References: <CAPeyoXbwyKCE2r3R24D5UW2zHTcqkAS1Po+ZKRUqaG4PsJoqOA@mail.gmail.com>
In-Reply-To: <CAPeyoXbwyKCE2r3R24D5UW2zHTcqkAS1Po+ZKRUqaG4PsJoqOA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preempt-rt kernel build for beagleboard
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
X-List-Received-Date: Tue, 27 Nov 2012 15:24:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-11-27 05:23 AM, Yu Pan wrote:
> I started looking at Yocto 2 weeks back. Despite the complexity in
> kernel building, I found it quite hard to locate information on
> preempt-rt build. I was trying to build linux-yocto-rt for beagleboard
> from "danny" and the linux-yocto-3.4 kernel, and it seems to be working.
> I'd like to share how one can do that in this thread.
>
> Since the kernel does not include an official preempt-rt branch for
> beagleboard yet, I choose to directly use the standard/preempt-rt/base
> branch. I guess this should work for the preempt-rt kernel, from the
> fact that the standard kernel (non preempt-rt) used for beagleboard from
> the standard/beagleboard branch is basically identical to that from the
> standard/base branch.

Correct. If you don't have any board specific patches, working with
an existing branch in the tree is fine.

>
> Here is what I did.
> 1. Under poky/meta-yocto-bsp/recipes-kernel/linux, I added a
> linux-yocto-rt_3.4.bbappend recipe containing the following lines. The
> SRCREV value used is the same as the one in the base
> linux-yocto-rt_3.4.bb <http://linux-yocto-rt_3.4.bb> under
> poky/meta/recipes/kernel.
>
>    KBRANCH_beagleboard = "standard/preempt-rt/base"
>    SRCREV_machine_beagleboard ?= "5705c8037d2c47938034ead87c70ae3ebef552f7"
>    COMPATIBLE_MACHINE_beagleboard = "beagleboard"

Also note that the yocto-bsp tool allows the extension of an existing
BSP or kernel to a new board. It should provide some of what you
did via editing the files, I added TomZ in case I've misspoken about
what the tools do in this area.

But what you have above is correct.

>
> 2. Modified the PREFERRED_PROVIDER_virtual/kernel variable in
> poky/meta-yocto-bsp/conf/machine/beagleboard.conf to "linux-yocto-rt".
>
> 3. "bitbake linux-yocto-rt -c menuconfig" to set the Preemption Model to
> "Fully Preemptible Kernel (RT)".

You shouldn't have needed to do this part, since the board already has
a preempt-rt BSP description:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/tree/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc?h=meta

And when you build the linux-yocto-rt kernel with that board, that
description should be found, and it enables all the base options already.

If you look in your build, what does the file 'linux/meta/top_tgt'
contain ?

Cheers,

Bruce

>
> 4. "bitbake linux-yocto-rt"
>
> 5. "bitbake core-image-rt" which includes some realtime test programs on
> top of core-image-minimal.
>
> I did some cyclictest on beagleboard using the generated kernel and
> image with "/usr/bin/cyclictest -p95 -m". The results did show huge
> improvement on max latency especially under load.
>
> Hope it helps.
>
> Cheers
> Pan Yu
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


