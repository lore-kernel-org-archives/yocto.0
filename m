Return-Path: <Michael_E_Brown@dell.com>
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
	[143.166.148.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155ABE00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 09:19:59 -0800 (PST)
X-Loopcount0: from 10.9.160.253
From: Michael E Brown <Michael_E_Brown@dell.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Nov 2011 11:19:58 -0600
In-Reply-To: <CAMKF1spcuDfqdWX0pxF8=4uQ14+WepZosu0mUMv5xtwp1SQaNQ@mail.gmail.com>
References: <AQHMn/k5DNKfuvujVk+xPJByWnze6g==>
	<DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
	<CAMKF1spcuDfqdWX0pxF8=4uQ14+WepZosu0mUMv5xtwp1SQaNQ@mail.gmail.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1322068799.17478.8.camel@duo>
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SH4 build failure fix
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Nov 2011 17:20:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-22 at 17:53 -0600, Khem Raj wrote:
> On Thu, Nov 10, 2011 at 2:36 PM,  <Michael_E_Brown@dell.com> wrote:
> >
> > I'm presently working on porting the build environment for three existing embedded projects over to use yocto. Unfortunately, the project which has to go first is based on an SH4 chip, which isn't on the officially supported yocto architecture list. I gave the compile a go, and ran into a build error in gcc-cross-intermediate:
> >
> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-linux-ld: cannot find crti.o: No such file or directory
> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-linux-ld: cannot find -lc
> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-linux-ld: cannot find crtn.o: No such file or directory
> >
> > Trying to figure out the source of this build error, I found that base openembedded does compile this package successfully, so I started focusing on the differences. I narrowed the build failure down to this line in gcc-cross4.inc, which is present in openembedded, but absent in yocto/poky:
> >    gcc-cross4.inc
> >    EXTRA_OECONF_append_sh4 = " --with-multilib-list= --enable-incomplete-targets "
> >
> > After I added this one line, I was able to sucessfully build a base yocto image for qemu sh4. Is it possible to get this added to the upstream yocto build?
> 
> there is much more than just building toolchain. You need to make sure
> that kernel is configured properly too and last time I remember doing
> it in oe.dev I needed some patches on vanilla
> kernel that may have changed now. I think adding SH4 to meta-oe can be
> considered if you post
> patches for that layer. Then the question remains where the remaining
> machine support goes. It can be a new layer for secondary qemu
> architectures.

I am porting a build from a pre-existing build system where I already
have full working rootfs and kernel, so porting our kernel is slightly
lower on the priority list than getting userland up and running. I'll be
working on kernel in a couple weeks, though I may get an sh4 qemu kernel
building in the meantime. If I get that going, I'll send patches, but I
would like to see the oe-core/yocto fixed up to build sh4 properly.

There are a total of 3 packages that require fixes to get all the
userspace packages building, and one fix to qemu to restore building sh4
binaries. In addition to the already posted gcc fixes:

1) libatomics needs to be upgraded to the latest, 7.2alpha6 for sh4
fixes. This upgrade is simply renaming the file and removing the
already-applied patches.

2) libart: the sh4 art_config.h was dropped in oe-core. Simply copy over
from oe.

--
Michael




