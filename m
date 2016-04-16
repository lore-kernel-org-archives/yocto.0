Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98FB3E00E85; Fri, 15 Apr 2016 18:24:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A36C2E00E71
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:24:02 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id g185so150694814ioa.2
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=A7XA6R37+t2B7JoUEKrKdbQh+quMM8clPNB58vykJfk=;
	b=UHsaJKKKkXpeCPgxsHd9Oi5BrIkCGZH8FLAenuibUOv+7EdtNwXglWg5jo56KprAkG
	Nn5br3/0INkl6vPDxeVZLTAQpsmL3pewjzbkyEfHIPumRJNaDuD+1gSy6khDFmlcKURM
	XlZWeVH5jgnyKTkSrkRl87XE/d96SiFXBBUEzSOrfNr+qJryqfz0MQJAuEMH5Wm6c0xf
	M006Mxvj3n16PRazrO1Rx+YGDKOn55KIg7I48oBkgnxZyiTBgGu3Tj9GDEEFc/xecZoH
	8K4uUTCXMCMHAP9Nu+NtA9R1PeVJGB/IXuhHCD5hz8ofZRUgl+zy+pNvvwg/oYNKLQ7S
	OMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=A7XA6R37+t2B7JoUEKrKdbQh+quMM8clPNB58vykJfk=;
	b=Mp0A5eCpgOayBTTKZnupn0qB79xWA5Cnn1vDwuzFHFV1BNrXTxg+jlmqleMma46jGo
	5TFRKIQXVv0DXFTzs7szkjRGiW3tj/hi/uH2dEOawXSI6HIXpwPpf41x+RzcRYdSZTSw
	QhNnoyUAljXnOz2OAUtJAaYYtH+tVKe4EOSCDmci8am8wbFCdQRyFN+tvbzeZmXo6eHa
	Lir9zhNmrHhNg33MMaKGMCR9JBHVx0Nxie2aeM70R7tG5BPtPOl1m9yzWKdmns++uqRz
	gPUkLwOk1fet/n57snyuTUnteqxjAJNc1vuJfju61/0+F2+jZIzSMSvEWszu2+M5m7gj
	qHug==
X-Gm-Message-State: AOPr4FU0O0gUiPZfOyCNg06QdgxXi0y3MY5ObjFvNLmd+SaUX0D2lRVFuPxymu1SJHCV0Dqv/zTWlfQ6XPJs8w==
MIME-Version: 1.0
X-Received: by 10.107.137.33 with SMTP id l33mr25630963iod.27.1460769841818;
	Fri, 15 Apr 2016 18:24:01 -0700 (PDT)
Received: by 10.36.69.12 with HTTP; Fri, 15 Apr 2016 18:24:01 -0700 (PDT)
In-Reply-To: <FBBBC78B-8DAC-423E-A79B-5E64072D6EFE@gmail.com>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
	<1459619952-26621-2-git-send-email-raj.khem@gmail.com>
	<CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
	<CAMKF1spNx-DPTzvg9NnJrYDoy90ce1+Y7qb50hPLv3hv02WPoQ@mail.gmail.com>
	<CANwerB0+ScCiSOz2A6ioTXy0B+8SZkQ-qYz6=TiP5iR5DxnGJA@mail.gmail.com>
	<FBBBC78B-8DAC-423E-A79B-5E64072D6EFE@gmail.com>
Date: Sat, 16 Apr 2016 11:24:01 +1000
Message-ID: <CANwerB05ROkLrQOVDf8--NhPkRUWBCfjq-K=V0Cqi0=u5EqLiQ@mail.gmail.com>
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
X-List-Received-Date: Sat, 16 Apr 2016 01:24:19 -0000
Content-Type: text/plain; charset=UTF-8

Hi Khem,

On 14 April 2016 at 02:36, Khem Raj <raj.khem@gmail.com> wrote:
> Thats interesting, I will try to reproduce it

I have submitted a patch to the mailing list to bump the omxplayer
revision which fixes the issue.

