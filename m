Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 140B9E008F5; Sun, 21 Feb 2016 04:30:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B09CAE00872
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2016 04:30:16 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id b205so122472430wmb.1
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2016 04:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BIcjy3NFxuhwL6tCXuEY3JYQwcBgTNZBxkfOkm7e/tU=;
	b=meeAAsBiL/nL0eslMdv0F9SgCEs77hO2IBEcmQPM1AohZBEKniLHoG3K5873pov9NQ
	eKQvMCDMW5ozBV52cAeG5B0agr7pank1UjOEFEQmamnEukG7hOVL9/i/jh8Afra7/VIG
	V4aGxOkU/lzUdQ1mbxCGXEPgVsMtxA5V2D686mnWsbAB8ke2A4H8STSjbeDVtEm/GAzU
	p8REmMWpt/3jt5jIbCOI5rM/kNHRgiZ3DURmJRPqG9XsU40/H88YpYDehWTp/6bstffs
	xDDrqr2DuRjzVI10wcFox/MPx3MEw017E3QO4yvQbnsROlJ4i3UuYLYGWWH9RdeUJ66O
	JNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BIcjy3NFxuhwL6tCXuEY3JYQwcBgTNZBxkfOkm7e/tU=;
	b=Icihyn6tS47psDbuQcbugf9E8mkxmLsz67owYBpEr+KO+4qAz1bYpEwiBVEe6w4dUA
	PHAsEtly3a7n3ioEXgyGNmDUG7X7Ucixd0BNL0mVjMw8pa8YnVLQfyhigOQHkoX7JGwP
	2C0NyRsVT0y5/JBzsM3ubfzJQAEl5WbOj+Py/B8KZbqikXVa4atFNYY0a8NCB51lCXO2
	0ymEHeUmqZDkClRBPrx23TkYQsc7rOpWIZfIDzH/qlBtoDC7dJAcu+BIFlEeuWLTxxLM
	1QE9FGtvaakfR1V5rlclnkRufezbGyLzCp4pBK9qE/zbPcF2f0cxWcUow5FhrowRF0iY
	1UWQ==
X-Gm-Message-State: AG10YOQIjxbsbGtYBnkbS5np+QrpkkPg9J2fPZr0XaDSO3hq3lpMGYBQ/VtjO4T1sToH8JNvxUmOqafzjH7/vg==
X-Received: by 10.28.53.134 with SMTP id c128mr5990031wma.10.1456057815727;
	Sun, 21 Feb 2016 04:30:15 -0800 (PST)
MIME-Version: 1.0
References: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
	<CAMKF1soimB54aRBbDjxG=jfk5H0aThNAONqnxxzBujnxrE84mQ@mail.gmail.com>
In-Reply-To: <CAMKF1soimB54aRBbDjxG=jfk5H0aThNAONqnxxzBujnxrE84mQ@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Sun, 21 Feb 2016 12:30:06 +0000
Message-ID: <CAP2S6e7-SK2RwXsFjiAch8Rpiv56C7ziD_WpiiKquXiAESKpUg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
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
X-List-Received-Date: Sun, 21 Feb 2016 12:30:21 -0000
Content-Type: multipart/alternative; boundary=001a11498056e1050b052c46e004

--001a11498056e1050b052c46e004
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, sorry it was my first (tiny) try at a contribution ... Should I have
explained more in the title ?

Next Thing Co changed the Licences/README file in their repo.
And in the u-boot.inc file used by u-boot-chip, this file is chekced with
LIC_FILES_CHKSUM. And so it doesn't build without a modification of the md5=
.
That's it !


Le sam. 20 f=C3=A9vr. 2016 =C3=A0 20:09, Khem Raj <raj.khem@gmail.com> a =
=C3=A9crit :

