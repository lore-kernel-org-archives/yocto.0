Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8568.1580972551912744233
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 23:02:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DBnulYBt;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81C24E01675; Wed,  5 Feb 2020 23:02:31 -0800 (PST)
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
	*      [209.85.167.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9393E01562;
	Wed,  5 Feb 2020 23:02:30 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id 203so3298745lfa.12;
        Wed, 05 Feb 2020 23:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ykAOZwzOsvI4naE9AaVXIOhrqE/PKVXQ2XQubRPyxEc=;
        b=DBnulYBtL77s+6Y3YE57iwF0i/6G+0hsMuQliktturp3VSplMuTtOTeSCDzlcHhaHS
         ok2RtvbaNCBHlsHPpD+ZMFB69ygT0P/IhNldrucHlYHRLJW0djitjlche5qMfaJAhOmf
         Qhtf4O9gQHfoFTPkWOEoAHaXOQZ0dAFcwrFoCradK1cfpD1imvIBWPcfmiZZz7SUP0qj
         K6A3Xk/GWrAGhDD3j/3PN1upN71CrSPHpM8C3n2FOx3Q4iHRUNiTEU/ujWG+abGXcOth
         sFljPULkpqNMHWGImSWafz4qOdV9IWHujYl+ZZQ91QPOH7J+r92WdQjr3de15cEmM1p6
         VtTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ykAOZwzOsvI4naE9AaVXIOhrqE/PKVXQ2XQubRPyxEc=;
        b=Z+nRg6tz5ZNKKyPLT5GJdHHr5nXgJgDfSTJmq7fOmnRh6+lC+6SkTVuO2QMaS/iP7L
         lSEK4RV28rh0kjLnafXG0BkeZqBmjEJiisNn3s5JQinPTDkCt51tLz6AbyFvM7vxR9cS
         ts1mEM24SVN9jjQXX1N0raybGwmrz9JUjzKvy9lKFg3ntR+eVcjeCNabJJfXxWt463Te
         hUk9lTqDoFhbSDrCqyAt0HUfg11AkAa0opRA3NdCW6EDA7Y+PdoXGrmTH7PxDyhpKcI8
         e8HYKnMGrrJfqV52dJb93Ipgfyyzw4us0qDHxSS9zkV1vA3TUZciGR9L8JfxoSAV6YrC
         1K2A==
X-Gm-Message-State: APjAAAULHNX7HROblO7hdGxcGm5iK08yDxxUGOJd1rUiUIe+lQehz+Ts
	9r9XlsgMPRW4Y2Dhj2JhUP/4Ro4CqT83Tg2QFQ8=
X-Google-Smtp-Source: APXvYqxKbIbd1sLJln81vEB2RwjRPNToPQv46+FJ57Idnv3oU7ItIKXjwmILnEIvRhUhX6FiEPVQxFesfOkmJ9J/5ko=
X-Received: by 2002:ac2:52a2:: with SMTP id r2mr963083lfm.33.1580972549739;
 Wed, 05 Feb 2020 23:02:29 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
In-Reply-To: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Thu, 6 Feb 2020 08:02:18 +0100
Message-ID: <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com>
Subject: Re: [yocto] Support UBI u-boot
To: JH <jupiter.hce@gmail.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: multipart/alternative; boundary="0000000000003a16e1059de2dba7"

--0000000000003a16e1059de2dba7
Content-Type: text/plain; charset="UTF-8"

Hi JH,

have you tried what we suggested you in your last thread? More specifically
adding your defconfig and tweaking it through menuconfig. and then specify
the UBOOT_MACHINE.

However you should be able to create and apply patches for external repo
without any problem and the needs to push your changes to public repos
(unless them are useful for others).

BR
Gabriele

On Thu, Feb 6, 2020 at 7:35 AM JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> Sorry for cross-posting, I have been asking for helping solving the
> issue many days ago, but could not get those work.
>
> (1) UBI support
>
> I added NAND and UBIFS support to my Yocto layer machine config file:
>
> UBOOT_CONFIG = "nand"
> UBOOT_CONFIG[nand] += "mx6ull_14x14_evk_config"
> UBOOT_CONFIG[nand] += "mx6ull_14x14_evk_nand_config"
> UBOOT_CONFIG[nand] += "ubi"
> UBOOT_CONFIG[nand] += "ubifs"
>
> But my u-boot.imx-nand still could not support ubi:
>
> => ubi part rootfs
> Unknown command 'ubi' - try 'help'
>
> What I could be missing here?
>
>
> (2) Patch u-boot parameters
>
> I am not clear how you do to change u-boot parameters, it seems to me
> I have to create my own u-boot-imx_2017.03.bbappend and patch files to
>  mx6ullevk.h, to change u-boot parameters of mtdparts, NAND_ROOT_UBI,
> bootcmd, etc based on my configuration.
>
> But Yocto won't allow the patch running unless that the patch is
> committed to the git repository in
> https://source.codeaurora.org/external/imx/uboot-imx.git.
>
> Ideally, I thought all u-boot parameters can be changed in a bbappend
> file, could you advise if it is possible to do that way or not? If so,
> how to do it?
>
> If not, what is the policy for making parches and commit to the git
> repository https://source.codeaurora.org/external/imx/uboot-imx.git?
>
> Thank you.
>
> Kind regards,
>
> - jh
> 
>

--0000000000003a16e1059de2dba7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi JH, <br></div><div><br></div><div>have you tried w=
hat we suggested you in your last thread? More specifically adding your def=
config and tweaking it through menuconfig. and then specify the UBOOT_MACHI=
NE.<br></div><div><br></div><div>However you should be able to create and a=
pply patches for external repo without any problem and the needs to push yo=
ur changes to public repos (unless them are useful for others).<br></div><d=
iv><br></div><div>BR</div><div>Gabriele<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 6, 2020 at 7:3=
5 AM JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i,<br>
<br>
Sorry for cross-posting, I have been asking for helping solving the<br>
issue many days ago, but could not get those work.<br>
<br>
(1) UBI support<br>
<br>
I added NAND and UBIFS support to my Yocto layer machine config file:<br>
<br>
UBOOT_CONFIG =3D &quot;nand&quot;<br>
UBOOT_CONFIG[nand] +=3D &quot;mx6ull_14x14_evk_config&quot;<br>
UBOOT_CONFIG[nand] +=3D &quot;mx6ull_14x14_evk_nand_config&quot;<br>
UBOOT_CONFIG[nand] +=3D &quot;ubi&quot;<br>
UBOOT_CONFIG[nand] +=3D &quot;ubifs&quot;<br>
<br>
But my u-boot.imx-nand still could not support ubi:<br>
<br>
=3D&gt; ubi part rootfs<br>
Unknown command &#39;ubi&#39; - try &#39;help&#39;<br>
<br>
What I could be missing here?<br>
<br>
<br>
(2) Patch u-boot parameters<br>
<br>
I am not clear how you do to change u-boot parameters, it seems to me<br>
I have to create my own u-boot-imx_2017.03.bbappend and patch files to<br>
=C2=A0mx6ullevk.h, to change u-boot parameters of mtdparts, NAND_ROOT_UBI,=
<br>
bootcmd, etc based on my configuration.<br>
<br>
But Yocto won&#39;t allow the patch running unless that the patch is<br>
committed to the git repository in<br>
<a href=3D"https://source.codeaurora.org/external/imx/uboot-imx.git" rel=
=3D"noreferrer" target=3D"_blank">https://source.codeaurora.org/external/i=
mx/uboot-imx.git</a>.<br>
<br>
Ideally, I thought all u-boot parameters can be changed in a bbappend<br>
file, could you advise if it is possible to do that way or not? If so,<br>
how to do it?<br>
<br>
If not, what is the policy for making parches and commit to the git<br>
repository <a href=3D"https://source.codeaurora.org/external/imx/uboot-imx=
.git" rel=3D"noreferrer" target=3D"_blank">https://source.codeaurora.org/ex=
ternal/imx/uboot-imx.git</a>?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
</blockquote></div>

--0000000000003a16e1059de2dba7--