>
> On Apr 13, 2016, at 7:21 AM, Jonathan Liu <net147@gmail.com> wrote:
>
> On Thursday, 14 April 2016, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Apr 13, 2016 at 3:05 AM, Jonathan Liu <net147@gmail.com> wrote:
>> > Hi Khem,
>> >
>> > On 3 April 2016 at 03:59, Khem Raj <raj.khem@gmail.com> wrote:
>> >> This helps in using this library when building
>> >> with PIE binaries
>> >>
>> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> >> ---
>> >>  .../0014-build-shared-library-for-vchostif.patch   | 28
>> >> ++++++++++++++++++++++
>> >>  recipes-graphics/userland/userland_git.bb          |  1 +
>> >>  2 files changed, 29 insertions(+)
>> >>  create mode 100644
>> >> recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>> >>
>> >> diff --git
>> >> a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>> >> b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>> >> new file mode 100644
>> >> index 0000000..ca7cb66
>> >> --- /dev/null
>> >> +++
>> >> b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>> >> @@ -0,0 +1,28 @@
>> >> +From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00 2001
>> >> +From: Khem Raj <raj.khem@gmail.com>
>> >> +Date: Sat, 2 Apr 2016 10:37:24 -0700
>> >> +Subject: [PATCH] build shared library for vchostif
>> >> +
>> >> +Fixes #149
>> >> +
>> >> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> >> +---
>> >> + interface/vmcs_host/CMakeLists.txt | 2 +-
>> >> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> >> +
>> >> +diff --git a/interface/vmcs_host/CMakeLists.txt
>> >> b/interface/vmcs_host/CMakeLists.txt
>> >> +index 22949a8..f8c2f2f 100755
>> >> +--- a/interface/vmcs_host/CMakeLists.txt
>> >> ++++ b/interface/vmcs_host/CMakeLists.txt
>> >> +@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
>> >> + #            ${VMCS_TARGET}/vmcs_main.c
>> >> + #  vc_vchi_haud.c
>> >> +
>> >> +-add_library(vchostif ${VCHOSTIF_SOURCE})
>> >> ++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})
>> >> +
>> >> + #add_library(bufman            vc_vchi_bufman.c            )
>> >> +
>> >> +--
>> >> +2.8.0
>> >> +
>> >> diff --git a/recipes-graphics/userland/userland_git.bb
>> >> b/recipes-graphics/userland/userland_git.bb
>> >> index efa2128..6ed8fcf 100644
>> >> --- a/recipes-graphics/userland/userland_git.bb
>> >> +++ b/recipes-graphics/userland/userland_git.bb
>> >> @@ -33,6 +33,7 @@ SRC_URI = "\
>> >>      file://0011-fix-cmake-dependency-race.patch \
>> >>      file://0012-Fix-enum-conversion-warnings.patch \
>> >>      file://0013-Fix-for-framerate-with-nested-composition.patch \
>> >> +    file://0014-build-shared-library-for-vchostif.patch \
>> >>      file://0015-wl-dispmanx-buffer-wrapping.patch \
>> >>  "
>> >>  S = "${WORKDIR}/git"
>> >> --
>> >> 2.8.0
>> >>
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> > This breaks omxplayer compilation when linking omxplayer.bin:
>> >
>> > [...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld:
>> > omxplayer.o: undefined reference to symbol
>> > 'vc_dispmanx_resource_write_data'
>> > [...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding
>> > symbols: DSO missing from command line
>>
>> Interestingly i dont see this error. Are you using gold ?
>> see if this library is on linker cmdline or not
>
> Using whatever is the default for OE-core in master branch.
>
>  | arm-custom-linux-gnueabi-g++  -march=armv7ve -marm
>  -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
> --sysroot=/home/build/git/pi2/build/tmp/sysroots/ra
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
> |
> /home/build/git/pi2/build/tmp/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld:
> omxplayer.o: undefined reference to symbol 'vc_dispmanx_resource_write_data'
> |
> /home/build/git/pi2/build/tmp/sysroots/raspberrypi2/usr/lib/libvchostif.so:
> error adding symbols: DSO
>  missing from command line
> | collect2: error: ld returned 1 exit status
> | Makefile:53: recipe for target 'omxplayer.bin' failed
> | make: *** [omxplayer.bin] Error 1

Regards,
Jonathan

