Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CADDE00C22; Wed, 13 Apr 2016 09:36:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FAF6E007C5
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 09:36:09 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id er2so7345989pad.3
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 09:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=E+tY70qs8icqPgoLW0SmkTOF5D4p03SPCWD1AcxTyKs=;
	b=KA8LLLLkBj+NIOo8tEhMAYZm3iA8UecGA5oSQzH/+rjQoqBxxEOWHnikFMW4o/g9n9
	pKfL3mSkVRrhLXE2sZfqnq4ZkOp6gAfdH+okjmanUITl94yf0WROSPLvnDBjPYsv6S5m
	m6VMVaBVvRgNYzHjNUW5mLeqfiuB/FsDQp9TNatg95h67eYKvYDUS8svn2DvFeggaBSZ
	xj3eQff9+isidQaP7FX1ti0KMg5NkrmjhmAH28PWfUixhzMoDBjC2MqvqfzmkUBOfApV
	UCZgNdbe/+Lx02TqinOMkecDkUFWfyjS7FpL8UCDAC9THQe67F8YZ3PnzHAztNRUObn7
	iu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=E+tY70qs8icqPgoLW0SmkTOF5D4p03SPCWD1AcxTyKs=;
	b=HmxVZ1Il8KrSYs7mIqfiaioNKGlsm3Tmxn/gNuEpp9MCIU9Iq5GgWQxwCUocUPDq39
	llXKZQ3pnGBHMxvZocwAddGUhWmHKHAKjyzNhQxdY8w1j3LTXk4+vgXFHRlEqDkv7AEm
	6a4W9uaV4iHpymlXIP03K+VKy+XTfBpYoz20VB56wBWaGUBIJP103urRj25jGCubLF92
	GHhaO4mZcwWzw9eExEmzrNdAo/YFnRtoWRo1KK6eZcZc24VtmpdTclsh9RxjPbsOXjRi
	VCue5K5wbUnSrmVq+De+PVAZV5R3nZvHQqvAsGTJ0+YC8j28R2w/G2mL/0uubx/eLR7h
	rCrw==
X-Gm-Message-State: AOPr4FXRvxx6RIaRdmnOYJ1yHLbW1iasTnRZ0XawM/EA84S7q4nKMyVqD8TFp1yzdaNG8A==
X-Received: by 10.66.236.97 with SMTP id ut1mr14205011pac.24.1460565368932;
	Wed, 13 Apr 2016 09:36:08 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:4d18:bf8b:3814:e511?
	([2601:646:8800:5a9a:4d18:bf8b:3814:e511])
	by smtp.gmail.com with ESMTPSA id
	e87sm52176656pfb.76.2016.04.13.09.36.07
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Apr 2016 09:36:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwerB0+ScCiSOz2A6ioTXy0B+8SZkQ-qYz6=TiP5iR5DxnGJA@mail.gmail.com>
Date: Wed, 13 Apr 2016 09:36:07 -0700
Message-Id: <FBBBC78B-8DAC-423E-A79B-5E64072D6EFE@gmail.com>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
	<1459619952-26621-2-git-send-email-raj.khem@gmail.com>
	<CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
	<CAMKF1spNx-DPTzvg9NnJrYDoy90ce1+Y7qb50hPLv3hv02WPoQ@mail.gmail.com>
	<CANwerB0+ScCiSOz2A6ioTXy0B+8SZkQ-qYz6=TiP5iR5DxnGJA@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Make vchostif as shared library
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
X-List-Received-Date: Wed, 13 Apr 2016 16:36:14 -0000
X-Groupsio-MsgNum: 29412
Content-Type: multipart/signed;
	boundary="Apple-Mail=_AACB4B37-76FF-4F20-8D6A-D62130976EA2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_AACB4B37-76FF-4F20-8D6A-D62130976EA2
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EA354360-F0B0-47A5-8749-622A49762725"

--Apple-Mail=_EA354360-F0B0-47A5-8749-622A49762725
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Thats interesting, I will try to reproduce it

