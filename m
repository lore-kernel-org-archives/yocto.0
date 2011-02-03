Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCA634C800A4
	for <yocto@yoctoproject.org>; Thu,  3 Feb 2011 15:22:11 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2011 13:22:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,422,1291622400"; d="scan'208";a="599251446"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2011 13:22:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Feb 2011 13:22:09 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 3 Feb 2011 13:22:09 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Darren Hart <dvhart@linux.intel.com>
Date: Thu, 3 Feb 2011 13:22:08 -0800
Thread-Topic: [yocto] Kernel Panics on armv4t with gcc.4.5.1
Thread-Index: AcvD3WuQ3Kd0k28BQrqsa/HG1YTUkAACsGcg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9411F42C89@orsmsx504.amr.corp.intel.com>
References: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
	<AANLkTikz91RahwnectR5cNjx0HKVu4WJNLMH-BNtwszw@mail.gmail.com>
	<AANLkTimX_OMXpQkN3UubTPcVLEmv2DUNdwunJ8rd64je@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE9411F42785@orsmsx504.amr.corp.intel.com>
	<4D4AF221.5020303@linux.intel.com> <4D4B09F7.2000305@mlbassoc.com>
In-Reply-To: <4D4B09F7.2000305@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panics on armv4t with gcc.4.5.1
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
X-List-Received-Date: Thu, 03 Feb 2011 21:22:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: Thursday, February 03, 2011 12:03 PM
> To: Darren Hart
> Cc: Kamble, Nitin A; yocto@yoctoproject.org
> Subject: Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1
>=20
> On 02/03/2011 11:21 AM, Darren Hart wrote:
> > On 02/03/2011 09:00 AM, Kamble, Nitin A wrote:
> >> Hi Diego,
> >>
> >> Good to know your kernel panic is gone. The 4.5.1 tree is arm
> specific
> >> linaro patches, which probably helping you. You can also try the
> >> meta-linaro layer.
> >>
> >> http://git.pokylinux.org/cgit/cgit.cgi/meta-linaro/
> >
> > This has moved:
> >
> > http://git.pokylinux.org/cgit/cgit.cgi/poky-extras
> >
> >>
> >> And Darren is working on updating that layer currently. The gcc from
> >> that layer has linaro arm patches.
> >
> > I'm running into some build issues during the uprev, but hoping to
> have it done ASAP.
>=20
> To be clear on how to use this - I added the meta-linaro layer to my
> poky tree and added these to my <MACHINE>.conf:
>    GCCVERSION =3D "4.5.1.linaro"
>    SDKGCCVERSION =3D "4.5.1.linaro"
>=20
> When I tried this, I got these errors:
> NOTE: preferred version 4.5.1.linaro of gcc-cross not available (for
> item virtual/arm-poky-linux-gnueabi-gcc)
> NOTE: preferred version 4.5.1.linaro of gcc-runtime not available (for
> item virtual/arm-poky-linux-gnueabi-compilerlibs)
> NOTE: preferred version 4.5.1.linaro of gcc-cross not available (for
> item virtual/arm-poky-linux-gnueabi-g++)
> NOTE: preferred version 4.5.1.linaro of gcc-cross-intermediate not
> available (for item virtual/arm-poky-linux-gnueabi-gcc-intermediate)
> NOTE: preferred version 4.5.1.linaro of gcc-crosssdk not available (for
> item virtual/i586-pokysdk-linux-gcc-crosssdk)
> NOTE: preferred version 4.5.1.linaro of gcc-runtime-nativesdk not
> available (for item virtual/i586-pokysdk-linux-compilerlibs-nativesdk)
> NOTE: preferred version 4.5.1.linaro of gcc-cross-initial not available
> (for item virtual/arm-poky-linux-gnueabi-gcc-initial)
> NOTE: preferred version 4.5.1.linaro of gcc-crosssdk not available (for
> item virtual/i586-pokysdk-linux-g++-crosssdk)
> NOTE: preferred version 4.5.1.linaro of gcc-crosssdk-intermediate not
> available (for item virtual/i586-pokysdk-linux-gcc-intermediate-
> crosssdk)
> NOTE: preferred version 4.5.1.linaro of gcc-crosssdk-initial not
> available (for item virtual/i586-pokysdk-linux-gcc-initial-crosssdk)
>=20
> What did I miss?

Gary,
  It should have worked for you. Only thing I see is the latest drop is at =
poky-extras and not meta-linaro.=20
Thanks,
Nitin


