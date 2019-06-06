Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D860E00A00; Thu,  6 Jun 2019 14:24:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B20E00994
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 14:24:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x56LOcLO010542
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 6 Jun 2019 14:24:38 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 6 Jun 2019 14:24:38 -0700
To: Gokul Raj <gokulraj.kana@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
References: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
	<CAJTo0LYb7YDwOPS36q0Jo5RJXRwCx4p5e+xQ2J7KofODOVARJg@mail.gmail.com>
	<CAFP4eQ_1fk7ZvafF7vxpmvx3x4ntnwpdBBMYUJGJCfG4mPtrEA@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	mQENBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAG0JU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT6JATcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrrkBDQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABiQEfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <2f565e97-c162-4dba-3f7e-5f78e0039d43@windriver.com>
Date: Thu, 6 Jun 2019 16:24:37 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAFP4eQ_1fk7ZvafF7vxpmvx3x4ntnwpdBBMYUJGJCfG4mPtrEA@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Error in building new recipe for Jool network translator
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
X-List-Received-Date: Thu, 06 Jun 2019 21:24:42 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 6/6/19 11:46 AM, Gokul Raj wrote:
> Hi Ross,
> 
> Thanks for the suggestion. I have tried with inheriting autotools-brokensep
> bbclass. Now bitbake got the path for compilation. But, bitbake compilation
> refering to native kernel src path for module compilation. For your information
> this package comes with both kernel module and userspace binary. Single makefile
> helps building both kernel module and userspace binary. Attached log for your
> reference.
> 
> Any suggestion to compile this package.

You will need to break this into two components.  The userspace compile is
likely what you have mostly working.  The kernel module compilation though needs
to be a 'machine specific' recipe, tied to the machine and kernel.

Look at the Yocto Project documentation about building out of tree kernel modules.

--Mark

> Regards,
> Gokul Raj K
> 
> On Thu, Jun 6, 2019 at 10:01 PM Burton, Ross <ross.burton@intel.com
> <mailto:ross.burton@intel.com>> wrote:
> 
>     Sounds like the makefiles are broken and can't handle out-of-tree
>     builds.  Try replacing inherit autotools with inherit
>     autotools-brokensep (and if that fixes it, file a bug with jool as
>     their build is broken).
> 
> 
>     Ross
> 
>     On Thu, 6 Jun 2019 at 17:27, Gokul Raj <gokulraj.kana@gmail.com
>     <mailto:gokulraj.kana@gmail.com>> wrote:
>     >
>     > Hi All,
>     >
>     > I'm new to yocto and I'm trying to create recipe for Jool network
>     translator package. Tried to compile this package in manually and I'm able
>     to compile with following steps.
>     > Manual Steps:
>     >
>     > ./autogen.sh
>     > ./configure
>     > make
>     > make install
>     >
>     > Yocto Receipe:
>     >
>     > DESCRIPTION = "Jool is an Open Source IPv4/IPv6 Translator"
>     > SECTION = "networking"
>     > LICENSE = "GPLv2"
>     > LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
>     >
>     > SRCREV = "v4.0.1"
>     > SRC_URI = "git://github.com/NICMx/Jool.git;protocol=http
>     <http://github.com/NICMx/Jool.git;protocol=http>"
>     >
>     > DEPENDS = "libnl iptables"
>     >
>     > S = "${WORKDIR}/git"
>     >
>     > inherit autotools module
>     >
>     > Getting following error message /bin/bash: line 20: cd: src/mod: No such
>     file or directory       But, the src/mod is present in the source directory.
>     Help me resolve this issue.
>     >
>     > Yocto Build Error:
>     >
>     > ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed
>     > ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log file is
>     located at
>     /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
>     > ERROR: Logfile of failure stored in:
>     /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423
>     > Log data follows:
>     > | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>     'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
>     > | DEBUG: Executing shell function do_compile
>     > | NOTE: make -j 6
>     KERNEL_SRC=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
>     KERNEL_PATH=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
>     KERNEL_VERSION=5.0.7-yocto-standard CC=arm-enigma-linux-gnueabi-gcc 
>     -mno-thumb-interwork -marm -fuse-ld=bfd
>     -fmacro-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0 
>                        
>     -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0 
>                        
>     -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot= 
>                        
>     -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot-native= 
>     -fdebug-prefix-map=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source=/usr/src/kernel
>     LD=arm-enigma-linux-gnueabi-ld.bfd   AR=arm-enigma-linux-gnueabi-ar 
>     O=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-build-artifacts
>     KBUILD_EXTRA_SYMBOLS=
>     > | Making all in src/mod
>     > | /bin/bash: line 20: cd: src/mod: No such file or directory
>     > | Makefile:343: recipe for target 'all-recursive' failed
>     > | make: *** [all-recursive] Error 1
>     > | ERROR: oe_runmake failed
>     > | WARNING: exit code 1 from a shell command.
>     > | ERROR: Function failed: do_compile (log file is located at
>     /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
>     > ERROR: Task
>     (/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compile)
>     failed with exit code '1'
>     > NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn't need to be
>     rerun and 1 failed.
>     >
>     > Summary: 1 task failed:
>     >   /home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compile
>     > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>     >
>     > Source git link: https://github.com/NICMx/Jool
>     >
>     > Help me in fixing this issue.
>     >
>     > Regards,
>     > Gokul Raj K
>     >
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto
> 
> 