> On Apr 13, 2016, at 7:21 AM, Jonathan Liu <net147@gmail.com> wrote:
>=20
> On Thursday, 14 April 2016, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
> On Wed, Apr 13, 2016 at 3:05 AM, Jonathan Liu <net147@gmail.com =
<javascript:;>> wrote:
> > Hi Khem,
> >
> > On 3 April 2016 at 03:59, Khem Raj <raj.khem@gmail.com =
<javascript:;>> wrote:
> >> This helps in using this library when building
> >> with PIE binaries
> >>
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com <javascript:;>>
> >> ---
> >>  .../0014-build-shared-library-for-vchostif.patch   | 28 =
++++++++++++++++++++++
> >>  recipes-graphics/userland/userland_git.bb =
<http://userland_git.bb/>          |  1 +
> >>  2 files changed, 29 insertions(+)
> >>  create mode 100644 =
recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.=
patch
> >>
> >> diff --git =
a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchosti=
f.patch =
b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchosti=
f.patch
> >> new file mode 100644
> >> index 0000000..ca7cb66
> >> --- /dev/null
> >> +++ =
b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchosti=
f.patch
> >> @@ -0,0 +1,28 @@
> >> +=46rom 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 =
00:00:00 2001
> >> +From: Khem Raj <raj.khem@gmail.com <javascript:;>>
> >> +Date: Sat, 2 Apr 2016 10:37:24 -0700
> >> +Subject: [PATCH] build shared library for vchostif
> >> +
> >> +Fixes #149
> >> +
> >> +Signed-off-by: Khem Raj <raj.khem@gmail.com <javascript:;>>
> >> +---
> >> + interface/vmcs_host/CMakeLists.txt | 2 +-
> >> + 1 file changed, 1 insertion(+), 1 deletion(-)
> >> +
> >> +diff --git a/interface/vmcs_host/CMakeLists.txt =
b/interface/vmcs_host/CMakeLists.txt
> >> +index 22949a8..f8c2f2f 100755
> >> +--- a/interface/vmcs_host/CMakeLists.txt
> >> ++++ b/interface/vmcs_host/CMakeLists.txt
> >> +@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
> >> + #            ${VMCS_TARGET}/vmcs_main.c
> >> + #  vc_vchi_haud.c
> >> +
> >> +-add_library(vchostif ${VCHOSTIF_SOURCE})
> >> ++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})
> >> +
> >> + #add_library(bufman            vc_vchi_bufman.c            )
> >> +
> >> +--
> >> +2.8.0
> >> +
> >> diff --git a/recipes-graphics/userland/userland_git.bb =
<http://userland_git.bb/> b/recipes-graphics/userland/userland_git.bb =
<http://userland_git.bb/>
> >> index efa2128..6ed8fcf 100644
> >> --- a/recipes-graphics/userland/userland_git.bb =
<http://userland_git.bb/>
> >> +++ b/recipes-graphics/userland/userland_git.bb =
<http://userland_git.bb/>
> >> @@ -33,6 +33,7 @@ SRC_URI =3D "\
> >>      file://0011-fix-cmake-dependency-race.patch \
> >>      file://0012-Fix-enum-conversion-warnings.patch \
> >>      file://0013-Fix-for-framerate-with-nested-composition.patch \
> >> +    file://0014-build-shared-library-for-vchostif.patch \
> >>      file://0015-wl-dispmanx-buffer-wrapping.patch \
> >>  "
> >>  S =3D "${WORKDIR}/git"
> >> --
> >> 2.8.0
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org <javascript:;>
> >> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> >
> > This breaks omxplayer compilation when linking omxplayer.bin:
> > =
[...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-c=
ustom-linux-gnueabi/5.3.0/ld:
> > omxplayer.o: undefined reference to symbol
> > 'vc_dispmanx_resource_write_data'
> > [...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding
> > symbols: DSO missing from command line
>=20
> Interestingly i dont see this error. Are you using gold ?
> see if this library is on linker cmdline or not
> Using whatever is the default for OE-core in master branch.
>=20
>  | arm-custom-linux-gnueabi-g++  -march=3Darmv7ve -marm
>  -mfpu=3Dneon-vfpv4  -mfloat-abi=3Dhard -mcpu=3Dcortex-a7
> --sysroot=3D/home/build/git/pi2/build/tmp/sysroots/ra
> spberrypi2 -L/home/build/git/pi2/build/tmp/work/cor
> texa7hf-neon-vfpv4-custom-linux-gnueabi/omxplayer/gi
> t-r4/git/ffmpeg_compiled/usr/lib                   -
> L/home/build/git/pi2/build/tmp/sysroots/raspberrypi
> 2/lib                   -L/home/build/git/pi2/build
> /tmp/sysroots/raspberrypi2/usr/lib
>  -L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2
> -lEGL -lbcm_host -lopenmaxil -lfreetype -lz -o omxpl
> ayer.bin linux/XMemUtils.o utils/log.o DynamicDll.o
> utils/PCMRemap.o utils/RegExp.o OMXSubtitleTagSami.o
>  OMXOverlayCodecText.o BitstreamConverter.o linux/RB
> P.o OMXThread.o OMXReader.o OMXStreamInfo.o OMXAudio
> CodecOMX.o OMXCore.o OMXVideo.o OMXAudio.o OMXClock.
> o File.o OMXPlayerVideo.o OMXPlayerAudio.o OMXPlayer
> Subtitles.o SubtitleRenderer.o Unicode.o Srt.o KeyCo
> nfig.o OMXControl.o Keyboard.o omxplayer.o -lvchiq_a
> rm -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec
>  -lavformat -lswscale -lswresample -lpcre
> | =
/home/build/git/pi2/build/tmp/sysroots/x86_64-linux/usr/libexec/arm-custom=
-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld: omxplayer.o: =
undefined reference to symbol 'vc_dispmanx_resource_write_data'
> | =
/home/build/git/pi2/build/tmp/sysroots/raspberrypi2/usr/lib/libvchostif.so=
: error adding symbols: DSO
>  missing from command line
> | collect2: error: ld returned 1 exit status
> | Makefile:53: recipe for target 'omxplayer.bin' failed
> | make: *** [omxplayer.bin] Error 1
>=20
> >
> > Regards,
> > Jonathan


--Apple-Mail=_EA354360-F0B0-47A5-8749-622A49762725
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Thats interesting, I will try to reproduce it<div =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 13, 2016, at 7:21 AM, Jonathan Liu &lt;<a =
href=3D"mailto:net147@gmail.com" class=3D"">net147@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D"">On =
Thursday, 14 April 2016, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, Apr 13, =
2016 at 3:05 AM, Jonathan Liu &lt;<a href=3D"javascript:;" =
onclick=3D"_e(event, 'cvml', 'net147@gmail.com')" =
class=3D"">net147@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; Hi Khem,<br class=3D"">
&gt;<br class=3D"">
&gt; On 3 April 2016 at 03:59, Khem Raj &lt;<a href=3D"javascript:;" =
onclick=3D"_e(event, 'cvml', 'raj.khem@gmail.com')" =
class=3D"">raj.khem@gmail.com</a>&gt; wrote:<br class=3D"">
&gt;&gt; This helps in using this library when building<br class=3D"">
&gt;&gt; with PIE binaries<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; Signed-off-by: Khem Raj &lt;<a href=3D"javascript:;" =
onclick=3D"_e(event, 'cvml', 'raj.khem@gmail.com')" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D"">
&gt;&gt; ---<br class=3D"">
&gt;&gt;&nbsp; .../0014-build-shared-library-for-vchostif.patch&nbsp; =
&nbsp;| 28 ++++++++++++++++++++++<br class=3D"">
&gt;&gt;&nbsp; recipes-graphics/userland/<a =
href=3D"http://userland_git.bb/" target=3D"_blank" =
class=3D"">userland_git.bb</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; =
1 +<br class=3D"">
&gt;&gt;&nbsp; 2 files changed, 29 insertions(+)<br class=3D"">
&gt;&gt;&nbsp; create mode 100644 =
recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.=
patch<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; diff --git =
a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchosti=
f.patch =
b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchosti=
f.patch<br class=3D"">
&gt;&gt; new file mode 100644<br class=3D"">
&gt;&gt; index 0000000..ca7cb66<br class=3D"">
&gt;&gt; --- /dev/null<br class=3D"">
&gt;&gt; +++ =
b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchosti=
f.patch<br class=3D"">
&gt;&gt; @@ -0,0 +1,28 @@<br class=3D"">
&gt;&gt; +=46rom 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 =
00:00:00 2001<br class=3D"">
&gt;&gt; +From: Khem Raj &lt;<a href=3D"javascript:;" onclick=3D"_e(event,=
 'cvml', 'raj.khem@gmail.com')" class=3D"">raj.khem@gmail.com</a>&gt;<br =
class=3D"">
&gt;&gt; +Date: Sat, 2 Apr 2016 10:37:24 -0700<br class=3D"">
&gt;&gt; +Subject: [PATCH] build shared library for vchostif<br =
class=3D"">
&gt;&gt; +<br class=3D"">
&gt;&gt; +Fixes #149<br class=3D"">
&gt;&gt; +<br class=3D"">
&gt;&gt; +Signed-off-by: Khem Raj &lt;<a href=3D"javascript:;" =
onclick=3D"_e(event, 'cvml', 'raj.khem@gmail.com')" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D"">
&gt;&gt; +---<br class=3D"">
&gt;&gt; + interface/vmcs_host/CMakeLists.txt | 2 +-<br class=3D"">
&gt;&gt; + 1 file changed, 1 insertion(+), 1 deletion(-)<br class=3D"">
&gt;&gt; +<br class=3D"">
&gt;&gt; +diff --git a/interface/vmcs_host/CMakeLists.txt =
b/interface/vmcs_host/CMakeLists.txt<br class=3D"">
&gt;&gt; +index 22949a8..f8c2f2f 100755<br class=3D"">
&gt;&gt; +--- a/interface/vmcs_host/CMakeLists.txt<br class=3D"">
&gt;&gt; ++++ b/interface/vmcs_host/CMakeLists.txt<br class=3D"">
&gt;&gt; +@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE<br class=3D"">
&gt;&gt; + #&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
${VMCS_TARGET}/vmcs_main.c<br class=3D"">
&gt;&gt; + #&nbsp; vc_vchi_haud.c<br class=3D"">
&gt;&gt; +<br class=3D"">
&gt;&gt; +-add_library(vchostif ${VCHOSTIF_SOURCE})<br class=3D"">
&gt;&gt; ++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})<br class=3D"">
&gt;&gt; +<br class=3D"">
&gt;&gt; + #add_library(bufman&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
vc_vchi_bufman.c&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; )<br class=3D"">=

