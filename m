Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEDAFE00C62; Sat, 12 Aug 2017 03:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4127E00B83
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 03:40:25 -0700 (PDT)
Received: by mail-yw0-f195.google.com with SMTP id u207so3575714ywc.0
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 03:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5JPX4JvKBvQKZ2chgDppHxTL0nYI9BdX3tGfPcwej4w=;
	b=qHRjqalmeLhgU4JOz9dQtilmHPyofSI++1IVlmXNPN3PkHk1ORExPTVmO5QsbT9/oP
	QubEtVlw3DWDc0jgCOeuYB4oAtode21U75ip/Q3WKcfuKXiSInldT6X5/oqkqdOJWFs/
	DQVsQOr2bm6GDUsAGuW2E88NUqcvRiSabOnpLu5vG74+EjViuT/2r3Lbssn1dvLxXh5L
	+bVqEGzVRR5VCXVLHSiGjMyo172md1j9nkGmX9gN/X16Vt0rM5KpVstFojecy53X0aHn
	0X7O9RmmqT4BQV5WIPui/lQx8Gb1NZu7YAnat/m3VhR8ekSPyJb1LEt7qAkK9lrSVd70
	jp4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5JPX4JvKBvQKZ2chgDppHxTL0nYI9BdX3tGfPcwej4w=;
	b=UzsXp6xfeUJg8X5RDiOcHi/ZTJ0yvG1ytFn8Y8KhuFB6hm+hodbqL77xZ7Nft2/m79
	FdpXzqsYUbKa2gyuRHgRDjXqJhg/vZ9vlFD5ssx3R6XtG55YuDew07YLeEenDphvL4WA
	Xvm4Gdohp1+O25uA6BiEbOUWUb07MqpStqW2S/23bzqZWT1hqpxqVr7IQnfwUTIR1Wam
	Sk8USYKv2c/BRPwTFg9AGE10dOUjxZov+KiTxnmTTJ7W8sEgY5kTlZBrIPNGj6yQg1tR
	F/SheAcJ14K1gfaLtL7LnDgAKPItLinYoc9K2GvYdBNT2frFsKGhax12UPi6pFxGxOl+
	Hjfw==
X-Gm-Message-State: AHYfb5hZ6QAaVI8AW3TS26+j857uOttxZRcIox0qA/k7WeXp9DS2vLzb
	AdCKzjlPdhQmUvjPpzrdjLqLvtsKmA==
X-Received: by 10.37.125.199 with SMTP id y190mr14394699ybc.358.1502534424685; 
	Sat, 12 Aug 2017 03:40:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.51.80 with HTTP; Sat, 12 Aug 2017 03:40:24 -0700 (PDT)
In-Reply-To: <CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
References: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
	<CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Sat, 12 Aug 2017 16:10:24 +0530
Message-ID: <CAGsrAHd6UirSR5A0pzG+wpYWvHSmzPbi13LwzFHRwz-Tkism1w@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Sat, 12 Aug 2017 10:40:28 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks for your response,
i have added those layers in bblayer.config...
still i'm getting the following errors...

root@(none):/u/hope_poky/poky_for_mon/poky/build# bitbake -k rpi-test-image
Loading cache: 100%
|#####################################################################################################################################|
Time: 0:00:03
Loaded 2811 entries from dependency cache.
Parsing recipes: 100%
|###################################################################################################################################|
Time: 0:00:01
Parsing of 2034 .bb files complete (2033 cached, 1 parsed). 2812
targets, 187 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'libav' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
NOTE: Runtime target 'omxplayer' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['omxplayer', 'libav']
NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-rpi-test',
'omxplayer', 'libav']
NOTE: Runtime target 'rpi-test-image' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['rpi-test-image',
'packagegroup-rpi-test', 'omxplayer', 'libav']
ERROR: Nothing PROVIDES 'libomxil' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: libomxil was skipped: because it has a restricted license not
whitelisted in LICENSE_FLAGS_WHITELIST
ERROR: libomxil was skipped: because it has a restricted license not
whitelisted in LICENSE_FLAGS_WHITELIST
ERROR: Nothing RPROVIDES 'omxplayer-dev' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'omxplayer-dev'
NOTE: Runtime target 'omxplayer-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['omxplayer-dev']

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
meta-oe
meta-multimedia
meta-python
meta-networking   = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"

ERROR: All buildable tasks have been run but the build is incomplete
(--continue mode). Errors for the tasks that failed will have been
printed above.    | ETA:  0:00:16
ERROR: Command execution failed: 1

Summary: There were 5 ERROR messages shown, returning a non-zero exit code.


most of the folders above are present in poky/meta/recipies-multimedia...
but i have added the meta layer in the bblayer.conf...
so how to resolve this error?

On 8/12/17, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:
> On 12 August 2017 at 11:08, mohammed aqdam <mohammedaqdam@gmail.com> wrote:
>>
>> to enable camera i was trying with rpi-test-image, after adding
>> meta-openembedded layer into bblayer.conf, when i run bitbake i got
>> this errors...
>>
>> root@(none):/u/hope_poky/poky_for_mon/poky/build# bitbake -k
> rpi-test-image
>> Parsing recipes: 100%
>>
> |###################################################################################################################################|
>> Time: 0:05:39
>> Parsing of 1518 .bb files complete (0 cached, 1518 parsed). 2129
>> targets, 159 skipped, 0 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-1080p' (but
>>
> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/
> packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>
>
> When you add a layer into your setup you should read the layer  README for
> the instructions and dependencies. In his case meta-raspberrypi README says
> that you need meta-oe, meta-multimedia, meta-networking and meta-python
> layers but looking at your build info...
>
>> meta
>> meta-poky
>> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
>> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
>> meta-oe           = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"
>
> ... it looks like meta-multimedia, meta-python and meta-networking layers
> (all part of meta-openembedded repo) are missing from bblayers.conf.
>
> Hope this helps,
>   Jussi
>

