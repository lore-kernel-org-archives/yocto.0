Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C39A0E00D30; Thu,  6 Jun 2019 06:59:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC89FE00D11
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 06:59:29 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id m15so2109344ljg.13
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 06:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HEh6ClwkTG4aMx3zJ+pto+IeEKEGVn2eoBiWaDN7oqk=;
	b=kRZUg1w7JBNCUSLgdZgur/X/AIaENaBuijKgsv7Nhb+cRahrpcmSERT82M+sRLNX6f
	q2il2kC7n2J31kVN2rQzeEm3OlhSJO5I/LTqUP+cOwczCpK9IbxiNk//OGFh0pM68QTP
	6+52BF1ZuKaQOcpM9H5WVq7Xw1zEwHN06m0q065dK+iH73MMBggrxA1mqbyZnPozkC+L
	A50MRUe7WYZWdW6sdbEI1DHtikwJr1IDNvpClTdlHEfT8vTcWLWSBTihIdC9sVSfb0IJ
	QzKg/rTVGGoBaNfQTak7E4CZXr8S+qAWxof1SBevXzOGy3IxknwfuHByOz2gsNuq3e/e
	TPsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HEh6ClwkTG4aMx3zJ+pto+IeEKEGVn2eoBiWaDN7oqk=;
	b=aDVL2jec+yVsxLaNVeXTmT+UEmYBpmyZXI5VQJV6uv8M03lBf54yPmQU+sIfMtDNIq
	RlhQfiKSKU6Yant97FR+8m+e+SiLbfQfAbSoz7XmBPLK9S2eEa26eB62itOKdJvMUxPS
	/Y3sa3RVsANsPVUw2kitEV3mPbS1MwlaQiyNlE/Oxp2Jfo3GERJtZfhctjwRnEF5cfUD
	frwzjJD7RKUe37ros8gDyDWwqkYkvQEU7jlAgGi1e25G6OqjyGGUMbxJ3T8xHxugGBU3
	Grl3qQb016AeEy7RNzyJ5tnRWL+PEG0l2gDyddycbf0mj5h2hiwWNuiiI2YH/hzDoT6f
	9xGQ==
X-Gm-Message-State: APjAAAVGmwQcFsusyjjD70SeRfIYhi4QT6/AkGrwhmFOyLGEq70uKCvl
	Fyjddqsuyf+hCYbyzXtNkJhykSFE1euVYdy92tk=
X-Google-Smtp-Source: APXvYqxVfW14H4Oa0BbMRv3xjv/AjwV2UycqMKCY9Cv7ptK0JSNeAhnBsDiga3tG5trrM2eJ+hbGlLMreD/ifBwdNpM=
X-Received: by 2002:a2e:90d1:: with SMTP id o17mr25116346ljg.187.1559829568953;
	Thu, 06 Jun 2019 06:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <421b2493-0fe5-c286-bf96-e6888264806a@bisdn.de>
	<CADkTA4POtjuyzbwNLs3ZwwJwCbrY_4V7Ccp2+LcECnCzpphQ1Q@mail.gmail.com>
In-Reply-To: <CADkTA4POtjuyzbwNLs3ZwwJwCbrY_4V7Ccp2+LcECnCzpphQ1Q@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Thu, 6 Jun 2019 15:59:17 +0200
Message-ID: <CAAx3WaCOq=vv6_RwZq=6LEvavh-U3dnt+aSe_eaPHA-ey4yd9g@mail.gmail.com>
To: Pierluigi Greto <pierluigi.greto@bisdn.de>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: arm yocto-linux custom defconfig not working
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
X-List-Received-Date: Thu, 06 Jun 2019 13:59:30 -0000
Content-Type: multipart/alternative; boundary="0000000000005e25b5058aa81f88"

--0000000000005e25b5058aa81f88
Content-Type: text/plain; charset="UTF-8"

Hi Pierluigi,

