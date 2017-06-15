Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00112E00B9E; Thu, 15 Jun 2017 07:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ACD4E00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 07:09:10 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C580468A01D; Thu, 15 Jun 2017 15:09:08 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 88B8068A019;
	Thu, 15 Jun 2017 15:09:06 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 3800E674031E;
	Thu, 15 Jun 2017 16:09:06 +0200 (CEST)
To: yocto@yoctoproject.org
References: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <83c9671a-1f16-41b3-bb4b-584b56ba176d@mlbassoc.com>
Date: Thu, 15 Jun 2017 16:09:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
Subject: Re: Failed to build gdb
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
X-List-Received-Date: Thu, 15 Jun 2017 14:09:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-15 09:19, Lm Chew wrote:
> Hi,
> 
> 
> I am running on the latest poky branch, targeting raspberry pi.
> 
> 
> I have added the following line to the local.config to remove any package with license newer than GPLv2, with exception 
> the gdb for development purpose:
> 
> INCOMPATIBLE_LICENSE = "GPLv3 LGPLv3 AGPL-3.0"
> INCOMPATIBLE_LICENSE_pn-gdb = ""
> 
> 
> When i run the following command to build gdb I get the error shown below.
> 
> $ bitbake gdb
> 
> 
> How can i resolve this issue?
> 
> 
> Best Regards,
> 
> Chew
> 
> 
> ERROR: gdb-7.12.1-r0 do_compile: oe_runmake failed
> ERROR: gdb-7.12.1-r0 do_compile: Function failed: do_compile (log file is located at 
> /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_compile.11637)
> ERROR: Logfile of failure stored in: 
> /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_compile.11637
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'common-linux', 'common-glibc', 'arm-linux', 
> 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8 SUBDIRS=intl mmalloc libiberty opcodes bfd sim gdb etc utils
> | make[1]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi'
> | make[1]: Nothing to be done for 'all-target'.
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/intl'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/intl'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/etc'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/etc'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/readline'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/readline'
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty/testsuite'
> | make[3]: Nothing to be done for 'all'.
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty/testsuite'
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/zlib'
> | true "AR_FLAGS=rc" "CC_FOR_BUILD=gcc " "CFLAGS=-O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
> " "CXXFLAGS=-O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
>   -fvisibility-inlines-hidden" 
> "CFLAGS_FOR_BUILD=-isystem/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native/usr/include 
> -O2 -pipe" "CFLAGS_FOR_TARGET=-O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
> " "INSTALL=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c" 
> "INSTALL_DATA=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install 
> -c -m 644" 
> "INSTALL_PROGRAM=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c" 
> "INSTALL_SCRIPT=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install 
> -c" "LDFLAGS=-static-libstdc++ -static-libgcc -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed" "LIBCFLAGS=-O2 -pipe -g 
> -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
> " "LIBCFLAGS_FOR_TARGET=-O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
> " "MAKE=make" "MAKEINFO=makeinfo --split-size=5000000 --split-size=5000000 " "PICFLAG=" "PICFLAG_FOR_TARGET=" 
> "SHELL=/bin/bash" "EXPECT=expect" "RUNTEST=runtest" "RUNTESTFLAGS=" "exec_prefix=/usr" "infodir=/usr/share/info" 
> "libdir=/usr/lib" "prefix=/usr" "tooldir=/usr/arm-poky-linux-gnueabi" "AR=arm-poky-linux-gnueabi-ar" 
> "AS=arm-poky-linux-gnueabi-as " "CC=arm-poky-linux-gnueabi-gcc  -march=armv6 -mfpu=vfp  -mfloat-abi=hard 
> -mtune=arm1176jzf-s -mfpu=vfp 
> --sysroot=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot" 
> "CXX=arm-poky-linux-gnueabi-g++  -march=armv6 -mfpu=vfp  -mfloat-abi=hard -mtune=arm1176jzf-s -mfpu=vfp 
> --sysroot=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot" 
> "LD=arm-poky-linux-gnueabi-ld 
> --sysroot=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot 
> " "LIBCFLAGS=-O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
> " "NM=arm-poky-linux-gnueabi-nm" "PICFLAG=" "RANLIB=arm-poky-linux-gnueabi-ranlib" "DESTDIR=" DO=all multi-do # make
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/zlib'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | Making info in doc
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libdecnumber'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libdecnumber'
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
> | Making info in po
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
> | make[3]: Nothing to be done for 'info'.
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | make[3]: Nothing to be done for 'info-am'.
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | make  all-recursive
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | Making all in doc
> | make[4]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
> | make[4]: Nothing to be done for 'all'.
> | make[4]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
> | Making all in po
> | make[4]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
> | make[4]: Nothing to be done for 'all'.
> | make[4]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
> | make[4]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | make[4]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
> | make  all-recursive
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
> | Making all in .
> | make[4]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
> | make[4]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
> | Making all in po
> | make[4]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes/po'
> | make[4]: Nothing to be done for 'all'.
> | make[4]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes/po'
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
> | make[2]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
> | CONFIG_HEADERS=config.h:config.in \
> |   CONFIG_COMMANDS="default depdir" \
> |   CONFIG_FILES= \
> |   CONFIG_LINKS= \
> |   /bin/bash config.status
> | config.status: creating config.h
> | config.status: config.h is unchanged
> | config.status: executing default commands
> | config.status: executing depdir commands
> | make[3]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
> | make[4]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[5]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[6]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make  all-recursive
> | make[7]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[8]: Entering directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[8]: Nothing to be done for 'all-am'.
> | make[8]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[7]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | ERROR: oe_runmake failed
> | make[6]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[5]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[4]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[3]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
> | rm -f gdb
> | arm-poky-linux-gnueabi-g++  -march=armv6 -mfpu=vfp  -mfloat-abi=hard -mtune=arm1176jzf-s -mfpu=vfp 
> --sysroot=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=/usr/src/debug/gdb/7.12.1-r0 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native= 
> -fdebug-prefix-map=/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot= 
>   -fvisibility-inlines-hidden   -static-libstdc++ -static-libgcc -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed   \
> | -o gdb gdb.o arm.o arm-linux.o arm-get-next-pcs.o arm-tdep.o arm-linux-tdep.o glibc-tdep.o solib-svr4.o symfile-mem.o 
> linux-tdep.o linux-record.o ser-base.o ser-unix.o ser-pipe.o ser-tcp.o inf-ptrace.o fork-child.o arm-linux-nat.o 
> aarch32-linux-nat.o proc-service.o linux-thread-db.o linux-nat.o linux-osdata.o linux-fork.o linux-procfs.o 
> linux-ptrace.o linux-waitpid.o linux-personality.o linux-namespaces.o remote.o dcache.o tracepoint.o ax-general.o 
> ax-gdb.o remote-fileio.o remote-notif.o ctf.o tracefile.o tracefile-tfile.o  cli-dump.o cli-decode.o cli-script.o 
> cli-cmds.o cli-setshow.o cli-logging.o cli-interp.o cli-utils.o mi-out.o mi-console.o mi-cmds.o mi-cmd-catch.o 
> mi-cmd-env.o mi-cmd-var.o mi-cmd-break.o mi-cmd-stack.o mi-cmd-file.o mi-cmd-disas.o mi-symbol-cmds.o mi-cmd-target.o 
> mi-cmd-info.o mi-interp.o mi-main.o mi-parse.o mi-getopt.o python.o guile.o elfread.o stap-probe.o dtrace-probe.o 
> posix-hdep.o posix-strerror.o c-exp.o cp-name-parser.o ada-exp.o jv-exp.o d-exp.o f-exp.o go-exp.o m2-exp.o p-exp.o 
> rust-exp.o version.o annotate.o addrmap.o auto-load.o auxv.o agent.o bfd-target.o blockframe.o breakpoint.o 
> break-catch-sig.o break-catch-throw.o break-catch-syscall.o findvar.o regcache.o cleanups.o charset.o continuations.o 
> corelow.o disasm.o dummy-frame.o dfp.o source.o value.o eval.o valops.o valarith.o valprint.o printcmd.o block.o 
> symtab.o psymtab.o symfile.o symfile-debug.o symmisc.o linespec.o dictionary.o namespace.o location.o infcall.o infcmd.o 
> infrun.o expprint.o environ.o stack.o tid-parse.o thread.o thread-fsm.o exceptions.o extension.o filesystem.o 
> filestuff.o inf-child.o interps.o minidebug.o main.o macrotab.o macrocmd.o macroexp.o macroscope.o mi-common.o 
> event-loop.o event-top.o inf-loop.o completer.o gdbarch.o arch-utils.o gdbtypes.o gdb_bfd.o gdb_obstack.o osabi.o 
> copying.o memattr.o mem-break.o target.o target-dcache.o parse.o language.o build-id.o buildsym.o findcmd.o std-regs.o 
> signals-state-save-restore.o signals.o exec.o reverse.o bcache.o objfiles.o observer.o minsyms.o maint.o demangle.o 
> dbxread.o coffread.o coff-pe-read.o dwarf2read.o mipsread.o stabsread.o corefile.o dwarf2expr.o dwarf2loc.o 
> dwarf2-frame.o dwarf2-frame-tailcall.o ada-lang.o c-lang.o d-lang.o f-lang.o objc-lang.o ada-tasks.o ada-varobj.o 
> c-varobj.o ui-out.o cli-out.o varobj.o vec.o go-lang.o go-valprint.o go-typeprint.o jv-lang.o jv-valprint.o 
> jv-typeprint.o jv-varobj.o m2-lang.o opencl-lang.o p-lang.o p-typeprint.o p-valprint.o selftest.o sentinel-frame.o 
> complaints.o typeprint.o ada-typeprint.o c-typeprint.o f-typeprint.o m2-typeprint.o ada-valprint.o c-valprint.o 
> cp-valprint.o d-valprint.o f-valprint.o m2-valprint.o ser-event.o serial.o mdebugread.o top.o utils.o ui-file.o 
> user-regs.o frame.o frame-unwind.o doublest.o frame-base.o inline-frame.o gnu-v2-abi.o gnu-v3-abi.o cp-abi.o 
> cp-support.o cp-namespace.o d-namespace.o reggroups.o rust-lang.o trad-frame.o tramp-frame.o solib.o solib-target.o 
> prologue-value.o memory-map.o memrange.o xml-support.o xml-syscall.o xml-utils.o target-descriptions.o target-memory.o 
> xml-tdesc.o xml-builtin.o inferior.o osdata.o gdb_usleep.o record.o record-full.o gcore.o gdb_vecs.o jit.o progspace.o 
> skip.o probe.o common-utils.o buffer.o ptid.o gdb-dlfcn.o common-agent.o format.o registry.o btrace.o record-btrace.o 
> waitstatus.o print-utils.o rsp-low.o errors.o common-debug.o debug.o common-exceptions.o btrace-common.o fileio.o 
> common-regcache.o compile.o compile-c-symbols.o compile-c-types.o compile-object-load.o compile-object-run.o 
> compile-loc2c.o compile-c-support.o inflow.o    init.o \
> |   -lreadline ../opcodes/libopcodes.a ../bfd/libbfd.a -L./../zlib -lz  ../libiberty/libiberty.a 
> ../libdecnumber/libdecnumber.a    -ldl -ldl -lncurses -lm -ldl -lexpat    ../libiberty/libiberty.a 
>   build-gnulib/import/libgnu.a  -ldl -Wl,--dynamic-list=../../gdb-7.12.1/gdb/proc-service.list
> | completer.o: In function `gdb_display_match_list_1':
> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined reference to 
> `_rl_completion_prefix_display_length'
> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined reference to `rl_sort_completion_matches'
> | collect2: error: ld returned 1 exit status
> | Makefile:1418: recipe for target 'gdb' failed
> | make[2]: *** [gdb] Error 1
> | make[2]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
> | Makefile:8827: recipe for target 'all-gdb' failed
> | make[1]: *** [all-gdb] Error 2
> | make[1]: Leaving directory 
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi'
> | Makefile:850: recipe for target 'all' failed
> | make: *** [all] Error 2
> | ERROR: Function failed: do_compile (log file is located at 
> /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_compile.11637)
> ERROR: Task 
> (/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 933 tasks of which 932 didn't need to be rerun and 1 failed.
> 
> Summary: 1 task failed:
>    /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I had no problem building with this configuration (up to date master):

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-my-distro-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "my-distro"
DISTRO_VERSION    = "2.3+snapshot-20170615"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta              = "master:b1d5267f0e31605b346af40778da0ac1ff298b78"
meta-raspberrypi  = "master:081405feaa544b5b5c55a3ac72e629f3f3869a26"

What's your configuration?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

