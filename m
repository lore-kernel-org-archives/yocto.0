Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9ABAE01737
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 07:56:08 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id x13so14521379ief.9
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 07:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QgZe2q3xvzJG3pBegYn55/8KnC8CWLgUaM2VmI51hgA=;
	b=A5pWgh6mLDPjj/d0vTkoJAYi65JLB9EiWsOv98lMz3cJsum88stawmb3V51b5DTosg
	viBYqdY/sP1KlbXLEnWey8Zk5rR58t+27oZdUnb0Li4g836J7rAO1Uhxu5+mwTH8qQbd
	p1Wc6c3PyEQ9wCMlBtOLAre3x3YrOKCKmU6J/ZW2H2KhAaN0cePh0KHT+vNgI6V3UcpA
	NriGPxrvdtapYGfrJZHxRT/qXgpFZNpZA7/rnRRUCix/rbIzrA3+5MAeYaR0rKZgNA6m
	iyhnmSXDWiOaODwxc7tRyCmgQGnoovJpx62zyDFRrsvOp4OvihU0WQYTMCxifzj+mALn
	3lqg==
X-Received: by 10.50.26.36 with SMTP id i4mr12847149igg.33.1383058567924; Tue,
	29 Oct 2013 07:56:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 29 Oct 2013 07:55:47 -0700 (PDT)
In-Reply-To: <CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
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
	<CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
	<CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 29 Oct 2013 12:55:47 -0200
Message-ID: <CAMCfZKFPhz4odA9iMZ5aWzWtT1XR8JX_EHxJQLXyVuy+S7KLqg@mail.gmail.com>
To: Andrea Adami <andrea.adami@gmail.com>
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
X-List-Received-Date: Tue, 29 Oct 2013 14:56:11 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe0a55f2304e9e26aba

--047d7bd76fe0a55f2304e9e26aba
Content-Type: text/plain; charset=ISO-8859-1

2013/10/29 Andrea Adami <andrea.adami@gmail.com>

> I'll jump in one more time...
>
> Have you tried putting defconfig and patch under <machine> subdir?
>
> recipes-kernel/linux/linux-yocto-3.2/<machine>
> defconfig
> my-own.patch
>
> I've recently added two similar entries for 3.10 and it works.
> Afaik it was impossible to put a common patch under /linux-yocto-.3.2
> at the time.
>

Andrea,

I did it before and not worked.
I'll do it again just to make sure.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


2013/10/29 Andrea Adami <andrea.adami@gmail.com>

> On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro <diego.sueiro@gmail.com>
> wrote:
> >
> > 2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com>
> >>
> >> I'm using dylan for my yocto checkout (not oe-core standalone, since
> >> this is a yocto list/question),
> >
> > I thought that opemenbedded-core and poky were sharing the same core
> > components, classes and functions.
> >
> >>
> >> My build shows:
> >>
> >> meta
> >> meta-yocto
> >> meta-yocto-bsp    = "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"
> >> meta-ti           = "master:c14c386946e1ea341faeea292580e37d538d645d"
> >> meta-alphalem     = "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"
> >> meta-alphalem-bsp = "master:56086e4dc618e975c9a46491793041f0d18e47a2"
> >>
> >> Mike indicated that he was using dylan for meta-ti, but that doesn't
> >> make a difference either, since for our purposed. It's kernel.bbclass
> >> and the yocto kernel processing that matters.
> >
> > I'll build a setup with yocto (dylan), meta-beagleboard (dylan) and
> > meta-mine to check if I can reproduce the issues.
> >
> >>
> >> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the
> >> following content:
> >>
> >> > cat linux-mainline_3.2.bbappend
> >> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
> >>
> >> inherit kernel
> >> require recipes-kernel/linux/linux-yocto.inc
> >>
> >> COMPATIBLE_MACHINE = "(beagleboard)"
> >>
> >> SRC_URI_append = " file://defconfig"
> >> SRC_URI_append = " file://my_frag.cfg"
> >>
> >> And I added a fragment which has:
> >>
> >> > cat my_frag.cfg
> >> CONFIG_WATCHDOG_NOWAYOUT=y
> >> CONFIG_NTFS_FS=y
> >> CONFIG_NTFS_RW=y
> >>
> >> When both are applied to the kernel build, we should see CONFIG_NTFS_FS
> >> transition from =m to =y:
> >>
> >> > grep CONFIG_NTFS_FS *
> >> defconfig:CONFIG_NTFS_FS=m
> >> my_frag.cfg:CONFIG_NTFS_FS=y
> >>
> >> After invoking linux-mainline's configure task, I see the following:
> >>
> >> > grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config
> >> CONFIG_NTFS_FS=y
> >>
> >> And other elements of the defconfig and fragment are properly applied
> >> to the configuration phase.
> >>
> >> I'm also seeing good results on master, which means that I'm at a
> >> standstill to reproduce any problems.
> >>
> >> Diego: can you confirm for me what triggers you are seeing that shows
> >> the defconfig and fragment are not used. I assume the config options
> >> are not present, but I just want to be sure.
> >
> > For the full defconfig replacement after doing a do_configure I've
> checked
> > .config on ${S} and it did not included my CONFIGS.
> > For config fragment it got stuck on do_patch task.
> >
> >
> >
> > Regards,
> >
> > --
> > *dS
> > Diego Sueiro
> >
> > /*long live rock 'n roll*/
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
> I'll jump in one more time...
>
> Have you tried putting defconfig and patch under <machine> subdir?
>
> recipes-kernel/linux/linux-yocto-3.2/<machine>
> defconfig
> my-own.patch
>
> I've recently added two similar entries for 3.10 and it works.
> Afaik it was impossible to put a common patch under /linux-yocto-.3.2
> at the time.
>
> Regards
>
> Andrea
>

