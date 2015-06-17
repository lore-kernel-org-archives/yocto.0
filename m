Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BFC2E00A3B; Wed, 17 Jun 2015 09:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFE8E00998
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 09:09:11 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 75F13F811D7; Wed, 17 Jun 2015 10:09:11 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4515AF811D7;
	Wed, 17 Jun 2015 10:09:10 -0600 (MDT)
Message-ID: <55819BBA.5090601@mlbassoc.com>
Date: Wed, 17 Jun 2015 10:09:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFQ+Dij3q-k0eakxRoE5sq+sTwPv-r+K_YKF_qW7ai8VpY3uCg@mail.gmail.com>
In-Reply-To: <CAFQ+Dij3q-k0eakxRoE5sq+sTwPv-r+K_YKF_qW7ai8VpY3uCg@mail.gmail.com>
Subject: Re: No rule to make target `Makefile.in' SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux', ...]
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
X-List-Received-Date: Wed, 17 Jun 2015 16:09:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-17 09:56, Marco Cavallini wrote:
> Hello,
> I'm trying to create a recipe rdesktop_1.8.3.bb but I get an error
> hard to understand.
> With Yocto 'daisy' the same recipe worked without complaining.
> To avoid any temporary misconfiguraton I deleted the sstate and tmp
> and rebuilt core-image-minimal from scratch and then rdesktop but the
> error is always present.
> I'd like to know what is wrong with inherit autotools now using
> 'dizzy' and what is this DEBUG: SITE files ['endian-little', 'bit-32',
> 'arm-common', 'common-linux', 'common-glibc', 'arm-linux',
> 'arm-linux-gnueabi', 'common']
>
> Thank you
>
>
> This is my recipe:
> $ cat rdesktop_1.8.3.bb
> ---------------------------------
> DESCRIPTION = "Rdesktop rdp client for X"
> HOMEPAGE = "http://www.rdesktop.org"
> SECTION = "x11/network"
> LICENSE = "GPL"
> LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"
> SRC_URI = "${SOURCEFORGE_MIRROR}/rdesktop/rdesktop-${PV}.tar.gz"
> inherit autotools

Try it with
   inherit autotools-brokensep

> EXTRA_OECONF = "--with-openssl=${STAGING_EXECPREFIXDIR}
> --disable-credssp --disable-smartcard"
> SRC_URI[md5sum] = "86e8b368a7c715e74ded92e0d7912dc5"
> SRC_URI[sha256sum] =
> "88b20156b34eff5f1b453f7c724e0a3ff9370a599e69c01dc2bf0b5e650eece4"
>
>
> And I get this error:
> $ bitbake rdesktop
>
> Build Configuration:
> BB_VERSION        = "1.24.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "imx6solosabresd"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.7.2"
> TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa9"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "dizzy:9c4ff467f66428488b1cd9798066a8cb5d6b4c3b"
> meta-oe           = "dizzy:5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38"
> meta-fsl-arm      = "dizzy:db1571f40c375a398a8cdbb42de4c4f272ab0cd1"
> meta-fsl-arm-extra = "dizzy:794e46e0b0a3e7e270a2f3c217d8fe5751a6b2c6"
> meta-mh          = "dizzy:9c4ff467f66428488b1cd9798066a8cb5d6b4c3b"
>
> ...
> ERROR: Function failed: do_compile (log file is located at
> /home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/log.do_compile.3066)
> ERROR: Logfile of failure stored in:
> /home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/log.do_compile.3066
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8
> | make: *** No rule to make target `Makefile.in', needed by `Makefile'.  Stop.
> | ERROR: oe_runmake failed
> | WARNING: /home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/run.do_compile.3066:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at
> /home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/log.do_compile.3066)
> ERROR: Task 6 (/home/mc/yocto-fsl-dizzy/poky/meta-mh/recipes-connectivity/rdesktop/rdesktop_1.8.3.bb,
> do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn't need to
> be rerun and 1 failed.
> No currently running tasks (522 of 554)
>
> Summary: 1 task failed:
>    /home/mc/yocto-fsl-dizzy/poky/meta-mh/recipes-connectivity/rdesktop/rdesktop_1.8.3.bb,
> do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> --
> Marco
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

