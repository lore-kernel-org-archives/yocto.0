Return-Path: <n.jeker@delisys.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C22DE00D4A; Thu,  3 Oct 2019 07:45:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [80.237.133.92 listed in list.dnswl.org]
X-Greylist: delayed 1008 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Oct 2019 07:45:13 PDT
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
	[80.237.133.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65077E009CE
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 07:45:13 -0700 (PDT)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch
	([46.14.71.22] helo=linuxpower); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1iG25g-0005D7-JL; Thu, 03 Oct 2019 16:28:24 +0200
Message-ID: <be40c2abccdac51806b4e4d7935da5a5c1d80929.camel@delisys.ch>
From: Nicolas Jeker <n.jeker@delisys.ch>
To: yocto@yoctoproject.org
Date: Thu, 03 Oct 2019 16:28:14 +0200
In-Reply-To: <CAA=hcWQu5_CKpv+iCmMCJQQjgK2UmPyJ0Hf293X+VrRgxsbOVA@mail.gmail.com>
References: <CAA=hcWQu5_CKpv+iCmMCJQQjgK2UmPyJ0Hf293X+VrRgxsbOVA@mail.gmail.com>
User-Agent: Evolution 3.34.0 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1570113913;32eb2d22;
X-HE-SMSGID: 1iG25g-0005D7-JL
Subject: Re: No rule to make target 'zImage'
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
X-List-Received-Date: Thu, 03 Oct 2019 14:45:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-10-01 at 07:16 +1000, JH wrote:
> Hi,
> 
> I am building Yocto, it stopped at building kernel "No rule to make
> target 'zImage'", what I could be missing?
> 

I encountered the same problem when building a custom kernel. It works
perfectly fine when I'm building it outside of yocto.

First, I want to document the steps I followed.

My yocto version is thud. I followed the Kernel Development Manual and
used the recipe from the skeleton layer as a base and created the
following recipe:


inherit kernel siteinfo
require recipes-kernel/linux/linux-yocto.inc

LIC_FILES_CHKSUM =
"file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"

KCONFIG_MODE = "--alldefconfig"

SRC_URI = "git://git.toradex.com/linux-
toradex.git;protocol=git;nocheckout=1;branch=${SRCBRANCH} \
           file://defconfig \
           file://imx6q-apalis-
ixora.dts;subdir=git/arch/${ARCH}/boot/dts"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LINUX_VERSION ?= "5.2"
LINUX_VERSION_EXTENSION_append = "-delisys"

SRCREV="74e785ce1024471e77b6fb9da83ffd60762c8cac"
SRCBRANCH = "toradex_5.2.y"

PV = "5.2.7"

DEPENDS += "lzop-native bc-native"
COMPATIBLE_MACHINE = "(apalis-imx6)"
KARCH = "arm"
KMACHINE = "apalis-imx6"
KBRANCH = "toradex_5.2.y"


When I build the kernel, I get the following error:


| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 HOSTCC=gcc  -
isystem/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot-native/usr/include -O2 -pipe
-L/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot-native/usr/lib                         -
L/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot-native/lib                         -Wl,-
rpath-link,/home/build/build/tmp/work/apalis_imx6-tdx-linux-
gnueabi/linux-stable/5.2.7-r0/recipe-sysroot-
native/usr/lib                         -Wl,-rpath-
link,/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot-native/lib                         -Wl,-
rpath,/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot-native/usr/lib                         -
Wl,-rpath,/home/build/build/tmp/work/apalis_imx6-tdx-linux-
gnueabi/linux-stable/5.2.7-r0/recipe-sysroot-
native/lib                         -Wl,-O1 -Wl,--allow-shlib-undefined
-Wl,--dynamic-linker=/home/build/build/tmp/sysroots-uninative/x86_64-
linux/lib/ld-linux-x86-64.so.2 HOSTCPP=gcc  -E zImage CC=arm-tdx-linux-
gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=bfd -fdebug-prefix-
map=/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0=/usr/src/debug/linux-stable/5.2.7-
r0                      -fdebug-prefix-
map=/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot=                      -fdebug-prefix-
map=/home/build/build/tmp/work/apalis_imx6-tdx-linux-gnueabi/linux-
stable/5.2.7-r0/recipe-sysroot-native=  -fdebug-prefix-
map=/home/build/build/tmp/work-shared/apalis-imx6/kernel-
source=/usr/src/kernel   LD=arm-tdx-linux-gnueabi-ld.bfd
| make: *** No rule to make target 'zImage'.  Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.



I experimented a little with the devshell and the problem seems to be
that the HOSTCC and HOSTCPP variables are not surrounded by quotes. I
couldn't figure out why this is happening. Did you find a solution?

Regards,
Nicolas


