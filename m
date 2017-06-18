Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FDA5E00AF0; Sun, 18 Jun 2017 12:18:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F6C1E00718
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 12:18:05 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id g83so20550009qkb.3
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 12:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YtSkBe8t2Piu4Fze8q42FI0CR62rKvjEIPSdmG0dHFw=;
	b=JIR/lU2HtFgB0lK7bIn3qggbrnGm7b5FMcP/VkIQGkLctiIJ2z+A9vsJmKnEHkGWCN
	v9BnGNK+Guf06pNmuGwQxpkLKA0VSEtVh9l/TI0crJS8l23tHsdGfMGNcfQT3A6sfiQD
	NHXLnm05z+ZVUKY3jDAKqi16M9uXXNCyI978J48s1Z2yGf5yWrlKOPbizIijJO3Shc2x
	cvO5V06vZ1XHiLmMHbEvLYQoZrXelDlsknF3/Tk2zH+DVkLPO23h/9XjmZZtCZoq02FO
	hgSMttyWhDn/Mobc6mK885/r/jpegKzfU7bqkDpb/LX5gjfGYzsAqk9vWR5DBihNrL9O
	XUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YtSkBe8t2Piu4Fze8q42FI0CR62rKvjEIPSdmG0dHFw=;
	b=RlN9opUs6MXbivvXzfwMwKougGE3foTFUfRne2GEuzQ1+WD/f1ULLXoO4kxKAwVccR
	MEyK/gdvnHX2QCfImKHgdU7y3W7krrDEWQbQoi8hYQcf8npQCJVIYk0JEzbquwrVMmhm
	E1SkgPAv4oS3iTeyjN0d0qSAom4BVH4C+miC+F7M4GeIBgcG6ztifUGeht/Kez3i7hY2
	7i7QlttUnu/j6D1WZ3NZhETzSgLstvNIACL2m7V2EJhCvK45i8fUeXdghr/GQykSWwhi
	kY4cNSU3cjpxSdFO2dt0VkMteKS2TXzGnDxn6tNkKlKci7vNL/jMkK6yS0xzm61cCFBX
	Wg+A==
X-Gm-Message-State: AKS2vOz199P9uZlRJqMIfICcEROgawN/RlNhxwAG+en2ljf4raeUu5c3
	4/M4wZTfNq6qJcriRPsfm8bOufzJuwhk
X-Received: by 10.55.181.69 with SMTP id e66mr23095113qkf.109.1497813485006;
	Sun, 18 Jun 2017 12:18:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Sun, 18 Jun 2017 12:17:44 -0700 (PDT)
In-Reply-To: <6bd2859e-81c5-3089-f8fe-44bd2c24bf96@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<6bd2859e-81c5-3089-f8fe-44bd2c24bf96@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 18 Jun 2017 20:17:44 +0100
Message-ID: <CAJTo0Larp6KyHDWNvA+b4CQ-jHdHMo2OAgYr-dQu+2-M4qcYYA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd image to sdcard ?
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
X-List-Received-Date: Sun, 18 Jun 2017 19:18:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d222b6c80d055240e0fd"

--94eb2c05d222b6c80d055240e0fd
Content-Type: text/plain; charset="UTF-8"

On 18 June 2017 at 12:48, Riko Ho <antonius.riko@gmail.com> wrote:

> Which one of these files can be downloaded by "dd" directly to SDcard ? or
> how to write it to sdcard ?
>

The beaglebone BSP doesn't write a SD card image (although it probably
should now that wic exists).  Google has various pages explaining how a
beaglebone needs a SD card to be formatted,
https://github.com/linneman/planck/wiki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black
was near the top of my search.

Ross

--94eb2c05d222b6c80d055240e0fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 June 2017 at 12:48, Riko Ho <span dir=3D"ltr">&lt;<a href=3D"mailto:a=
ntonius.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rg=
b(204,204,204);padding-left:1ex"><div id=3D"gmail-:6z7" class=3D"gmail-a3s =
gmail-aXjCH gmail-m15cbb0a8ebd62365">Which one of these files can be downlo=
aded by &quot;dd&quot; directly to SDcard ? or how to write it to sdcard ?<=
br></div></blockquote></div><br>The beaglebone BSP doesn&#39;t write a SD c=
ard image (although it probably should now that wic exists).=C2=A0 Google h=
as various pages explaining how a beaglebone needs a SD card to be formatte=
d,=C2=A0<a href=3D"https://github.com/linneman/planck/wiki/How-to-create-a-=
Boot-SD-Card-for-the-BeagleBone-black">https://github.com/linneman/planck/w=
iki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black</a> was near the =
top of my search.</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">Ross</div></div>

--94eb2c05d222b6c80d055240e0fd--
