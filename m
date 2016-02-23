Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 669B6E00CB9; Tue, 23 Feb 2016 01:40:50 -0800 (PST)
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
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2843E00C20
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 01:40:48 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id g62so201254638wme.0
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 01:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8SDTBUU1twVpZg3eqRj5uccvGIhZ494aDRQYshcHVJ0=;
	b=baETRhbaBd8EFU/LkMNFMF8qiLb6OsWYa40kvOOxx9WWMvKZtcaaaD2/GTbO05ggpa
	YJr19nYFw/qXTThz1nHD+r25b3lCznU9oJhQ955KdXl+zaS8WTQVAsQrd6KwE1v8s6G/
	0B5/Gy5BXw8klxwziNRFhaD/X6Tka8XJcgIM8e6T/O6TP+pdTPnUy7cpBdoWRnm27Vzi
	BPgCC/vLHYYaecGum74nBreaYW6kYMOrcEpboIWXFhqbJIv3Z4DpVy5JUpY7Yg+64Nwr
	B0cxeQYnaeY3ZZ5vGWmuLv/Jbrq3fYHspWLR9gmDPNtIgbS9X727qxDk0WNJfbeleR7P
	389g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8SDTBUU1twVpZg3eqRj5uccvGIhZ494aDRQYshcHVJ0=;
	b=b6FNQFnm0zrOuUwB75KuOLOK+hCMYUzoaBAejBEip9DhPP0N8ypBQ4kom0jM8tDJXt
	nssJEWueHj/O0fsVb8DukQlJVbtXFtyn3qppwiq+TZWq+G/RlNf1LM+QpH9IXNyNeOZn
	I/O0dG/1S1K4U/kR5+N1fO0XR/e5Z2ghBNeBS2Pog0rj2b0Oxd7LpbirgufEmlj8Zwg1
	6RsAOtDy0WGn+uROBYpiCYZZcPq7+FxhZXNTWSs8bRrtfoDFs/bMdfrXAw7a9Ke62M4U
	UyBJ94MNT1TEjOT7+GcLlXb0X0JyvH5AbVy57/mS0t0E9jGv8hjERDeoKsoRiRzMLc7C
	NCfw==
X-Gm-Message-State: AG10YOSzrMdvcVpwhs49ursJb7dvHgE2Aojs65VBWKg3g7a6qoKgw/UX5BxUEbpXXTS2HfB/4p4qO+GAevxLvQ==
X-Received: by 10.28.229.132 with SMTP id c126mr16543143wmh.72.1456220447630; 
	Tue, 23 Feb 2016 01:40:47 -0800 (PST)
MIME-Version: 1.0
References: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
	<CAMKF1soimB54aRBbDjxG=jfk5H0aThNAONqnxxzBujnxrE84mQ@mail.gmail.com>
	<CAP2S6e7-SK2RwXsFjiAch8Rpiv56C7ziD_WpiiKquXiAESKpUg@mail.gmail.com>
	<CAMKF1sqzf81Yu3p+RR43Cq2eyRDFR58Z8AENVVxbUZRdRV=pbg@mail.gmail.com>
In-Reply-To: <CAMKF1sqzf81Yu3p+RR43Cq2eyRDFR58Z8AENVVxbUZRdRV=pbg@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Tue, 23 Feb 2016 09:40:37 +0000
Message-ID: <CAP2S6e7kN9+heZkSimHg2OtuqhqSfYS7pUjp4fD5oLwEwNz12A@mail.gmail.com>
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
X-List-Received-Date: Tue, 23 Feb 2016 09:40:50 -0000
Content-Type: multipart/alternative; boundary=001a1145bb927eee7e052c6cbeec

--001a1145bb927eee7e052c6cbeec
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Cool,

By the way @Olivier, did you manage to flash the board at some point ?
I spent a hole weekend trying to...

Le lun. 22 f=C3=A9vr. 2016 =C3=A0 19:00, Khem Raj <raj.khem@gmail.com> a =
=C3=A9crit :

> On Sun, Feb 21, 2016 at 4:30 AM, Valentin Le bescond
> <valentin.lebescond@gmail.com> wrote:
> > Hi, sorry it was my first (tiny) try at a contribution ... Should I hav=
e
> > explained more in the title ?
> >
> > Next Thing Co changed the Licences/README file in their repo.
> > And in the u-boot.inc file used by u-boot-chip, this file is chekced wi=
th
> > LIC_FILES_CHKSUM. And so it doesn't build without a modification of the
> md5.
> > That's it !
> >
>
> hmmm ok.
>
> >
> > Le sam. 20 f=C3=A9vr. 2016 =C3=A0 20:09, Khem Raj <raj.khem@gmail.com> =
a =C3=A9crit :
> >>
> >> On Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND
> >> <valentin.lebescond@gmail.com> wrote:
> >> > From: Nitnelav <valentin.lebescond@gmail.com>
> >> >
> >> > Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
> >> > ---
> >> >  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
> >> >  1 file changed, 2 insertions(+)
> >> >
> >> > diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb
> >> > b/recipes-bsp/u-boot/u-boot-chip_git.bb
> >> > index 2342478..0b9032f 100644
> >> > --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> >> > +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> >> > @@ -8,6 +8,8 @@ PROVIDES +=3D "u-boot"
> >> >  UBOOT_VERSION ?=3D "2015.07"
> >> >  PV =3D "${UBOOT_VERSION}+git${SRCPV}"
> >> >
> >> > +LIC_FILES_CHKSUM =3D
> >> > "file://Licenses/README;md5=3D0507cd7da8e7ad6d6701926ec9b84c95"
> >> > +
> >>
> >> while checksumming more is merrier, it would be good to know why we
> >> should check for this one ?
> >>
> >> >  SRCREV ?=3D "854d5fcc641d8d8914c03a69d7172815d5b81a99"
> >> >  BRANCH ?=3D "chip/stable"
> >> >  SRC_URI =3D
> >> > "git://github.com/NextThingCo/CHIP-u-boot.git;branch=3D${BRANCH}
> <http://github.com/NextThingCo/CHIP-u-boot.git;branch=3D$%7BBRANCH%7D>"
> >> > --
> >> > 1.9.1
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
>

