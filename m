Return-Path: <rapp.jens@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC843E00712; Mon, 23 Feb 2015 07:02:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rapp.jens[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99AF8E006E9
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 07:02:27 -0800 (PST)
Received: by mail-wi0-f181.google.com with SMTP id r20so17731086wiv.2
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 07:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:message-id:date:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=b5IWb9lC53582v5OQU+wieNIcKezgoeV1Kcfxy7GobU=;
	b=Urv+jBjroEQHanazTZUhKdSNG0mfgcTQsvdTFfhUXM6kz+om5UgFBJ7va0rYYFJcbs
	Trpr1CCwdSHiNMLngXncINPHgCPyFvpKCfHIV/Kr+MpPnT3DvcFR8kERvwz2pAPLQYVj
	vS+IFlqQE1ZCMw7yeoFLgm3uQzXBN/9YGKdDjC5NLl+TVTF2QgrtPbNODAosDh5j327P
	Gkkn72+wbbaVY2/vSxqy+f4iNouEPN8fJCdotjFVM63GxVeUkhYodAdFsWpMeBbO0Dtz
	a/LV9XNIcHe+d1AImFhMf1ceODsEAaUKCxTt6vEjReN9DSsMdWN2/a1sQ6psx53s/ug1
	wNXw==
X-Received: by 10.194.177.195 with SMTP id cs3mr22575696wjc.141.1424703746997; 
	Mon, 23 Feb 2015 07:02:26 -0800 (PST)
Received: from [192.168.43.207] (tmo-106-9.customers.d1-online.com.
	[80.187.106.9])
	by mx.google.com with ESMTPSA id k6sm16249017wia.6.2015.02.23.07.02.24
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Feb 2015 07:02:26 -0800 (PST)
From: Jens Rapp <rapp.jens@googlemail.com>
X-Google-Original-From: Jens Rapp <rapp.jens@gmail.com>
Message-ID: <54EB40FC.1040301@gmail.com>
Date: Mon, 23 Feb 2015 16:02:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: cannot compile kernel module - headers missing
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
X-List-Received-Date: Mon, 23 Feb 2015 15:02:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

hi,

i have a simple hello world kernel module and i cannot compile it. linux 
headers are missing
i tried to set -I $(OECORE_TARGET_SYSROOT)usr/src/kernel/include/
but there seems to be much more missing..

is there any way to do this easier?

here's what i have:

module.c
-------------
#include <linux/module.h>
#include <linux/spi.h>
#include <linux/gpio.h>
#include <linux/interrupt.h>

#include <linux/kernel.h>

/**
  * initialisiert das Kernel - Modul
  */
int init_module(void) {
     printk(KERN_DEBUG "Hallo Kernel!\n");
     return 0;
}

void cleanup_module (void) {
     printk (KERN_DEBUG "Ciao!\n");
}


and my Makefile
----------------------
# file      Makefile
# copyright Copyright (c) 2012 Toradex AG
#           [Software License Agreement]
# author    $Author$
# version   $Rev$
# date      $Date$
# brief     a simple makefile to (cross) compile.
#           uses the openembedded provided sysroot and toolchain
# target    linux on Colibri T20 / Colibri T30
# caveats   -

##############################################################################
# Setup your project settings
##############################################################################

# Set the input source files, the binary name and used libraries to link
SRCS = module.c
PROG := module
LIBS =
CONF_LIBS =
C_FLAGS = -D__KERNEL__ -D__SMP__ -DMODULE -DMODVERSIONS
# Set flags to the compiler and linker
CFLAGS += -O2 -g -Wall `$(PKG-CONFIG) --cflags $(CONF_LIBS)` 
$(ARCH_CFLAGS) $(C_FLAGS)
LDFLAGS += `$(PKG-CONFIG) --libs $(CONF_LIBS)`

##############################################################################
# Setup your build environment
##############################################################################

# Set the path to the oe built sysroot and
# Set the prefix for the cross compiler
OECORE_NATIVE_SYSROOT ?= 
$(HOME)/oe-core/build/out-eglibc/sysroots/x86_64-linux/
OECORE_TARGET_SYSROOT ?= 
$(HOME)/oe-core/build/out-eglibc/sysroots/apalis-imx6/
CROSS_COMPILE ?= 
$(OECORE_NATIVE_SYSROOT)usr/bin/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-

##############################################################################
# The rest of the Makefile usually needs no change
##############################################################################

# Set differencies between native and cross compilation
ifneq ($(strip $(CROSS_COMPILE)),)
   LDFLAGS += -L$(OECORE_TARGET_SYSROOT)usr/lib 
-Wl,-rpath-link,$(OECORE_TARGET_SYSROOT)usr/lib 
-L$(OECORE_TARGET_SYSROOT)lib -Wl,-rpath-link,$(OECORE_TARGET_SYSROOT)lib
   ARCH_CFLAGS = -march=armv7-a -fno-tree-vectorize -mthumb-interwork 
-mfloat-abi=hard -mtune=cortex-a9
   BIN_POSTFIX =
   PKG-CONFIG = export PKG_CONFIG_SYSROOT_DIR=$(OECORE_TARGET_SYSROOT); \
                export 
PKG_CONFIG_PATH=$(OECORE_TARGET_SYSROOT)/usr/lib/pkgconfig/; \
                $(OECORE_NATIVE_SYSROOT)usr/bin/pkg-config
else
# Native compile
   PKG-CONFIG = pkg-config
   ARCH_CFLAGS =
# Append .x86 to the object files and binaries, so that native and cross 
builds can live side by side
   BIN_POSTFIX = .x86
endif

# Toolchain binaries
CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)gcc
STRIP = $(CROSS_COMPILE)strip
RM = rm -f

# Sets the output filename and object files
PROG := $(PROG)$(BIN_POSTFIX)
OBJS = $(SRCS:.c=$(BIN_POSTFIX).o)
DEPS = $(OBJS:.o=.o.d)

# pull in dependency info for *existing* .o files
-include $(DEPS)

all: $(PROG)

$(PROG): $(OBJS) Makefile
     $(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS) $(LDFLAGS)
     #$(STRIP) $@

%$(BIN_POSTFIX).o: %.c
     $(CC) -c $(CFLAGS) -o $@ $<
     $(CC) -MM $(CFLAGS) $< > $@.d

clean:
     $(RM) $(OBJS) $(PROG) $(DEPS)

.PHONY: all clean


