Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37FA5E0179E
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 03:33:37 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id ar20so13255661iec.40
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 03:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZYPGw0qwlGE598c8z9j8QbUxZ00q2mKSK4hFqPc/R5A=;
	b=wZPEeIHHTybexJqk4p8IeSdTZzPbS1Cc7pyYlxrBG+LxbbHTvsFkyQ22cDzdaZG31u
	M039d8zo2mKPcKs4ZDC8Vqh9PslFzXr5U8odlIRbwYDXGzYtevqPB9wzYo599nyd5IwS
	fzub5cITkgKxfSiE+TWN6XmAuTLtdqC5cfq6P77Gmii+3V7dYlWVKHMOQkiETiXOXJmV
	IYNLkANhWmcxGfilFi9s6TllugLZOkRhBjD7Hl81OVHkNUMXNjjWeKHfXXDt7lOtPklC
	uTgh1r8bCWSH3/pBCabZPuHLouyjbf11MZ8suemrHO6GhEJGsloX/fxHclB6WoqCjbN5
	oBgw==
X-Received: by 10.50.26.36 with SMTP id i4mr11968239igg.33.1383042817045; Tue,
	29 Oct 2013 03:33:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 29 Oct 2013 03:33:15 -0700 (PDT)
In-Reply-To: <526ECFF3.4060207@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
	<526ECFF3.4060207@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 29 Oct 2013 08:33:15 -0200
Message-ID: <CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Tue, 29 Oct 2013 10:33:40 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe0d1c6ef04e9debf24

--047d7bd76fe0d1c6ef04e9debf24
Content-Type: text/plain; charset=ISO-8859-1

2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com>

> I'm using dylan for my yocto checkout (not oe-core standalone, since
> this is a yocto list/question),
>
I thought that opemenbedded-core and poky were sharing the same core
components, classes and functions.


> My build shows:
>
> meta
> meta-yocto
> meta-yocto-bsp    = "dylan:**3dc4505f0e744177ae4ddff1e1ce8b**31b95dfaa6"
> meta-ti           = "master:**c14c386946e1ea341faeea292580e3**7d538d645d"
> meta-alphalem     = "master:**a5c0e8ff51297a4090cd47d669b4fc**9c94696908"
> meta-alphalem-bsp = "master:**56086e4dc618e975c9a46491793041**f0d18e47a2"
>
> Mike indicated that he was using dylan for meta-ti, but that doesn't
> make a difference either, since for our purposed. It's kernel.bbclass
> and the yocto kernel processing that matters.
>
I'll build a setup with yocto (dylan), meta-beagleboard (dylan) and
meta-mine to check if I can reproduce the issues.


> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the
> following content:
>
> > cat linux-mainline_3.2.bbappend
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>
> inherit kernel
> require recipes-kernel/linux/linux-**yocto.inc
>
> COMPATIBLE_MACHINE = "(beagleboard)"
>
> SRC_URI_append = " file://defconfig"
> SRC_URI_append = " file://my_frag.cfg"
>
> And I added a fragment which has:
>
> > cat my_frag.cfg
> CONFIG_WATCHDOG_NOWAYOUT=y
> CONFIG_NTFS_FS=y
> CONFIG_NTFS_RW=y
>
> When both are applied to the kernel build, we should see CONFIG_NTFS_FS
> transition from =m to =y:
>
> > grep CONFIG_NTFS_FS *
> defconfig:CONFIG_NTFS_FS=m
> my_frag.cfg:CONFIG_NTFS_FS=y
>
> After invoking linux-mainline's configure task, I see the following:
>
> > grep CONFIG_NTFS_FS linux-beagleboard-standard-**build/.config
> CONFIG_NTFS_FS=y
>
> And other elements of the defconfig and fragment are properly applied
> to the configuration phase.
>
> I'm also seeing good results on master, which means that I'm at a
> standstill to reproduce any problems.
>
> Diego: can you confirm for me what triggers you are seeing that shows
> the defconfig and fragment are not used. I assume the config options
> are not present, but I just want to be sure.
>
For the full defconfig replacement after doing a do_configure I've checked
.config on ${S} and it did not included my CONFIGS.
For config fragment it got stuck on do_patch task.



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--047d7bd76fe0d1c6ef04e9debf24
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/28 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span><br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"overflow:hidden">I&#39;m using=
 dylan for my yocto checkout (not oe-core standalone, since<br>
this is a yocto list/question),<br></div></blockquote><div>I thought that o=
pemenbedded-core and poky were sharing the same core components, classes an=
d functions.<br></div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


