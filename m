Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2261.1580715149570480443
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 23:32:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDZayL8B;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E914E01698; Sun,  2 Feb 2020 23:32:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BD62E01696
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 23:32:27 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id r19so13489944ljg.3
        for <yocto@yoctoproject.org>; Sun, 02 Feb 2020 23:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zXhJiM8JM7qWdp1RQbqSJmlcxHw2Q2Xdj3WgQwz4VrY=;
        b=EDZayL8BVf5YEDBEu037XYOedCd0DhyXAG/lPjbXteaUqkG+gdrqwpnJWX5kugjL+1
         pNzaU7ZIZMq2p7SNJRY56f/sLx7LuRkMYmdo9ioyODCEHVfNh/Avow87eQJvUO41W7jo
         FTywrUmBUMJf2IGg/0ZVFwoC0dS3iTEILP2B2Vp376egLWt/0sJpk+oloHnezJ3hl+TF
         5baIIaFYYvoZlZ5oQLWVjCttKpPuqt0GYdMWeTLHjz10wHdMa1wO649lIWZW0Ctf0lMi
         jZ+6pwSBRNFGQQ7tK2Lpt831vd614mEYDN3p1YdLb4f67DxrYRNBf0MFHf2FBkq0QWRa
         FSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zXhJiM8JM7qWdp1RQbqSJmlcxHw2Q2Xdj3WgQwz4VrY=;
        b=TL8JN8isqYQPaclD/ZjmxkOwFCR2nV4qAL889zMn+MYGjqbvzNzetLuAIfajWdr3AL
         xCBXXJdrJ9xsAnoAZI3dmSJ0GTZjW3OLXWMbT5Dhd8wjL6vj06dQcyjOLlYCTJANnzPE
         RgPBxXXI5UIhvwNwaOXklZNK8HAgt/ZLOM+TWz06mzdoE6otRZ6DNij9uyJZIUjbDQWh
         E3I0sr1fQCoXyC0WO9ys80L4tTASQZEADWTzArSGxkUOR3oCp3472F2tY0qvuzQKQyW8
         MANKrXq83NumNVtDAjsIkGtajHpPgZfufq2CAJzmsGfaSldViHc/QESnMwgpPkWB0Pky
         VD8g==
X-Gm-Message-State: APjAAAVpwkVwRT20e9mhSHs8pt3TdC/rWCDWhrNiE17sfhBriIi09Gev
	dq40lc5GVGnZx1X52rAQSopOWUTMnksbdrDrLKE=
X-Google-Smtp-Source: APXvYqwZ1eSjnw/WWmABF2hOd7/PjhkRtCgkBtQc0gGx6IL3vOCuIJQgkXxW8BURB9EtfW0+CxPOlb43EcH3A7idq2Q=
X-Received: by 2002:a2e:94c8:: with SMTP id r8mr13139264ljh.28.1580715146229;
 Sun, 02 Feb 2020 23:32:26 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWSYJQSpDxwmYO=iKj50Cxxawq+N+E_ysXgEmE03AZPGEw@mail.gmail.com>
In-Reply-To: <CAA=hcWSYJQSpDxwmYO=iKj50Cxxawq+N+E_ysXgEmE03AZPGEw@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Mon, 3 Feb 2020 08:32:15 +0100
Message-ID: <CAAx3WaDzjpgZvQxBa0jyA=6oGJA61_yQ-79E2AFg_bk8yoa3AQ@mail.gmail.com>
Subject: Re: [yocto] How to make a local patch without a commit number, or will not be possible?
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c83c17059da6ecbd"

--000000000000c83c17059da6ecbd
Content-Type: text/plain; charset="UTF-8"

Hi JH,

since uboot migrated to kconfig for a while, I'd suggest you to patch the
Freescale's one with your custom machine defconfig and then specify the
UBOOT_MACHINE = "my_machine_defconfig"
in your machine conf file.
The process is the same as the kernel:
- make [...] <some_defconfig>
- make [...] menuconfig
- make [...] savedefconfig
Put the resulting defconfig in configs/ and rename it to
<my_machine_defconfig> and then generate a patch.
This patch can be applied through a bbappend to the freescale recipe.

Hope it helps,
Gabriele

On Mon, Feb 3, 2020 at 8:06 AM JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> I want to make a patch file for mx6ullevk.h in
> meta-freescale/recipes-bsp/u-boot/u-boot-imx_2017.03.bb, to customize
> mtdparts, bootcmd and bootargs as I could not find a simple way to do
> it in a bbapaend, but I got an error of unable to fetch URL from any
> source because the mx6ullevk.h.patch ls my local one, it does have a
> commit number. Is it possible to do it or not?
>
> In general, how did you customize u-boot mtdparts, bootcmd and
> bootarg? It is very common thing, but I don't see anyone talking about
> it. Is there a simple way I don't know? What could I be missing?
>
> Thank you.
>
> Kind regards,
>
>  -jh
> 
>

--000000000000c83c17059da6ecbd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi JH,</div><div><br></div><div>since uboot migrated =
to kconfig for a while, I&#39;d suggest you to patch the Freescale&#39;s on=
e with your custom machine defconfig and then specify the=C2=A0 <br></div><=
div>UBOOT_MACHINE =3D &quot;my_machine_defconfig&quot;</div><div>in your ma=
chine conf file.</div><div>The process is the same as the kernel:</div><div=
>- make [...] &lt;some_defconfig&gt;</div><div>- make [...] menuconfig</div=
><div>- make [...] savedefconfig</div><div>Put the resulting defconfig in c=
onfigs/ and rename it to &lt;my_machine_defconfig&gt; and then generate a p=
atch. <br></div><div>This patch can be applied through a bbappend to the fr=
eescale recipe. <br></div><div><br></div><div>Hope it helps,</div><div>Gabr=
iele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 3, 2020 at 8:06 AM JH &lt;<a href=3D"mailto:ju=
piter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I want to make a patch file for mx6ullevk.h in<br>
meta-freescale/recipes-bsp/u-boot/<a href=3D"http://u-boot-imx_2017.03.bb"=
 rel=3D"noreferrer" target=3D"_blank">u-boot-imx_2017.03.bb</a>, to customi=
ze<br>
mtdparts, bootcmd and bootargs as I could not find a simple way to do<br>
it in a bbapaend, but I got an error of unable to fetch URL from any<br>
source because the mx6ullevk.h.patch ls my local one, it does have a<br>
commit number. Is it possible to do it or not?<br>
<br>
In general, how did you customize u-boot mtdparts, bootcmd and<br>
bootarg? It is very common thing, but I don&#39;t see anyone talking about=
<br>
it. Is there a simple way I don&#39;t know? What could I be missing?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
=C2=A0-jh<br>
<br>
</blockquote></div>

--000000000000c83c17059da6ecbd--
