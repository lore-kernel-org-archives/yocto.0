Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E6E7EE01480
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:04:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r27E4EFL002515
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Mar 2013 06:04:15 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 7 Mar 2013 06:04:14 -0800
Message-ID: <51389E52.2000109@windriver.com>
Date: Thu, 7 Mar 2013 09:04:02 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
	<CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
In-Reply-To: <CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
Cc: Juri Lelli <j.lelli@sssup.it>, Darren Hart <dvhart@linux.intel.com>,
	yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Mar 2013 14:04:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-07 12:05 AM, Insop Song wrote:
> Bruce,
>
> That's very good. I will bring linux-yocto-3.8 kernel to meta-dl.
> (https://github.com/insop/meta-dl/tree/linux-yocto-3.8)

I have another suggestion to offer here, one I've been wanting to
do for a bit.

I've added Darren Hart to the thread, since I'd like to hear from
him on this as well.

I have a use for the scheduling tools and benchmark cases for some
virtualization usecases (meta-virtualization on git.yoctoproject.org).

We already have "recipes-rt" in oe-core, and the preempt-rt kernel
available from linux-yocto, and as we've been discussing I've added
support for EDF/sched_dealine in linux-yocto-3.8.

I'm not a fan of having to many layers, but rather than putting these
efforts in github layers, hiding them in meta-virtualiation and they
aren't yet "core" enough to go in oe-core .. I'd rather see them
conslidated in a "meta-realtime" (or whatever name we decide on)
layer on git.yoctoproject.org.

There are also ideas around interrupt management, AMP, and alternative
system partitioning that I'd like to drive into such a layer.

A quick scan of the layer index, doesn't show anything that matches
this description. So I'm suggesting that we create a new layer
to consolidate these approaches, and a layer that can be consumed by
some of the other layers that are currently in progress.

Comments ? In particular, point out a layer that already does this that
I've missed.

>
> The purposes of meta-dl are the following three:
> 1. easy to use sched_deadline by providing recipes-kernel that includes
> - git url including github and from yocto-kernel
>
> 2. easy to test and validate sched_deadline with automated
> reproducible test suits
> - currently, rt-app and schedtool are included in meta-dl
> - will add test scripts
>
> 3. provide and test on different targets/bsps
> - will prepare and test on different targets (bsp)
>
> #1 is done as I've tested with kernel from github from Juri and
> yocto-kernel-3.8 that you've merged.
> #2 and #3 are in-progress.
>
> I've talked Juri the other day and gather information on testing
> methods and scripts so I will include this to meta-dl.
>
> I agree that it's good to coordinate the effort, so please feel free
> to let me know if you have any suggestion.

See above. I'd like to consolidate things even more :)

Cheers,

Bruce

>
> Regards,
>
> Insop
>
> * updated kernel recipes
> @ -9,12 +9,15 @@ inherit kernel
>
>   #SRCREV ="031d31cfaa1e0c00122bf52639e340353d3b8360"
>   SRCREV ="${AUTOREV}"
> -KBRANCH = "sched-dl-V7"
> -SRC_URI = "git://github.com/insop/sched-deadline;protocol=git;branch=${KBRANCH}
> \
> +#KBRANCH = "sched-dl-V7"
> +#SRC_URI = "git://github.com/insop/sched-deadline;protocol=git;branch=${KBRANCH}
> \
> +#           file://defconfig "
> +KBRANCH = "standard/edf"
> +SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8;protocol=git;branch=${KBRANCH}
> \
>              file://defconfig "
>
>   PV = "3.8"
> -PR = "dl7"
> +PR = "dl"
>
>   KSRC ?= ""
>   S = '${@base_conditional("KSRC", "", "${WORKDIR}/git", "${KSRC}", d)}'
>
> Thank you.
>
> Insop
>
> On Wed, Mar 6, 2013 at 8:00 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>> On 13-03-05 1:54 AM, Insop Song wrote:
>>>
>>> Hi,
>>>
>>> I am preparing a new meta layer for testing and promoting a
>>> sched_deadline scheduler, called "meta-dl". I am planning to add
>>> scheduler testing tools and different kernel versions as well.
>>> - http://insop.github.com/meta-dl/
>>
>>
>> FYI: I've already merged and staged sched_dl in linux-yocto_3.8:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.8/log/?h=standard/edf
>>
>> I'll be supporting it there as well, so it makes sense to coordinate
>> our efforts around kernels, configurations and benchmarks.
>>
>> Juri and I talked about this @ ELC a few weeks ago (I've added
>> him to the cc as well), and rather than hiding sched_deadline
>> kernel support in a custom kernel layer, I'd like to try and get
>> more eyes on it via linux-yocto .. so if we can all coordinate our
>> efforts here, that would be much better.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> With the help of hands-on kernel lab (thank you Tom and Darren), I am
>>> able to make kernel with sched_deadline enabled.
>>>
>>>
>>> Now, I am having some trouble of adding testing tools to this meta-dl,
>>> and hope I can get some help from you.
>>>
>>> - problem: adding a new software into my meta-dl layer
>>>
>>> - symtom and questions?
>>> 1. bitbake core-image-minimal (normal image build) won't include the
>>> additional program that I listed in .bb file below
>>> 2. If I do "bitbake schedtool-dl -c install" it builds and install,
>>> but at "i586" location instead of my machine staging rootfs
>>> (dl-qemux86)
>>>
>>>
>>>
>>> - Here is my .bb file that pulls an additional program.
>>>
>>> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
>>> ===
>>> DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
>>> HOMEPAGE = "https://github.com/insop/schedtool-dl"
>>> SECTION = "base"
>>> LICENSE = "GPLv2"
>>> LIC_FILES_CHKSUM =
>>> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
>>> PR = "r1"
>>>
>>> SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
>>> SRCREV = "${AUTOREV}"
>>>
>>> S = "${WORKDIR}/git"
>>>
>>> do_compile() {
>>>           oe_runmake
>>> }
>>>
>>> do_install() {
>>>           oe_runmake install DESTDIR=${D}
>>> }
>>>
>>> PARALLEL_MAKE = ""
>>>
>>> BBCLASSEXTEND = "native"
>>>
>>> COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
>>> ====
>>>
>>>
>>> - I've updated my conf/layer.conf file to include above file
>>> https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
>>> ====
>>> # We have a conf and classes directory, add to BBPATH
>>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>>
>>> # We have a recipes directory, add to BBFILES
>>> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>>           ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>> BBFILE_COLLECTIONS += "dl-qemux86"
>>> BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
>>> BBFILE_PRIORITY_dl-qemux86 = "6"
>>> =====
>>>
>>>
>>>
>>> Thank you.
>>>
>>> Regards,
>>>
>>> Insop
>>>
>>>
>>> - ref:
>>> 1. sched_deadline:
>>> https://events.linuxfoundation.org/events/linuxcon-europe/song
>>> 2. sched_deadline:
>>>
>>> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