--047d7bd76fe0a55f2304e9e26aba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra" style=3D"font-family:arial,sans=
-serif;font-size:13px"><div class=3D"im"><div class=3D"gmail_quote">2013/10=
/29 Andrea Adami=A0<span dir=3D"ltr">&lt;<a href=3D"mailto:andrea.adami@gma=
il.com" target=3D"_blank">andrea.adami@gmail.com</a>&gt;</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div style=3D"overflow:hidden">I&#39;ll jump in one more t=
ime...<br>

<br>Have you tried putting defconfig and patch under &lt;machine&gt; subdir=
?<br><br>recipes-kernel/linux/linux-yocto-3.2/&lt;machine&gt;<br>defconfig<=
br>my-own.patch<br><br>I&#39;ve recently added two similar entries for 3.10=
 and it works.<br>

Afaik it was impossible to put a common patch under /linux-yocto-.3.2<br>at=
 the time.</div></blockquote></div><br></div>Andrea,</div><div class=3D"gma=
il_extra" style=3D"font-family:arial,sans-serif;font-size:13px"><br></div>
<div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font-size:=
13px">
I did it before and not worked.</div><div class=3D"gmail_extra" style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">I&#39;ll do it again just to mak=
e sure.</div><div class=3D"" style=3D"font-family:arial,sans-serif;font-siz=
e:13px">

<div id=3D":3l5" class=3D"" tabindex=3D"0"><img class=3D"" src=3D"https://m=
ail.google.com/mail/u/0/images/cleardot.gif" style=3D"max-width: 100%;"></d=
iv></div><div class=3D"im" style=3D"font-family:arial,sans-serif;font-size:=
13px"><div class=3D"gmail_extra">

<br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></d=
iv>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/</div></d=
iv></div></div><div class=3D"gmail_extra"><div><div dir=3D"ltr"><br></div><=
/div>

<br><div class=3D"gmail_quote">2013/10/29 Andrea Adami <span dir=3D"ltr">&l=
t;<a href=3D"mailto:andrea.adami@gmail.com" target=3D"_blank">andrea.adami@=
gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">On Tue, Oct 29, 2013 at 11:33 AM, D=
iego Sueiro &lt;<a href=3D"mailto:diego.sueiro@gmail.com">diego.sueiro@gmai=
l.com</a>&gt; wrote:<br>
&gt;<br>
&gt; 2013/10/28 Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriv=
er.com">bruce.ashfield@windriver.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m using dylan for my yocto checkout (not oe-core standalone,=
 since<br>
