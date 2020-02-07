Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5143.1581084811742515618
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 06:13:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sQiDTWpp;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55F88E016DB; Fri,  7 Feb 2020 06:13:31 -0800 (PST)
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
	*      [209.85.167.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0DCE01589;
	Fri,  7 Feb 2020 06:13:29 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id n25so1635886lfl.0;
        Fri, 07 Feb 2020 06:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6VCzsOGJr9/lSRbQbgFDW1l57Qpj7TKAVaSO+9RZpmc=;
        b=sQiDTWppcgaFq0uSkHj8fAjcdwFkrS/+0UOtDxnwAy9ASoLLZSyLuv1FJV03PJAzmW
         N/kmDINHF8E2ucDKkI9OQanaZcRIBmSF8stJuXvD/+QOOAszTG/xfjIDucHWRKA5BY1w
         bXU23Sv+LMaShVR25ynpO7/GJGb7k0VLi00C7yy1GTrmv3UxN9jqz6FyLSm8rH4Lh0d7
         /iQKIf1FuMna+ecgAC67oTzHIG3mRCFDaySt9RL5RM0pVP/0/ecLMHnsVfw4ojI5zu3T
         /rK1TZ1ASCkPyLEnUXc2AMVANrQkRMF6/f2JTFsyUNfA56v3mjX4kq97//ZJuyXUx2Vm
         cwgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6VCzsOGJr9/lSRbQbgFDW1l57Qpj7TKAVaSO+9RZpmc=;
        b=Jcrb8AlMUfZPg5Ov0n9MpTc8FZEmS7QwYtI4yuamJYYZJ2tABf8EcTqobQsXD9GB3G
         sv+btTIvizVWy+RJYfCd1hdxz0QuLCbbWPzvEOfmA1WKIFLLYIlyEDW1mq9+ku9/fyF5
         Hrl4PnzUUd9bpxpr1W3CCT9N5Vo2DUuV6lZV/giu2nE/oRJiUzq7jiomHVi00rl68+E4
         wZ1nxUNIaVUnDAnrV/xI89bTuBf1ltP56OpKAiVvzM6GdyEdusPf+pZRbH4kJ4vIQ5KG
         cnox20DDlLdPPlYv99GGZNOISJYaZudpQsGnvok3unPtoLh81GJ45f1d59+12LVufXBi
         kK6w==
X-Gm-Message-State: APjAAAVCjiEwutTgv4r+bigXSOLGtWOKma2AWiUYl3QSI2Aj9Ywv6M58
	0/szddBng9muA9almbLshVCIxnhHWh1TOuBn3yo=
X-Google-Smtp-Source: APXvYqy8rHLjbUhJvyjo2596BXrd3drWaUXio8nCGBJQm47EaedTZRu+dcn1KzSbWaQMdy3kfjTDqMnxHm2hERo1r2g=
X-Received: by 2002:a19:f006:: with SMTP id p6mr4656713lfc.94.1581084808880;
 Fri, 07 Feb 2020 06:13:28 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com>
 <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com>
 <CAAx3WaAhLo1wbfsUdwdoNrYyEkJ38AgyFO0H+ckLyyqSgc3bOA@mail.gmail.com> <CAA=hcWQL8se7RR9bfuBsS0xpof0Y7vwEyQ5Zg_hm+Vq0FwjTPg@mail.gmail.com>
In-Reply-To: <CAA=hcWQL8se7RR9bfuBsS0xpof0Y7vwEyQ5Zg_hm+Vq0FwjTPg@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Fri, 7 Feb 2020 15:13:17 +0100
Message-ID: <CAAx3WaDkzFvh_g8t_WXgzc7PToXndRmnEKJr_1R+yMnfOnqPAw@mail.gmail.com>
Subject: Re: [yocto] Support UBI u-boot
To: JH <jupiter.hce@gmail.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: multipart/alternative; boundary="00000000000064a50f059dfcfe47"

--00000000000064a50f059dfcfe47
Content-Type: text/plain; charset="UTF-8"

Hi,

On Fri, Feb 7, 2020 at 2:55 AM JH <jupiter.hce@gmail.com> wrote:

> Hi Gabriele,
>
> On 2/6/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > As far as I know uboot (usually virtual/bootloader) does not have a task
> to
> > run menuconfig directly from bitbake.
> > I usually have a local clone of uboot and I simply run `make [...]
> > menuconfig|savedefconfig` , then I create a patch
> > to add my defconfig (custom_defconfig) to configs/ and specify
> > UBOOT_MACHINE = "custom_defconfig"
>
> Are there any document to use cross compiler tools to build u-boot-imx
> on Ubuntu 18 host machine? It seems that build environment will not be
> the same as the Yocto build environment I am currently running on
> Ubuntu 18 host.
>
> I compile uboot using the Yocto generated SDK. Simply
source /opt/poky/.../env-script
make -j4

If you just want to run the menuconfig run
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
and
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- savedefconfig
In any environment.

> Thank you Gabriele for great helps.
>


> Kind regards,
>
> - jh
>

Gabriele

--00000000000064a50f059dfcfe47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 7, 2020 at 2:55 AM JH =
&lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Gabrie=
le,<br>
<br>
On 2/6/20, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com"=
 target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; As far as I know uboot (usually virtual/bootloader) does not have a ta=
sk to<br>
&gt; run menuconfig directly from bitbake.<br>
&gt; I usually have a local clone of uboot and I simply run `make [...]<br>
&gt; menuconfig|savedefconfig` , then I create a patch<br>
&gt; to add my defconfig (custom_defconfig) to configs/ and specify<br>
&gt; UBOOT_MACHINE =3D &quot;custom_defconfig&quot;<br>
<br>
Are there any document to use cross compiler tools to build u-boot-imx<br>
on Ubuntu 18 host machine? It seems that build environment will not be<br>
the same as the Yocto build environment I am currently running on<br>
Ubuntu 18 host.<br><br></blockquote><div>I compile uboot using the Yocto ge=
nerated SDK. Simply</div><div>source /opt/poky/.../env-script</div><div>mak=
e -j4</div><div><br></div><div>If you just want to run the menuconfig run</=
div><div>make ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabihf- menuconfig</d=
iv><div>and <br></div><div>make ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueab=
ihf- savedefconfig</div><div>In any environment.<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
Thank you Gabriele for great helps.<br>
</blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
Kind regards,<br>
<br>
- jh<br></blockquote><div><br></div><div>Gabriele <br></div></div></div>

--00000000000064a50f059dfcfe47--
