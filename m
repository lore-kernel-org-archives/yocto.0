Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE981E00CC9; Fri,  8 Jan 2016 01:09:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6DB5E0079A
	for <yocto@yoctoproject.org>; Fri,  8 Jan 2016 01:09:46 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id 1so233325684ion.1
	for <yocto@yoctoproject.org>; Fri, 08 Jan 2016 01:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=PDel8973SeSdTesbeBJQtBgGJb0NByY3iaVscGC4oeY=;
	b=eqISylRelWvYEfCVY3AD6a1OJVaVncftkhbdUjjdkNvYgRZSakJ35BQHEQUvMbFc7Y
	ojlX0OgifgzIRhLUQwTc9B/6yrX3QGKGlFLOjNTyC4kc3nkTihjffjXTuhyhZl7fYEYP
	AEa/Dt2/ed3hUEvvv/SzRrRoKPE8+KTQFGikKGO8jpdaS+Gnchfb/QIfUQv6i7/rtUGd
	AIMNLCrK/Lw5MYcUVdgeqD+hcsaGHDlrbq9q9XihRLp+HSauyqEPiRoOcmr3G1EuKGzD
	ZH600aOJm8aQ4f38kGMEb+6Zga3kfhMUGawhbOPBPAWZwXGIaTMDY0xVYozOwJjjkUDY
	1Ttg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PDel8973SeSdTesbeBJQtBgGJb0NByY3iaVscGC4oeY=;
	b=ROsMD3nNLrU7Doi3acw/GnFhlCr6x7ps1I3u4akQv5HXRICqp8BKLHe8OQpifMbRqn
	Cj2hu6LTVcHyDk8kZkgwRY37ahTgCvHkD0HR8qzg21Nsa+g5zjJy4si6i72WnadPb0r6
	0gRRj9eVtel/OG+42YbyY+dEEUnSrPZirr/dZLLo4AYOHEgGC9RYXL7op1SC+Cz6cLxB
	emBFZAaIxI11JqWDcA73IUzbckpzPUqONr6mvjVvNFAHRvg4TYvY7EyiDWIwRKlcBCIX
	8io6Hcpc+1jPU7/81T0DxJA1wIbU9qcWB1HCXT+RM4Qgp97udaCRhHPW2cFpZymJeh47
	/okg==
X-Gm-Message-State: ALoCoQn+tDbC7Deg//A8vNxKyK5fYQC8QzBhB2ELLrggwwK0ZxVA+HS1fi2GXl8x8N0V56UA48ULz+LzQMGpoPaUA59HB9T4ucNLtUtfVwj92Ky9sifsnDQ=
X-Received: by 10.107.135.104 with SMTP id j101mr74140714iod.133.1452244185686;
	Fri, 08 Jan 2016 01:09:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 8 Jan 2016 01:09:26 -0800 (PST)
In-Reply-To: <1450569917-439-1-git-send-email-raj.khem@gmail.com>
References: <1450569917-439-1-git-send-email-raj.khem@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Jan 2016 09:09:26 +0000
Message-ID: <CAJTo0Lbbpd8gqaDPiMQsD_ynZEa2Q5T1i_-nHY-FhbA__g2Dvg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-yocto][PATCH] poky-tiny: Use musl for default system C library
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
X-List-Received-Date: Fri, 08 Jan 2016 09:09:49 -0000
Content-Type: multipart/alternative; boundary=001a113ebe92d0b8070528cef262

--001a113ebe92d0b8070528cef262
Content-Type: text/plain; charset=UTF-8

On 20 December 2015 at 00:05, Khem Raj <raj.khem@gmail.com> wrote:

> poky-tiny is reference for smallest footprint distro that can be
> generated using yocto project infrastructure. Therefore switch to using
> musl which gives the smallest footprint with a lot of extra stretching
> for adding new package if needed, core-image-minimal for qemux86 comes
> out to be 716K ( rootfs only ), boot tested on qemux86/poky-tiny
>

For anyone else reading, I just gave this a test locally, and for context
the previous poky-tiny was using a tuned glibc and the rootfs came in at
1.5M.

Ross

--001a113ebe92d0b8070528cef262
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 December 2015 at 00:05, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":45a" class=3D"a3s" st=
yle=3D"overflow:hidden">poky-tiny is reference for smallest footprint distr=
o that can be<br>
generated using yocto project infrastructure. Therefore switch to using<br>
<span class=3D"il">musl</span> which gives the smallest footprint with a lo=
t of extra stretching<br>
for adding new package if needed, core-image-minimal for qemux86 comes<br>
out to be 716K ( rootfs only ), boot tested on qemux86/poky-tiny</div></blo=
ckquote></div><br>For anyone else reading, I just gave this a test locally,=
 and for context the previous poky-tiny was using a tuned glibc and the roo=
tfs came in at 1.5M.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a113ebe92d0b8070528cef262--
