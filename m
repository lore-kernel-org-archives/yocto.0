Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DB35E00CD8; Wed,  8 Jun 2016 02:29:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 736E7E00927
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 02:29:00 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id z189so121784418itg.0
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2016 02:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xuNxDUtvjYwCGkwDHbedc5hkQThoygYSr6qmUdNaHmY=;
	b=PDH8kKTU0GjGx6E6yCoojA6Bhf1jPOsE99fg7N40HeaEQRP4LbLR39rEcDCf3LSWo2
	B19n4FyTmt6jA+B343au8Ur+gKzzYuFaU2n3Ui7+7lXNOvurOABS+IzXVkbnGeFD87Ls
	HqRgcMx9PNsO92FGrOPw4/QLMAbXxzc8/TSTv4b3Z23n6kA7RIt0Hvs0YY7ZmqAoWIAk
	HXRJZKcNOrmrOpJxKySod2kli23+bCk6TosjGjg73sjO3g1emMxZuuM3Jedib0UfBzzb
	QZclHDWDbmxv0bKgm5DcQfWiVMpro3N1j2D+XrHfefjcN96lOsvd9CO5JAkLCsXs7dxh
	0Lpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xuNxDUtvjYwCGkwDHbedc5hkQThoygYSr6qmUdNaHmY=;
	b=YIREfGoGDXXLsB1zVwJBTgZpNTjvibzP0/EAHj3PD20Y6AszpzeieURJQzolgiQKQU
	UfMu5Jjd7vr4dScVmvBszMIoSc9ROTSz4ysx5pXLy1ETpvxJ8hMDiACniWz/LKYtUzoP
	CqoU5yUV34oq/ywV5eZ49/aGdJ3aiL6GD3rLE/FJ33h3dAkTyYD5NYv6t1wztGIXVbgS
	WLKAPR9MiTSvUqQ/KClRnVDQ7KF1RswGocPGiRM7qi5F4XYVD203a8ePrDe/YSubRi53
	7HIah4I+CEep0ffPi76DLXYjkWUPUh3gqkBsZ9czt4yu6X+mrOtuQQsmvYp6G6AClV1Z
	ECYg==
X-Gm-Message-State: ALyK8tLMcPKM6r9cFOENlv6cjMSS71YgoI55A8jBTDCAerT7+VfhVGjUoAaifMnPF0OnuFOSYIXfxOBpeGh7dzdj
X-Received: by 10.36.17.134 with SMTP id 128mr6382375itf.83.1465378140302;
	Wed, 08 Jun 2016 02:29:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 8 Jun 2016 02:28:40 -0700 (PDT)
In-Reply-To: <5757E356.4060309@elfin.de>
References: <5756B9D2.3000700@elfin.de>
	<CAJTo0LZa_9kevvq-P0qD21WtmYuVt7=ogt4VU2xCS6xX=LWetw@mail.gmail.com>
	<5757E356.4060309@elfin.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Jun 2016 10:28:40 +0100
Message-ID: <CAJTo0LZPtighVcO4kryfofzhDKt_ZXe5-z9a_VR01JzOWPFFgQ@mail.gmail.com>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DISTRO_FEATURES modification from image recipe?
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
X-List-Received-Date: Wed, 08 Jun 2016 09:29:05 -0000
Content-Type: multipart/alternative; boundary=001a1143f53a83c5ad0534c0ef8e

--001a1143f53a83c5ad0534c0ef8e
Content-Type: text/plain; charset=UTF-8

On 8 June 2016 at 10:20, piotr.lewicki <piotr.lewicki@elfin.de> wrote:

> I actually want to enable systemd in all packages, but my current DISTRO
> is "poky".
> Can you point me some documentation where I can get information on how to
> create a distro file based on poky and add systemd there?
>

http://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#creating-your-own-distribution

Ross

--001a1143f53a83c5ad0534c0ef8e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 June 2016 at 10:20, piotr.lewicki <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:piotr.lewicki@elfin.de" target=3D"_blank">piotr.lewicki@elfin.de</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border=
-left-style:solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFF=
F">I actually want to enable systemd in all packages, but my current
    DISTRO is &quot;poky&quot;.<br>
    Can you point me some documentation where I can get information on
    how to create a distro file based on poky and add systemd there?<br></d=
iv></blockquote></div><br><a href=3D"http://www.yoctoproject.org/docs/2.1/m=
ega-manual/mega-manual.html#creating-your-own-distribution">http://www.yoct=
oproject.org/docs/2.1/mega-manual/mega-manual.html#creating-your-own-distri=
bution</a><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--001a1143f53a83c5ad0534c0ef8e--