&gt;&gt; +<br class=3D"">
&gt;&gt; +--<br class=3D"">
&gt;&gt; +2.8.0<br class=3D"">
&gt;&gt; +<br class=3D"">
&gt;&gt; diff --git a/recipes-graphics/userland/<a =
href=3D"http://userland_git.bb/" target=3D"_blank" =
class=3D"">userland_git.bb</a> b/recipes-graphics/userland/<a =
href=3D"http://userland_git.bb/" target=3D"_blank" =
class=3D"">userland_git.bb</a><br class=3D"">
&gt;&gt; index efa2128..6ed8fcf 100644<br class=3D"">
&gt;&gt; --- a/recipes-graphics/userland/<a =
href=3D"http://userland_git.bb/" target=3D"_blank" =
class=3D"">userland_git.bb</a><br class=3D"">
&gt;&gt; +++ b/recipes-graphics/userland/<a =
href=3D"http://userland_git.bb/" target=3D"_blank" =
class=3D"">userland_git.bb</a><br class=3D"">
&gt;&gt; @@ -33,6 +33,7 @@ SRC_URI =3D "\<br class=3D"">
&gt;&gt;&nbsp; &nbsp; &nbsp; <a =
href=3D"file:///0011-fix-cmake-dependency-race.patch" =
class=3D"">file://0011-fix-cmake-dependency-race.patch</a> \<br =
class=3D"">
&gt;&gt;&nbsp; &nbsp; &nbsp; <a =
href=3D"file:///0012-Fix-enum-conversion-warnings.patch" =
class=3D"">file://0012-Fix-enum-conversion-warnings.patch</a> \<br =
class=3D"">
&gt;&gt;&nbsp; &nbsp; &nbsp; <a =
href=3D"file:///0013-Fix-for-framerate-with-nested-composition.patch" =
class=3D"">file://0013-Fix-for-framerate-with-nested-composition.patch</a>=
 \<br class=3D"">
