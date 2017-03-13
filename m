Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9B0DE00A5C; Mon, 13 Mar 2017 05:13:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 247ACE00A48
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 05:13:11 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20170313121256106_0684;
	Mon, 13 Mar 2017 12:12:56 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=49054 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cnOqH-0002V3-Hy; Mon, 13 Mar 2017 08:12:49 -0400
Date: Mon, 13 Mar 2017 08:12:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <a2d6802d-1052-8e56-23ed-dd4e04c7efc9@mlbassoc.com>
Message-ID: <alpine.LFD.2.20.1703130806200.32615@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703130741560.19164@uk63952.mitel.com>
	<a2d6802d-1052-8e56-23ed-dd4e04c7efc9@mlbassoc.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: missing "whoami" command trying to build FIT image for mpc8315e-rdb ref board
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
X-List-Received-Date: Mon, 13 Mar 2017 12:13:14 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 13 Mar 2017, Gary Thomas wrote:

> On 2017-03-13 12:50, Robert P. J. Day wrote:
> >
> >   trying for the first time to build a FIT image, so started with
> > current poky checkout, configured and built for mpc8315e-rdb and
> > core-image-minimal, everything worked fine (as it always does).
> >
> >   now, as i read it, to generate a FIT image output file, i need add
> > only:
> >
> >   KERNEL_IMAGETYPES_append = " fitImage"
> >
> > to my local.conf, is that right? but this is what happens:
> >
> > $ bitbake core-image-minimal
> >
> > ... snip ...
> >
> > Initialising tasks...done.
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > NOTE: Running task 1301 of 2494
> > NOTE: (/home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile)
> > NOTE: recipe linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0: task
> > NOTE: do_compile: Started
> > ERROR: linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0 do_compile:
> > ERROR: oe_runmake failed
> > ERROR: linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0 do_compile:
> > ERROR: Function failed: do_compile (log file is located at
> > ERROR: /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408)
> > ERROR: Logfile of failure stored in:
> > ERROR: /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage
> > | NOTE: CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
> > | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E fitImage
> > | NOTE: CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
> > | ERROR: oe_runmake failed
> > | make[2]: Circular arch/powerpc/lib/crtsavres.o <- prepare dependency
> > | dropped.
> > |   CHK     include/config/kernel.release
> > |   Using
> > |   /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source
> > |   as source for kernel
> > |   GEN     ./Makefile
> > |   CHK     include/generated/uapi/linux/version.h
> > |   CHK     include/generated/utsrelease.h
> > |   CHK     include/generated/timeconst.h
> > |   CHK     include/generated/bounds.h
> > |   CHK     include/generated/asm-offsets.h
> > |   CALL
> > |   /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/scripts/checksyscalls.sh
> > |   CHK     include/generated/compile.h
> > | /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/scripts/mkcompile_h:
> > | line 46: whoami: command not found
> > |   CALL
> > |   /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/arch/powerpc/kernel/systbl_chk.sh
> > |   CALL
> > |   /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/arch/powerpc/kernel/prom_init_check.sh
> > |   CHK     kernel/config_data.h
> > | make[2]: *** No rule to make target 'fitImage'.  Stop.
> > | Makefile:150: recipe for target 'sub-make' failed
> > | make[1]: *** [sub-make] Error 2
> > | Makefile:24: recipe for target '__sub-make' failed
> > | make: *** [__sub-make] Error 2
> > | ERROR: Function failed: do_compile (log file is located at
> > | ERROR: /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408)
> > NOTE: recipe linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0: task
> > NOTE: do_compile: Failed
> > ERROR: Task
> > ERROR: (/home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile)
> > ERROR: failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 2470 tasks of which 2469 didn't need to be
> > NOTE: rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile
> > Summary: There was 1 WARNING message shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> > $
> >
> >   obviously(?), selecting a FIT image triggers a call to "whoami" in
> > that kernel mkcompile_h script, and there is no such command in the
> > native sysroot. or am i doing something wrong?
>
> This might be a result of the recent PATH changes.  Maybe try adding
> this to your local.conf:
>   HOSTTOOLS_NONFATAL += " whoami"
>
> Let the list know if that helps.

  ah, that does, in fact, fix the missing "whoami" issue (i'm
fascinated that that glitch wasn't triggered until i asked for a FIT
image).

  however, i'm still getting this:

... snip ...
|   HOSTCC  arch/powerpc/boot/addnote
|   HOSTCC  arch/powerpc/boot/hack-coff
|   HOSTCC  arch/powerpc/boot/mktree
|   COPY    arch/powerpc/boot/inffast.c
|   COPY    arch/powerpc/boot/inflate.c
|   COPY    arch/powerpc/boot/inftrees.c
|   COPY    arch/powerpc/boot/fdt_ro.c
|   COPY    arch/powerpc/boot/fdt_rw.c
|   COPY    arch/powerpc/boot/fdt.c
|   COPY    arch/powerpc/boot/fdt_strerror.c
|   COPY    arch/powerpc/boot/fdt_sw.c
|   COPY    arch/powerpc/boot/fdt_wip.c
|   BOOTCC  arch/powerpc/boot/inffast.o
|   BOOTCC  arch/powerpc/boot/inflate.o
|   BOOTCC  arch/powerpc/boot/inftrees.o
|   BOOTCC  arch/powerpc/boot/libfdt-wrapper.o
|   BOOTCC  arch/powerpc/boot/empty.o
|   COPY    arch/powerpc/boot/decompress_inflate.c
|   BOOTCC  arch/powerpc/boot/fdt.o
|   BOOTCC  arch/powerpc/boot/fdt_ro.o
|   BOOTCC  arch/powerpc/boot/fdt_rw.o
|   BOOTCC  arch/powerpc/boot/fdt_strerror.o
|   BOOTCC  arch/powerpc/boot/fdt_sw.o
|   BOOTCC  arch/powerpc/boot/fdt_wip.o
|   BOOTCC  arch/powerpc/boot/decompress.o
|   BOOTAR  arch/powerpc/boot/wrapper.a
|   WRAP    arch/powerpc/boot/uImage
| INFO: Uncompressed kernel (size 0xb69140) overlaps the address of the wrapper(0x400000)
| INFO: Fixing the link_address of wrapper to (0xc00000)
| Image Name:   Linux-4.9.8-yocto-standard
| Created:      Mon Mar 13 12:08:55 2017
| Image Type:   PowerPC Linux Kernel Image (gzip compressed)
| Data Size:    5554748 Bytes = 5424.56 kB = 5.30 MB
| Load Address: 00000000
| Entry Point:  00000000
| make[2]: *** No rule to make target 'fitImage'.  Stop.

  is this not the correct way to specify a FIT image?

  KERNEL_IMAGETYPES_append = " fitImage"

it certainly seems to be from what i read in kernel-fitimage.bbclass:

python __anonymous () {
    kerneltypes = d.getVar('KERNEL_IMAGETYPES') or ""
    if 'fitImage' in kerneltypes.split():
        depends = d.getVar("DEPENDS")
        depends = "%s u-boot-mkimage-native dtc-native" % depends
        d.setVar("DEPENDS", depends)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


