Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C91BDE00A5C; Mon, 13 Mar 2017 05:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53821E00A48
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 05:01:35 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 08BA768A01C; Mon, 13 Mar 2017 12:01:33 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 42D8C68A019;
	Mon, 13 Mar 2017 12:01:28 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C8BE16740215;
	Mon, 13 Mar 2017 13:01:26 +0100 (CET)
To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1703130741560.19164@uk63952.mitel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <a2d6802d-1052-8e56-23ed-dd4e04c7efc9@mlbassoc.com>
Date: Mon, 13 Mar 2017 13:01:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1703130741560.19164@uk63952.mitel.com>
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
X-List-Received-Date: Mon, 13 Mar 2017 12:01:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-13 12:50, Robert P. J. Day wrote:
>
>   trying for the first time to build a FIT image, so started with
> current poky checkout, configured and built for mpc8315e-rdb and
> core-image-minimal, everything worked fine (as it always does).
>
>   now, as i read it, to generate a FIT image output file, i need add
> only:
>
>   KERNEL_IMAGETYPES_append = " fitImage"
>
> to my local.conf, is that right? but this is what happens:
>
> $ bitbake core-image-minimal
>
> ... snip ...
>
> Initialising tasks...done.
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 1301 of 2494 (/home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile)
> NOTE: recipe linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0: task do_compile: Started
> ERROR: linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0 do_compile: oe_runmake failed
> ERROR: linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0 do_compile: Function failed: do_compile (log file is located at /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408)
> ERROR: Logfile of failure stored in: /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
> | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E fitImage CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
> | ERROR: oe_runmake failed
> | make[2]: Circular arch/powerpc/lib/crtsavres.o <- prepare dependency dropped.
> |   CHK     include/config/kernel.release
> |   Using /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source as source for kernel
> |   GEN     ./Makefile
> |   CHK     include/generated/uapi/linux/version.h
> |   CHK     include/generated/utsrelease.h
> |   CHK     include/generated/timeconst.h
> |   CHK     include/generated/bounds.h
> |   CHK     include/generated/asm-offsets.h
> |   CALL    /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/scripts/checksyscalls.sh
> |   CHK     include/generated/compile.h
> | /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/scripts/mkcompile_h: line 46: whoami: command not found
> |   CALL    /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/arch/powerpc/kernel/systbl_chk.sh
> |   CALL    /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/arch/powerpc/kernel/prom_init_check.sh
> |   CHK     kernel/config_data.h
> | make[2]: *** No rule to make target 'fitImage'.  Stop.
> | Makefile:150: recipe for target 'sub-make' failed
> | make[1]: *** [sub-make] Error 2
> | Makefile:24: recipe for target '__sub-make' failed
> | make: *** [__sub-make] Error 2
> | ERROR: Function failed: do_compile (log file is located at /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408)
> NOTE: recipe linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0: task do_compile: Failed
> ERROR: Task (/home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2470 tasks of which 2469 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> $
>
>   obviously(?), selecting a FIT image triggers a call to "whoami" in
> that kernel mkcompile_h script, and there is no such command in the
> native sysroot. or am i doing something wrong?

This might be a result of the recent PATH changes.  Maybe try adding
this to your local.conf:
   HOSTTOOLS_NONFATAL += " whoami"

Let the list know if that helps.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