<div style=3D"overflow:hidden">
<br>
My build shows:<br>
<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =A0 =A0=3D &quot;dylan:<u></u>3dc4505f0e744177ae4ddff1e1ce8b=
<u></u>31b95dfaa6&quot;<br>
meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;master:<u></u>c14c386946e1ea341faeea2=
92580e3<u></u>7d538d645d&quot;<br>
meta-alphalem =A0 =A0 =3D &quot;master:<u></u>a5c0e8ff51297a4090cd47d669b4f=
c<u></u>9c94696908&quot;<br>
meta-alphalem-bsp =3D &quot;master:<u></u>56086e4dc618e975c9a46491793041<u>=
</u>f0d18e47a2&quot;<br>
<br>
Mike indicated that he was using dylan for meta-ti, but that doesn&#39;t<br=
>
make a difference either, since for our purposed. It&#39;s kernel.bbclass<b=
r>
and the yocto kernel processing that matters.<br></div></blockquote><div>I&=
#39;ll build a setup with yocto (dylan), meta-beagleboard (dylan) and meta-=
mine to check if I can reproduce the issues.=A0</div><div><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">


<div style=3D"overflow:hidden">
<br>
In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the<br>
following content:<br>
<br>
&gt; cat linux-mainline_3.2.bbappend<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.2:&quot;<br>
<br>
inherit kernel<br>
require recipes-kernel/linux/linux-<u></u>yocto.inc<br>
<br>
COMPATIBLE_MACHINE =3D &quot;(beagleboard)&quot;<br>
<br>
SRC_URI_append =3D &quot; file://defconfig&quot;<br>
SRC_URI_append =3D &quot; file://my_frag.cfg&quot;<br>
<br>
And I added a fragment which has:<br>
<br>
&gt; cat my_frag.cfg<br>
CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
CONFIG_NTFS_FS=3Dy<br>
CONFIG_NTFS_RW=3Dy<br>
<br>
When both are applied to the kernel build, we should see CONFIG_NTFS_FS<br>
transition from =3Dm to =3Dy:<br>
<br>
&gt; grep CONFIG_NTFS_FS *<br>
defconfig:CONFIG_NTFS_FS=3Dm<br>
my_frag.cfg:CONFIG_NTFS_FS=3Dy<br>
<br>
After invoking linux-mainline&#39;s configure task, I see the following:<br=
>
<br>
&gt; grep CONFIG_NTFS_FS linux-beagleboard-standard-<u></u>build/.config<br=
>
CONFIG_NTFS_FS=3Dy<br>
<br>
And other elements of the defconfig and fragment are properly applied<br>
to the configuration phase.<br>
<br>
I&#39;m also seeing good results on master, which means that I&#39;m at a<b=
r>
standstill to reproduce any problems.<br>
<br>
Diego: can you confirm for me what triggers you are seeing that shows<br>
the defconfig and fragment are not used. I assume the config options<br>
are not present, but I just want to be sure.</div></blockquote></div>For th=
e full defconfig replacement after doing a do_configure I&#39;ve checked .c=
onfig on ${S} and it did not included my CONFIGS.</div><div class=3D"gmail_=
extra">


For config fragment it got stuck on do_patch task.</div><div class=3D"gmail=
_extra"><br><br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div>
<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n rol=
l*/<br></div></div>
</div></div>

--047d7bd76fe0d1c6ef04e9debf24--
