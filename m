Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15666E00C5D; Wed, 13 Apr 2016 07:22:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D32CDE00AF4
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 07:21:59 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id 2so71878497ioy.1
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 07:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=zH1TJnu0CA3wdgGbdQ2tjWQOfcQmz91g7XqPZkLuVdI=;
	b=lNBOISlCzhQfNAWYd+ZWEjfmAt8LsnJFvfXKTd/pd7ydJmgZueRD6l2oVAt5AsYQ5g
	d4XjNkp9Qd7blqotT1Sy36mfNDrqiUfODhFw9WeJoZHGebrJeDwBp18S6l4aUj/MOjiQ
	B+Pal/80qtDCoNPWLlGWg/O8gmfJWDY0Cn5oxmw4cp+I+LrJsDzM4TmkrDS3B6Xm6anh
	ojp1JfMv4Hvf7PGGSlPnTrNOz9WTdHyAglOagSEyIKRhiKh+GKugXHYrI9OVMiM1MD+F
	FvHVDwKxggZUxW231xUg6E9UW1l1TVs0BhpO2m97g9zjweNsKKP/LeFGDTb2wJFImKyg
	bLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=zH1TJnu0CA3wdgGbdQ2tjWQOfcQmz91g7XqPZkLuVdI=;
	b=Mh1/N25HgRxi6jEmFR+OMxm08f123sSDwYfvdUk50b69UgBb3Bx0yO+fpLlbhnbTAA
	81pc/5HVk+3VxhOutrrTR1V7OVKLBvG79qLSRW639IavRI1XFhHTTbk/hl97TLwnaoR2
	+hnBMrh39Ifyri8AqNRfqb4+QGNNlAUXP1MAy0QkHKFOb/d54GkxvpaIr4/j+FsuHoAK
	mW+yBOWFK3yE23RP2tP5k0UOQpWTDDhaeOUy6DyXJVuu1+IHHHHK4ryh/EUebUZxaYrM
	SDU7HO79XAhTXWySVsrMdhmX1+XF8+KLIjc4ycg9fTgktaopnnFUY8mVWrC1ij4uVezU
	kgoA==
X-Gm-Message-State: AOPr4FVJ0gRFiv4VEuk1KU3gjb46TlN/if7+eQygsBRNmQiXwoirXvd4UrHoYqksLQFdz14ziejA/MHt6kcV2g==
MIME-Version: 1.0
X-Received: by 10.107.175.228 with SMTP id p97mr1226431ioo.72.1460557319137;
	Wed, 13 Apr 2016 07:21:59 -0700 (PDT)
Received: by 10.36.188.70 with HTTP; Wed, 13 Apr 2016 07:21:58 -0700 (PDT)
In-Reply-To: <CAMKF1spNx-DPTzvg9NnJrYDoy90ce1+Y7qb50hPLv3hv02WPoQ@mail.gmail.com>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
	<1459619952-26621-2-git-send-email-raj.khem@gmail.com>
	<CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
	<CAMKF1spNx-DPTzvg9NnJrYDoy90ce1+Y7qb50hPLv3hv02WPoQ@mail.gmail.com>
Date: Thu, 14 Apr 2016 00:21:58 +1000
Message-ID: <CANwerB0+ScCiSOz2A6ioTXy0B+8SZkQ-qYz6=TiP5iR5DxnGJA@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Wed, 13 Apr 2016 14:22:04 -0000
Content-Type: multipart/alternative; boundary=001a11446ba82e702205305e808c

--001a11446ba82e702205305e808c
Content-Type: text/plain; charset=UTF-8

