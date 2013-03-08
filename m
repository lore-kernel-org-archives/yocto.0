Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC15DE006C2
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 09:01:43 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Mar 2013 09:01:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,809,1355126400"; d="scan'208";a="266939391"
Received: from unknown (HELO envy.home) ([10.255.12.187])
	by azsmga001.ch.intel.com with ESMTP; 08 Mar 2013 09:01:14 -0800
Message-ID: <513A195A.5040505@linux.intel.com>
Date: Fri, 08 Mar 2013 09:01:14 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
In-Reply-To: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 08 Mar 2013 17:01:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/04/2013 08:04 PM, Insop Song wrote:
> Hi,
> 
> I am preparing a new meta layer for testing and promoting a
> sched_deadline scheduler, called "meta-dl". I am planning to add
> scheduler testing tools and different kernel versions as well.
> - http://insop.github.com/meta-dl/

Note that qemux86 doesn't support the EMGD graphics driver. You mention
this and its license in the README, but it isn't necessary. If you are
pulling that in, there is a problem with your recipes.

I highly recommend you do not use USB keys for real-time storage. I
would also suggest avoiding the hddimg as a test vehicle as it consumes
memory and other resources for the live image. If anything, use the live
image as an installer only.

For some added safety, consider using poky/contrib/ddimage instead of
dd. It is a simple wrapper script around DD which offers a device
blacklist and uses sysfs to present the user with some helpful
information to confirm the operation.

So you are using the sched_deadline patches, but not PREEMPT_RT, is that
right? I had always assumed sched_deadline ran on top of PREEMPT_RT (but
I haven't every tried building it myself).

What you have here is a good experimental layer. Looking forward, please
consider:

o Incorporating sched_deadline as a kernel feature into the
linux-yocto_3.8 kernel. We can easily add recipes to build a
linux-yocto-deadline kernel and you will get all the benefits of the
yocto tooling, testing, bugfixing, and free forward porting.

o Incorporating your tests into (poky|oe-core)/meta/recipes-rt

> 
> With the help of hands-on kernel lab (thank you Tom and Darren), I am
> able to make kernel with sched_deadline enabled.
> 
> 
> Now, I am having some trouble of adding testing tools to this meta-dl,
> and hope I can get some help from you.
> 
> - problem: adding a new software into my meta-dl layer
> 
> - symtom and questions?
> 1. bitbake core-image-minimal (normal image build) won't include the
> additional program that I listed in .bb file below
> 2. If I do "bitbake schedtool-dl -c install" it builds and install,
> but at "i586" location instead of my machine staging rootfs
> (dl-qemux86)
> 
> 
> 
> - Here is my .bb file that pulls an additional program.
> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
> ===
> DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
> HOMEPAGE = "https://github.com/insop/schedtool-dl"
> SECTION = "base"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
> PR = "r1"
> 
> SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
> SRCREV = "${AUTOREV}"
> 
> S = "${WORKDIR}/git"
> 
> do_compile() {
> 	oe_runmake
> }
> 
> do_install() {
> 	oe_runmake install DESTDIR=${D}
> }
> 
> PARALLEL_MAKE = ""


Hopefully you can find the missing dependency in your makefile that
makes this necessary. This slows the build down and cumulatively, this
becomes a problem. This setting should always be considered a band-aid
and should have a comment starting with "FIXME: " ;-)


> 
> BBCLASSEXTEND = "native"
> 
> COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
> ====
> 
> 
> - I've updated my conf/layer.conf file to include above file
> https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
> ====
> # We have a conf and classes directory, add to BBPATH
> BBPATH := "${BBPATH}:${LAYERDIR}"
> 
> # We have a recipes directory, add to BBFILES
> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
> 	${LAYERDIR}/recipes-*/*/*.bbappend"
> 
> BBFILE_COLLECTIONS += "dl-qemux86"
> BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
> BBFILE_PRIORITY_dl-qemux86 = "6"
> =====
> 
> 
> 
> Thank you.
> 
> Regards,
> 
> Insop
> 
> 
> - ref:
> 1. sched_deadline:
> https://events.linuxfoundation.org/events/linuxcon-europe/song
> 2. sched_deadline:
> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

