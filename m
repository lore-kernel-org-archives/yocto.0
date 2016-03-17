Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86DA2E00B9E; Thu, 17 Mar 2016 00:11:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC39EE00B70
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 00:11:18 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id k12so62409121lbb.1
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 00:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=duFGPu4QeHiwAVHGuqsOHYBH7CXaecuNqMFdBrPzzVw=;
	b=f2/3KtFO1apqwMGb8twuRPM7KjonJrfhPQE+qPTDK73oRu8IkFgXnk8c4mzcy4ZNNi
	aG/zoAQIbm79luHJdUhR4KjM+DwmeoenitMrYt9XOG4NOla1RmBYLpzgx2Dg6MlcCgPv
	WaLZGs6dgMAJGaZ/CC8evlTq54pefgGSEqY77hDK+vafoFB4zGbP+z0LF/nP/ve+URpg
	XU4xTmHoplY3OlBVkYznQfzGtKEoq5NoIo0XwZ7RUZCO89doaicz/PHnIuVY+jfiBKkO
	tVPilqlBgm1oJO3Mv9ykz1Wudsxfq9RgsjFDu6EsTriwMTIR0tbnQoxV+Kq3RrOEcsHs
	zdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=duFGPu4QeHiwAVHGuqsOHYBH7CXaecuNqMFdBrPzzVw=;
	b=IWVxxhbMKTfObH523oYQ4HsF+CuIYrxU0PGUVQYx9TNnAN63Dbl2blPuDa9J+lALun
	LAcVGiWJexa09MNY7fBLlKK/inF2lOxP2ljqNdvLEKS3uTzP2UJarIBBs8kZBmRVp/OD
	d9m6gODAq/pBLaSpUKdd5Luc3NrSYF9o69zhHCo9G2OiMuNChaYRmPtgKkHqFtmor3SM
	KJmgRJsb4w83+2NoM1WBoruv9JvPhMzcKGJjaGBpk4KH1W5clDXqSh+lDvwEKdsTbpPP
	OORA1E92CIP9nHv6xm7wcWsBbqrQyLg54wyJNBtr2QyJ+sUMjlpgtxui+rqp/uWScmDz
	Wm0Q==
X-Gm-Message-State: AD7BkJK7Zivo38Ehz/8Q0bxOboOZt7n6niyTpTA6tuBNJCekKdZOnkAm78bhcIw0tDS54fBwvWDEDzE2P51m4w==
MIME-Version: 1.0
X-Received: by 10.112.170.68 with SMTP id ak4mr2400520lbc.94.1458198677112;
	Thu, 17 Mar 2016 00:11:17 -0700 (PDT)
Received: by 10.112.199.10 with HTTP; Thu, 17 Mar 2016 00:11:17 -0700 (PDT)
In-Reply-To: <7024625.68jMvv6Lbg@valkyrie>
References: <7024625.68jMvv6Lbg@valkyrie>
Date: Thu, 17 Mar 2016 12:41:17 +0530
Message-ID: <CAOorjZT6u3kXG8nt2ADrc9FD3EPSsWn_HwQuV+12A+O=E7OKAw@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: David Weisgerber <david.weisgerber@ms-gmbh.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling raspberry2 with eglinfo-x11
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
X-List-Received-Date: Thu, 17 Mar 2016 07:11:20 -0000
Content-Type: text/plain; charset=UTF-8

What is your preferred GLES provider set to, userland or mesa?

On Wed, Mar 16, 2016 at 8:51 PM, David Weisgerber
<david.weisgerber@ms-gmbh.de> wrote:
> Hi,
>
> I have problems compiling eglinfo-x11 (as well as Qt 5 from meta-qt5) with
> egl.
>
> I have setup poky, meta-raspberrypi (and meta-qt5) from git and I am on
> branch master.
>
> My target is to get a distribution with working (hw acceleratetd) Qt5 with
> QML GUI. I have already spent some days on getting qteverywheredemo running
> but I did not succeed yet.
>
> As a first test I wanted to get eglinfo-x11 running but it gives the
> following error when compiling:
>
> [11/11] cxxprogram: build/release/src/json_writer.cpp.1.o
> build/release/src/log.cpp.1.o build/release/src/main.cpp.1.o
> build/release/src/process_egl.cpp.1.o build/release/src/scopes.cpp.1.o
> build/release/src/text_writer.cpp.1.o build/release/src/json-sax/json.c.1.o
> b
> uild/release/src/platform_x11_generic.cpp.1.o
> build/release/src/openvg_stats.cpp.1.o
> build/release/src/process_openvg.cpp.1.o -> build/release/eglinfo
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glDiscardFramebufferEXT'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glPointSizePointerOES'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_set_error_api'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_BindFramebuffer'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glintAttribPointer'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_state_free'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_FramebufferRenderbuffer'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_buffer_info_set'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_set_error'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_DeleteFramebuffers'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `gl11_client_state_init'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_GetFramebufferAttachmentParameteriv'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_IsRenderbuffer'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_GetRenderbufferParameteriv'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_DeleteRenderbuffers'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glBufferSubData'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_FramebufferTexture2D'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_BindRenderbuffer'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_GenerateMipmap'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_RenderbufferStorage'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_GenFramebuffers'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_GenRenderbuffers'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_CheckFramebufferStatus'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `gl20_client_state_init'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_buffer_info_get'
> /home/david/yocto/poky/build/tmp/sysroots/raspberrypi2/usr/lib/libEGL.so:
> undefined reference to `glxx_client_IsFramebuffer'
>
>
>
> It links to libEGL and libGLESv2. nm says that this symbols should be in
> libGLESv2 but it just does not catch them up somehow?
>
>
>
> My image is configured as follows:
>
> include recipes-core/images/rpi-hwup-image.bb
>
>
>
> GPU_MEM = "64"
>
>
>
> LICENSE_FLAGS_WHITELIST = "commercial"
>
>
>
>
>
>
>
> PACKAGECONFIG_append_pn-qtbase = "gles2"
>
>
>
> SPLASH = "psplash-custopi"
>
>
>
> ENABLE_SPI_BUS = "1"
>
>
>
> IMAGE_FEATURES += "ssh-server-openssh splash x11-sato"
>
> IMAGE_INSTALL_append = "qtbase qtbase-fonts custorouter custopi-gui
> packagegroup-core-full-cmdline bluez5 wireless-tools wpa-supplicant
> qt5everywheredemo fontconfig freetype packagegroup-core-x11-base
> packagegroup-core-x11-sato eglinfo-x11"
>
>
>
> IMAGE_LINGUAS ?= "de-de es-es fr-fr en-gb"
>
>
>
> Thanks for help!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