On Thursday, 14 April 2016, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Apr 13, 2016 at 3:05 AM, Jonathan Liu <net147@gmail.com
> <javascript:;>> wrote:
> > Hi Khem,
> >
> > On 3 April 2016 at 03:59, Khem Raj <raj.khem@gmail.com <javascript:;>>
> wrote:
> >> This helps in using this library when building
> >> with PIE binaries
> >>
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com <javascript:;>>
> >> ---
> >>  .../0014-build-shared-library-for-vchostif.patch   | 28
> ++++++++++++++++++++++
> >>  recipes-graphics/userland/userland_git.bb          |  1 +
> >>  2 files changed, 29 insertions(+)
> >>  create mode 100644
> recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
> >>
> >> diff --git
> a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
> b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
> >> new file mode 100644
> >> index 0000000..ca7cb66
> >> --- /dev/null
> >> +++
> b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
> >> @@ -0,0 +1,28 @@
> >> +From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00 2001
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
> >> +diff --git a/interface/vmcs_host/CMakeLists.txt
> b/interface/vmcs_host/CMakeLists.txt
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
> >> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> >> index efa2128..6ed8fcf 100644
> >> --- a/recipes-graphics/userland/userland_git.bb
> >> +++ b/recipes-graphics/userland/userland_git.bb
> >> @@ -33,6 +33,7 @@ SRC_URI = "\
> >>      file://0011-fix-cmake-dependency-race.patch \
> >>      file://0012-Fix-enum-conversion-warnings.patch \
> >>      file://0013-Fix-for-framerate-with-nested-composition.patch \
> >> +    file://0014-build-shared-library-for-vchostif.patch \
> >>      file://0015-wl-dispmanx-buffer-wrapping.patch \
> >>  "
> >>  S = "${WORKDIR}/git"
> >> --
> >> 2.8.0
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org <javascript:;>
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > This breaks omxplayer compilation when linking omxplayer.bin:
> >
> [...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld:
> > omxplayer.o: undefined reference to symbol
> > 'vc_dispmanx_resource_write_data'
> > [...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding
> > symbols: DSO missing from command line
>
> Interestingly i dont see this error. Are you using gold ?
> see if this library is on linker cmdline or not

Using whatever is the default for OE-core in master branch.

 | arm-custom-linux-gnueabi-g++  -march=armv7ve -marm
 -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/build/git/pi2/build/tmp/sysroots/ra
spberrypi2 -L/home/build/git/pi2/build/tmp/work/cor
texa7hf-neon-vfpv4-custom-linux-gnueabi/omxplayer/gi
t-r4/git/ffmpeg_compiled/usr/lib                   -
L/home/build/git/pi2/build/tmp/sysroots/raspberrypi
2/lib                   -L/home/build/git/pi2/build
/tmp/sysroots/raspberrypi2/usr/lib
 -L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2
-lEGL -lbcm_host -lopenmaxil -lfreetype -lz -o omxpl
ayer.bin linux/XMemUtils.o utils/log.o DynamicDll.o
utils/PCMRemap.o utils/RegExp.o OMXSubtitleTagSami.o
 OMXOverlayCodecText.o BitstreamConverter.o linux/RB
P.o OMXThread.o OMXReader.o OMXStreamInfo.o OMXAudio
CodecOMX.o OMXCore.o OMXVideo.o OMXAudio.o OMXClock.
o File.o OMXPlayerVideo.o OMXPlayerAudio.o OMXPlayer
Subtitles.o SubtitleRenderer.o Unicode.o Srt.o KeyCo
nfig.o OMXControl.o Keyboard.o omxplayer.o -lvchiq_a
rm -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec
 -lavformat -lswscale -lswresample -lpcre
|
/home/build/git/pi2/build/tmp/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld:
omxplayer.o: undefined reference to symbol 'vc_dispmanx_resource_write_data'
|
/home/build/git/pi2/build/tmp/sysroots/raspberrypi2/usr/lib/libvchostif.so:
error adding symbols: DSO
 missing from command line
| collect2: error: ld returned 1 exit status
| Makefile:53: recipe for target 'omxplayer.bin' failed
| make: *** [omxplayer.bin] Error 1

>
> >
> > Regards,
> > Jonathan
>

--001a11446ba82e702205305e808c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thursday, 14 April 2016, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.c=
om">raj.khem@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On =
Wed, Apr 13, 2016 at 3:05 AM, Jonathan Liu &lt;<a href=3D"javascript:;" onc=
lick=3D"_e(event, &#39;cvml&#39;, &#39;net147@gmail.com&#39;)">net147@gmail=
.com</a>&gt; wrote:<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; On 3 April 2016 at 03:59, Khem Raj &lt;<a href=3D"javascript:;" onclic=
k=3D"_e(event, &#39;cvml&#39;, &#39;raj.khem@gmail.com&#39;)">raj.khem@gmai=
l.com</a>&gt; wrote:<br>
&gt;&gt; This helps in using this library when building<br>
&gt;&gt; with PIE binaries<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Khem Raj &lt;<a href=3D"javascript:;" onclick=3D"_e=
(event, &#39;cvml&#39;, &#39;raj.khem@gmail.com&#39;)">raj.khem@gmail.com</=
a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 .../0014-build-shared-library-for-vchostif.patch=C2=A0 =C2=
=A0| 28 ++++++++++++++++++++++<br>
&gt;&gt;=C2=A0 recipes-graphics/userland/<a href=3D"http://userland_git.bb"=
 target=3D"_blank">userland_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 1 +<br>
&gt;&gt;=C2=A0 2 files changed, 29 insertions(+)<br>
&gt;&gt;=C2=A0 create mode 100644 recipes-graphics/userland/userland/0014-b=
uild-shared-library-for-vchostif.patch<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-graphics/userland/userland/0014-build-shared-=
library-for-vchostif.patch b/recipes-graphics/userland/userland/0014-build-=
shared-library-for-vchostif.patch<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 0000000..ca7cb66<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/recipes-graphics/userland/userland/0014-build-shared-library=
-for-vchostif.patch<br>
&gt;&gt; @@ -0,0 +1,28 @@<br>
&gt;&gt; +From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00=
 2001<br>
&gt;&gt; +From: Khem Raj &lt;<a href=3D"javascript:;" onclick=3D"_e(event, =
&#39;cvml&#39;, &#39;raj.khem@gmail.com&#39;)">raj.khem@gmail.com</a>&gt;<b=
r>
&gt;&gt; +Date: Sat, 2 Apr 2016 10:37:24 -0700<br>
&gt;&gt; +Subject: [PATCH] build shared library for vchostif<br>
&gt;&gt; +<br>
&gt;&gt; +Fixes #149<br>
&gt;&gt; +<br>
&gt;&gt; +Signed-off-by: Khem Raj &lt;<a href=3D"javascript:;" onclick=3D"_=
e(event, &#39;cvml&#39;, &#39;raj.khem@gmail.com&#39;)">raj.khem@gmail.com<=
/a>&gt;<br>
&gt;&gt; +---<br>
&gt;&gt; + interface/vmcs_host/CMakeLists.txt | 2 +-<br>
&gt;&gt; + 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt; +<br>
&gt;&gt; +diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_=
host/CMakeLists.txt<br>
&gt;&gt; +index 22949a8..f8c2f2f 100755<br>
&gt;&gt; +--- a/interface/vmcs_host/CMakeLists.txt<br>
&gt;&gt; ++++ b/interface/vmcs_host/CMakeLists.txt<br>
&gt;&gt; +@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE<br>
&gt;&gt; + #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${VMCS_TARGET}/vmcs_m=
ain.c<br>
&gt;&gt; + #=C2=A0 vc_vchi_haud.c<br>
&gt;&gt; +<br>
&gt;&gt; +-add_library(vchostif ${VCHOSTIF_SOURCE})<br>
&gt;&gt; ++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})<br>
&gt;&gt; +<br>
&gt;&gt; + #add_library(bufman=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vc_=
vchi_bufman.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>
&gt;&gt; +<br>
&gt;&gt; +--<br>
&gt;&gt; +2.8.0<br>
&gt;&gt; +<br>
&gt;&gt; diff --git a/recipes-graphics/userland/<a href=3D"http://userland_=
git.bb" target=3D"_blank">userland_git.bb</a> b/recipes-graphics/userland/<=
a href=3D"http://userland_git.bb" target=3D"_blank">userland_git.bb</a><br>
&gt;&gt; index efa2128..6ed8fcf 100644<br>
&gt;&gt; --- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb"=
 target=3D"_blank">userland_git.bb</a><br>
&gt;&gt; +++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb"=
 target=3D"_blank">userland_git.bb</a><br>
&gt;&gt; @@ -33,6 +33,7 @@ SRC_URI =3D &quot;\<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 file://0011-fix-cmake-dependency-race.patch \<=
br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 file://0012-Fix-enum-conversion-warnings.patch=
 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 file://0013-Fix-for-framerate-with-nested-comp=
osition.patch \<br>
&gt;&gt; +=C2=A0 =C2=A0 file://0014-build-shared-library-for-vchostif.patch=
 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 file://0015-wl-dispmanx-buffer-wrapping.patch =
\<br>
&gt;&gt;=C2=A0 &quot;<br>
&gt;&gt;=C2=A0 S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt; --<br>
&gt;&gt; 2.8.0<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39=
;yocto@yoctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt; This breaks omxplayer compilation when linking omxplayer.bin:<br>
&gt; [...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/a=
rm-custom-linux-gnueabi/5.3.0/ld:<br>
&gt; omxplayer.o: undefined reference to symbol<br>
&gt; &#39;vc_dispmanx_resource_write_data&#39;<br>
&gt; [...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding<br>
&gt; symbols: DSO missing from command line<br>
<br>
Interestingly i dont see this error. Are you using gold ?<br>
see if this library is on linker cmdline or not</blockquote><div>Using what=
ever is the default for OE-core in master branch.<span></span></div><div>=
=C2=A0</div><div>=C2=A0| arm-custom-linux-gnueabi-g++ =C2=A0-march=3Darmv7v=
e -marm</div><div>=C2=A0-mfpu=3Dneon-vfpv4 =C2=A0-mfloat-abi=3Dhard -mcpu=
=3Dcortex-a7=C2=A0</div><div>--sysroot=3D/home/build/git/pi2/build/tmp/sysr=
oots/ra</div><div>spberrypi2 -L/home/build/git/pi2/build/tmp/work/cor</div>=
<div>texa7hf-neon-vfpv4-custom-linux-gnueabi/omxplayer/gi</div><div>t-r4/gi=
t/ffmpeg_compiled/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 -</div><div>L/home/build/git/pi2/build/tmp/sysroots/raspberry=
pi</div><div>2/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -L/home/build/git/pi2/build</div><div>/tmp/sysroots/raspberrypi2/usr=
/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><d=
iv>=C2=A0-L./ -Lffmpeg_compiled/usr/lib/ -lc -lWFC -lGLESv2=C2=A0</div><div=
>-lEGL -lbcm_host -lopenmaxil -lfreetype -lz -o omxpl</div><div>ayer.bin li=
nux/XMemUtils.o utils/log.o DynamicDll.o=C2=A0</div><div>utils/PCMRemap.o u=
tils/RegExp.o OMXSubtitleTagSami.o</div><div>=C2=A0OMXOverlayCodecText.o Bi=
tstreamConverter.o linux/RB</div><div>P.o OMXThread.o OMXReader.o OMXStream=
Info.o OMXAudio</div><div>CodecOMX.o OMXCore.o OMXVideo.o OMXAudio.o OMXClo=
ck.</div><div>o File.o OMXPlayerVideo.o OMXPlayerAudio.o OMXPlayer</div><di=
v>Subtitles.o SubtitleRenderer.o Unicode.o Srt.o KeyCo</div><div>nfig.o OMX=
Control.o Keyboard.o omxplayer.o -lvchiq_a</div><div>rm -lvcos -ldbus-1 -lr=
t -lpthread -lavutil -lavcodec</div><div>=C2=A0-lavformat -lswscale -lswres=
ample -lpcre</div><div>| /home/build/git/pi2/build/tmp/sysroots/x86_64-linu=
x/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/l=
d: omxplayer.o: undefined reference to symbol &#39;vc_dispmanx_resource_wri=
te_data&#39;</div><div>| /home/build/git/pi2/build/tmp/sysroots/raspberrypi=
2/usr/lib/libvchostif.so: error adding symbols: DSO</div><div>=C2=A0missing=
 from command line</div><div>| collect2: error: ld returned 1 exit status</=
div><div>| Makefile:53: recipe for target=C2=A0&#39;omxplayer.bin&#39; fail=
ed</div><div>| make: *** [omxplayer.bin] Error 1</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
<br>
&gt;<br>
&gt; Regards,<br>
&gt; Jonathan<br>
</blockquote>

--001a11446ba82e702205305e808c--
