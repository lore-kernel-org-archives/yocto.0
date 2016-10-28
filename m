Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82266E00E0D; Thu, 27 Oct 2016 19:40:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70BE7E00DC8
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:40:21 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id n85so4192747pfi.3
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=NieF54qC4D/IxVTSV+3kqCZxjNqtlhm3z72OWW/Bq50=;
	b=u45SeiGR8Cq0vPJ+f67mL64HQ9m+6HC/DRQPijeG61OJyRhEP6METHbKnkksajL9Vu
	XYFGXSaX3J8ttBTEHHGf0WYcfPt1cwiyBXhkhCgoIExjTDS3F2UIWqiU88Ahp75pjONp
	+bIGMQcDWXnEWhNPMl7gQr1fvt3KdRQhZC1WLFUJbzZCRiaNgXShqM3EfrsIYC5pcL0/
	mqRcIWLQm0KFVs2eK3M/ikE0NyqmgETvPNK/PPBGxJ97o6MJdB9I4xjDoFKxFyMz70BC
	9ZEKRUXFMmXnN1iZDbaW/S+qhJwT6Mx9WCwibixJuYm6k/crrPSHah/GQ5ck4RX+DS9H
	erCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=NieF54qC4D/IxVTSV+3kqCZxjNqtlhm3z72OWW/Bq50=;
	b=hqT8Rb0qfNi1ZRT+o2UKTN2CwNkJob81uLY5rPELHEi8CYBie2tzDwQxxzEDcXWvW4
	FlZ/K9ntst9s8js0/TEzEMHfkDHxAXhE58VUtjUQR0WDcg7K6ANDRq27vvDwNgGA1DXz
	iMNo7idX8iNP1x7n5LN5PBN+6eApgatG0qvtKHj9/0DDfMCrPGyGc+x3pHdv+zG8kJDE
	dBki5a8XoIwIyf+f/OcCo/2lDA6M+P5ewPc2pcnJqtK43K9uhlphHJdJAazykECxEG1G
	Vg5kRd9Ckhbl+gp+48kfEBGIXSzoFbFAV3bDvAZbEJCKJRAXvCuZu0qANOMvHkW3DbU3
	R8HQ==
X-Gm-Message-State: ABUngvelI1I/czLwGZQh33VNkNMhmhR4QlJkmonYmrFbO3A0comcXZwOrgkwzTzAqGJ15g==
X-Received: by 10.98.34.7 with SMTP id i7mr20198087pfi.145.1477622420597;
	Thu, 27 Oct 2016 19:40:20 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:98cf:ea9b:f72:6b74?
	([2601:646:8882:b8c:98cf:ea9b:f72:6b74])
	by smtp.gmail.com with ESMTPSA id
	t7sm14618671pfa.22.2016.10.27.19.40.19
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 19:40:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161027221841.69b62716@nuc.betafive.co.uk>
Date: Thu, 27 Oct 2016 19:40:18 -0700
Message-Id: <8612ECF4-6483-4F43-B870-35B2412479D0@gmail.com>
References: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161027212610.33d285b0@nuc.betafive.co.uk>
	<20161027221841.69b62716@nuc.betafive.co.uk>
