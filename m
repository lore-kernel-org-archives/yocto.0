Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B10C3DA7F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 14:14:49 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.34594.1723040080995540248
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 07:14:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FClOjeeq;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-75a6c290528so1311590a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 07:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723040080; x=1723644880; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zdUcp/IwFUZsK+Hq7ggNcwWPVG0tMGG8UarPdh9Szpc=;
        b=FClOjeeqKJ6IEgVLO/M6+3VqboyJIMl0SI2lLZPqzDCd+Uk8PPuLy2MVj2sCeATz9g
         QJmwzNKlZtX/FKJGLScpwjzwVAOZq3iSu5c36qb+6oKN6tqovmkL9w29lbdxHxFggxN9
         lvEjVCdvGnbKwCnd5T8GGWdikXYAGXfPk6W0xmEwje5NoJ/3/72yFwMMkFhUPBhfN4az
         6LYHqI2jzQpTdOTocCWKKqpKE8ln8fM7uQurhoAadL6UlUCzOhgzem5mGQDe5GYVphQL
         kfRYwLwGDVueS10xxwfgSHwQTkXuZIwr20Cv/lWg+7JAzikUOIvL/jT3WOcBnhXLd56o
         v7jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723040080; x=1723644880;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zdUcp/IwFUZsK+Hq7ggNcwWPVG0tMGG8UarPdh9Szpc=;
        b=ay+vOFsfhbrzLqAIGCib6b6NM34O4AI4xri69DURBWR0BDjeg1bC8InZaT4hnQ6joc
         n6iNK1RfZcWYyUOCCJyMaTP0BnmM9pDzx8adx9f77BhrQjxYF+Bg0gei+kS9+ZcSuDDq
         o3FnckxFHlMrVI8WRrTPmuZ5fk8xBtXP3T6l1mHGMv6FmSAP7wn/4ZpcUJudjXiy7TqI
         Tq+dfBO/P71jgTUzWl6d36O5KJnPlIBO4yFHfcIxRok602LBDaU2330QZ62bK9qilfdN
         8wgBrKE4G+DCR9kQsPKCdC3Qpa4w3616Mbn2PI8pmx2QgCz0n2PcnWhIcA373HaPnbnx
         9zAg==
X-Gm-Message-State: AOJu0YxoIF6uC9tIto88UzQtnn1mMI9Ralp9kxTUD1z+1qHk7OFcYRo2
	p0O4MtlTYZXw5JO0iy1qzbZ8Q+kzLe4WSuBCTzavpg5LBIgGKsFRW2E5yhIhYR2yhBtrknMNOSH
	eFD0zDxcnsC82D88NCq+CX2QIlvQ=
X-Google-Smtp-Source: AGHT+IGIk2l3pOzy5iRnWSU2zOyLF5VbANBQMEv7BBSGzo22StPBPiq/17cpTCoFPtGG5NvOZE3fB1wSEHSYI5ryAVA=
X-Received: by 2002:a17:90b:1812:b0:2cd:2f63:a429 with SMTP id
 98e67ed59e1d1-2cff9552f9bmr18884915a91.35.1723040079930; Wed, 07 Aug 2024
 07:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
 <ZrM8ikxC3AwTgDHR@nuoska> <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
 <ZrN0cTChvgsn4skg@nuoska>
In-Reply-To: <ZrN0cTChvgsn4skg@nuoska>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Wed, 7 Aug 2024 16:14:29 +0200
Message-ID: <CAC3TgAJ7bwU6Q+bC6wyC-4633bQ+XHtqgv-_cnT-x9qCe5OEBQ@mail.gmail.com>
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e5ebba061f188785"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 14:14:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63674

--000000000000e5ebba061f188785
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Mikko, that was it indeed! I didn't test on target yet but it seems
ok so far!

I'm still not sure about the librj2d.so()(64bit) though any idea?

Yann CARDAILLAC,


On Wed, Aug 7, 2024 at 3:19=E2=80=AFPM Mikko Rapeli <mikko.rapeli@linaro.or=
g> wrote:

