Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AEBCE009D1; Fri,  9 May 2014 06:55:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC912E009BA
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:54:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s49DsZDo029281
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 May 2014 06:54:35 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 9 May 2014 06:54:35 -0700
Message-ID: <536CDE17.40806@windriver.com>
Date: Fri, 9 May 2014 09:54:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Brian Karcz <briank@RUSSOUND.COM>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
In-Reply-To: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
Subject: Re: [meta-atmel] at91sam9x5ek: "no machine record defined" failure for core-image-minimal
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
X-List-Received-Date: Fri, 09 May 2014 13:55:00 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-05-09 09:44 AM, Brian Karcz wrote:
> Hi,
>
> Not sure if this is the correct place to email this, but I’ve seen a few
> other meta-atmel references so I figured I’d give it a shot.
>
> I’m attempting to setup a core-image-minimal build using the guidelines
> in the meta-atmel README for the at91sam9x5ek machine type. When the
> kernel build goes to link, I get a “no machine record defined” error. Is
> this something others are seeing in the meta-atmel demo builds?
>
> It’s a pretty benign build setup according to the README:
>
> git clone git://git.yoctoproject.org/poky
>
> cd poky
>
> git checkout dora-10.0.1 -b dora-10.0.1
>
> git clone git://git.openembedded.org/meta-openembedded
>
> cd meta-openembedded
>
> git checkout 6572316557e742c2dc93848e4d560242bf0c3995 -b my_branch
>
> cd ..
>
> git clone http://github.com/linux4sam/meta-atmel
>
> source oe-init-build-env /workspace/build-atmel
>
> modify local.conf:
>
> MACHINE ??= ”at91sam9x5ek”
>
> PACKAGE_CLASSES ?= “package_ipk”
>
> modify bblayers.conf:
>
> BBLAYERS ?= " \
>
>    /opt/poky/meta-atmel \
>
>    /opt/poky/meta \
>
>    /opt/poky/meta-yocto \
>
>    /opt/poky/meta-yocto-bsp \
>
>    /opt/poky/meta-openembedded/meta-oe \
>
>    /opt/poky/meta-openembedded/meta-networking \
>
>    "
>
> bitbake core-image-minimal
>
> Setting this up, I get the following build configuration and error:
>
> /workspace/build-atmel$ bitbake core-image-minimal
>
> Loading cache: 100%
> |######################################################################################|
> ETA:  00:00:00
>
> Loaded 1782 entries from dependency cache.
>
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
>
> BB_VERSION        = "1.20.0"
>
> BUILD_SYS         = "x86_64-linux"
>
> NATIVELSBSTRING   = "Ubuntu-12.04"
>
> TARGET_SYS        = "arm-poky-linux-gnueabi"
>
> MACHINE           = "at91sam9x5ek"
>
> DISTRO            = "poky"
>
> DISTRO_VERSION    = "1.5.1"
>
> TUNE_FEATURES     = "armv5 thumb dsp"
>
> TARGET_FPU        = "soft"
>
> meta-atmel        = "master:269066a8128d1e767deee64854a142e67451a5f2"
>
> meta
>
> meta-yocto
>
> meta-yocto-bsp    = "dora-10.0.1:8e410e9e46e3335458a7747cdd32e05f5c19ccbb"
>
> meta-oe
>
> meta-networking   = "my_branch:6572316557e742c2dc93848e4d560242bf0c3995"
>
> NOTE: Preparing runqueue
>
> NOTE: Executing SetScene Tasks
>
> NOTE: Executing RunQueue Tasks
>
> ERROR: Function failed: do_compile (log file is located at
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291)
>
> ERROR: Logfile of failure stored in:
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291
>
> Log data follows:
>
> | DEBUG: Executing shell function do_compile
>
> | NOTE: make -j 2 zImage CC=arm-poky-linux-gnueabi-gcc
> -mno-thumb-interwork -marm LD=arm-poky-linux-gnueabi-ld.bfd
>
> |   GEN
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux-at91sam9x5ek-standard-build/Makefile
>
> |   CHK     include/generated/uapi/linux/version.h
>
> |   CHK     include/generated/utsrelease.h
>
> |   Using
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux
> as source for kernel
>
> | make[3]: `include/generated/mach-types.h' is up to date.
>
> |   CC      scripts/mod/devicetable-offsets.s
>
> |   GEN     scripts/mod/devicetable-offsets.h
>
> |   HOSTCC  scripts/mod/file2alias.o
>
> |   CALL
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux/scripts/checksyscalls.sh
>
> |   HOSTLD  scripts/mod/modpost
>
> |   CHK     include/generated/compile.h
>
> |   LINK    vmlinux
>
> |   LD      vmlinux.o
>
> |   MODPOST vmlinux.o
>
> |   GEN     .version
>
> |   CHK     include/generated/compile.h
>
> |   UPD     include/generated/compile.h
>
> |   CC      init/version.o
>
> |   LD      init/built-in.o
>
> | arm-poky-linux-gnueabi-ld.bfd: no machine record defined
>
> | make[2]: *** [vmlinux] Error 1
>
> | make[1]: *** [sub-make] Error 2
>
> | make: *** [all] Error 2
>
> | ERROR: oe_runmake failed
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_compile (log file is located at
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291)
>
> ERROR: Task 208
> (/opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb,
> do_compile) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 793 tasks of which 785 didn't need to be
> rerun and 1 failed.
>
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>
>    /opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb,
> do_compile
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Any thoughts on what might be missing from the README or my
> implementation of it to get this demo build working?

Can you confirm that the final .config for the board has the machine
definitions that you'd expect for the board ?

Bruce

>
> Thanks,
>
> Brian
>
>
>


