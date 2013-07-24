Return-Path: <saul.wold@intel.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCD4E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 11:16:35 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp1so956659pab.7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 11:16:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=t5+BuP6AXU70j40XbuZNq1MZGaEspCXGP2trUt0GXxY=;
	b=dT4ojthCZLhGRaN0zhQP/1LwX6/6qkdJSBo0KLw7PDE0LVons2zxqoTVNHIORpUlZf
	TRnVbj2bUwegms+vrmagnQ7Rl2O22HW7z+k8GydOrltsRMiTDHN1M9hWZd5xMkTpkced
	fsPdI71fZiav3G7Tui7bU9t3m41/twR32noTMcxFkOpnhlh9IgOQaeN04r+SEG7KXCg2
	dNLYEAtIW4H6SFOJglP7ZjezBjOVY6vXaTCVn1jXYc4mbBNubFdFuTrDDHdAFizAwc4J
	cRLLthgEbx9MVXiI7GzmnTlFNMqVQOEw+gwklLFl/7aknPHSRFugMceaJSmobZnmzIW8
	UWow==
X-Received: by 10.68.160.193 with SMTP id xm1mr43936695pbb.88.1374689795200;
	Wed, 24 Jul 2013 11:16:35 -0700 (PDT)
Received: from [10.6.18.24] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117]) by mx.google.com with ESMTPSA id
	sp4sm49149059pbc.45.2013.07.24.11.16.33 for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 24 Jul 2013 11:16:34 -0700 (PDT)
Message-ID: <51F01A01.9030300@intel.com>
Date: Wed, 24 Jul 2013 11:16:33 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Laszlo Papp <lpapp@kde.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<CAN20qYp+MW8+LMWS29ZDfmNoh+yRkadLsnbatY8btX8yAU7Rsg@mail.gmail.com>
	<CAOMwXhNt-p4iEJnuGYb75WJtA+5PbnsSouJSriQaa-rnRsOn2Q@mail.gmail.com>
	<CAN20qYrikM0gNDSOCEsxv_kCSSOTdon8bJqyL4Z-1RKq-z2MHA@mail.gmail.com>
	<CAOMwXhPvPC_0qC9LTzJmJL8QP-c8Wueemn6UVoTCnyWXsh35Sw@mail.gmail.com>
	<CAOMwXhMefxghO0M+4vc2NNnYSfCMR3JPqhBxFbB_8bo6gumESQ@mail.gmail.com>
	<CAOMwXhOdyA7CigNufUA-hXy9mZ1T8KPD0BOjjP_XHBOidhmUbw@mail.gmail.com>
In-Reply-To: <CAOMwXhOdyA7CigNufUA-hXy9mZ1T8KPD0BOjjP_XHBOidhmUbw@mail.gmail.com>
X-Gm-Message-State: ALoCoQmAhcv65Zj71FRMHcJH9Sl7d4DZ2xT6QHG+2Vj8cwvukAUSm5Pzs1q9pvaBPnWmAjFrGbp9
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: FW: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Wed, 24 Jul 2013 18:16:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/24/2013 11:11 AM, Laszlo Papp wrote:
> It seems I can reproduce the issue with even beagleboard + poky using
> poky dylan vanilla.
>
> Anyone mind fixing this very nasty bug?
>
Please file a bug and include your local.conf and any other 
configuration files and setup information you have.  I will look at it 
and assign it to the correct person.

Sau!

