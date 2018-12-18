Return-Path: <sanjuchopracool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0540AE00CA3; Mon, 17 Dec 2018 21:06:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sanjuchopracool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 128B8E00C99
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 21:06:57 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id c19-v6so13051840lja.5
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 21:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+BQlA+IMgIYUs5C186nX/OK+cCkPlpPIgS8YyubM2Mk=;
	b=g9hqDgJoxNI7/Wdsho1x1V3G3grtOaDZIeCUpDdIDYoxdYO+efpD+qOdk7JMk9c6JT
	K2eFC0+VeqlL3EhIBudGGJj1XVs4fw1M9q6Hw0xZVzQ8D2FOYogjj2XHrXHKogHpfaN2
	X/9rda7AghPfgEK99LiI0sItNo1/yfnOPZEzuZdxKwgnhIfgiX+PjqT1z+6pzWnIUgNp
	4ECL+SEcH2oaCJ1TR/32Md8ML2RhRJDlwdzggLm1fSqe9CWRKWPdN587+DAixkhrsO92
	tr9TKZCUCPRFiJIeEjp0XfBPdv4x/MNoIndJcmZ4jHecmCsl27d2X7RDPIvIP2RbOOXZ
	XYIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+BQlA+IMgIYUs5C186nX/OK+cCkPlpPIgS8YyubM2Mk=;
	b=A5pckWtCBn71YC5WKYtbrGKtfX2ZZmKyDTpKN83NIM3+CjNadiEPFLwCW2rM38UPgP
	E8RV/d81uF1ggIdh9BImUXwMWjXhN5OUjyW3dfMGFriStIMPSOk69adDl3XDhxvoy2CP
	Bfrvmy27K+zTN1dRKEZIEp2hkUxw7QYh8bN33P1b0umgpRM0ZWFWSEMomE251yqGXWe9
	zN/aA31i5Xu2237iBQvkzJVPJKPgojECbPadV7MCQHMYKz3H87Kg/T/Q12LR6gE3wv2K
	7J0B93vXv4x+S15/os2vGpOfvtdoSzKskDGK0UwJg9zGBkn3+aT+LCLuX8thsEFgcp+E
	PK6g==
X-Gm-Message-State: AA+aEWbO8OxgCQIZ7NQxxABTXQscSOBag5fi3lBukQWj+FTZljGn0HqK
	ucQlIBD/NXHH0UKK17OGhIDmWzQQbepOX/Lep78=
X-Google-Smtp-Source: AFSGD/WMNF+VJPyh2DE4b/uU2vXaGil6qSdytNyO0c/1I1Da0XzQFe9c0YYEEjYvmnNOceMV3ljLoKlVjdidny1NC4k=
X-Received: by 2002:a2e:63cd:: with SMTP id
	s74-v6mr8700370lje.117.1545109616726; 
	Mon, 17 Dec 2018 21:06:56 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
	<CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
In-Reply-To: <CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
From: sanjay chopra <sanjuchopracool@gmail.com>
Date: Tue, 18 Dec 2018 10:36:45 +0530
Message-ID: <CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: build fails for qemux86
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
X-List-Received-Date: Tue, 18 Dec 2018 05:06:59 -0000
Content-Type: multipart/alternative; boundary="000000000000d8192e057d44dd06"

--000000000000d8192e057d44dd06
Content-Type: text/plain; charset="UTF-8"

Hi,

It also happens when I build for raspberry pi, core-image-sato works fine
though.

On Tue 18 Dec, 2018, 6:33 AM Khem Raj <raj.khem@gmail.com wrote:

> On Mon, Dec 17, 2018 at 12:09 PM sanjay chopra
> <sanjuchopracool@gmail.com> wrote:
> >
> > Hi,
> >
> > Whenever I try to build core-image-minimal , it fails in rootfs step.But
> I am able to build core-image-sato.
> >
> > With thud and master branch I am getting this issue. Sumo branch was
> working fine.Please help me to figure this out.
> >
>
> such errors sometimes pop up when qemu is failing on the built machine
> you might want to dig a bit deeper and find out what cmd particularly is
> failing
> and then try to run that manually to check if its specific to build host.
> >
> >
> > bitbake core-image-minimal
> > Loading cache: 100%
> |###############################################################################################################################################################################|
> Time: 0:00:00
> > Loaded 1263 entries from dependency cache.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION           = "1.40.0"
> > BUILD_SYS            = "x86_64-linux"
> > NATIVELSBSTRING      = "universal"
> > TARGET_SYS           = "i586-poky-linux"
> > MACHINE              = "qemux86"
> > DISTRO               = "poky"
> > DISTRO_VERSION       = "2.6"
> > TUNE_FEATURES        = "m32 i586"
> > TARGET_FPU           = ""
> > meta
> > meta-poky
> > meta-yocto-bsp       = "thud:d0e0a3d7a8218fbbf057a922c86bcdd2cf469ce9"
> >
> > Initialising tasks: 100%
> |##########################################################################################################################################################################|
> Time: 0:00:01
> > Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% match, 99%
> complete)
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept
> hook 'update_font_cache' failed, details in
> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
> > ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035
> > ERROR: Task
> (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn't need to
> be rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
>  /mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:
> do_rootfs
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >
> > --
> > Regards
> > Sanjay
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d8192e057d44dd06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br><div dir=3D"auto">It also happen=
s when I build for raspberry pi, core-image-sato works fine though.</div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue 18 Dec, 20=
18, 6:33 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gma=
il.com</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, Dec 17, 2=
018 at 12:09 PM sanjay chopra<br>
&lt;<a href=3D"mailto:sanjuchopracool@gmail.com" target=3D"_blank" rel=3D"n=
oreferrer">sanjuchopracool@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Whenever I try to build core-image-minimal , it fails in rootfs step.B=
ut I am able to build core-image-sato.<br>
&gt;<br>
&gt; With thud and master branch I am getting this issue. Sumo branch was w=
orking fine.Please help me to figure this out.<br>
&gt;<br>
<br>
such errors sometimes pop up when qemu is failing on the built machine<br>
you might want to dig a bit deeper and find out what cmd particularly is fa=
iling<br>
and then try to run that manually to check if its specific to build host.<b=
r>
&gt;<br>
&gt;<br>
&gt; bitbake core-image-minimal<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
###################################################| Time: 0:00:00<br>
&gt; Loaded 1263 entries from dependency cache.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.40.0&qu=
ot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-li=
nux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky=
-linux&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemu=
x86&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<br=
>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;thud:d0e0a3d7a8218f=
bbf057a922c86bcdd2cf469ce9&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
###################################################| Time: 0:00:01<br>
&gt; Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% match, 99% c=
omplete)<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept =
hook &#39;update_font_cache&#39; failed, details in /home/sanju/qemu_check/=
tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs<br=
>
&gt; ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs=
<br>
&gt; ERROR: Logfile of failure stored in: /home/sanju/qemu_check/tmp/work/q=
emux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035<br>
&gt; ERROR: Task (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-im=
age-minimal.bb:do_rootfs) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn&#39;t nee=
d to be rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-ima=
ge-minimal.bb:do_rootfs<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt; --<br>
&gt; Regards<br>
&gt; Sanjay<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nor=
eferrer">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
</blockquote></div>

--000000000000d8192e057d44dd06--
