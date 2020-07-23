Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.166.1595517635857784257
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 08:20:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CvQoBbhU;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mtownsend1973@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5CDCE01EF3; Thu, 23 Jul 2020 08:20:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.50 listed in list.dnswl.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mtownsend1973[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E88BE01EF1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2020 08:20:33 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id d11so3255931vsq.3
        for <yocto@yoctoproject.org>; Thu, 23 Jul 2020 08:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=G+LYIq2Ohxvmx5Wu+xH/vl7h9OPvzGYxyWbVblG0ERc=;
        b=CvQoBbhUkGCTyGrTpAeJWicUwDF+i0+34Psxt89UGxEFcoi3pBpxFa9AUcpgcz9y4G
         pLeqsB5aPN1wWu3UPLeTYy1CvISM9jv8VBYEqcF0vCBnxRdYwfwy0TQgbdvH74rvv5tH
         4luAhcleZdHLFmeMu2vR/LZtwY+JAD5drQbZ3PSJHHk4oG0EVx3h1WqMVlI24SE+Ez2S
         jYhVGjBKItuCkmkr9fwqxhfB6XPahlWkfxUtUnnsnQSyLxsPu17OI9yakNeV40EDlq3B
         K145b4GzpRdvyvfQxATf115cySv66dEQ/vEv5bv1M5ELYtFTU0mO5S+hGQ6P+43MIvry
         UYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=G+LYIq2Ohxvmx5Wu+xH/vl7h9OPvzGYxyWbVblG0ERc=;
        b=n9sE6B/9YAmDJCdo9jiiMqnw0wLEtB5urgG4HjNgCAmm59P+Vkl1wMCiq8L5lpksla
         fBBK2fA2NDWyP5p1Sag5wTNGCme50QRLupiqqUfWL0qi1zKRutVFTvw5wZgTDtKmHVYx
         4QRTw1WPP9btu8UKECu3mqLfI4Ut+B+B05LpokwICinvQSpSwlvwD1TaG5Oiygmujqvy
         O4FkEhHUK+yRq3JU1WA3fl+GRQkArtSk4rkoXjoiCZuiI+bbxehU/j1+0xc6AIyiGiTB
         IdGm4IUtV3/7nvIEbIbk2ws7uR4BQKhnk9SUN7YaQmo/GlVEBmtzqVV1q3Cb1wpaPDpg
         P4ug==
X-Gm-Message-State: AOAM53032UzuqbINHccfLDEhnoMb2MiAj2Xzu8LUayOL69Bv+/utCufn
	luNThMLOYgcA/CaNtWt4Rhbpja9IqZ3FBuQPvrk5zWdd
X-Google-Smtp-Source: ABdhPJxSXYDN93I3o/1FiHtMEl4qr4LrJePqBA2UT4LxBsB2LGJ56IXeDQOyC+KEUXh24+p/H1as3q5ReHD/kGfzQRs=
X-Received: by 2002:a67:fd1a:: with SMTP id f26mr4273416vsr.78.1595517632230;
 Thu, 23 Jul 2020 08:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <CABatt_ymLbE5pbPE9kxL6W6ytgTK-Kozd7Dk98q3qM--vMySuQ@mail.gmail.com>
 <CABatt_xV0n8Y1oaPU7Tv4s_nE6Dzh1o7WxmZ+WR9QRZNinck4A@mail.gmail.com>
In-Reply-To: <CABatt_xV0n8Y1oaPU7Tv4s_nE6Dzh1o7WxmZ+WR9QRZNinck4A@mail.gmail.com>
From: "Martin Townsend" <mtownsend1973@gmail.com>
Date: Thu, 23 Jul 2020 16:20:21 +0100
Message-ID: <CABatt_y2CR6ZJxgwOy_WLw-9qk_ve=M_w3HiXZL4R2W_t2z-mA@mail.gmail.com>
Subject: Re: Strange package QA errors
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 23, 2020 at 3:55 PM Martin Townsend <mtownsend1973@gmail.com> wrote:
>
> On Thu, Jul 23, 2020 at 3:11 PM Martin Townsend <mtownsend1973@gmail.com> wrote:
> >
> > Hi,
> >
> > I've just upgraded to the dunfell release and now get Package QA
> > errors like the following
> >
> > ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue: /usr/bin/dbus-daemon
> > contained in package dbus requires
> > libsystemd.so.0(LIBSYSTEMD_209)(64bit), but no providers found in
> > RDEPENDS_dbus? [file-rdeps]
> > ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue: /usr/bin/dbus-daemon
> > contained in package dbus requires libsystemd.so.0()(64bit), but no
> > providers found in RDEPENDS_dbus? [file-rdeps]
> > ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue:
> > /usr/lib/libdbus-1.so.3.19.11 contained in package dbus-lib requires
> > libsystemd.so.0()(64bit), but no providers found in RDEPENDS_dbus-lib?
> > [file-rdeps]
> > ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue:
> > /usr/lib/libdbus-1.so.3.19.11 contained in package dbus-lib requires
> > libsystemd.so.0(LIBSYSTEMD_209)(64bit), but no providers found in
> > RDEPENDS_dbus-lib? [file-rdeps]
> > ERROR: dbus-1.12.16-r0 do_package_qa: QA run found fatal errors.
> > Please consider fixing them.
> > ERROR: Logfile of failure stored in:
> > /ws/rufilla/octopus/octave-linux/build/tmp/work/aarch64-fsl-linux/dbus/1.12.16-r0/temp/log.do_package_qa.31770
> > ERROR: Task (/ws/rufilla/octopus/octave-linux/build/../sources/poky/meta/recipes-core/dbus/dbus_1.12.16.bb:do_package_qa)
> > failed with exit code '1'
> > ERROR: modemmanager-1.12.12-r0 do_package_qa: QA Issue:
> > /usr/sbin/ModemManager contained in package modemmanager requires
> > libsystemd.so.0(LIBSYSTEMD_209)(64bit), but no providers found in
> > RDEPENDS_modemmanager? [file-rdeps]
> > ERROR: modemmanager-1.12.12-r0 do_package_qa: QA Issue:
> > /usr/sbin/ModemManager contained in package modemmanager requires
> > libsystemd.so.0()(64bit), but no providers found in
> > RDEPENDS_modemmanager? [file-rdeps]
> > ERROR: modemmanager-1.12.12-r0 do_package_qa: QA run found fatal
> > errors. Please consider fixing them.
> > ERROR: Logfile of failure stored in:
> > /ws/rufilla/octopus/octave-linux/build/tmp/work/aarch64-fsl-linux/modemmanager/1.12.12-r0/temp/log.do_package_qa.31773
> > ERROR: Task (/ws/rufilla/octopus/octave-linux/build/../sources/meta-octopus/recipes-connectivity/modemanager/modemmanager_1.12.12.bb:do_package_qa)
> > failed with exit code '1'
> >
> > I've tried adding libsystemd to RDEPENDS but the error message still
> > appears.  Thinking it was something to do with my systemd appends I
> > removed it.  The above build errors disappeared but then I get similar
> > errors for usbutils this time with libudev.  I can't see why the
> > changes I have made to systemd would cause the errors above as
> > libsystemd is built and packaged.  I checked and libsystemd.so.0 is in
> > the recipe-sysroot directory for dbus and modemmanager and objdump
> > says that LIBSYSTEMD_209 is defined.
> >
> > Version definitions:
> > 1 0x01 0x0ae55a40 libsystemd.so.0
> > 2 0x00 0x0562c8b9 LIBSYSTEMD_209
> > 3 0x00 0x0562c8c1 LIBSYSTEMD_211
> > LIBSYSTEMD_209
> > 4 0x00 0x0562c8c3 LIBSYSTEMD_213
> > LIBSYSTEMD_211
> > 5 0x00 0x0562c8c4 LIBSYSTEMD_214
> > LIBSYSTEMD_213
> > 6 0x00 0x0562c8c6 LIBSYSTEMD_216
> > LIBSYSTEMD_214
> > 7 0x00 0x0562c8c7 LIBSYSTEMD_217
> > LIBSYSTEMD_216
> > 8 0x00 0x0562c8c9 LIBSYSTEMD_219
> > LIBSYSTEMD_217
> > 9 0x00 0x0562c8d0 LIBSYSTEMD_220
> > LIBSYSTEMD_219
> > 10 0x00 0x0562c8d1 LIBSYSTEMD_221
> > LIBSYSTEMD_220
> > 11 0x00 0x0562c8d2 LIBSYSTEMD_222
> > LIBSYSTEMD_221
> > 12 0x00 0x0562c8d6 LIBSYSTEMD_226
> > LIBSYSTEMD_222
> > 13 0x00 0x0562c8d7 LIBSYSTEMD_227
> > LIBSYSTEMD_226
> > 14 0x00 0x0562c8d9 LIBSYSTEMD_229
> > LIBSYSTEMD_227
> > 15 0x00 0x0562c8e0 LIBSYSTEMD_230
> > LIBSYSTEMD_229
> > 16 0x00 0x0562c8e1 LIBSYSTEMD_231
> > LIBSYSTEMD_230
> > 17 0x00 0x0562c8e2 LIBSYSTEMD_232
> > LIBSYSTEMD_231
> > 18 0x00 0x0562c8e3 LIBSYSTEMD_233
> > LIBSYSTEMD_232
> > 19 0x00 0x0562c8e4 LIBSYSTEMD_234
> > LIBSYSTEMD_233
> > 20 0x00 0x0562c8e6 LIBSYSTEMD_236
> > LIBSYSTEMD_234
> > 21 0x00 0x0562c8e7 LIBSYSTEMD_237
> > LIBSYSTEMD_236
> > 22 0x00 0x0562c8e8 LIBSYSTEMD_238
> > LIBSYSTEMD_237
> > 23 0x00 0x0562c8e9 LIBSYSTEMD_239
> > LIBSYSTEMD_238
> > 24 0x00 0x0562c8f0 LIBSYSTEMD_240
> > LIBSYSTEMD_239
> > 25 0x00 0x0562c8f1 LIBSYSTEMD_241
> > LIBSYSTEMD_240
> > 26 0x00 0x0562c8f3 LIBSYSTEMD_243
> > LIBSYSTEMD_241
> >
> > Is the file-rdeps check broken on aarch64/dunfell?  I'm building for
> > an i.MX EVK so I have the meta-freescale layer.
> >
> > The build configuration looks like this
> > Build Configuration:
> > BB_VERSION           = "1.46.0"
> > BUILD_SYS            = "x86_64-linux"
> > NATIVELSBSTRING      = "universal"
> > TARGET_SYS           = "aarch64-fsl-linux"
> > MACHINE              = "imx8mnevk"
> > DISTRO               = "octave-os"
> > DISTRO_VERSION       = "1.0.0"
> > TUNE_FEATURES        = "aarch64 cortexa53 crc crypto"
> > TARGET_FPU           = ""
> > meta
> > meta-poky            = "dunfell:c9ecbbc87a1f401ab040fde735a20ff05cb7bcd4"
> > meta-freescale       = "dunfell:901b192ff8652236607f423386aee496e3ae2730"
> > meta-oe
> > meta-networking
> > meta-python          = "dunfell:cc6fc6b1641ab23089c1e3bba11e0c6394f0867c"
> >
> > I can send more information if required, or happy to run any commands
> > to help debug this problem.
> >
> > I'll use INSANE_SKIP for the moment to get past this but would like to
> > get to the bottom of this in case there is a real problem.
> >
> > Many Thanks,
> > Martin.
>
> After reading through insane.bbclass the following might be useful
> from the pkgdata/runtime directory for modemmanager and systemd
>
> libsystemd
> ========
> PN: systemd
> PE: 1
> PV: 244.3
> PR: r0
> PKGE: 1
> PKGV: 244.3
> PKGR: r0
> LICENSE: GPLv2 & LGPLv2.1
> DESCRIPTION_libsystemd: Systemd systemd library
> SUMMARY_libsystemd: Systemd systemd library
> RDEPENDS_libsystemd: glibc (>= 2.31+git0+1094741224) libcap (>= 2.32)
> liblzma (>= 5.2.4)
> RPROVIDES_libsystemd:  libsystemd (=244.3)
> SECTION: base/shell
> PKG_libsystemd: libsystemd0
> FILES_libsystemd: /lib/libsystemd.so /lib/libsystemd.so.0
> /lib/libsystemd.so.0.27.1
> FILES_INFO: {"/lib/libsystemd.so.0": 20, "/lib/libsystemd.so.0.27.1": 750328}
> pkg_postinst_libsystemd: #!/bin/sh\nset -e\nif [ x"$D" = "x" ];
> then\n\tif [ -x /sbin/ldconfig ]; then /sbin/ldconfig ; fi\nfi\n
> FILERPROVIDESFLIST_libsystemd: /lib/libsystemd.so.0.27.1
> FILERPROVIDES_/lib/libsystemd.so.0.27.1_libsystemd:
> libsystemd.so.0(LIBSYSTEMD_209)(64bit)
> libsystemd.so.0(LIBSYSTEMD_211)(64bit)
> libsystemd.so.0(LIBSYSTEMD_211)(64bit)
> libsystemd.so.0(LIBSYSTEMD_213)(64bit)
> libsystemd.so.0(LIBSYSTEMD_213)(64bit)
> libsystemd.so.0(LIBSYSTEMD_214)(64bit) libsystemd.so.0(LIBSYSTEMD_214)
> (64bit) libsystemd.so.0(LIBSYSTEMD_216)(64bit)
> libsystemd.so.0(LIBSYSTEMD_216)(64bit)
> libsystemd.so.0(LIBSYSTEMD_217)(64bit)
> libsystemd.so.0(LIBSYSTEMD_217)(64bit)
> libsystemd.so.0(LIBSYSTEMD_219)(64bit)
> libsystemd.so.0(LIBSYSTEMD_219)(64bit)
> libsystemd.so.0(LIBSYSTEMD_220)(64bit)
> libsystemd.so.0(LIBSYSTEMD_220)(64bit
> ) libsystemd.so.0(LIBSYSTEMD_221)(64bit)
> libsystemd.so.0(LIBSYSTEMD_221)(64bit)
> libsystemd.so.0(LIBSYSTEMD_222)(64bit)
> libsystemd.so.0(LIBSYSTEMD_222)(64bit)
> libsystemd.so.0(LIBSYSTEMD_226)(64bit)
> libsystemd.so.0(LIBSYSTEMD_226)(64bit)
> libsystemd.so.0(LIBSYSTEMD_227)(64bit)
> libsystemd.so.0(LIBSYSTEMD_227)(64bit) libs
> ystemd.so.0(LIBSYSTEMD_229)(64bit)
> libsystemd.so.0(LIBSYSTEMD_229)(64bit)
> libsystemd.so.0(LIBSYSTEMD_230)(64bit)
> libsystemd.so.0(LIBSYSTEMD_230)(64bit)
> libsystemd.so.0(LIBSYSTEMD_231)(64bit)
> libsystemd.so.0(LIBSYSTEMD_231)(64bit)
> libsystemd.so.0(LIBSYSTEMD_232)(64bit)
> libsystemd.so.0(LIBSYSTEMD_232)(64bit) libsystemd
> .so.0(LIBSYSTEMD_233)(64bit) libsystemd.so.0(LIBSYSTEMD_233)(64bit)
> libsystemd.so.0(LIBSYSTEMD_234)(64bit)
> libsystemd.so.0(LIBSYSTEMD_234)(64bit)
> libsystemd.so.0(LIBSYSTEMD_236)(64bit)
> libsystemd.so.0(LIBSYSTEMD_236)(64bit)
> libsystemd.so.0(LIBSYSTEMD_237)(64bit)
> libsystemd.so.0(LIBSYSTEMD_237)(64bit) libsystemd.so.0(
> LIBSYSTEMD_238)(64bit) libsystemd.so.0(LIBSYSTEMD_238)(64bit)
> libsystemd.so.0(LIBSYSTEMD_239)(64bit)
> libsystemd.so.0(LIBSYSTEMD_239)(64bit)
> libsystemd.so.0(LIBSYSTEMD_240)(64bit)
> libsystemd.so.0(LIBSYSTEMD_240)(64bit)
> libsystemd.so.0(LIBSYSTEMD_241)(64bit)
> libsystemd.so.0(LIBSYSTEMD_241)(64bit) libsystemd.so.0(LIBSYS
> TEMD_243)(64bit) libsystemd.so.0(LIBSYSTEMD_243)(64bit) libsystemd.so.0()(64bit)
> FILERDEPENDSFLIST_libsystemd: /lib/libsystemd.so.0.27.1
> FILERDEPENDS_/lib/libsystemd.so.0.27.1_libsystemd:
> ld-linux-aarch64.so.1(GLIBC_2.17)(64bit) librt.so.1(GLIBC_2.17)(64bit)
> liblzma.so.5(XZ_5.0)(64bit) libpthread.so.0(GLIBC_2.17)(64bit)
> libc.so.6(GLIBC_2.25)(64bit) libc.so.6(GLIBC_2.28)(64bit)
> libc.so.6(GLIBC_2.26)(64bit) libc.so.6(GLIBC_2.30)(64bit)
> libc.so.6(GLIBC_
> 2.27)(64bit) libc.so.6(GLIBC_2.17)(64bit) librt.so.1()(64bit)
> liblzma.so.5()(64bit) libcap.so.2()(64bit) libpthread.so.0()(64bit)
> libc.so.6()(64bit) ld-linux-aarch64.so.1()(64bit) rtld(GNU_HASH)
> PKGSIZE_libsystemd: 750348
>
> modemmanager
> =============
> PN: modemmanager
> PV: 1.12.12
> ...
> [snip]
> ...
> FILERDEPENDS_/usr/sbin/ModemManager_modemmanager:
> libsystemd.so.0(LIBSYSTEMD_209)(64bit)
> libpthread.so.0(GLIBC_2.17)(64bit)
> ld-linux-aarch64.so.1(GLIBC_2.17)(64bit) libc.so.6(GLIBC_2.17)(64bit)
> libmm-glib.so.0()(64bit) libgmodule-2.0.so.0()(64bit)
> libgudev-1.0.so.0()(64bit) libqmi-glib.so.5()(64bit) libmbim-glib.so.
> 4()(64bit) libsystemd.so.0()(64bit) libgio-2.0.so.0()(64bit)
> libgobject-2.0.so.0()(64bit) libglib-2.0.so.0()(64bit)
> libpthread.so.0()(64bit) libc.so.6()(64bit)
> ld-linux-aarch64.so.1()(64bit) rtld(GNU_HASH)
> PKGSIZE_modemmanager: 4519132
>
> I can't see a problem, libsystemd as the correct FILERPROVIDES that
> modemmanager is looking for in its FILERDEPENDS
>
> The only thing I notice is that LIBSYSTEMD_209 appears only once in
> the FILERPROVIDES line whereas all the other versions appear twice.
> I'll add some debug to the insane.bbclass to see what is going on.

So the line

rdep_data = oe.packagedata.read_subpkgdata(rdep, d)

in insane.bbclass is not returning any PROVIDES lines when called with
'libsystemd' for rdep.

e.g. the following code with debug in
                    # For Saving the FILERPROVIDES, RPROVIDES and FILES_INFO
                    rdep_data = oe.packagedata.read_subpkgdata(rdep, d)
                    bb.warn("Getting (r/FILE)PROVIDES for %s" % rdep)
                    for key in rdep_data:
                        bb.warn("rdep_data key %s" % key)
                        if key.startswith("FILERPROVIDES_") or
key.startswith("RPROVIDES_"):
                            for subkey in bb.utils.explode_deps(rdep_data[key]):
                                bb.warn("Removing subkey %s" % subkey)
                                filerdepends.pop(subkey,None)

Produces:

WARNING: modemmanager-1.12.12-r0 do_package_qa: Getting
(r/FILE)PROVIDES for libsystemd
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key SECTION
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key FILES_INFO
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PKGSIZE_libsystemd
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key FILES_libsystemd
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PR
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PKGR
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PE
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key LICENSE
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PKG_libsystemd
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PN
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PV
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PKGV
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key SUMMARY_libsystemd
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key PKGE
WARNING: modemmanager-1.12.12-r0 do_package_qa: rdep_data key
DESCRIPTION_libsystemd

It's definitely there in the pkgdata/runtime meta data of the systemd
work directory:
more tmp/work/aarch64-fsl-linux/systemd/1_244.3-r0/pkgdata/runtime/libsystemd
PN: systemd
PE: 1
PV: 244.3
PR: r0
PKGE: 1
PKGV: 244.3
PKGR: r0
LICENSE: GPLv2 & LGPLv2.1
DESCRIPTION_libsystemd: Systemd systemd library
SUMMARY_libsystemd: Systemd systemd library
RDEPENDS_libsystemd: glibc (>= 2.31+git0+1094741224) libcap (>= 2.32)
liblzma (>= 5.2.4)
RPROVIDES_libsystemd:  libsystemd (=244.3)
SECTION: base/shell
PKG_libsystemd: libsystemd0
FILES_libsystemd: /lib/libsystemd.so /lib/libsystemd.so.0
/lib/libsystemd.so.0.27.1
FILES_INFO: {"/lib/libsystemd.so.0": 20, "/lib/libsystemd.so.0.27.1": 750328}
pkg_postinst_libsystemd: #!/bin/sh\nset -e\nif [ x"$D" = "x" ];
then\n\tif [ -x /sbin/ldconfig ]; then /sbin/ldconfig ; fi\nfi\n
FILERPROVIDESFLIST_libsystemd: /lib/libsystemd.so.0.27.1
FILERPROVIDES_/lib/libsystemd.so.0.27.1_libsystemd:
libsystemd.so.0(LIBSYSTEMD_209)(64bit)
libsystemd.so.0(LIBSYSTEMD_211)(64bit)
libsystemd.so.0(LIBSYSTEMD_211)(64bit)
libsystemd.so.0(LIBSYSTEMD_213)(64bit)
libsystemd.so.0(LIBSYSTEMD_213)(64bit)
libsystemd.so.0(LIBSYSTEMD_214)(64bit) libsystemd.so.0(LIBSYSTEMD_214)
(64bit) libsystemd.so.0(LIBSYSTEMD_216)(64bit)
libsystemd.so.0(LIBSYSTEMD_216)(64bit)
libsystemd.so.0(LIBSYSTEMD_217)(64bit)
libsystemd.so.0(LIBSYSTEMD_217)(64bit)
libsystemd.so.0(LIBSYSTEMD_219)(64bit)
libsystemd.so.0(LIBSYSTEMD_219)(64bit)
libsystemd.so.0(LIBSYSTEMD_220)(64bit)
libsystemd.so.0(LIBSYSTEMD_220)(64bit
) libsystemd.so.0(LIBSYSTEMD_221)(64bit)
libsystemd.so.0(LIBSYSTEMD_221)(64bit)
libsystemd.so.0(LIBSYSTEMD_222)(64bit)
libsystemd.so.0(LIBSYSTEMD_222)(64bit)
libsystemd.so.0(LIBSYSTEMD_226)(64bit)
libsystemd.so.0(LIBSYSTEMD_226)(64bit)
libsystemd.so.0(LIBSYSTEMD_227)(64bit)
libsystemd.so.0(LIBSYSTEMD_227)(64bit) libs
ystemd.so.0(LIBSYSTEMD_229)(64bit)
libsystemd.so.0(LIBSYSTEMD_229)(64bit)
libsystemd.so.0(LIBSYSTEMD_230)(64bit)
libsystemd.so.0(LIBSYSTEMD_230)(64bit)
libsystemd.so.0(LIBSYSTEMD_231)(64bit)
libsystemd.so.0(LIBSYSTEMD_231)(64bit)
libsystemd.so.0(LIBSYSTEMD_232)(64bit)
libsystemd.so.0(LIBSYSTEMD_232)(64bit) libsystemd
.so.0(LIBSYSTEMD_233)(64bit) libsystemd.so.0(LIBSYSTEMD_233)(64bit)
libsystemd.so.0(LIBSYSTEMD_234)(64bit)
libsystemd.so.0(LIBSYSTEMD_234)(64bit)
libsystemd.so.0(LIBSYSTEMD_236)(64bit)
libsystemd.so.0(LIBSYSTEMD_236)(64bit)
libsystemd.so.0(LIBSYSTEMD_237)(64bit)
libsystemd.so.0(LIBSYSTEMD_237)(64bit) libsystemd.so.0(
LIBSYSTEMD_238)(64bit) libsystemd.so.0(LIBSYSTEMD_238)(64bit)
libsystemd.so.0(LIBSYSTEMD_239)(64bit)
libsystemd.so.0(LIBSYSTEMD_239)(64bit)
libsystemd.so.0(LIBSYSTEMD_240)(64bit)
libsystemd.so.0(LIBSYSTEMD_240)(64bit)
libsystemd.so.0(LIBSYSTEMD_241)(64bit)
libsystemd.so.0(LIBSYSTEMD_241)(64bit) libsystemd.so.0(LIBSYS
TEMD_243)(64bit) libsystemd.so.0(LIBSYSTEMD_243)(64bit) libsystemd.so.0()(64bit)
FILERDEPENDSFLIST_libsystemd: /lib/libsystemd.so.0.27.1
FILERDEPENDS_/lib/libsystemd.so.0.27.1_libsystemd:
ld-linux-aarch64.so.1(GLIBC_2.17)(64bit) librt.so.1(GLIBC_2.17)(64bit)
liblzma.so.5(XZ_5.0)(64bit) libpthread.so.0(GLIBC_2.17)(64bit)
libc.so.6(GLIBC_2.25)(64bit) libc.so.6(GLIBC_2.28)(64bit)
libc.so.6(GLIBC_2.26)(64bit) libc.so.6(GLIBC_2.30)(64bit)
libc.so.6(GLIBC_
2.27)(64bit) libc.so.6(GLIBC_2.17)(64bit) librt.so.1()(64bit)
liblzma.so.5()(64bit) libcap.so.2()(64bit) libpthread.so.0()(64bit)
libc.so.6()(64bit) ld-linux-aarch64.so.1()(64bit) rtld(GNU_HASH)
PKGSIZE_libsystemd: 750348

oe.packagedata.read_subpkgdata(rdep, d) is reading pkgdata from
tmp/pkgdata/imx8mnevk/runtime/libsystemd
which contains
PN: systemd
PE: 1
PV: 244.3
PR: r0
PKGE: 1
PKGV: 244.3
PKGR: r0
LICENSE: GPLv2 & LGPLv2.1
DESCRIPTION_libsystemd: Systemd systemd library
SUMMARY_libsystemd: Systemd systemd library
SECTION: base/shell
PKG_libsystemd: libsystemd
FILES_libsystemd: /lib/libsystemd.so /lib/libsystemd.so.0
/lib/libsystemd.so.0.27.1
FILES_INFO: {"/lib/libsystemd.so.0": 20, "/lib/libsystemd.so.0.27.1": 6559864}
PKGSIZE_libsystemd: 6559884

So is it using the wrong pkgdata file? or is the above pkgdata file
missing FILERPROVIDES for some reason?
