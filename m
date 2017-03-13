Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01F79E00A5C; Mon, 13 Mar 2017 04:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4B99E00A48
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 04:50:34 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20170313115032823_0484
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 11:50:32 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=33169 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cnOUc-0000Wp-Px
	for yocto@yoctoproject.org; Mon, 13 Mar 2017 07:50:26 -0400
Date: Mon, 13 Mar 2017 07:50:24 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703130741560.19164@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: missing "whoami" command trying to build FIT image for mpc8315e-rdb ref board
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
X-List-Received-Date: Mon, 13 Mar 2017 11:50:39 -0000
Content-Type: text/plain; charset=US-ASCII


  trying for the first time to build a FIT image, so started with
current poky checkout, configured and built for mpc8315e-rdb and
core-image-minimal, everything worked fine (as it always does).

  now, as i read it, to generate a FIT image output file, i need add
only:

  KERNEL_IMAGETYPES_append = " fitImage"

to my local.conf, is that right? but this is what happens:

$ bitbake core-image-minimal

... snip ...

Initialising tasks...done.
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1301 of 2494 (/home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile)
NOTE: recipe linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0: task do_compile: Started
ERROR: linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0 do_compile: oe_runmake failed
ERROR: linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0 do_compile: Function failed: do_compile (log file is located at /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408)
ERROR: Logfile of failure stored in: /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
| NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E fitImage CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
| ERROR: oe_runmake failed
| make[2]: Circular arch/powerpc/lib/crtsavres.o <- prepare dependency dropped.
|   CHK     include/config/kernel.release
|   Using /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source as source for kernel
|   GEN     ./Makefile
|   CHK     include/generated/uapi/linux/version.h
|   CHK     include/generated/utsrelease.h
|   CHK     include/generated/timeconst.h
|   CHK     include/generated/bounds.h
|   CHK     include/generated/asm-offsets.h
|   CALL    /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/scripts/checksyscalls.sh
|   CHK     include/generated/compile.h
| /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/scripts/mkcompile_h: line 46: whoami: command not found
|   CALL    /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/arch/powerpc/kernel/systbl_chk.sh
|   CALL    /home/rpjday/oe/builds/mpc8315e/tmp/work-shared/mpc8315e-rdb/kernel-source/arch/powerpc/kernel/prom_init_check.sh
|   CHK     kernel/config_data.h
| make[2]: *** No rule to make target 'fitImage'.  Stop.
| Makefile:150: recipe for target 'sub-make' failed
| make[1]: *** [sub-make] Error 2
| Makefile:24: recipe for target '__sub-make' failed
| make: *** [__sub-make] Error 2
| ERROR: Function failed: do_compile (log file is located at /home/rpjday/oe/builds/mpc8315e/tmp/work/mpc8315e_rdb-poky-linux/linux-yocto/4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0/temp/log.do_compile.23408)
NOTE: recipe linux-yocto-4.9.8+gitAUTOINC+7e8ec462b6_6b67f448d6-r0: task do_compile: Failed
ERROR: Task (/home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2470 tasks of which 2469 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /home/rpjday/oe/dist/layers/poky/meta/recipes-kernel/linux/linux-yocto_4.9.bb:do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
$

  obviously(?), selecting a FIT image triggers a call to "whoami" in
that kernel mkcompile_h script, and there is no such command in the
native sysroot. or am i doing something wrong?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


