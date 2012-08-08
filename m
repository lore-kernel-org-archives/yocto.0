Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C6ACE00283
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 12:39:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q78Jdpgh028640
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Aug 2012 12:39:51 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 8 Aug 2012 12:39:51 -0700
Message-ID: <5022C084.5040300@windriver.com>
Date: Wed, 8 Aug 2012 15:39:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project Mailing List <yocto@yoctoproject.org>
References: <20120808193528.GA20546@imko.de>
In-Reply-To: <20120808193528.GA20546@imko.de>
Subject: Re: Strange WARNING while do_kernel_configcheck()
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
X-List-Received-Date: Wed, 08 Aug 2012 19:39:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-08 03:35 PM, Markus Hubig wrote:
> Hello @all,
>
> I'm working on a bsp vor the taskit stamp9g20 cpu module.
>
> I have a bbappend file for the linux-yocto_3.2 kernel which was ones working
> but now (after updating the denzil branch from 7.0 to 7.0.1) I get a strange
> error while building the kernel.
>
> I managed to track the problem down to a warning at the do_kernel_configcheck
> task ...
>
> The warning I get is:
>
> | NOTE: validating kernel configuration
> | WARNING: Can't find any BSP hardware or required configuration fragments.
> | WARNING: Looked at
> |<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/hdw_frags.txt
> | and
> |<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/required_frags.txt
> | in directory:
> |<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs
>
> Which seems to be the wrong path to look, course there is no such path like
>
> <snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs
>
> the whole stuff is in:
>
> <snip>/linux/meta/cfg/standard/default/stamp9g20
>
> maybe I made a mistake in my linux-yocto_3.2.bbappend file?

Nope. But there was an interface change to that tool in particular in
master, so if you've ended up with kern-tools that are mismatched to
the bbclass .. you'd end up with them looking in the wrong place.

Cheers,

Bruce

>
> | 1| FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> | 2|
> | 3| PR := "${PR}.1"
> | 4|
> | 5| COMPATIBLE_MACHINE_stamp9g20 = "stamp9g20"
> | 6| KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs"
> | 7| KMACHINE_stamp9g20  = "stamp9g20"
> | 8|
> | 9| COMPATIBLE_MACHINE_portuxg20 = "portuxg20"
> |10| KBRANCH_portuxg20  = "standard/default/arm-versatile-926ejs"
> |11| KMACHINE_portux9g20  = "portuxg20"
> |12|
> |13| SRC_URI += "file://hardware.cfg                  \
> |14|             file://non-hardware.cfg              \
> |15|            "
> |16|
> |17| SRC_URI_append_stamp9g20 = "file://portuxg20.cfg \
> |18|             file://portuxg20-preempt-rt.scc      \
> |19|             file://portuxg20.scc                 \
> |20|             file://portuxg20-standard.scc        \
> |21|             "
> |22|
> |23| SRC_URI_append_portuxg20 = "file://stamp9g20.cfg \
> |24|             file://stamp9g20-preempt-rt.scc      \
> |25|             file://stamp9g20.scc                 \
> |26|             file://stamp9g20-standard.scc        \
> |27|            "
>
> The code which is -generating- responsible for this warning is:
>
> (from "meta/classes/kernel-yocto.bbclass")
>
> | 1| python do_kernel_configcheck() {
> | 2|     import bb, re, string, sys, commands
> | 3|
> | 4|     bb.plain("NOTE: validating kernel configuration")
> | 5|
> | 6|     pathprefix = "export PATH=%s:%s; " % (d.getVar('PATH', True), "${S}/scripts/util/")
> | 7|     cmd = d.expand("cd ${B}/..; kconf_check -config- ${B} ${S} ${B} ${KBRANCH}")
> | 8|     ret, result = commands.getstatusoutput("%s%s" % (pathprefix, cmd))
> | 9|
> |10|     bb.plain( "%s" % result )
> |11| }
>
> Cheers, Markus
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