To: Paul Barker <paul@paulbarker.me.uk>
X-Mailer: Apple Mail (2.3124)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Fri, 28 Oct 2016 02:40:30 -0000
X-Groupsio-MsgNum: 32661
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A3CC7962-C798-4464-8EEF-8F36E5C1BEF4";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A3CC7962-C798-4464-8EEF-8F36E5C1BEF4
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Oct 27, 2016, at 2:18 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> 
> On Thu, 27 Oct 2016 21:26:10 +0100
> Paul Barker <paul@paulbarker.me.uk> wrote:
> 
>> On Wed, 26 Oct 2016 12:56:11 +0000
>> Karim ATIKI <karim_atiki@hotmail.com> wrote:
>> 
>>> Hi all,
>>> 
>>> 
>>> I'm currently unable to build gstreamer1.0-plugins-bad with a clean
>>> checkout of poky-krogoth and also poky-master with
>>> DISTRO_FEATURES_remove = " x11 wayland"
>>> 
>>> 
>>> It fails during the do_compile() task  of gstreamer1.0-plugins-bad
>>> with the following error message:
>>> 
>>> 
>>> undefined reference to graphics_get_display_size().
>>> 
>>> 
>>> This function comes with libbcmhost which is however installed with
>>> userland in sysroot.
>>> 
>>> 
>>> In addition, the log.do_configure of gstreamer1.0-plugins-bad
>>> detects bcm_host as well.
>>> 
>>> 
>>> If I change DISTRO_FEATURES_remove = " x11" it will work.
>>> 
>>> 
>>> I have tested with a minimal configuration & layers:
>>> 
>>> 
>>> Build Configuration:
>>> BB_VERSION        = "1.32.0"
>>> BUILD_SYS         = "x86_64-linux"
>>> NATIVELSBSTRING   = "Debian-8.2"
>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>> MACHINE           = "raspberrypi3"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "2.2"
>>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>>> callconvention-hard cortexa7" TARGET_FPU        = "hard"
>>> meta
>>> meta-poky
>>> meta-yocto-bsp    =
>>> "master:ef627ab364d52fe19994c94c1a78fbe21620a32c" meta-raspberrypi
>>> = "master:de016ceef63028f5578191785c50529695f76a1a" meta-oe
>>> meta-multimedia   = "master:8ba31c9ba214802b1305aabbc0be0353cba0bc3e
>>> 
>>> 
>>> and simply launched:
>>> 
>>> 
>>> bitbake -k  gstreamer1.0-plugins-bad
>>> 
>>> 
>> 
>> I've managed to reproduce your issue. Here's the interesting bits of a
>> diff between the do_configure logs, lines removed only exist in the
>> successful build, lines added only exist in the failed build:
>> 
>>    @@ -1289,24 +1013,33 @@
>>     checking for winsock2.h... no
>>     checking for X... no
>>     configure: No package 'x11' found
>>    +checking for GLES2... yes
>>     checking EGL/fbdev_window.h usability... no
>>     checking EGL/fbdev_window.h presence... no
>>     checking for EGL/fbdev_window.h... no
>>    -checking for bcm_host_init in -lbcm_host... no
>>    +checking for bcm_host_init in -lbcm_host... yes
>>    +checking bcm_host.h usability... yes
>>    +checking bcm_host.h presence... yes
>>    +checking for bcm_host.h... yes
>>    +checking for eglGetProcAddress in -lEGL... yes
>>    +checking EGL/egl.h usability... yes
>>    +checking EGL/egl.h presence... yes
>>    +checking for EGL/egl.h... yes
>>    +checking for glEnable in -lGLESv2... yes
>>    +checking GLES2/gl2.h usability... yes
>>    +checking GLES2/gl2.h presence... yes
>>    +checking for GLES2/gl2.h... yes
>>     checking for WAYLAND_EGL... no
>>     checking libdrm/drm_fourcc.h usability... no
>>     checking libdrm/drm_fourcc.h presence... no
>>     checking for libdrm/drm_fourcc.h... no
>>     checking for GST_ALLOCATORS... yes
>>    -host is arm-oe-linux-gnueabi
>>    +host is arm-poky-linux-gnueabi
>>     configure: WARNING: X or Wayland is required for OpenGL support
>>    -configure: WARNING: Either OpenGL or OpenGL|ES is required for
>>    OpenGL support -configure: WARNING: Could not find any OpenGL
>>    platforms to use such as CGL, WGL or GLX -configure: WARNING:
>> Could not find any window systems to use such as Cocoa, Win32API or
>> X11 -checking for GLeglImageOES... no -checking for GLchar... no
>>    -checking for GLsizeiptr... no
>>    -checking for GLintptr... no
>>    +checking for GLeglImageOES... yes
>>    +checking for GLchar... yes
>>    +checking for GLsizeiptr... yes
>>    +checking for GLintptr... yes
>>     checking for GLsync... no
>>     checking for GLuint64... no
>>     checking for GLint64... no
>>    @@ -1610,7 +1343,7 @@
>> 
>>     configure: *** checking feature: gl elements ***
>>     configure: *** for plug-ins: gl ***
>>    -configure: *** These plugins will not be built: gl
>>    +configure: *** These plugins will be built: gl
>> 
>>     configure: *** checking feature: Gtk+ elements ***
>>     configure: *** for plug-ins: gtk ***
>>    @@ -2101,6 +1834,7 @@
>>            dtls
>>            dvb
>>            fbdevsink
>>    +       gl
>>            hls
>>            neonhttpsrc
>>            rsvg
>>    @@ -2131,7 +1865,6 @@
>>            faad
>>            flite
>>            fluidsynth
>>    -       gl
>>            gme
>>            gsmenc gsmdec
>>            gtk
>> 
>> ie. In the successful build GLES wasn't detected, which led to the gl
>> plugin not being built, which led to the problem not occurring. That's
>> probably not helpful if you want to be able to use the gl plugin
>> though!
>> 
>> I'm trying to narrow down the differences between these two builds,
>> I'll let you know if I find out any more!
>> 
>> Thanks,
>> Paul
> 
> gstreamer1.0-plugins-bad compiles if x11, wayland and opengl are all
> missing from DISTRO_FEATURES. It fails if x11 and wayland are missing
> but opengl is included.
> 
> Should it compile if x11 and wayland are removed from DISTRO_FEATURES
> but opengl is included? I don't do much on the graphics side so I don't
> know if this makes sense as a configuration.

yes it should compile without x11 and wayland, OpenGL should mean egl
in this case.

> 
> Thanks,
> Paul
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A3CC7962-C798-4464-8EEF-8F36E5C1BEF4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgSupMACgkQuwUzVZGdMxQv+QCeKks8/WkjCTHqGoaL5iab1aSw
R10AoIF9UwS/eT+hnaUDTSma3Mj3wELe
=0P/D
-----END PGP SIGNATURE-----

--Apple-Mail=_A3CC7962-C798-4464-8EEF-8F36E5C1BEF4--
