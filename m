Return-Path: <andrew.wafaa@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B937BE0027D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 03:22:18 -0700 (PDT)
Received: by lboj14 with SMTP id j14so8489253lbo.35
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 03:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=+VBnb0Rv/gr6S971gEQFs0jauwwfTl2SH93UlAlIfX0=;
	b=VNeSYwQAQp3haIgDd2TOdF59qHOfGNpI3ZWY+JPP2EC1OzKjQzc+dGvw/JminWSvFk
	7dxPBSlqmOUZpza77dIoJuhwPs9U/bIiKbIGwFQiOY4f4n64ND6hEJC9kiVlqB7hcege
	GiBVaiFEvwDyzbTKUMg28C5KSHRvrfVYy1143nqlEZ5+P7Wg6OA1hSKmYQZZKu1z81Ft
	olQ1iQFmeFVizTG4ebw0c0EjzgJSJlqQ9bNVEAuG/TVJ7fAfYEcla2QwZOi0/OW5tkGN
	H2/911avpOv/XqsaJ1hb4oCtbY77KOmY+VJwFFyEcy+S2t2q+cxmTmjO17ALwjV8X2LV
	l4Sg==
MIME-Version: 1.0
Received: by 10.152.148.195 with SMTP id tu3mr10954573lab.16.1342434135128;
	Mon, 16 Jul 2012 03:22:15 -0700 (PDT)
Sender: andrew.wafaa@gmail.com
Received: by 10.112.38.234 with HTTP; Mon, 16 Jul 2012 03:22:14 -0700 (PDT)
Date: Mon, 16 Jul 2012 11:22:14 +0100
X-Google-Sender-Auth: v6O1u57BW1lDsT_OZgO68-PN8UI
Message-ID: <CAO0oNxenx_MkM+DHfZ8A2KG9Nu16=-kYnuag-ya6VPEBW_BpDg@mail.gmail.com>
From: Andrew Wafaa <awafaa@opensuse.org>
To: yocto@yoctoproject.org
Subject: Building a custom dtb kernel
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
X-List-Received-Date: Mon, 16 Jul 2012 10:22:19 -0000
Content-Type: text/plain; charset=UTF-8

Aloha all,

I have successfully managed to build a custom kernel, thanks to the
help on IRC. Unfortunately this is only step one of my travels with
Yocto. I now need to be able to build the kernel with dtb.

Part of my issue is that the .dtsi and .dts files that I require are
in a separate git tree to the kernel source, due to the hardware being
extremely weird and for internal use only. I also need to cat the
resulting .dtb to the Zimage and then rename the resulting
zimageA15RTSM.bin to zImage. From my understanding I need to include
the following in my kernel recipe:

require linux-dtb.inc

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git;branch=ael-12.03.00;protocol=git;destsuffix=source;name=source
git://linux-arm.org/arm-dts.git;branch=AEL-2012.03;protocol=git;destsuffix=dts;name=dts
\
           file://defconfig \
	  "

KERNEL_DEVICETREE_rtsm_ve-cortex_a15x2.dts = "rtsm_ve-cortex_a15x2.dts"
KERNEL_DEVICETREE_rtsm_ve-motherboard.dtsi = "rtsm_ve-motherboard.dtsi"

The issue I seem to be hitting is that when I have the multiple git
repos, as per the SRC_URI above, it appears to me that it runs
do_configure in the last tree which only holds the .dts files. I get
the following error when running bitbake core-image-minimal:

| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| NOTE: make oldconfig
| make: *** No rule to make target `oldconfig'.  Stop.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_configure (see
/home/andwaf01/Code/Yocto/build/tmp-eglibc/work/qemuarmv7a-oe-linux-gnueabi/linux-ael-3.3+git1+2a521d1e7167375a8329e94ea110965d36968139_1+4a3978695b04436a62262d1ef376e51f0637402a-r0/temp/log.do_configure.5805
for further information)
NOTE: package linux-ael-3.3+git1+2a521d1e7167375a8329e94ea110965d36968139_1+4a3978695b04436a62262d1ef376e51f0637402a-r0:
task do_configure: Failed
ERROR: Task 611
(/home/andwaf01/Code/meta-vexa15/recipes-kernel/linux/linux-ael_3.3.bb,
do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1540 tasks of which 1535 didn't need to
be rerun and 1 failed.

IS my assumption correct or am I fishing in the wrong pond? How am I
supposed to build a dtb kernel correctly?

Many thanks,

Andy
-- 
Andrew Wafaa
IRC: FunkyPenguin
GPG: 0x3A36312F