>
> On Wed, Jul 24, 2013 at 5:46 PM, Laszlo Papp <lpapp@kde.org
> <mailto:lpapp@kde.org>> wrote:
>
>     Here you can find the two outputs for "bitbake -e busybox". The
>     broken sourcery, and not so broken csl:
>
>     http://ix.io/6QZ
>     http://ix.io/6R1
>
>     Yeah, I know it is a bad practice to paste files to a mailing list,
>     so forgive that for me now, please.
>
>
>     On Wed, Jul 24, 2013 at 4:20 PM, Laszlo Papp <lpapp@kde.org
>     <mailto:lpapp@kde.org>> wrote:
>
>         If I change external-csl to external-sourcery, busybox keeps
>         failing with the following error:
>
>         ERROR: ExpansionError during parsing
>         /home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/busybox/busybox_1.20.2.bb
>         <http://busybox_1.20.2.bb>: Failure expanding variable
>         do_configure: ExpansionError: Failure expanding variable
>         do_configure, expression was       do_prepare_config
>                  merge_config.sh -m .config ${@" ".join(find_cfgs(d))}
>                  cml1_do_configure
>           which triggered exception NameError: name 'find_cfgs' is not
>         defined
>         ERROR: Command execution failed: Exited with 1
>
>         Got a clue?
>
>
>         On Wed, Jul 24, 2013 at 4:12 PM, Bill Traynor
>         <btraynor@gmail.com <mailto:btraynor@gmail.com>> wrote:
>
>             On Wed, Jul 24, 2013 at 11:08 AM, Laszlo Papp <lpapp@kde.org
>             <mailto:lpapp@kde.org>> wrote:
>              > I was using that based on the non-official documentation
>             (i.e. presentation
>              > at the Linux event).
>
>             external-sourcery is the new TCMODE and should work,
>             however, I just
>             thought trying the old one may work.
>
>              >
>              >
>              > On Wed, Jul 24, 2013 at 4:06 PM, Bill Traynor
>             <btraynor@gmail.com <mailto:btraynor@gmail.com>> wrote:
>              >>
>              >> Try with:
>              >>
>              >> TCMODE = "external-csl"
>              >> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
>              >>
>              >> On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M
>              >> <scott.m.rifenbark@intel.com
>             <mailto:scott.m.rifenbark@intel.com>> wrote:
>              >> > Hi,
>              >> >
>              >> >
>              >> >
>              >> > Can anyone address the toolchain questions here for
>             Laszlo?
>              >> >
>              >> >
>              >> >
>              >> > Thanks,
>              >> >
>              >> > Scott
>              >> >
>              >> >
>              >> >
>              >> > From: djszapi@archlinux.us
>             <mailto:djszapi@archlinux.us> [mailto:djszapi@archlinux.us
>             <mailto:djszapi@archlinux.us>] On Behalf Of
>              >> > Laszlo
>              >> > Papp
>              >> > Sent: Tuesday, July 23, 2013 11:52 PM
>              >> > To: Rifenbark, Scott M
>              >> > Cc: Wold, Saul
>              >> > Subject: Re: FW: [OE-core] Doc: external toolchain
>              >> >
>              >> >
>              >> >
>              >> > OK, thanks.
>              >> >
>              >> >
>              >> >
>              >> > I am facing this issue, any clue?
>              >> >
>              >> >
>              >> >
>              >> > ERROR: Failed to obtain CodeSourcery toolchain
>             version: Execution of
>              >> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command
>             not found
>              >> >
>              >> > ERROR: Failed to obtain CodeSourcery toolchain
>             version: Execution of
>              >> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command
>             not found
>              >> >
>              >> >
>              >> >
>              >> > This is what I have in my build/conf/local.conf:
>              >> >
>              >> >
>              >> >
>              >> > ...
>              >> >
>              >> > TCMODE = "external-sourcery"
>              >> >
>              >> > EXTERNAL_TOOLCHAIN = "/usr"
>              >> >
>              >> > TARGET_PREFIX = "arm-none-linux-gnueabi-"
>              >> >
>              >> > ...
>              >> >
>              >> >
>              >> >
>              >> > The external toolchain does exist:
>              >> >
>              >> >
>              >> >
>              >> > /usr/bin/arm-none-linux-gnueabi-gcc -v
>              >> >
>              >> > Using built-in specs.
>              >> >
>              >> > COLLECT_GCC=/usr/bin/arm-none-linux-gnueabi-gcc
>              >> >
>              >> >
>              >> >
>             COLLECT_LTO_WRAPPER=/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4.7.3/lto-wrapper
>              >> >
>              >> > Target: arm-none-linux-gnueabi
>              >> >
>              >> > Configured with:
>              >> >
>             /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05/configure
>              >> > --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
>              >> > --target=arm-none-linux-gnueabi --enable-threads
>             --disable-libmudflap
>              >> > --disable-libssp --disable-libstdcxx-pch
>              >> > --enable-extra-sgxxlite-multilibs
>              >> > --with-arch=armv5te --with-gnu-as --with-gnu-ld
>              >> > --with-specs='%{save-temps:
>              >> > -fverbose-asm}
>              >> >
>              >> >
>             %{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdlib:;:-funwind-tables}
>              >> > -D__CS_SOURCERYGXX_MAJ__=2013 -D__CS_SOURCERYGXX_MIN__=5
>              >> > -D__CS_SOURCERYGXX_REV__=24
>             %{O2:%{!fno-remove-local-statics:
>              >> > -fremove-local-statics}}
>              >> > %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
>              >> > -fremove-local-statics}}}' --enable-languages=c,c++
>             --enable-shared
>              >> > --enable-lto --enable-symvers=gnu --enable-__cxa_atexit
>              >> > --with-pkgversion='Sourcery CodeBench Lite 2013.05-24'
>              >> >
>             --with-bugurl=https://sourcery.mentor.com/GNUToolchain/
>             --disable-nls
>              >> > --prefix=/opt/codesourcery
>              >> >
>             --with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc
>              >> >
>              >> >
>             --with-build-sysroot=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/libc
>              >> >
>              >> >
>             --with-gmp=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>              >> >
>              >> >
>             --with-mpfr=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>              >> >
>              >> >
>             --with-mpc=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>              >> >
>              >> >
>             --with-ppl=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>              >> > --with-host-libstdcxx='-static-libgcc
>             -Wl,-Bstatic,-lstdc++,-Bdynamic
>              >> > -lm'
>              >> >
>              >> >
>             --with-cloog=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>              >> >
>              >> >
>             --with-libelf=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>              >> > --disable-libgomp --disable-libitm
>             --enable-poison-system-directories
>              >> >
>              >> >
>             --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
>              >> >
>              >> >
>             --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
>              >> >
>              >> > Thread model: posix
>              >> >
>              >> > gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)
>              >> >
>              >> >
>              >> >
>              >> > On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M
>              >> > <scott.m.rifenbark@intel.com
>             <mailto:scott.m.rifenbark@intel.com>> wrote:
>              >> >
>              >> > Laszlo,
>              >> >
>              >> > Saul forwarded me this email regarding external
>             toolchains.  The "In
>              >> > Progress" version of the YP Reference Manual has a new
>             section on
>              >> > toolchains
>              >> > in general.  This section, combined with the TCMODE
>             glossary entry and a
>              >> > FAQ
>              >> > entry, both in the reference manual, comprise our
>             information on the
>              >> > external toolchain topic.  Let me know what
>             specifically would need
>              >> > additionally addressed and I can get that on my plate
>             to improve the doc
>              >> > set.
>              >> >
>              >> > Thanks,
>              >> > Scott
>              >> >
>              >> >
>              >> >
>             http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-toolchain-generation
>              >> >
>              >> >
>             http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TCMODE
>              >> >
>              >> >
>             http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm622640
>              >> >
>              >> >
>              >> >
>              >> >
>              >> >>-----Original Message-----
>              >> >>From: Saul Wold [mailto:sgw@linux.intel.com
>             <mailto:sgw@linux.intel.com>]
>              >> >>Sent: Tuesday, July 23, 2013 3:52 PM
>              >> >>To: Rifenbark, Scott M
>              >> >>Subject: Fwd: [OE-core] Doc: external toolchain
>              >> >>
>              >> >>
>              >> >>
>              >> >>
>              >> >>-------- Original Message --------
>              >> >>Subject:       [OE-core] Doc: external toolchain
>              >> >>Date:  Tue, 23 Jul 2013 23:45:28 +0100
>              >> >>From:  Laszlo Papp <lpapp@kde.org <mailto:lpapp@kde.org>>
>              >> >>To: openembedded-core@lists.openembedded.org
>             <mailto:openembedded-core@lists.openembedded.org>
>              >> >>
>              >> >>
>              >> >>
>              >> >>Dear gents and ladies,
>              >> >>
>              >> >>it would be nice to get some documentation about this
>             subject. There is
>              >> >>only one presentation with only a few short slides
>             about the topic:
>              >>
>              >>http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.pd
>              >> >>f
>              >> >>
>              >> >>I am now having some issues currently, and hard time
>             to figure out what
>              >> >>is going on. Note, this thread is not about getting
>             help with that
>              >> >>particular issue, but encouraging you to document
>             this, for me,
>              >> >>fundamental feature more thoroughly.
>              >> >>
>              >> >>Thank you for your understanding.
>              >> >>
>              >> >>Many thanks,
>              >> >>Laszlo
>              >> >>
>              >> >>
>              >> >>
>              >> >
>              >> >
>              >> >
>              >> >
>              >> > _______________________________________________
>              >> > yocto mailing list
>              >> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>              >> > https://lists.yoctoproject.org/listinfo/yocto
>              >> >
>              >
>              >
>
>
>
>


