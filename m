Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5316CE00D41; Thu, 19 Oct 2017 12:16:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C55E3E00C45
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 12:16:02 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id m16so10973043iod.1
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 12:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CvHn8vilwkY/OEUOKdUHzrywryOsYjBOnnyLzUyX9UA=;
	b=PG4B7bSQRPECyI6o1fQ0Vl8nGZ9gDKhBPDQKbwfyLef2SIanHLOpLR8BAO8svLbTSQ
	LthMciSBexFAoZDhbq0xLrA1K9za1VfHGVoKWi0e/yNpNrGIsWGBjXEPbs82n2yVAv57
	+b+ZaFMW6XJkmwkDK8Dud6ov6tpz+DewKag5j1WmYLu03M/nYljV0Q4aEbIEmI5e4IG5
	FwBz5SxeDH4tcnoOb3r+21RqtyEovlSWl1oWsqMjOHfr3G/GJ+xOR/ZRtpU8Bd7BkmR5
	MiHMfM6aeOAtbYnEVLdF7mnAtVkU/8miyigGXPdvuzjqUj92bqAWDjkU2OEWkuGtQ+/n
	Qv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CvHn8vilwkY/OEUOKdUHzrywryOsYjBOnnyLzUyX9UA=;
	b=OQjFEOiUqlPmpUJqwvYoLLEzivqQmKUSHEVYR1DO5Yzci/Tzm4+NcAaAgGjvIZVEiK
	aWT5Kja6gUIzdYcIu3OZGromcgbA33Z69nYBBDWE3jGPM0x0YQ0q8g4a/XT9TwbmgIvM
	tCuQscUS4wpZBCguEW5ueWaDWhm7mOnUjiwr1kao/liNmScvQzV1OtYjAKAfLmzKKaXu
	8pxSp8CSjIFhiN0l+ezoRXLcJVJ04kBaADKZEwjAWLMNRVPkoJSqbYJ1M5tUujBJ1Vnw
	Hz8wqORvpKATuEP/axk4hNhRQ3CinHi3xKmIv/iYaaogwEStxOmNCfepU4V6BLGGqIsi
	ww5g==
X-Gm-Message-State: AMCzsaXJ1LOBZ9E7c4Vp0ixS+wYLdImL9qws4xtSRxYRGnw6c7yPibRM
	u4Yn+uL1Ptpwsi5UMPloW871GN7KUvWhJwrXOHmfig==
X-Google-Smtp-Source: ABhQp+SJ0XeDJAnwQYG0DiTIKLLYsaM36DI+75+cY91leUS+oRWdn7Y99obju4uqgZ3fre25bVOIjU78fS+UDHn3sXY=
X-Received: by 10.107.18.67 with SMTP id a64mr3549989ioj.165.1508440561763;
	Thu, 19 Oct 2017 12:16:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 19 Oct 2017 12:15:41 -0700 (PDT)
In-Reply-To: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Oct 2017 20:15:41 +0100
Message-ID: <CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Thu, 19 Oct 2017 19:16:03 -0000
Content-Type: multipart/alternative; boundary="001a113ee9b2d95d1f055beb2fb9"

--001a113ee9b2d95d1f055beb2fb9
Content-Type: text/plain; charset="UTF-8"

On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com> wrote:

> I'm using latest origin/rocko
> (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
> beaglebone core-image-minimal. While build I got this QA error:
>
> ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
> Files/directories were installed but not shipped in any package:
>   /usr/share/i18n
>

I've seen this (and some other weird ones) in glibc-locales, and they've
always been resolved by just rebuilding the recipe. bitbake glibc-locale
-cclean && bitbake glibc-locale might well make it go away.

Ross

--001a113ee9b2d95d1f055beb2fb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 19 October 2017 at 12:10, Belisko Marek <span dir=3D"lt=
r">&lt;<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.b=
elisko@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;m using latest or=
igin/rocko<br>
(<wbr>65d23bd7986615fdfb0f1717b61553<wbr>4a2a14ab80) with no change to buil=
d<br>
beaglebone core-image-minimal. While build I got this QA error:<br>
<br>
ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:<br>
Files/directories were installed but not shipped in any package:<br>
=C2=A0 /usr/share/i18n<br></blockquote><div><br></div><div>I&#39;ve seen th=
is (and some other weird ones) in glibc-locales, and they&#39;ve always bee=
n resolved by just rebuilding the recipe. bitbake glibc-locale -cclean &amp=
;&amp; bitbake glibc-locale might well make it go away.</div><div><br></div=
><div>Ross</div></div></div></div>

--001a113ee9b2d95d1f055beb2fb9--
