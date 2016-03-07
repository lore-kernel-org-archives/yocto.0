Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E086E008EE; Mon,  7 Mar 2016 13:09:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA49E0086B
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 13:09:55 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id g203so2458747iof.2
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 13:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=2YebbJ+zhGXZuz8b55B+Q1e4IXoSX4t1Z0lAJDaSST0=;
	b=Jvr8CR4X/daAkufs9vJ2Q/F3Ox+1yGiBuu5BlSPNQ/KVAAlKPhscRdUCjo9hKCBlG+
	ZK8TjiMe7k0CVX+Ffgx2GxUvO9qaX0++V73zHml4vgFir9gGqB5kzjjEjhM2mRkSOG3O
	KINLxrWXQ36m5I//PgAbNNkX9gBDJ3STNeYgkkPxkoW8rUu2GGGn5OiCV1JbLwE/M6kh
	aP4O5QPRtIMTiaJh+FVek7okJb1lN6lm0XUDOTaGAEcFdQpIZznUwlk/n+ydPpl4401g
	IXq8NOs7UD1oWNbnVQl1UsJjqOJdwsr9rChgnCqheemkaHRz6BCQLewH6g3iVnmj33wM
	yK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=2YebbJ+zhGXZuz8b55B+Q1e4IXoSX4t1Z0lAJDaSST0=;
	b=CRGIZqhVvIwhugpRsVBfduk9h4Dg8sprGyIBWV8mT8iEcUOV+IuCmABNYebJhOX+iR
	jV6e0dT/DE8vETpL2m+w8z7lyJK/oVXr7jD3NFM79xgAdAop19Jnvz7fJme2K5M1noFP
	2+Mgj2QFzLI1erAc6NlRmlqJzvk4xNiJKq9fyzansrNR3AX3H4IixVZe4caL9+4QE9yS
	gsSjRR5g1VCAOO04WuD3DJr0bNfG/KGM4DPYjBchokPU6X3fPLUbBuksW0HLxjeg1Ihp
	abJKvJXzHK39fqBf5eOQyVECLU28xP8UZl6im1dJwt/1xBta7WHLo6wSuzZWNZMqaeDm
	vgnA==
X-Gm-Message-State: AD7BkJKEzdeSCT9dJJnl0Go8xjv6irjVURRhutQyq2qt0ZH79tzbJrGKAVw3t2XEP2yCxQ==
X-Received: by 10.107.128.198 with SMTP id k67mr2001953ioi.26.1457384994222;
	Mon, 07 Mar 2016 13:09:54 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id o66sm30726ioi.9.2016.03.07.13.09.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 07 Mar 2016 13:09:53 -0800 (PST)
To: Alan Hughes <alanhughes@e2eservices.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <zarafa.56dde040.2181.51baa63704937b48@pollux.e2eservices.co.uk>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56DDEE1E.1090507@gmail.com>
Date: Mon, 7 Mar 2016 16:09:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <zarafa.56dde040.2181.51baa63704937b48@pollux.e2eservices.co.uk>
Subject: Re: Raspberry Pi 2 BSP build problem
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
X-List-Received-Date: Mon, 07 Mar 2016 21:09:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

This looks like the problem we were experiencing a while back when we 
were switching from gcc-4x to gcc-5x. If I remember correctly, a certain 
range of slightly older kernel/u-boot could not be compiled by gcc-5x 
toolchains without a patch.

You could look around for that patch. Or you could try setting the 
following in your conf/local.conf:

     GCCVERSION = "4.9%"