> Hi,
>
> On Wed, Aug 07, 2024 at 03:13:31PM +0200, Yann CARDAILLAC Pro wrote:
> > Thanks for the fast reply!
> >
> > - The library is *not* pre-compiled, here's the makefile rule that
> produce
> > it :
> >
> > CFLAGS ?=3D -std=3Dgnu99 -Wall -Wextra -Wno-parentheses -Wno-switch
> >
> > shared-lib:
> >         $(CC) -fPIC -c $(LDFLAGS) $(CFLAGS) rj2d.c
> >         $(CC) $(LDFLAGS) -shared -o librj2d.so.1 rj2d.o
> >         ln -sf librj2d.so.1 librj2d.so
> >
> > It seems ok to me, but there might be something missing?
> >
> > - I don't think that the name "librj2d.so" is problematic however when =
I
> > remove the line INSANE_SKIP:${PN} +=3D "dev-so" I get the following err=
or:
> >
> > ERROR: librj2d-1.1-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
> > package librj2d contains symlink .so '/usr/lib/librj2d.so' [dev-so]
> > ERROR: librj2d-1.1-r0 do_package_qa: Fatal QA errors were found, failin=
g
> > task.
> >
> > - Here's the recipe :
> >
> > SUMMARY =3D "RJ2D lib"
> > DEPENDS =3D ""
> > LICENSE =3D "..."
> > LIC_FILES_CHKSUM =3D "file:/..."
> >
> > SRC_URI =3D "git://...rj2d-lib;protocol=3Dssh;branch=3Dmaster;"
> > SRCREV =3D "..."
> >
> > S =3D "${WORKDIR}/git"
> >
> > do_compile() {
> >         oe_runmake all
> > }
> >
> > do_install() {
> >         install -d ${D}${libdir}
> >         install -m 0655 librj2d.so.1 ${D}${libdir}
> >         ln --relative --symbolic ${D}${libdir}/librj2d.so.1
> > ${D}${libdir}/librj2d.so
> >         install -d ${D}${includedir}
> >         install -m 0655 rj2d.h ${D}${includedir}/rj2d.h
> > }
> >
> >
> > FILES:${PN} +=3D "${libdir}/*.so"
>
> Don't install the .so symlink to main package but to ${PN}-dev.
>
> FILES:${PN} +=3D "${libdir}/*.so.1"
> FILES:${PN}-dev +=3D "${libdir}/*.so"
>
> if those are not the default, which I suspect they are.
>
> Cheers,
>
> -Mikko
>

--000000000000e5ebba061f188785
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Mikko, that was it indeed! I didn&#39;t test o=
n target yet but it seems ok so far!</div><div><br></div><div>I&#39;m still=
 not sure about the librj2d.so()(64bit) though any idea?<br></div><div><br>=
</div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>Yann CARDAILLAC,<br></div><br></=
div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Aug 7, 2024 at 3:19=E2=80=AFPM Mikko Rapeli &=
lt;<a href=3D"mailto:mikko.rapeli@linaro.org">mikko.rapeli@linaro.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br=
>
<br>
On Wed, Aug 07, 2024 at 03:13:31PM +0200, Yann CARDAILLAC Pro wrote:<br>
&gt; Thanks for the fast reply!<br>
&gt; <br>
&gt; - The library is *not* pre-compiled, here&#39;s the makefile rule that=
 produce<br>
&gt; it :<br>
&gt; <br>
&gt; CFLAGS ?=3D -std=3Dgnu99 -Wall -Wextra -Wno-parentheses -Wno-switch<br=
>
&gt; <br>
&gt; shared-lib:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) -fPIC -c $(LDFLAGS) $(CFLAGS) r=
j2d.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) $(LDFLAGS) -shared -o librj2d.s=
o.1 rj2d.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf librj2d.so.1 librj2d.so<br>
&gt; <br>
&gt; It seems ok to me, but there might be something missing?<br>
&gt; <br>
&gt; - I don&#39;t think that the name &quot;librj2d.so&quot; is problemati=
c however when I<br>
&gt; remove the line INSANE_SKIP:${PN} +=3D &quot;dev-so&quot; I get the fo=
llowing error:<br>
&gt; <br>
&gt; ERROR: librj2d-1.1-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk=
-<br>
&gt; package librj2d contains symlink .so &#39;/usr/lib/librj2d.so&#39; [de=
v-so]<br>
&gt; ERROR: librj2d-1.1-r0 do_package_qa: Fatal QA errors were found, faili=
ng<br>
&gt; task.<br>
&gt; <br>
&gt; - Here&#39;s the recipe :<br>
&gt; <br>
&gt; SUMMARY =3D &quot;RJ2D lib&quot;<br>
&gt; DEPENDS =3D &quot;&quot;<br>
&gt; LICENSE =3D &quot;...&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file:/...&quot;<br>
&gt; <br>
&gt; SRC_URI =3D &quot;git://...rj2d-lib;protocol=3Dssh;branch=3Dmaster;&qu=
ot;<br>
&gt; SRCREV =3D &quot;...&quot;<br>
&gt; <br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt; <br>
&gt; do_compile() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0oe_runmake all<br>
&gt; }<br>
&gt; <br>
&gt; do_install() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${libdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0655 librj2d.so.1 ${D}${li=
bdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln --relative --symbolic ${D}${libdir=
}/librj2d.so.1<br>
&gt; ${D}${libdir}/librj2d.so<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${includedir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0655 rj2d.h ${D}${included=
ir}/rj2d.h<br>
&gt; }<br>
&gt; <br>
&gt; <br>
&gt; FILES:${PN} +=3D &quot;${libdir}/*.so&quot;<br>
<br>
Don&#39;t install the .so symlink to main package but to ${PN}-dev.<br>
<br>
FILES:${PN} +=3D &quot;${libdir}/*.so.1&quot;<br>
FILES:${PN}-dev +=3D &quot;${libdir}/*.so&quot;<br>
<br>
if those are not the default, which I suspect they are.<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</blockquote></div>

--000000000000e5ebba061f188785--