--001a1145bb927eee7e052c6cbeec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Cool,<br><br></div>By the way @Olivier, did you manag=
e to flash the board at some point ?<br>I spent a hole weekend trying to...=
<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0lun. 22 f=
=C3=A9vr. 2016 =C3=A0=C2=A019:00, Khem Raj &lt;<a href=3D"mailto:raj.khem@g=
mail.com">raj.khem@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">On Sun, Feb 21, 2016 at 4:30 AM, Valentin Le bescond<=
br>
&lt;<a href=3D"mailto:valentin.lebescond@gmail.com" target=3D"_blank">valen=
tin.lebescond@gmail.com</a>&gt; wrote:<br>
&gt; Hi, sorry it was my first (tiny) try at a contribution ... Should I ha=
ve<br>
&gt; explained more in the title ?<br>
&gt;<br>
&gt; Next Thing Co changed the Licences/README file in their repo.<br>
&gt; And in the u-boot.inc file used by u-boot-chip, this file is chekced w=
ith<br>
&gt; LIC_FILES_CHKSUM. And so it doesn&#39;t build without a modification o=
f the md5.<br>
&gt; That&#39;s it !<br>
&gt;<br>
<br>
hmmm ok.<br>
<br>
&gt;<br>
&gt; Le sam. 20 f=C3=A9vr. 2016 =C3=A0 20:09, Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; a =C3=A9=
crit :<br>
&gt;&gt;<br>
&gt;&gt; On Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND<br>
&gt;&gt; &lt;<a href=3D"mailto:valentin.lebescond@gmail.com" target=3D"_bla=
nk">valentin.lebescond@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; From: Nitnelav &lt;<a href=3D"mailto:valentin.lebescond@gmail=
.com" target=3D"_blank">valentin.lebescond@gmail.com</a>&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Signed-off-by: Nitnelav &lt;<a href=3D"mailto:valentin.lebesc=
ond@gmail.com" target=3D"_blank">valentin.lebescond@gmail.com</a>&gt;<br>
&gt;&gt; &gt; ---<br>
&gt;&gt; &gt;=C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb=
" rel=3D"noreferrer" target=3D"_blank">u-boot-chip_git.bb</a> | 2 ++<br>
&gt;&gt; &gt;=C2=A0 1 file changed, 2 insertions(+)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip=
_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-chip_git.bb</a><br>
&gt;&gt; &gt; b/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" re=
l=3D"noreferrer" target=3D"_blank">u-boot-chip_git.bb</a><br>
&gt;&gt; &gt; index 2342478..0b9032f 100644<br>
&gt;&gt; &gt; --- a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb=
" rel=3D"noreferrer" target=3D"_blank">u-boot-chip_git.bb</a><br>
&gt;&gt; &gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb=
" rel=3D"noreferrer" target=3D"_blank">u-boot-chip_git.bb</a><br>
&gt;&gt; &gt; @@ -8,6 +8,8 @@ PROVIDES +=3D &quot;u-boot&quot;<br>
&gt;&gt; &gt;=C2=A0 UBOOT_VERSION ?=3D &quot;2015.07&quot;<br>
&gt;&gt; &gt;=C2=A0 PV =3D &quot;${UBOOT_VERSION}+git${SRCPV}&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; +LIC_FILES_CHKSUM =3D<br>
&gt;&gt; &gt; &quot;file://Licenses/README;md5=3D0507cd7da8e7ad6d6701926ec9=
b84c95&quot;<br>
&gt;&gt; &gt; +<br>
&gt;&gt;<br>
&gt;&gt; while checksumming more is merrier, it would be good to know why w=
e<br>
&gt;&gt; should check for this one ?<br>
&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 SRCREV ?=3D &quot;854d5fcc641d8d8914c03a69d7172815d5b81=
a99&quot;<br>
&gt;&gt; &gt;=C2=A0 BRANCH ?=3D &quot;chip/stable&quot;<br>
&gt;&gt; &gt;=C2=A0 SRC_URI =3D<br>
&gt;&gt; &gt; &quot;git://<a href=3D"http://github.com/NextThingCo/CHIP-u-b=
oot.git;branch=3D$%7BBRANCH%7D" rel=3D"noreferrer" target=3D"_blank">github=
.com/NextThingCo/CHIP-u-boot.git;branch=3D${BRANCH}</a>&quot;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; 1.9.1<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div>

--001a1145bb927eee7e052c6cbeec--
