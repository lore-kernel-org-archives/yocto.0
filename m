Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10693.1580987475574838195
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 03:11:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JgU8l5KN;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE8A2E01621; Thu,  6 Feb 2020 03:11:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F440E01382;
	Thu,  6 Feb 2020 03:11:13 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id y6so5689678lji.0;
        Thu, 06 Feb 2020 03:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x9OJKvHQv7/YS0a7Qj46Z9YQxIzNCcA7a8i4usIQkZY=;
        b=JgU8l5KNDIjZYkF/lMKRtek2zmn6UI1QsZW2jsRr3piRp0jpld06VvI7XJHgx1fBNI
         wanTR37qK+2aw5OzCIDsUv3uNgNloes8a0GFR4MH5ohvXRU0pJLcug1XKqhRgGjIdrvB
         7ZimEdsEpYHRxeq5Df3iyNi/j3xGbEyG/QqL7e9HXeFSIEpwFjMPfonso+wFuvB36XAu
         ADwgPpVpC4fHaFbNKB8C/BGjKBS027ILaeX3vkCWMVM+ms0ez+RREWfsBKdZUiaIZHmw
         l/RoMThokeWEsGHwR0YdcILBe4j0erG70wjxn119KEqoDw1sqo++INZxetDz9wEhna5O
         +igQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x9OJKvHQv7/YS0a7Qj46Z9YQxIzNCcA7a8i4usIQkZY=;
        b=skpZBB0K0x6jEubxb2OTTPFxXpygV8qij+qMtGJGQ49NFb0X7JLOHJzm64+4MR23r6
         mVYz3K5O6kbSJ5+A6gA4ApZxQQ05/7UEPMC7+sCcF8/5LfYvzNTmxtf5OGJ0zv5RbGbk
         Aap0WM5VXh7tfZmydAepu0bRGaTIAhXBRkf1u22gW4nDg9MX7L9d386k9qSQKLVylBF4
         m8gx8hO0b5/s8Kw8q9HTbOjwUMZhfMeTmVxsdEBX3XZATw1f2Y5vtuYfzl3Q5n6/v+8/
         RJwHYx61X0GldgB9l/NjgOwXJNth7hvoKxTCsXla8AS5ti3GUzA523qZ8oT1YP6uCf8P
         FEkQ==
X-Gm-Message-State: APjAAAWiZMGXM2gwOc2xl+MfuvFFLqsEXLhUN609iZO9uQC5RC7vbkRS
	445JF9vKkBk5eO4A5ampgVQKowNK7khdzLTgujY=
X-Google-Smtp-Source: APXvYqyjGNfd3do27WzALojD+XfLfXWJWzOa/XPh1QwPWpTWiGKCNGv94krO++Tq2/78ZPmTw9QTrv9+nFxjY6WEFqw=
X-Received: by 2002:a2e:80d9:: with SMTP id r25mr1807198ljg.8.1580987472869;
 Thu, 06 Feb 2020 03:11:12 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com> <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com>
In-Reply-To: <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Thu, 6 Feb 2020 12:11:01 +0100
Message-ID: <CAAx3WaAhLo1wbfsUdwdoNrYyEkJ38AgyFO0H+ckLyyqSgc3bOA@mail.gmail.com>
Subject: Re: [yocto] Support UBI u-boot
To: JH <jupiter.hce@gmail.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: multipart/alternative; boundary="000000000000b6fd0a059de65493"

--000000000000b6fd0a059de65493
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, Feb 6, 2020 at 11:07 AM JH <jupiter.hce@gmail.com> wrote:

> Thanks Gabriele and Andy,
>
> On 2/6/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > Hi JH,
> >
> > have you tried what we suggested you in your last thread? More
> specifically
> > adding your defconfig and tweaking it through menuconfig. and then
> specify
> > the UBOOT_MACHINE.
>
> Yes, as I posted in another thread, the MTD, UBI are all set in my
> Linux kernel defconfig, I have also added UBOOT_CONFIG = "nand" in my
> layer machine config.
>
What I missed is u-boot overlay, as you and Andy alluded. I added
> UBOOT_CONFIG[nand] += "mx6ull_14x14_evk_nand_config", but strange
> enough, that mx6ull_14x14_evk_nand_config, did not set CONFIG_CMD_UBI
> in its config.
>

Sorry, I never tried that approach.

>
> I think I need to add an appended recipes-bsp to my layer just like I
> added the recipes-kernel to my layer to overwrite kernel defconfig, I
> need to overwrite u-boot defconfig.
>
> In kernel, to overwrite defconfig, I run bitbake -c menuconfig
> virtual/kernel, how can I generate u-boot defconfig, to run bitbake -c
> menuconfig u-boot?
>

As far as I know uboot (usually virtual/bootloader) does not have a task to
run menuconfig directly from bitbake.
I usually have a local clone of uboot and I simply run `make [...]
menuconfig|savedefconfig` , then I create a patch
to add my defconfig (custom_defconfig) to configs/ and specify
UBOOT_MACHINE = "custom_defconfig"

Thank you.
>
> Kind regards,
>
> - jh
>

Gabriele

--000000000000b6fd0a059de65493
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi, <br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 6, 2020 at 11:07 AM J=
H &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks =
Gabriele and Andy,<br>
<br>
On 2/6/20, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com"=
 target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; Hi JH,<br>
&gt;<br>
&gt; have you tried what we suggested you in your last thread? More specifi=
cally<br>
&gt; adding your defconfig and tweaking it through menuconfig. and then spe=
cify<br>
&gt; the UBOOT_MACHINE.<br>
<br>
Yes, as I posted in another thread, the MTD, UBI are all set in my<br>
Linux kernel defconfig, I have also added UBOOT_CONFIG =3D &quot;nand&quot;=
 in my<br>
layer machine config. <br></blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
What I missed is u-boot overlay, as you and Andy alluded. I added<br>
UBOOT_CONFIG[nand] +=3D &quot;mx6ull_14x14_evk_nand_config&quot;, but stran=
ge<br>
enough, that mx6ull_14x14_evk_nand_config, did not set CONFIG_CMD_UBI<br>
in its config.<br></blockquote><div><br></div><div>Sorry, I never tried tha=
t approach.=C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<br>
I think I need to add an appended recipes-bsp to my layer just like I<br>
added the recipes-kernel to my layer to overwrite kernel defconfig, I<br>
need to overwrite u-boot defconfig.<br>
<br>
In kernel, to overwrite defconfig, I run bitbake -c menuconfig<br>
virtual/kernel, how can I generate u-boot defconfig, to run bitbake -c<br>
menuconfig u-boot?<br></blockquote><div>=C2=A0</div><div>As far as I know u=
boot (usually virtual/bootloader) does not have a task to run menuconfig di=
rectly from bitbake.</div><div>I usually have a local clone of uboot and I =
simply run `make [...] menuconfig|savedefconfig` , then I create a patch</d=
iv><div>to add my defconfig (custom_defconfig) to configs/ and specify UBOO=
T_MACHINE =3D &quot;custom_defconfig&quot;<br></div><div><br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br></blockquote><div><br></div><div>Gabriele <br></div></div></div>

--000000000000b6fd0a059de65493--
