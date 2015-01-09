Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50EF8E00828; Fri,  9 Jan 2015 09:05:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1966 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Jan 2015 09:05:31 PST
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C1D7E0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:05:31 -0800 (PST)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id DDBAB20A1A7F
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 16:32:14 +0000 (UTC)
Message-ID: <54B0028D.2000503@mindchasers.com>
Date: Fri, 09 Jan 2015 11:32:13 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: linux: having problems forcing a kernel recompile...
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
X-List-Received-Date: Fri, 09 Jan 2015 17:05:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm working with the latest poky master branch (as of this morning: 
876370419a), and I can't force a recompile of the kernel:

$ bitbake virtual/kernel -c compile -f

fails with

| make[2]: *** [prepare3] Error 1

I have seen this with both linux-qoriq and my own derived linux-yocto 
recipe.

I believe it's due to my sysroots kernel source directory not being clean.

When I initially bake my kernel, I can see that the do_populate_sysroot 
task is run and it copies a .config into 
sysroots/<machine>/usr/src/kernel.

When I try to force the recompile, MAKE sees that my source directory 
isn't clean and quits ( throws the prepare3 error ).

Somewhat related, I also notice that neither a

$ bitbake virtual/kernel -c cleansstate

nor a

$ bitbake virtual/kernel -c cleanall

actually cleans my kernel source directory.  Should it?


If these are legitimate bugs, I'll be happy to file a bugzilla report.


Thanks

Bob





Error Log from running "bitbake virtual/kernel -c compile -f":


| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 uImage CC=powerpc64-poky-linux-gcc 
--sysroot=/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b 
LD=powerpc64-poky-linux-ld.bfd 
--sysroot=/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b
|   CHK     include/config/kernel.release
|   GEN 
/build/yocto/t1040_1/tmp/work/t1040rdb_64b-poky-linux/linux-qoriq/3.12-r0/build/Makefile
|   CHK     include/generated/uapi/linux/version.h
|   Using /build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel 
as source for kernel
|   /build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel is not 
clean, please run 'make mrproper'
|   in the 
'/build/yocto/t1040_1/tmp/sysroots/t1040rdb-64b/usr/src/kernel' directory.
|   CHK     include/generated/utsrelease.h
| make[2]: *** [prepare3] Error 1
| make[2]: *** Waiting for unfinished jobs....
|   CC      scripts/mod/empty.o
|   CC      scripts/mod/devicetable-offsets.s
|   MKELF   scripts/mod/elfconfig.h
|   HOSTCC  scripts/mod/modpost.o
|   HOSTCC  scripts/mod/sumversion.o
|   GEN     scripts/mod/devicetable-offsets.h
|   HOSTCC  scripts/mod/file2alias.o
|   HOSTLD  scripts/mod/modpost
| make[1]: *** [sub-make] Error 2
| make: *** [all] Error 2
| ERROR: oe_runmake failed