> On Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND
> <valentin.lebescond@gmail.com> wrote:
> > From: Nitnelav <valentin.lebescond@gmail.com>
> >
> > Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
> > ---
> >  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot=
/
> u-boot-chip_git.bb
> > index 2342478..0b9032f 100644
> > --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> > +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> > @@ -8,6 +8,8 @@ PROVIDES +=3D "u-boot"
> >  UBOOT_VERSION ?=3D "2015.07"
> >  PV =3D "${UBOOT_VERSION}+git${SRCPV}"
> >
> > +LIC_FILES_CHKSUM =3D
> "file://Licenses/README;md5=3D0507cd7da8e7ad6d6701926ec9b84c95"
> > +
>
> while checksumming more is merrier, it would be good to know why we
> should check for this one ?
>
> >  SRCREV ?=3D "854d5fcc641d8d8914c03a69d7172815d5b81a99"
> >  BRANCH ?=3D "chip/stable"
> >  SRC_URI =3D "git://
> github.com/NextThingCo/CHIP-u-boot.git;branch=3D${BRANCH}
> <http://github.com/NextThingCo/CHIP-u-boot.git;branch=3D$%7BBRANCH%7D>"
> > --
> > 1.9.1
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--001a11498056e1050b052c46e004
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi, sorry it was my first (tiny) try at a c=
ontribution ... Should I have explained more in the title ?<br><br>Next Thi=
ng Co changed the Licences/README file in their repo.<br></div>And in the u=
-boot.inc file used by u-boot-chip, this file is chekced with LIC_FILES_CHK=
SUM. And so it doesn&#39;t build without a modification of the md5.<br></di=
v>That&#39;s it !<br></div><div><div><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0sam. 20 f=C3=A9vr. 2016 =C3=A0=C2=
=A020:09, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail=
.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On=
 Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND<br>
&lt;<a href=3D"mailto:valentin.lebescond@gmail.com" target=3D"_blank">valen=
tin.lebescond@gmail.com</a>&gt; wrote:<br>
&gt; From: Nitnelav &lt;<a href=3D"mailto:valentin.lebescond@gmail.com" tar=
get=3D"_blank">valentin.lebescond@gmail.com</a>&gt;<br>
&gt;<br>
&gt; Signed-off-by: Nitnelav &lt;<a href=3D"mailto:valentin.lebescond@gmail=
.com" target=3D"_blank">valentin.lebescond@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-chip_git.bb</a> | 2 ++<br>
&gt;=C2=A0 1 file changed, 2 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" =
rel=3D"noreferrer" target=3D"_blank">u-boot-chip_git.bb</a> b/recipes-bsp/u=
-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"noreferrer" target=3D"_b=
lank">u-boot-chip_git.bb</a><br>
&gt; index 2342478..0b9032f 100644<br>
&gt; --- a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-chip_git.bb</a><br>
&gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-chip_git.bb</a><br>
&gt; @@ -8,6 +8,8 @@ PROVIDES +=3D &quot;u-boot&quot;<br>
&gt;=C2=A0 UBOOT_VERSION ?=3D &quot;2015.07&quot;<br>
&gt;=C2=A0 PV =3D &quot;${UBOOT_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; +LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3D0507cd7da8e7a=
d6d6701926ec9b84c95&quot;<br>
&gt; +<br>
<br>
while checksumming more is merrier, it would be good to know why we<br>
should check for this one ?<br>
<br>
&gt;=C2=A0 SRCREV ?=3D &quot;854d5fcc641d8d8914c03a69d7172815d5b81a99&quot;=
<br>
&gt;=C2=A0 BRANCH ?=3D &quot;chip/stable&quot;<br>
&gt;=C2=A0 SRC_URI =3D &quot;git://<a href=3D"http://github.com/NextThingCo=
/CHIP-u-boot.git;branch=3D$%7BBRANCH%7D" rel=3D"noreferrer" target=3D"_blan=
k">github.com/NextThingCo/CHIP-u-boot.git;branch=3D${BRANCH}</a>&quot;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--001a11498056e1050b052c46e004--