just to be clear, have you specified your defconfig in the SRC_URI of your
kernel recipe? You can write an append file (that I guess you already did)
and add:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append= " file://defconfig"

The above snippet assume that you are placing defconfig in files/

Gabriele

Il giorno gio 6 giu 2019 alle ore 15:47 Bruce Ashfield <
bruce.ashfield@gmail.com> ha scritto:

> On Thu, Jun 6, 2019 at 9:38 AM Pierluigi Greto <pierluigi.greto@bisdn.de>
> wrote:
> >
> > Hi,
> >
> > I have to create a custom 4.14.49 linux kernel. In my recipe I have
> added my defconfig, but yocto it's not taking in consideration the
> defconfig. Instead it's building the kernel using the default values. Also
> the compilation task is to fast for building the kernel. My target system
> is an arm architecture (DEFAULTTUNE ?= "cortexa9").
> > I have tried also to append this on my recipe but the result does not
> change:
>
> Can you share your kernel recipe and layer(s) + defconfig ? Things are
> working fine for me, but if I can see (and build) your recipes perhaps
> something can be spotted.
>
> Bruce
>
> >
> > do_compile_prepend() {
> >      cp ${WORKDIR}/defconfig ${B}/defconfig
> >      cp ${WORKDIR}/defconfig ${B}/.config
> >      oe_runmake -C ${B} ARCH=${ARCH} ${S}/defconfig
> > }
> >
> > If i try to "cheat" and add cp ${WORKDIR}/defconfig ${S}/.config on the
> do_compile_prepend obviously make will not work: "kernel-source is not
> clean, please run 'make mrprop' ".
> >
> > Any suggestions is very welcome.
> >
> > Thank you,
> > Pierluigi
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000005e25b5058aa81f88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Pierluigi,</div><div><br></div><div>just to be cle=
ar, have you specified your defconfig in the SRC_URI of your kernel recipe?=
 You can write an append file (that I guess you already did) and add:</div>=
<div><br></div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&qu=
ot;</div><div>SRC_URI_append=3D &quot; file://defconfig&quot;</div><div><br=
></div><div>The above snippet assume that you are placing defconfig in file=
s/</div><br><div>Gabriele<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">Il giorno gio 6 giu 2019 alle ore 15:47 =
Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfie=
ld@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Thu, Jun 6, 2019 at 9:38 AM Pierluigi Greto &lt;<a href=
=3D"mailto:pierluigi.greto@bisdn.de" target=3D"_blank">pierluigi.greto@bisd=
n.de</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have to create a custom 4.14.49 linux kernel. In my recipe I have ad=
ded my defconfig, but yocto it&#39;s not taking in consideration the defcon=
fig. Instead it&#39;s building the kernel using the default values. Also th=
e compilation task is to fast for building the kernel. My target system is =
an arm architecture (DEFAULTTUNE ?=3D &quot;cortexa9&quot;).<br>
&gt; I have tried also to append this on my recipe but the result does not =
change:<br>
<br>
Can you share your kernel recipe and layer(s) + defconfig ? Things are<br>
working fine for me, but if I can see (and build) your recipes perhaps<br>
something can be spotted.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; do_compile_prepend() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/defconfig ${B}/defconfig<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/defconfig ${B}/.config<br>
&gt;=C2=A0 =C2=A0 =C2=A0 oe_runmake -C ${B} ARCH=3D${ARCH} ${S}/defconfig<b=
r>
&gt; }<br>
&gt;<br>
&gt; If i try to &quot;cheat&quot; and add cp ${WORKDIR}/defconfig ${S}/.co=
nfig on the do_compile_prepend obviously make will not work: &quot;kernel-s=
ource is not clean, please run &#39;make mrprop&#39; &quot;.<br>
&gt;<br>
&gt; Any suggestions is very welcome.<br>
&gt;<br>
&gt; Thank you,<br>
&gt; Pierluigi<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000005e25b5058aa81f88--