&gt;&gt; +&nbsp; &nbsp; <a =
href=3D"file:///0014-build-shared-library-for-vchostif.patch" =
class=3D"">file://0014-build-shared-library-for-vchostif.patch</a> \<br =
class=3D"">
&gt;&gt;&nbsp; &nbsp; &nbsp; <a =
href=3D"file:///0015-wl-dispmanx-buffer-wrapping.patch" =
class=3D"">file://0015-wl-dispmanx-buffer-wrapping.patch</a> \<br =
class=3D"">
&gt;&gt;&nbsp; "<br class=3D"">
&gt;&gt;&nbsp; S =3D "${WORKDIR}/git"<br class=3D"">
&gt;&gt; --<br class=3D"">
&gt;&gt; 2.8.0<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; --<br class=3D"">
&gt;&gt; _______________________________________________<br class=3D"">
&gt;&gt; yocto mailing list<br class=3D"">
&gt;&gt; <a href=3D"javascript:;" onclick=3D"_e(event, 'cvml', =
'yocto@yoctoproject.org')" class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D"">
&gt;<br class=3D"">
&gt; This breaks omxplayer compilation when linking omxplayer.bin:<br =
class=3D"">
&gt; =
[...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-c=
ustom-linux-gnueabi/5.3.0/ld:<br class=3D"">
&gt; omxplayer.o: undefined reference to symbol<br class=3D"">
&gt; 'vc_dispmanx_resource_write_data'<br class=3D"">
&gt; [...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding<br =
class=3D"">
&gt; symbols: DSO missing from command line<br class=3D"">
<br class=3D"">
Interestingly i dont see this error. Are you using gold ?<br class=3D"">
see if this library is on linker cmdline or not</blockquote><div =
class=3D"">Using whatever is the default for OE-core in master =
branch.<span class=3D""></span></div><div class=3D"">&nbsp;</div><div =
class=3D"">&nbsp;| arm-custom-linux-gnueabi-g++ &nbsp;-march=3Darmv7ve =
-marm</div><div class=3D"">&nbsp;-mfpu=3Dneon-vfpv4 =
&nbsp;-mfloat-abi=3Dhard -mcpu=3Dcortex-a7&nbsp;</div><div =
class=3D"">--sysroot=3D/home/build/git/pi2/build/tmp/sysroots/ra</div><div=
 class=3D"">spberrypi2 =
-L/home/build/git/pi2/build/tmp/work/cor</div><div =
class=3D"">texa7hf-neon-vfpv4-custom-linux-gnueabi/omxplayer/gi</div><div =
class=3D"">t-r4/git/ffmpeg_compiled/usr/lib &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -</div><div =
class=3D"">L/home/build/git/pi2/build/tmp/sysroots/raspberrypi</div><div =
class=3D"">2/lib &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; -L/home/build/git/pi2/build</div><div =
class=3D"">/tmp/sysroots/raspberrypi2/usr/lib &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div class=3D"">&nbsp;-L./ =
-Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2&nbsp;</div><div =
class=3D"">-lEGL -lbcm_host -lopenmaxil -lfreetype -lz -o =
omxpl</div><div class=3D"">ayer.bin linux/XMemUtils.o utils/log.o =
DynamicDll.o&nbsp;</div><div class=3D"">utils/PCMRemap.o utils/RegExp.o =
OMXSubtitleTagSami.o</div><div class=3D"">&nbsp;OMXOverlayCodecText.o =
BitstreamConverter.o linux/RB</div><div class=3D"">P.o OMXThread.o =
OMXReader.o OMXStreamInfo.o OMXAudio</div><div class=3D"">CodecOMX.o =
OMXCore.o OMXVideo.o OMXAudio.o OMXClock.</div><div class=3D"">o File.o =
OMXPlayerVideo.o OMXPlayerAudio.o OMXPlayer</div><div =
class=3D"">Subtitles.o SubtitleRenderer.o Unicode.o Srt.o =
KeyCo</div><div class=3D"">nfig.o OMXControl.o Keyboard.o omxplayer.o =
-lvchiq_a</div><div class=3D"">rm -lvcos -ldbus-1 -lrt -lpthread =
-lavutil -lavcodec</div><div class=3D"">&nbsp;-lavformat -lswscale =
-lswresample -lpcre</div><div class=3D"">| =
/home/build/git/pi2/build/tmp/sysroots/x86_64-linux/usr/libexec/arm-custom=
-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld: omxplayer.o: =
undefined reference to symbol =
'vc_dispmanx_resource_write_data'</div><div class=3D"">| =
/home/build/git/pi2/build/tmp/sysroots/raspberrypi2/usr/lib/libvchostif.so=
: error adding symbols: DSO</div><div class=3D"">&nbsp;missing from =
command line</div><div class=3D"">| collect2: error: ld returned 1 exit =
status</div><div class=3D"">| Makefile:53: recipe for =
target&nbsp;'omxplayer.bin' failed</div><div class=3D"">| make: *** =
[omxplayer.bin] Error 1</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br class=3D"">
&gt;<br class=3D"">
&gt; Regards,<br class=3D"">
&gt; Jonathan<br class=3D"">
</blockquote>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_EA354360-F0B0-47A5-8749-622A49762725--

--Apple-Mail=_AACB4B37-76FF-4F20-8D6A-D62130976EA2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcOdXcACgkQuwUzVZGdMxRBBQCfTWBJXEdNLOOJhmsc29J/G3Z9
NgEAn06fX6ogDxnoHzRsTc7MQxnM+XE4
=369I
-----END PGP SIGNATURE-----

--Apple-Mail=_AACB4B37-76FF-4F20-8D6A-D62130976EA2--
