Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67AC2E00712; Mon, 23 Feb 2015 07:08:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F120E006E9
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 07:08:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t1NF8anj009407
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Feb 2015 07:08:36 -0800 (PST)
Received: from server.local (128.224.23.72) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 23 Feb 2015 07:08:35 -0800
Message-ID: <54EB4273.2030106@windriver.com>
Date: Mon, 23 Feb 2015 10:08:35 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Jens Rapp <rapp.jens@googlemail.com>, <yocto@yoctoproject.org>
References: <54EB40FC.1040301@gmail.com>
In-Reply-To: <54EB40FC.1040301@gmail.com>
Subject: Re: cannot compile kernel module - headers missing
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
X-List-Received-Date: Mon, 23 Feb 2015 15:08:43 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-23 10:02 AM, Jens Rapp wrote:
> hi,
>
> i have a simple hello world kernel module and i cannot compile it. linux
> headers are missing
> i tried to set -I $(OECORE_TARGET_SYSROOT)usr/src/kernel/include/
> but there seems to be much more missing..

What release are you using ? The kernel sources recently changed
in master (for the 1.8 release), so that could be catching you
in transition.

>
> is there any way to do this easier?

We have an example in meta-skeleton for a hello world module.
(meta-skeleton/recipes-kernel/hello-mod/). Have a look there and
it may answer most (if not all) questions.

Bruce

>
> here's what i have:
>
> module.c
> -------------
> #include <linux/module.h>
> #include <linux/spi.h>
> #include <linux/gpio.h>
> #include <linux/interrupt.h>
>
> #include <linux/kernel.h>
>
> /**
>   * initialisiert das Kernel - Modul
>   */
> int init_module(void) {
>      printk(KERN_DEBUG "Hallo Kernel!\n");
>      return 0;
> }
>
> void cleanup_module (void) {
>      printk (KERN_DEBUG "Ciao!\n");
> }
>
>
> and my Makefile
> ----------------------
> # file      Makefile
> # copyright Copyright (c) 2012 Toradex AG
> #           [Software License Agreement]
> # author    $Author$
> # version   $Rev$
> # date      $Date$
> # brief     a simple makefile to (cross) compile.
> #           uses the openembedded provided sysroot and toolchain
> # target    linux on Colibri T20 / Colibri T30
> # caveats   -
>
> ##############################################################################
>
> # Setup your project settings
> ##############################################################################
>
>
> # Set the input source files, the binary name and used libraries to link
> SRCS = module.c
> PROG := module
> LIBS =
> CONF_LIBS =
> C_FLAGS = -D__KERNEL__ -D__SMP__ -DMODULE -DMODVERSIONS
> # Set flags to the compiler and linker
> CFLAGS += -O2 -g -Wall `$(PKG-CONFIG) --cflags $(CONF_LIBS)`
> $(ARCH_CFLAGS) $(C_FLAGS)
> LDFLAGS += `$(PKG-CONFIG) --libs $(CONF_LIBS)`
>
> ##############################################################################
>
> # Setup your build environment
> ##############################################################################
>
>
> # Set the path to the oe built sysroot and
> # Set the prefix for the cross compiler
> OECORE_NATIVE_SYSROOT ?=
> $(HOME)/oe-core/build/out-eglibc/sysroots/x86_64-linux/
> OECORE_TARGET_SYSROOT ?=
> $(HOME)/oe-core/build/out-eglibc/sysroots/apalis-imx6/
> CROSS_COMPILE ?=
> $(OECORE_NATIVE_SYSROOT)usr/bin/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-
>
>
> ##############################################################################
>
> # The rest of the Makefile usually needs no change
> ##############################################################################
>
>
> # Set differencies between native and cross compilation
> ifneq ($(strip $(CROSS_COMPILE)),)
>    LDFLAGS += -L$(OECORE_TARGET_SYSROOT)usr/lib
> -Wl,-rpath-link,$(OECORE_TARGET_SYSROOT)usr/lib
> -L$(OECORE_TARGET_SYSROOT)lib -Wl,-rpath-link,$(OECORE_TARGET_SYSROOT)lib
>    ARCH_CFLAGS = -march=armv7-a -fno-tree-vectorize -mthumb-interwork
> -mfloat-abi=hard -mtune=cortex-a9
>    BIN_POSTFIX =
>    PKG-CONFIG = export PKG_CONFIG_SYSROOT_DIR=$(OECORE_TARGET_SYSROOT); \
>                 export
> PKG_CONFIG_PATH=$(OECORE_TARGET_SYSROOT)/usr/lib/pkgconfig/; \
>                 $(OECORE_NATIVE_SYSROOT)usr/bin/pkg-config
> else
> # Native compile
>    PKG-CONFIG = pkg-config
>    ARCH_CFLAGS =
> # Append .x86 to the object files and binaries, so that native and cross
> builds can live side by side
>    BIN_POSTFIX = .x86
> endif
>
> # Toolchain binaries
> CC = $(CROSS_COMPILE)gcc
> LD = $(CROSS_COMPILE)gcc
> STRIP = $(CROSS_COMPILE)strip
> RM = rm -f
>
> # Sets the output filename and object files
> PROG := $(PROG)$(BIN_POSTFIX)
> OBJS = $(SRCS:.c=$(BIN_POSTFIX).o)
> DEPS = $(OBJS:.o=.o.d)
>
> # pull in dependency info for *existing* .o files
> -include $(DEPS)
>
> all: $(PROG)
>
> $(PROG): $(OBJS) Makefile
>      $(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS) $(LDFLAGS)
>      #$(STRIP) $@
>
> %$(BIN_POSTFIX).o: %.c
>      $(CC) -c $(CFLAGS) -o $@ $<
>      $(CC) -MM $(CFLAGS) $< > $@.d
>
> clean:
>      $(RM) $(OBJS) $(PROG) $(DEPS)
>
> .PHONY: all clean
>


