Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB7CAE00C38; Sun, 16 Oct 2016 10:24:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E989E00C2A
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 10:24:47 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id 83so5737019vkd.0
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 10:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UoBKkKx2X+8KVWM0zPf1y6Rb4VSAdNLIkLCelvz9N3A=;
	b=ChEe9orfao6eS5HbDOVinsUQWHVbqIa3UIrho90CRZqcUE8L5NJkQUKtR5oczwyKy5
	FeocMgpJo8kwD8FVp4MYH5NrLzQbWPSKQ6EvNPU9CZGPdMnKbXFmD2/51a89Oas0kWyw
	S3Df5aUdM9lyS0SYxJlEi0uuoYT90XED1xFnbjdxcCHIzfqKghNdBajFPMpm5x3ODni6
	C4pAlUfY/BVXVgHmVGpSBxlRCyoA3RL3wqnO9DLwsNazTSESCbJyUQetkwx5wGEPMqzU
	inw8vJSj1I+rd3VBQt1kJxt/ESy/WlSMidaSojrVqXMCp/yIzmR/0CtNBA4xk/kXK5OQ
	Y94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UoBKkKx2X+8KVWM0zPf1y6Rb4VSAdNLIkLCelvz9N3A=;
	b=Zw5/le6N0kNyVOQHs6c9Uj/iKxKJDH3oLPblMl8W3xVchudNb+G6Lg4jRb8jnuSvOD
	hY5KoIfosfejFuYRwmt+SnLUKO5NqB4l8qMcfmqA3yHT94C4WjROiZg8iN5a/8yN82+9
	ZAdqKqsViIERDlfka2XVL7lewRYZ29PQLOxD8i9aQbSJOh0WoagH6FgCNZq8kGhm9O8I
	xDSdlbRJ2DeoKuTJJCGoih6SxVUo5OCSrlcnD00VU7LS4jQajLZx76KbUElg5MFWcclA
	rBuKjUqj4fiYRMU20G+7SqqEsRgtLA3C+PwKUHuoClDuzcKjziH2KL2qQ8JvI4Oqgtlc
	avgw==
X-Gm-Message-State: AA6/9Rl+qBVAz+Nc9d4il0xJUy83Qa5vcKgQ/YmFQ8AhGsxMI8bA0tb0FUnskUU9Uf8D3OfeYG8HTZmwYTN3Rw==
X-Received: by 10.31.0.67 with SMTP id 64mr14224490vka.173.1476638686569; Sun,
	16 Oct 2016 10:24:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Sun, 16 Oct 2016 10:24:16 -0700 (PDT)
In-Reply-To: <HE1PR01MB18830C5B4949FDB8F3A42CBD92D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18830C5B4949FDB8F3A42CBD92D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Oct 2016 10:24:16 -0700
Message-ID: <CAMKF1sqHhk5NNfbkGgQ_uRmOM5PVVLEN-c+7kws4x4+6sGMnOQ@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3] Failed to build core-image-minimal with Qt5 support (GL/gl.h not found)
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
X-List-Received-Date: Sun, 16 Oct 2016 17:24:51 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 16, 2016 at 8:45 AM, Karim ATIKI <karim_atiki@hotmail.com> wrote:
> Hi all,
>
>
> I'm trying to a build a core-image-minimal for my RaspberryPi3 with Qt5
> support.
>
> I'm working with Poky Krogth  and master branches of meta-qt5 and
> meta-raspberrypi.
>
>
> The build failed at qtbase do_configure().
>
> It reports
>
>
> "| checking for OpenGL...
> | Cannot read
> /home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0/git/mkspecs/oe-device-extra.pri:
> No such file or directory
> | arm-poky-linux-gnueabi-g++  -march=armv7ve -marm -mfpu=neon-vfpv4
> -mfloat-abi=hard -mcpu=cortex-a7
> --sysroot=/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspberrypi3 -c
> -pipe  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0=/usr/src/debug/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0
> -fdebug-prefix-map=/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/x86_64-linux=
> -fdebug-prefix-map=/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspberrypi3=
> -fvisibility-inlines-hidden -O2 -Wall -W -fPIC
> -I../../../../git/config.tests/unix/opengldesktop -I.
> -I../../../../git/mkspecs/linux-oe-g++ -o opengldesktop.o
> ../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp
>
> | ../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp:43:19:
> fatal error: GL/gl.h: No such file or directory
>
> |  #include <GL/gl.h>
> "
>
> The OpenGL header files are not there.
> However, I've setup my local.conf as follow:
>
> DISTRO_FEATURES_remove = " x11 wayland"
> DISTRO_FEATURES_append = " opengl"
>
>
> IMAGE_INSTALL_append = "  qtbase \
>   kernel-modules \
>   qtdeclarative \
>   qtmultimedia \
>   qtsvg \
>   qtsensors \
>   qtimageformats \
>   qtsystems \
>   qtscript \
>   qt3d \
>   qtconnectivity \
>   qtlocation \
>   cinematicexperience \
>   qtgraphicaleffects \
>   qtquick1 \
>   qtwebkit \
>   binutils \
> "
>
> Is there something missing ?
> In addition, during the build, I saw "mesa-gl" getting installed correctly.

it currently have some vc4 support if you want mesa to work then use
vc4graphics in machine features.
otherwise the headers should come from userland package. Figure out
why mesa-gl is being pulled.

>
> But in the sysroot, I have only:
>
> ./tmp/sysroots/raspberrypi3/usr/include/GL/
> ./tmp/sysroots/raspberrypi3/usr/include/GL/internal/dri_interface.h
>
> But in the mesa-gl work dir, I can find:
>
> ./tmp/sysroots/raspberrypi3/usr/include/GL/
> ./tmp/sysroots/raspberrypi3/usr/include/GL/GL
> ./tmp/sysroots/raspberrypi3/usr/include/GL/GLES
> ./tmp/sysroots/raspberrypi3/usr/include/GL/GLES2
> ./tmp/sysroots/raspberrypi3/usr/include/GL/GLES3
> with all sub files...
>
>
> What's wrong with the build ?
>
>
> Cheers,
>
> Karim
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