&gt;&gt; this is a yocto list/question),<br>
&gt;<br>
&gt; I thought that opemenbedded-core and poky were sharing the same core<b=
r>
&gt; components, classes and functions.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; My build shows:<br>
&gt;&gt;<br>
&gt;&gt; meta<br>
&gt;&gt; meta-yocto<br>
&gt;&gt; meta-yocto-bsp =A0 =A0=3D &quot;dylan:3dc4505f0e744177ae4ddff1e1ce=
8b31b95dfaa6&quot;<br>
&gt;&gt; meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;master:c14c386946e1ea341faee=
a292580e37d538d645d&quot;<br>
&gt;&gt; meta-alphalem =A0 =A0 =3D &quot;master:a5c0e8ff51297a4090cd47d669b=
4fc9c94696908&quot;<br>
&gt;&gt; meta-alphalem-bsp =3D &quot;master:56086e4dc618e975c9a46491793041f=
0d18e47a2&quot;<br>
&gt;&gt;<br>
&gt;&gt; Mike indicated that he was using dylan for meta-ti, but that doesn=
&#39;t<br>
&gt;&gt; make a difference either, since for our purposed. It&#39;s kernel.=
bbclass<br>
&gt;&gt; and the yocto kernel processing that matters.<br>
&gt;<br>
&gt; I&#39;ll build a setup with yocto (dylan), meta-beagleboard (dylan) an=
d<br>
&gt; meta-mine to check if I can reproduce the issues.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the=
<br>
&gt;&gt; following content:<br>
&gt;&gt;<br>
&gt;&gt; &gt; cat linux-mainline_3.2.bbappend<br>
&gt;&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.2:&quot;<br>
&gt;&gt;<br>
&gt;&gt; inherit kernel<br>
&gt;&gt; require recipes-kernel/linux/linux-yocto.inc<br>
&gt;&gt;<br>
&gt;&gt; COMPATIBLE_MACHINE =3D &quot;(beagleboard)&quot;<br>
&gt;&gt;<br>
&gt;&gt; SRC_URI_append =3D &quot; file://defconfig&quot;<br>
&gt;&gt; SRC_URI_append =3D &quot; file://my_frag.cfg&quot;<br>
&gt;&gt;<br>
&gt;&gt; And I added a fragment which has:<br>
&gt;&gt;<br>
&gt;&gt; &gt; cat my_frag.cfg<br>
&gt;&gt; CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
&gt;&gt; CONFIG_NTFS_FS=3Dy<br>
&gt;&gt; CONFIG_NTFS_RW=3Dy<br>
&gt;&gt;<br>
&gt;&gt; When both are applied to the kernel build, we should see CONFIG_NT=
FS_FS<br>
&gt;&gt; transition from =3Dm to =3Dy:<br>
&gt;&gt;<br>
&gt;&gt; &gt; grep CONFIG_NTFS_FS *<br>
&gt;&gt; defconfig:CONFIG_NTFS_FS=3Dm<br>
&gt;&gt; my_frag.cfg:CONFIG_NTFS_FS=3Dy<br>
&gt;&gt;<br>
&gt;&gt; After invoking linux-mainline&#39;s configure task, I see the foll=
owing:<br>
&gt;&gt;<br>
&gt;&gt; &gt; grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config<=
br>
&gt;&gt; CONFIG_NTFS_FS=3Dy<br>
&gt;&gt;<br>
&gt;&gt; And other elements of the defconfig and fragment are properly appl=
ied<br>
&gt;&gt; to the configuration phase.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m also seeing good results on master, which means that I&#39=
;m at a<br>
&gt;&gt; standstill to reproduce any problems.<br>
&gt;&gt;<br>
&gt;&gt; Diego: can you confirm for me what triggers you are seeing that sh=
ows<br>
&gt;&gt; the defconfig and fragment are not used. I assume the config optio=
ns<br>
&gt;&gt; are not present, but I just want to be sure.<br>
&gt;<br>
&gt; For the full defconfig replacement after doing a do_configure I&#39;ve=
 checked<br>
&gt; .config on ${S} and it did not included my CONFIGS.<br>
&gt; For config fragment it got stuck on do_patch task.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; --<br>
&gt; *dS<br>
&gt; Diego Sueiro<br>
&gt;<br>
&gt; /*long live rock &#39;n roll*/<br>
&gt;<br>
</div></div><div class=3D"im">&gt; ________________________________________=
_______<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
</div>I&#39;ll jump in one more time...<br>
<br>
Have you tried putting defconfig and patch under &lt;machine&gt; subdir?<br=
>
<br>
recipes-kernel/linux/linux-yocto-3.2/&lt;machine&gt;<br>
defconfig<br>
my-own.patch<br>
<br>
I&#39;ve recently added two similar entries for 3.10 and it works.<br>
Afaik it was impossible to put a common patch under /linux-yocto-.3.2<br>
at the time.<br>
<br>
Regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Andrea<br>
</font></span></blockquote></div><br></div></div>

--047d7bd76fe0a55f2304e9e26aba--
