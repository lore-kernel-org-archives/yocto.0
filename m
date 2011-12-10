Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94270E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 22:53:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBA6rqJR024235
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Dec 2011 22:53:52 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.36) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 9 Dec 2011 22:53:52 -0800
Message-ID: <4EE301FF.9040200@windriver.com>
Date: Sat, 10 Dec 2011 01:53:51 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4EE2911E.3090708@linux.intel.com>
In-Reply-To: <4EE2911E.3090708@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Sat, 10 Dec 2011 06:53:59 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11-12-09 5:52 PM, Darren Hart wrote:
> Bruce,
>
> I'm looking at introducing a new kernel type, ktypes/tiny.
>
> Tiny will define a core set of kernel policy options, such as proc, sys,
> devtmpfs, futex, epoll, elf bin format, etc. It will not enable any
> drivers, filesystems, debug options, or networking options by default.
> This would be the responsibility of the BSP to add a named feature
> implementing this.
>
> Taking a look at the ktypes we have now resulted in some questions:
>
> dvhart@envy:~/source/linux/linux-yocto-3.0/meta/cfg/kernel-cache/ktypes
> $ tree
> .
> ├── base
> │   ├── base.cfg
> │   ├── base.scc
> │   ├── hardware.cfg
> │   ├── hardware.kcf
> │   ├── non-hardware.cfg
> │   └── non-hardware.kcf
> ├── preempt-rt
> │   ├── preempt-rt.cfg
> │   └── preempt-rt.scc
> ├── standard
> │   ├── perf-force-include-of-stdbool.h.patch
> │   ├── perf-hard-code-NO_LIBPERL-NO_LIBPYTHON.patch
> │   ├── standard-patches.scc
> │   ├── standard.cfg
> │   ├── standard.scc
> │   └── x86-add-TIF_32BIT-compatibility-define.patch
>
> These form a hiearchy, each inheriting from the layer beneath like so:
>
> base/standard/preempt-rt
>
> As I dig into this I see that some policy is infact laid down by base,
> including things like:
>
> CONFIG_MODULES=y
> CONFIG_INET=y
> CONFIG_PREEMPT=y
> CONFIG_NFS_FS=y
> CONFIG_MSDOS_PARTITION=y
>
> These pull in the IP stack, the block layer, etc. Because of this, I
> can't really inherit from base for ktypes/tiny. I would like to inherit
> the hardware and non-hardware kcf files though, as well as any patches
> that might make their way into base. Which leads me to standard. I would
> like to see a much smaller set of config policy options set in base.
> Most likely these should be exactly what we agree on for tiny, and tiny
> wouldn't add any additional policy as it implements only what is
> required for a Yocto Project built kernel.
>
> NOTE: kernel version is 3.0+
> $ cat base/base.scc | head -n 1
> set_kernel_version 2.6.37
>
> There are three patches in standard, only two of which (the perf ones)
> are listed in the standard.scc. As I believe any kernel we build should
> have these, I would like to see any global patches applied to base,
> leaving standard to define policy, and include named features.
>
> With these changes, I could add ktypes/tiny as follows:
> $ cat tiny/tiny.scc
> include ktypes/base
> branch tiny
> include features/xyz/xyz.scc
> include cfg/abc.scc
>
> Another point of interest is preempt-rt, as I can see people wanting to
> build tiny preempt-rt. I think the best approach here is to create
> ktypes/tiny/preempt-rt-tiny/preempt-rt-tiny.scc.
>
> Note: I believe this fails with .patch.patch
> $ cat features/rt/rt.scc | grep patch
> patch rt-apply-patch-3.0.10-rt27.patch.patch
>
> I'm working on a patch series that implements the suggestions I've made
> above. Bruce, do you have any issues with this approach?

FYI: I have a response to this .. but it's just not reading very well here.
And it's late, so I'm going to respond over the weekend when I get a
chance to revise what I've written into something legible. :)

Cheers,

Bruce

>