On 03/07/16 15:10, Alan Hughes wrote:
> Raspberry Pi 2 BSP build problem
>
> I've been trying to build a BSP using Yocto 2.0 (Jethro) targetting a 
> Raspberry Pi 2. Everything goes OK until we reach the point of 
> building the "u-boot-rpi" package, at which point it blows up saying 
> that it cannot find the file "linux/compiler-gcc5.h". I've looked on 
> the web for any clues, but to date have not found anything relevent. 
> If anyone has any suggestions I would be more than happy to try them out.
>
> Note: error messages attached below.
>
> Alan
>
> ------------------------------------------------------------------------
>
> WARNING: Host distribution "CentOS-Linux-7.2.1511" has not been 
> validated with this version of the build system; you may possibly 
> experience unexpected failures. It is recommended that you use a 
> tested distribution.
> Parsing recipes: 100% 
> |##################################################################################| 
> ETA:  00:00:00
> Parsing of 1919 .bb files complete (0 cached, 1919 parsed). 2489 
> targets, 141 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "CentOS-Linux-7.2.1511"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi2"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.0.1"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard 
> vfpv4 cortexa7"
> TARGET_FPU        = "vfp-vfpv4-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "jethro:7fe17a2942ff03e2ec47d566fd5393f52b2eb736"
> meta-oe
> meta-systemd
> meta-python
> meta-networking
> meta-multimedia   = "jethro:dc5634968b270dde250690609f0015f881db81f2"
> meta-java         = "master:4c9dfc2b14676db414d915ba3bab9e101de73e05"
> meta-oracle-java  = "master:f7c98706f80a2488ad2628e5b0c6d3f9f80c24fd"
> meta-raspberrypi  = "jethro:f2cff839f52a6e6211337fc45c7c3eabf0fac113"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL 
> ftp://invisible-island.net/ncurses/current/ncurses-5.9-20150329.tgz, 
> attempting MIRRORS if available
> WARNING: Failed to fetch URL 
> http://www.openssl.org/source/openssl-1.0.2d.tar.gz, attempting 
> MIRRORS if available
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (log file is located at 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_compile.44274)
> ERROR: Logfile of failure stored in: 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_compile.44274
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 CROSS_COMPILE=arm-poky-linux-gnueabi- 
> CC=arm-poky-linux-gnueabi-gcc 
> --sysroot=/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/raspberrypi2 
> V=1 HOSTCC=gcc 
> -isystem/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/include 
> -O2 -pipe 
> -L/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib 
> -L/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/lib 
> -Wl,-rpath-link,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib 
> -Wl,-rpath-link,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/lib 
> -Wl,-rpath,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib 
> -Wl,-rpath,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/lib 
> -Wl,-O1 rpi_b
> | Configuring for rpi_b board...
> | make
> | make[1]: Entering directory 
> `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git'
> | Generating include/autoconf.mk
> | Generating include/autoconf.mk.dep
> | In file included from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler.h:40:0,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/byteorder/little_endian.h:12,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteorder.h:29,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/compiler.h:112,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/image.h:36,
> |                  from include/common.h:118:
> | 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler-gcc.h:87:30: 
> fatal error: linux/compiler-gcc5.h: No such file or directory
> | compilation terminated.
> | In file included from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler.h:40:0,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/byteorder/little_endian.h:12,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteorder.h:29,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/compiler.h:112,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/image.h:36,
> |                  from include/common.h:118:
> | 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler-gcc.h:87:30: 
> fatal error: linux/compiler-gcc5.h: No such file or directory
> | compilation terminated.
> | make[1]: Leaving directory 
> `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git'
> | make[1]: Entering directory 
> `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git'
> | arm-poky-linux-gnueabi-gcc 
> --sysroot=/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/raspberrypi2 
> -DDO_DEPS_ONLY \
> |       -g  -Os  -fno-common -ffixed-r8 -D__KERNEL__ 
> -I/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include 
> -fno-builtin -ffreestanding -nostdinc -isystem 
> /home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/include 
> -pipe -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork 
> -mabi=aapcs-linux -Wall -Wstrict-prototypes -fno-stack-protector 
> -Wno-format-nonliteral -Wno-format-security -fstack-usage   \
> |       -o lib/asm-offsets.s lib/asm-offsets.c -c -S
> | if [ -f arch/arm/cpu/arm1176/bcm2835/asm-offsets.c ];then \
> |       arm-poky-linux-gnueabi-gcc 
> --sysroot=/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/raspberrypi2 
> -DDO_DEPS_ONLY \
> |       -g  -Os  -fno-common -ffixed-r8 -D__KERNEL__ 
> -I/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include 
> -fno-builtin -ffreestanding -nostdinc -isystem 
> /home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/include 
> -pipe -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork 
> -mabi=aapcs-linux -Wall -Wstrict-prototypes -fno-stack-protector 
> -Wno-format-nonliteral -Wno-format-security -fstack-usage   \
> |               -o arch/arm/cpu/arm1176/bcm2835/asm-offsets.s 
> arch/arm/cpu/arm1176/bcm2835/asm-offsets.c -c -S; \
> | else \
> |       touch arch/arm/cpu/arm1176/bcm2835/asm-offsets.s; \
> | fi
> | In file included from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler.h:40:0,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/byteorder/little_endian.h:12,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteorder.h:29,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/compiler.h:112,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/image.h:36,
> |                  from 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/common.h:118,
> |                  from lib/asm-offsets.c:18:
> | 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler-gcc.h:87:30: 
> fatal error: linux/compiler-gcc5.h: No such file or directory
> | compilation terminated.
> | Generating include/generated/asm-offsets.h
> | tools/scripts/make-asm-offsets 
> arch/arm/cpu/arm1176/bcm2835/asm-offsets.s include/generated/asm-offsets.h
> | make[1]: *** [lib/asm-offsets.s] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | make[1]: Leaving directory 
> `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git'
> | make: *** [rpi_b] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at 
> /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_compile.44274)
> ERROR: Task 196 
> (/opt/yocto/2.0/meta-raspberrypi/recipes-bsp/u-boot/u-boot-rpi_git.bb, 
> do_compile) failed with exit code '1'
>
>
>
> ------------------------------------------------------------------------
>
> This email and any files transmitted with it are confidential and 
> intended solely for the use of the individual or entity to which they 
> are addressed. If you have received this email in error please notify 
> the sender immediately and then delete the email from your system.
>
> Internet communications are not secure and therefore e2E Services Ltd 
> does not accept any liability for the contents of this message. Any 
> views or opinions presented are solely those of the author and do not 
> necessarily represent those of e2E Services Ltd.
>
> Although this email and any attachments have been scanned for viruses, 
> the success of scanning products is not guaranteed. The recipient(s) 
> should therefore carry out any checks that they believe to be 
> appropriate in this respect.
>
> e2E Services Ltd. is a limited company re gistered in the UK, No. 
> 3878701. Registered Office: e2E Services Ltd, George Court, 
> Bartholomews Walk, Ely, Cambridgeshire, CB7 4JW
>
>
>
>


