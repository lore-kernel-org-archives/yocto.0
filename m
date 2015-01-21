Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0BFE008A7; Wed, 21 Jan 2015 08:02:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6380FE0080C
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 08:01:57 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 113B0F811F1; Wed, 21 Jan 2015 09:01:53 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 92302F811F0;
	Wed, 21 Jan 2015 09:01:53 -0700 (MST)
Message-ID: <54BFCD81.7020500@mlbassoc.com>
Date: Wed, 21 Jan 2015 09:02:09 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Kernel build woes
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
X-List-Received-Date: Wed, 21 Jan 2015 16:02:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Since the recent changes in how the kernel is built, some useful
workflows have been broken.  In particular when working on a
kernel, I use this sequence quite a lot:
   $ bitbake virtual/kernel
   $ bitbake virtual/kernel -c devshell
   ... make some tweaks, add a test patch, etc
   $ bitbake virtual/kernel -C compile

Trying this with a quite recent master (4e20211090d2b193250edaa64f84e355a1c31fe5)
I get this error on the compile step:

ERROR: Function failed: do_compile (log file is located at 
/home/local/qemuarm_2015-01-09/tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.24+gitAUTOINC+a227f20eff_6166316d47-r0/temp/log.do_compile.29205)
ERROR: Logfile of failure stored in: 
/home/local/qemuarm_2015-01-09/tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.24+gitAUTOINC+a227f20eff_6166316d47-r0/temp/log.do_compile.29205
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 zImage CC=arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm LD=arm-poky-linux-gnueabi-ld.bfd
|   CHK     include/config/kernel.release
|   Using /home/local/qemuarm_2015-01-09/tmp/sysroots/qemuarm/usr/src/kernel as source for kernel
|   /home/local/qemuarm_2015-01-09/tmp/sysroots/qemuarm/usr/src/kernel is not clean, please run 'make mrproper'
|   in the '/home/local/qemuarm_2015-01-09/tmp/sysroots/qemuarm/usr/src/kernel' directory.
| make[2]: *** [prepare3] Error 1
| make[1]: *** [sub-make] Error 2
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: /home/local/qemuarm_2015-01-09/tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.24+gitAUTOINC+a227f20eff_6166316d47-r0/temp/run.do_compile.29205:1 exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at 
/home/local/qemuarm_2015-01-09/tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/3.14.24+gitAUTOINC+a227f20eff_6166316d47-r0/temp/log.do_compile.29205)
ERROR: Task 10 (/home/local/poky-cutting-edge/meta/recipes-kernel/linux/linux-yocto_3.14.bb, do_compile) failed with exit code '1'

Note: this is not unique to the linux-yocto recipe, I've seen
the same error when using some kernel recipes from meta-fsl-arm*,
e.g. linux-boundary, as well as some local recipes which inherit
kernel.bbclass

Should I file this as a bug?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