>=20
> >> *From:*Diego Sueiro [mailto:diego.sueiro@gmail.com]
> >> *Sent:* Tuesday, February 01, 2011 7:34 AM
> >> *To:* Kamble, Nitin A
> >> *Cc:* yocto@yoctoproject.org
> >> *Subject:* Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1
> >>
> >> Nitin,
> >>
> >> After removing:
> >>
> >> echo "/* GNU ld script
> >>
> >> Use the shared library, but some functions are only in
> >>
> >> the static library. */
> >>
> >> GROUP ( libgcc_s.so.1 libgcc.a )" > ${D}${libdir}/libgcc_s.so
> >>
> >> from gcc-package-target.inc and gcc-package-cross.inc, the gcc 4.5.2
> was
> >> successfully compiled.
> >>
> >>
> >> And no kernel panic anymore. :-D
> >>
> >> I just want to understand what is wrong with gcc 4.5.1.
> >>
> >> Regards,
> >>
> >> --
> >> *dS
> >> Diego Sueiro
> >>
> >> Administrador do Portal Embarcados
> >> www.embarcados.com.br <http://www.embarcados.com.br>
> >>
> >> /*long live rock 'n roll*/
> >>
> >> On Tue, Feb 1, 2011 at 8:40 AM, Diego Sueiro <diego.sueiro@gmail.com
> >> <mailto:diego.sueiro@gmail.com>> wrote:
> >>
> >> Nitin,
> >>
> >> I got this error:
> >>
> >> /home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-
> poky-linux-gnueabi/arm-poky-linux-gnueabi-ld:
> >> /usr/lib/crti.o: Relocations in generic ELF (EM: 3)
> >>
> >> /home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-
> poky-linux-gnueabi/arm-poky-linux-gnueabi-ld:
> >> /usr/lib/crti.o: Relocations in generic ELF (EM: 3)
> >>
> >> /usr/lib/crti.o: could not read symbols: File in wrong format
> >>
> >> collect2: ld returned 1 exit status
> >>
> >> make[2]: *** [libgcc_s.so] Error 1
> >>
> >> make[2]: *** Waiting for unfinished jobs....
> >>
> >> arm-poky-linux-gnueabi-ranlib libgcc_eh.a
> >>
> >> arm-poky-linux-gnueabi-ranlib libgcc.a
> >>
> >> make[2]: Leaving directory
> >> `/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-
> cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-
> gnueabi/arm-poky-linux-gnueabi/libgcc'
> >>
> >> make[1]: *** [all-target-libgcc] Error 2
> >>
> >> make[1]: Leaving directory
> >> `/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-
> cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-
> gnueabi'
> >>
> >> make: *** [all] Error 2
> >>
> >> FATAL: oe_runmake failed
> >>
> >> Function 'do_compile' failed (see
> >> /home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-
> cross-intermediate-4.5.2-r3/temp/log.do_compile.646
> >> for further information)
> >>
> >> ERROR: Function 'do_compile' failed (see
> >> /home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-
> cross-intermediate-4.5.2-r3/temp/log.do_compile.646
> >> for further information)
> >>
> >>
> >> Regards,
> >>
> >> --
> >> *dS
> >> Diego Sueiro
> >>
> >> /*long live rock 'n roll*/
> >>
> >> On Mon, Jan 31, 2011 at 10:41 PM, Kamble, Nitin A
> >> <nitin.a.kamble@intel.com <mailto:nitin.a.kamble@intel.com>> wrote:
> >>
> >> Diego,
> >>
> >> Can you try with 4.5.2 gcc from this branch:
> >> http://git.pokylinux.org/cgit/cgit.cgi/poky-
> contrib/log/?h=3Dnitin/khem_gcc_nitin
> >>
> >> Thanks,
> >>
> >> Nitin
> >>
> >> *From:*yocto-bounces@yoctoproject.org
> >> <mailto:yocto-bounces@yoctoproject.org>
> >> [mailto:yocto-bounces@yoctoproject.org
> >> <mailto:yocto-bounces@yoctoproject.org>] *On Behalf Of *Diego Sueiro
> >> *Sent:* Monday, January 31, 2011 10:53 AM
> >> *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >> *Subject:* [yocto] Kernel Panics on armv4t with gcc.4.5.1
> >>
> >> Folks,
> >>
> >> I'm not a kernel and neither a gcc expert developer, and after
> searching
> >> for a solution for the last 2 weeks I've decided to appeal to the
> list.
> >>
> >> I'm trying to build a kernel image (2.6.32 and 2.6.30) for mini2440
> >> (armv4t) with Yocto Project (poky master branch) and I'm facing a
> >> strange issue.
> >>
> >> If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the
> kernel
> >> will panic on init (console printed message is attached for kernel
> >> 2.6.30 and 2.6.32).
> >>
> >> But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5)
> >> everything will be ok.
> >>
> >> Just for your reference these is the gcc recipes which I'm using:
> >>
> >> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-
> devtools/gcc
> >>
> >> http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-
> devtools/gcc
> >>
> >> I've compiled with and without thumb instructions, but the issue
> remains.
> >>
> >> I've tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch
> and
> >> gcc-arm-volatile-bitfield-fix.patch, but no success.
> >>
> >> Kind Regards,
> >>
> >> --
> >>
> >> *dS
> >> Diego Sueiro
> >>
> >> /*long live rock 'n roll*/
> >>
> >
> >
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

