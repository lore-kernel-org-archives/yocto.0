Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51E7CE00CF5; Thu, 16 Nov 2017 22:27:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7407FE00C82
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 22:27:29 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id y80so4280843wmd.0
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 22:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sN0PkD4ivHvZcfl6KXGG0M4e4cr7yBoFKOm1/UVtUBE=;
	b=jkgx/rBcwHK61EFoig5dXrNxan0lTqp2PLTvLpV9FWcT0LMBpvyIsW7jSHxCVNdgn5
	Qd1I42p8IMng6RwE3uxsafXowg2b5nrwwLU5yJV2FgXKEPDJXV7gLiVT86LK2GGfpowg
	upKtdlYJzgkMUMJQ5HsQMorg2JIASwfL9A43wFKairqFnUJBuklc+LQbWF53kgCgHPIH
	/LhieNwp6Efgum6wWBPsonld983qs9Vohh+Q86qQrZoTIH5Orkqzkqk2mmMSUO46WCnr
	KugUjZzG3nSSCZOZewiiuU6DRmQ7ZC2sccW+LU1PwQuADcigX90miGZ+fpo662QsaQGD
	Cbsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sN0PkD4ivHvZcfl6KXGG0M4e4cr7yBoFKOm1/UVtUBE=;
	b=IHcql3Ic8Ias07sa0lYaqLY2r+CNyjgYy4MX+4FuiKjzMW1Q4W7G/Q4IQMCikEKs1+
	Jd7kSE6BAfzSL3L+aTQ9rfsjPu/bruE/o0DusPXCmtLwXQkPrx567S6zpNdnA+/th44y
	T5S5EyKBHukkvEG7AJ4MFzkVgWmtCrPyYrh2QeoRPR5PkQRjYHF9W3RKMmAUKksCxTHa
	LqDIGILOdP68pPu7KAdm5r2bI/WPGDTcy+m5Uuph73ZL1qfSIXdcU0QfW8CYyZiU6zT0
	z97zrje5UZhC4rvoDh3oOg7ViHsKY9a0fl7+fq9fMMrMFXyn3YfgeBV3vpIKxu3/wi0b
	oKmQ==
X-Gm-Message-State: AJaThX63DIUH5aBEIkyNM1ORD8aQNyW7v6Yn9PQ9ZRdw0Kwn8j6WWtlq
	HlN8suK4f9ALtyuQDP7Z5fvBmRkRpl7vC0h4zGk=
X-Google-Smtp-Source: AGs4zMbcAIEgPvUskWx0zdMwwcllrVPrqWmJI7sxANXOIsfhQw0nR2lh/a01P0CkBtu/GBHULMtHk/s/fArtZJnmzwU=
X-Received: by 10.28.218.70 with SMTP id r67mr3003676wmg.14.1510900048260;
	Thu, 16 Nov 2017 22:27:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Thu, 16 Nov 2017 22:27:27 -0800 (PST)
In-Reply-To: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 17 Nov 2017 07:27:27 +0100
Message-ID: <CAGAf8Lwj_dyL9uEcUxWZ+Y-HjV-gqwmbGD1JoNKLjDowxYz26Q@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Fri, 17 Nov 2017 06:27:30 -0000
Content-Type: multipart/alternative; boundary="001a1145b934aaf584055e27d497"

--001a1145b934aaf584055e27d497
Content-Type: text/plain; charset="UTF-8"

> DISTRO = "poky-tiny"  and i  get the following

What is the difference between core-image-minimal and poky-tiny?

Thank you,
Zoran

On Fri, Nov 17, 2017 at 2:05 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hi
>
> i am trying to compile the yocto-tiny for raspberry pi by adding the
> distro to my local.conf
>
> DISTRO = "poky-tiny"  and i  get the following
>
>
> ERROR: nothing provides 'virtual/kernel'
> ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:
> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: linux-yocto Provides virtual/kernel but was skipped: incompatible
> with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
> ERROR: required build target 'rpi-basic-image' has no buildable providers.
> Missing or unbuildable depency chain was: 'rpi-basic-image',
> 'virtual/kernel'
>
>
> any body has a clue to solve it?
>
> thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1145b934aaf584055e27d497
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:12.8px">&gt; DISTRO =3D &quo=
t;poky-tiny&quot;=C2=A0 and i=C2=A0 get the following</span><br></div><div>=
<br></div>What is the difference between=C2=A0core-image-minimal and poky-t=
iny?<div><br></div><div>Thank you,</div><div>Zoran</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Nov 17, 2017 at 2:05 A=
M, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gma=
il.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div>=
<div><div><div><div>hi<br></div><br>i am trying to compile the yocto-tiny f=
or raspberry pi by adding the distro to my local.conf<br><br>DISTRO =3D &qu=
ot;poky-tiny&quot;=C2=A0 and i=C2=A0 get the following<br><br><br></div>ERR=
OR: nothing provides &#39;virtual/kernel&#39;<br></div>ERROR:
 linux-yocto-tiny Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:
 linux-yocto-rt Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:
 linux-yocto Provides virtual/kernel but was skipped: incompatible with=20
machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:=20
linux-yocto-dev Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR: =
required build target &#39;rpi-basic-image&#39; has no buildable providers.=
<br></div>Missing or unbuildable depency chain was: &#39;rpi-basic-image&#3=
9;, &#39;virtual/kernel&#39;<br><br><br></div><div>any body has a clue to s=
olve it?<br><br></div>thanks</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1145b934aaf584055e27d497--
