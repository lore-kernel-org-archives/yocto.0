Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3633.1576009369470476924
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 12:22:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=K751XvcG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: waynli329@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 531BDE011E3; Tue, 10 Dec 2019 12:22:49 -0800 (PST)
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
	*      (waynli329[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00DFBE01140
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 12:22:45 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id c16so20212277ioh.6
        for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 12:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=asc4A+rI3WHRBgBqzekko5eswT8AbeTUqjWlt+VXjkM=;
        b=K751XvcGwLo20tF80XBsHdgZkT0eBdkLFDc8Hmo/4KTFazdc3bHxd+ehFFPKrHFtPy
         bRGSCLYAzKgk372sV3Ac+e6OK7P9L+Kx9NI6oVlJqg2dstNDxyjWmHDzHIfWEMjnUEeE
         aNfkzyG0ffrhBQ7lN/f6VTiYUJ8/4tx4FGmrJ6xDEmfchoMIq/54s1bg114lrrg2jzXF
         VuoKZ71ok0rVROejM+lV0qmLH9SrdNs4j4mF2U3/u9AjcOczc+Gbzfx6ILQiOoz+TDRh
         deREJw+BM3Eq9gBHOrjuOIXOyGlR4tOvFDaw0uH5TQ9Nri1OSyOHtHD4etp8TCtwdr1p
         4BCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=asc4A+rI3WHRBgBqzekko5eswT8AbeTUqjWlt+VXjkM=;
        b=cdm6fTJwKRi1CusqYV2dt25tHFSuOSi7H9yecoP1B+jNsfzXuUvuenE5t18dl9Fsyy
         PB9qIeFs9E7nbsQC8frXaaaWSmjijLzm6kiERXPDrXymIO4/lJdhvwhPloH0FseKrR9X
         wBg855zJcGt+z80zm+DZB0NfwxkcrzY1wNL3d5ViUoo2SpC7KtLd1IbBrPz3duYSCDwH
         r4vOH6JBXkioTebLiHgmNzHDwQduNw9xAMckgi4f2QyllY1FXs1bxO+B9PsH6pfsIFwx
         BGivbbV2GxYsSRGAvQKavPvTpfdXAGbtGAd5LP053Aom2r0it22sUltn+xtw5hZC/LUH
         wTaQ==
X-Gm-Message-State: APjAAAWFCZ0+b8hnAbyXFovvjOx7mabCRIb+P7IiADqF1LDGYUucQCMc
	Bb1mw3p5TCAF9UT6j2qyojYguxzWK5pHvGkEWe0=
X-Google-Smtp-Source: APXvYqxG941XHiNYHNP6QLgIt/HxvZepcxntbaQaJARtFp7HQ9mm1yB2oNos95BAq0uNusGs4jb6VcDkhjcjm0DkZE4=
X-Received: by 2002:a6b:f60f:: with SMTP id n15mr27689012ioh.263.1576009365047;
 Tue, 10 Dec 2019 12:22:45 -0800 (PST)
MIME-Version: 1.0
References: <CAM2K0nr6suFCaV-Ne7zv7ukyiXh4BG5H0Y6S6UkS5h08x8aGAg@mail.gmail.com>
 <CS1PR8401MB0568A3D49346083E949FA11C825C0@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <CS1PR8401MB0568A3D49346083E949FA11C825C0@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
From: "Wayne Li" <waynli329@gmail.com>
Date: Tue, 10 Dec 2019 20:22:34 +0000
Message-ID: <CAM2K0nrFdGNsU=BxEDV9nPj0W0zqKTogq9RXoBofiQYKGGCuqA@mail.gmail.com>
Subject: Re: [yocto] Question about shipping files to package.
To: "McKay, Sean" <sean.mckay@hpe.com>
Cc: bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005dcff305995f4667"

--0000000000005dcff305995f4667
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did a find for any files with a kvm and a .ko in its name throughout my
entire workspace and nothing came up.  But anyway, thanks for the
explanation.  Could packaging the files wrong (i.e. setting the FILES
variable wrong) cause the kvm.ko file to never show up at all?  I guess
that couldn't be the case though because the .ko files are created first
before it gets packaged up so if they were created in the first place a
search through my entire workspace would turn them up.  Is that correct?

On Thu, Dec 5, 2019 at 11:14 PM McKay, Sean <sean.mckay@hpe.com> wrote:

> I=E2=80=99m not an expert on compiling kernel modules, but I can at least=
 answer
> some of your questions to get started. I=E2=80=99m also not an actual exp=
ert, but
> just another user, so it=E2=80=99s entirely possible that someone more
> knowledgeable will come along and tell us that I=E2=80=99m wrong.
>
>
>
> With that said, first, I have to ask the simple stuff: when you say that
> no .ko is being created, where are you looking? If you=E2=80=99re not sur=
e where
> you should be looking, I=E2=80=99d recommend by doing a find inside of yo=
ur
> ${WORKDIR} to see whether or not you=E2=80=99ve got any .ko files. They w=
on=E2=80=99t quite
> be out in plain sight.
>
>
>
> In general (though again, I can=E2=80=99t speak for the module class),
> compilations take place in a build directory inside of the recipe=E2=80=
=99s workdir
> (${B} in bitbake parlance). The install process then copies the created
> files to a staging directory (${D} in bitbake parlance) that=E2=80=99s us=
ually
> ${WORKDIR}/image.
>
>
>
> Packaging is the process of taking those output files from ${D} and
> packaging them into one of a few well defined packaging formats. If you=
=E2=80=99re
> using the defaults, this would be RPM. A single recipe can (and often doe=
s)
> produce multiple packages. When bitbake moves onto the packaging step (I=
=E2=80=99m
> simplifying a bit), it creates directories for each package that=E2=80=99=
s going to
> be generated inside of ${WORKDIR}/packages-split. It then looks at the
> FILES variable for the particular package it=E2=80=99s working on and cop=
ies any
> files that match the patterns in that variable into that package=E2=80=99=
s
> directory in packages-split. When it=E2=80=99s done copying files, each o=
f those
> directories are turned into the appropriate package (probably .rpm) file.
>
> So, for a somewhat more concrete example, when you said =E2=80=98FILES_${=
PN} +=3D
> "/lib/modules/4.1.8-rt8+gbd51baf"=E2=80=99, you told bitbake that anythin=
g that
> matched /lib/modules/4.1.8-rt8+gbd51baf should get put in the ${PN} (main=
)
> package.
>
>
>
> In the context of the error message you were previously receiving,
> =E2=80=9Cinstalled=E2=80=9D is the do_install step, which is referring to=
 that staging
> process (analogous to running =E2=80=98make install=E2=80=99 on something=
 you just
> downloaded from the internet). Something is =E2=80=98shipped=E2=80=99 if =
it is packaged
> into one of the final rpm files.
>
>
>
> Cheers!
>
> -Sean McKay
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Wayne Li
> *Sent:* Thursday, December 5, 2019 2:26 PM
> *To:* bitbake-devel <bitbake-devel@lists.openembedded.org>; Yocto Project
> Discussion <yocto@yoctoproject.org>
> *Subject:* [yocto] Question about shipping files to package.
>
>
>
> Dear Yocto Developers,
>
>
>
> So I created a bitbake recipe to integrate kvm into my image as an
> out-of-tree kernel module.  Here's my recipe right now:
>
>
>
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc616d0e7924e9e78ee192d99a3b26f=
bd"
>
> inherit module
>
> SRC_URI =3D "
> file:///homead/QorIQ-SDK-V2.0-20160527-yocto/sources/meta-virtualization/=
recipes-kernel/kvm-kmodule/kvm-kmod-3.10.21.tar.bz2
> "
>
> S =3D "${WORKDIR}/kvm-kmod-3.10.21"
>
> do_configure() {
>     ./configure --arch=3Dppc64
> --kerneldir=3D/homead/QorIQ-SDK-V2.0-20160527-yocto/build_t4240rdb-64b/tm=
p/work/t4240rdb_64b-fsl-linux/kernel-devsrc/1.0-r0/image/usr/src/kernel
> }
>
> FILES_${PN} +=3D "/lib/modules/4.1.8-rt8+gbd51baf"
>
>
>
> Bitbaking this recipe completes with no problems but no kernel module is
> created (compiling the source code should create a kernel module file
> kvm.ko).  I was wondering if the problem might be because of what I set
> FILES_${PN} to be.  Before I set the FILES variable I was getting an erro=
r
> saying something along the lines of, "Files/directories were installed bu=
t
> not shipped."  Then I more or less just guessed a directory and set my
> FILES variable to it and then the recipe finished bitbaking with no error=
s.
>
>
>
> But now that the kvm.ko file isn't even being created, I am wondering if
> it might be because I set the FILES variable wrong?  What does the word
> "ship" mean?  And along those lines what exactly is a "package" in the
> setting of Yocto project?
>
>
>
> -Thanks!, Wayne Li
>

--0000000000005dcff305995f4667
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I did a find for any files with a kvm and a .ko in its nam=
e throughout my entire workspace and nothing came up.=C2=A0 But anyway, tha=
nks for the explanation.=C2=A0 Could packaging the files wrong (i.e. settin=
g the FILES variable wrong) cause the kvm.ko file to never show up at all?=
=C2=A0 I guess that couldn&#39;t be the case though because the .ko files a=
re created first before it gets packaged up so if they were created in the =
first place a search through my entire workspace would turn them up.=C2=A0 =
Is that correct?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Dec 5, 2019 at 11:14 PM McKay, Sean &lt;<a href=
=3D"mailto:sean.mckay@hpe.com">sean.mckay@hpe.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-5982155925722820750WordSection1">
<p class=3D"MsoNormal">I=E2=80=99m not an expert on compiling kernel module=
s, but I can at least answer some of your questions to get started. I=E2=80=
=99m also not an actual expert, but just another user, so it=E2=80=99s enti=
rely possible that someone more knowledgeable will come along
 and tell us that I=E2=80=99m wrong.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">With that said, first, I have to ask the simple stuf=
f: when you say that no .ko is being created, where are you looking? If you=
=E2=80=99re not sure where you should be looking, I=E2=80=99d recommend by =
doing a find inside of your ${WORKDIR} to see whether
 or not you=E2=80=99ve got any .ko files. They won=E2=80=99t quite be out i=
n plain sight.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In general (though again, I can=E2=80=99t speak for =
the module class), compilations take place in a build directory inside of t=
he recipe=E2=80=99s workdir (${B} in bitbake parlance). The install process=
 then copies the created files to a staging directory
 (${D} in bitbake parlance) that=E2=80=99s usually ${WORKDIR}/image.<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Packaging is the process of taking those output file=
s from ${D} and packaging them into one of a few well defined packaging for=
mats. If you=E2=80=99re using the defaults, this would be RPM. A single rec=
ipe can (and often does) produce multiple
 packages. When bitbake moves onto the packaging step (I=E2=80=99m simplify=
ing a bit), it creates directories for each package that=E2=80=99s going to=
 be generated inside of ${WORKDIR}/packages-split. It then looks at the FIL=
ES variable for the particular package it=E2=80=99s working
 on and copies any files that match the patterns in that variable into that=
 package=E2=80=99s directory in packages-split. When it=E2=80=99s done copy=
ing files, each of those directories are turned into the appropriate packag=
e (probably .rpm) file.<u></u><u></u></p>
<p class=3D"MsoNormal">So, for a somewhat more concrete example, when you s=
aid =E2=80=98FILES_${PN} +=3D &quot;/lib/modules/4.1.8-rt8+gbd51baf&quot;=
=E2=80=99, you told bitbake that anything that matched /lib/modules/4.1.8-r=
t8+gbd51baf should get put in the ${PN} (main) package.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In the context of the error message you were previou=
sly receiving, =E2=80=9Cinstalled=E2=80=9D is the do_install step, which is=
 referring to that staging process (analogous to running =E2=80=98make inst=
all=E2=80=99 on something you just downloaded from the internet).
 Something is =E2=80=98shipped=E2=80=99 if it is packaged into one of the f=
inal rpm files. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Cheers!<u></u><u></u></p>
<p class=3D"MsoNormal">-Sean McKay<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"=
mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopro=
ject.org</a>&gt;
<b>On Behalf Of </b>Wayne Li<br>
<b>Sent:</b> Thursday, December 5, 2019 2:26 PM<br>
<b>To:</b> bitbake-devel &lt;<a href=3D"mailto:bitbake-devel@lists.openembe=
dded.org" target=3D"_blank">bitbake-devel@lists.openembedded.org</a>&gt;; Y=
octo Project Discussion &lt;<a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> [yocto] Question about shipping files to package.<u></u><u>=
</u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Dear Yocto Developers,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">So I created a bitbake recipe to integrate kvm into =
my image as an out-of-tree kernel module.=C2=A0 Here&#39;s my recipe right =
now:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div style=3D"margin-left:30pt">
<p class=3D"MsoNormal">LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;<a>file://COPYING;md5=3Dc616d0e7924e9e78ee192d99=
a3b26fbd</a>&quot;<br>
<br>
inherit module<br>
<br>
SRC_URI =3D &quot;<a>file:///homead/QorIQ-SDK-V2.0-20160527-yocto/sources/m=
eta-virtualization/recipes-kernel/kvm-kmodule/kvm-kmod-3.10.21.tar.bz2</a>&=
quot;<br>
<br>
S =3D &quot;${WORKDIR}/kvm-kmod-3.10.21&quot;<br>
<br>
do_configure() {<br>
=C2=A0 =C2=A0 ./configure --arch=3Dppc64 --kerneldir=3D/homead/QorIQ-SDK-V2=
.0-20160527-yocto/build_t4240rdb-64b/tmp/work/t4240rdb_64b-fsl-linux/kernel=
-devsrc/1.0-r0/image/usr/src/kernel<br>
}<br>
<br>
FILES_${PN} +=3D &quot;/lib/modules/4.1.8-rt8+gbd51baf&quot;<u></u><u></u><=
/p>
</div>
<div style=3D"margin-left:30pt">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Bitbaking this recipe completes with no problems but=
 no kernel module is created (compiling the source code should create a ker=
nel module file kvm.ko).=C2=A0 I was wondering if the problem might be beca=
use of what I set FILES_${PN} to be.=C2=A0 Before
 I set the FILES variable I was getting an error saying something along the=
 lines of, &quot;Files/directories were installed but not shipped.&quot;=C2=
=A0 Then I more or less just guessed a directory and set my FILES variable =
to it and then the recipe finished bitbaking with
 no errors.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">But now that the kvm.ko file isn&#39;t even being cr=
eated, I am wondering if it might be because I set the FILES variable wrong=
?=C2=A0 What does the word &quot;ship&quot; mean?=C2=A0 And along those lin=
es what exactly is a &quot;package&quot; in the setting of Yocto project?<u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">-Thanks!, Wayne Li<u></u><u></u></p>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000005dcff305995f4667--
