Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1A3C3DA7F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 13:13:49 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web10.33054.1723036423041816668
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 06:13:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UF1nhnY9;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2cf213128a1so1180972a91.2
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 06:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723036422; x=1723641222; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CKfYjBBxdW7dSsWXFnSybS0Dd8BZG7HMixojXplUh9Y=;
        b=UF1nhnY9YcRTffM/Qk6fs0vj38q3AoYqNUX+IbBlAS03m6K6zmezZhjovhvTxk6TA2
         sPlLQaBgiP69d3t5DaI8LKTYB9pxSga2m1oRTf3jfsmCQq+Wi89lWKhiphU5eEPsVw02
         jMlVsiPFfZs8ZSXbP1hB3N0OlwoiZrBG+VFl2bJ8iYDRtLIsgV9Lk/3aDc94v0IwChHW
         7abvYnjLbIZ92vNSY56glMgg+eUXT1+B8wrByeGTgZf5hTPe8u0te9q69fyKt2bsh9iQ
         NeeLjdZDfO/fIz7+LELWXW2q9t+gKM9+D3EBa05MLB+3KHTSMvS3x73VH/hbjtL93hfd
         /YIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723036422; x=1723641222;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CKfYjBBxdW7dSsWXFnSybS0Dd8BZG7HMixojXplUh9Y=;
        b=Po4WEmx7hNN3VRe/1K5xEttak072IfKfu8tU5t5/VQuWJy3Bv4WBj+08E2pFxX0Jzh
         yHLkHC8DwbYFB3EnVHgYwTP96PcT3UjT6/7JYKOnWYkVK/rKP2bWHDHK+3SCiYtMJI2+
         KcHOSnnRqjo1ddBL4o7UIU0n160l4I+kNGxNRHruEVrDEHIIfUV3dDU5etfAbSL6CACw
         ZrPIlcXIlTe57MvxOAbRzWjRZ7osgi6VFyP/yP796mz0Q7BzABDj2/P8GDFBuVMEz7Kb
         gtFIhtplg8AW1nmEIbcuBk/n9KlqkFey6/8T6eG92nPXV6L86YN/rfmYfEAbFIPkf7kS
         dcKQ==
X-Gm-Message-State: AOJu0YzL7WtKRJsZaDLJQ28ESLknmeIidOFk5OsVvnBtlpIgBhEz2q4h
	/OhpylKHnzfBhj/nhejtI45vtxslnE8qEZdGCsE3pk4XP/I0qlCszvWuQ2g+R3UkLM1XkDAt4oB
	qFCzPEL1o3PvI6jLOOpCqhqLr1p8=
X-Google-Smtp-Source: AGHT+IE4TWxtf//WBnOcSXVDvlu43npZ772JrImC08RKV5+VamoVH+8/rPH8loMjKV7+Rpny2b7vq5brzyzMI3JmtW0=
X-Received: by 2002:a17:90a:a38d:b0:2c8:f3b4:421 with SMTP id
 98e67ed59e1d1-2cff93d40d9mr18372972a91.4.1723036422122; Wed, 07 Aug 2024
 06:13:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
 <ZrM8ikxC3AwTgDHR@nuoska>
In-Reply-To: <ZrM8ikxC3AwTgDHR@nuoska>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Wed, 7 Aug 2024 15:13:31 +0200
Message-ID: <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e0384b061f17adec"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 13:13:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63672

--000000000000e0384b061f17adec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the fast reply!

- The library is *not* pre-compiled, here's the makefile rule that produce
it :

CFLAGS ?=3D -std=3Dgnu99 -Wall -Wextra -Wno-parentheses -Wno-switch

shared-lib:
        $(CC) -fPIC -c $(LDFLAGS) $(CFLAGS) rj2d.c
        $(CC) $(LDFLAGS) -shared -o librj2d.so.1 rj2d.o
        ln -sf librj2d.so.1 librj2d.so

It seems ok to me, but there might be something missing?

- I don't think that the name "librj2d.so" is problematic however when I
remove the line INSANE_SKIP:${PN} +=3D "dev-so" I get the following error:

ERROR: librj2d-1.1-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
package librj2d contains symlink .so '/usr/lib/librj2d.so' [dev-so]
ERROR: librj2d-1.1-r0 do_package_qa: Fatal QA errors were found, failing
task.

- Here's the recipe :

SUMMARY =3D "RJ2D lib"
DEPENDS =3D ""
LICENSE =3D "..."
LIC_FILES_CHKSUM =3D "file:/..."

SRC_URI =3D "git://...rj2d-lib;protocol=3Dssh;branch=3Dmaster;"
SRCREV =3D "..."

S =3D "${WORKDIR}/git"

do_compile() {
        oe_runmake all
}

do_install() {
        install -d ${D}${libdir}
        install -m 0655 librj2d.so.1 ${D}${libdir}
        ln --relative --symbolic ${D}${libdir}/librj2d.so.1
${D}${libdir}/librj2d.so
        install -d ${D}${includedir}
        install -m 0655 rj2d.h ${D}${includedir}/rj2d.h
}


FILES:${PN} +=3D "${libdir}/*.so"
FILES_SOLIBSDEV =3D ""
INSANE_SKIP:${PN} +=3D "dev-so"

RPROVIDES:${PN} +=3D "librj2d.so librj2d.so()(64bit)"

That's not the first time I have this kind of problem with shared libs and
yocto, so I really wish to make it right this time !

Bests,

Yann

On Wed, Aug 7, 2024 at 11:21=E2=80=AFAM Mikko Rapeli <mikko.rapeli@linaro.o=
rg>
wrote:

> Hi,
>
> On Wed, Aug 07, 2024 at 10:47:57AM +0200, Yann CARDAILLAC via
> lists.yoctoproject.org wrote:
> > Hi all,
> >
> > I'm working on upgrading different yocto BSPs to scarthgap, I'm having =
an
> > error that I haven't seen. It's the one described here on stack overflo=
w
> by
> > someone else:
> >
> >
> https://stackoverflow.com/questions/64984897/yocto-package-requires-share=
d-library-but-no-providers-found-in-rdepends
> >
> > I have a very simple C library package that provides a shared library.
> >
> > My package is looking very close to:
> > meta-openembedded/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb
> > <
> https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/rec=
ipes-extended/p7zip/p7zip_16.02.bb
> >
> >
> > I don't really understand why we need to add the lib7z.so()(64bit)? Is
> > there a "proper" way of avoiding that as it's not so common in other
> libs?
> >
> > I'm also not comfortable adding :
> > INSANE_SKIP:${PN} +=3D "dev-so"
> >
> > If any, can you point me to a simple library build that doesn't require
> the
> > (64bit) that I don't really understand nor the INSANE_SKIP ? To sum up =
my
> > need is to have a simple recipe for a shared library.
>
> Please set soname correctly, see
> https://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html
>
> Shared libraries without soname are bad and this test correctly finds the=
m.
>
> Cheers,
>
> -Mikko
>

--000000000000e0384b061f17adec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks for the fast=
 reply!</div><div><br></div><div>- The library is <u>not</u> pre-compiled, =
here&#39;s the makefile rule that produce it :</div><div><br></div><div>CFL=
AGS ?=3D -std=3Dgnu99 -Wall -Wextra -Wno-parentheses -Wno-switch<br><br>sha=
red-lib:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(CC) -fPIC -c $(LDFLAGS) $(CFLAGS)=
 rj2d.c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(CC) $(LDFLAGS) -shared -o librj2d.=
so.1 rj2d.o<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf librj2d.so.1 librj2d.so<b=
r></div><div><br></div><div>It seems ok to me, but there might be something=
 missing?<br></div><div><br></div><div>- I don&#39;t think that the name &q=
uot;librj2d.so&quot; is problematic however when I remove the line INSANE_S=
KIP:${PN} +=3D &quot;dev-so&quot; I get the following error:</div><div><br>=
</div><div>ERROR: librj2d-1.1-r0 do_package_qa: QA Issue: non -dev/-dbg/nat=
ivesdk- package librj2d contains symlink .so &#39;/usr/lib/librj2d.so&#39; =
[dev-so]<br>ERROR: librj2d-1.1-r0 do_package_qa: Fatal QA errors were found=
, failing task.<br></div><div><br></div><div>- Here&#39;s the recipe :</div=
><div><br></div><div>SUMMARY =3D &quot;RJ2D lib&quot;<br>DEPENDS =3D &quot;=
&quot;<br>LICENSE =3D &quot;...&quot;<br>LIC_FILES_CHKSUM =3D &quot;file:/.=
..&quot;<br><br>SRC_URI =3D &quot;git://...rj2d-lib;protocol=3Dssh;branch=
=3Dmaster;&quot;<br>SRCREV =3D &quot;...&quot;<br><br>S =3D &quot;${WORKDIR=
}/git&quot;<br><br>do_compile() {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 oe_runmake all<br>}<br><br>do_install() {<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${libdir}<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 install -m 0655 librj2d.so.1 ${D}${libdir}<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ln --relative --symbolic ${D}${libdir}/li=
brj2d.so.1 ${D}${libdir}/librj2d.so<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 install -d ${D}${includedir}<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 install -m 0655 rj2d.h ${D}${includedir}/rj2d.h<br>}<br><br><br>FILE=
S:${PN} +=3D &quot;${libdir}/*.so&quot;<br>FILES_SOLIBSDEV =3D &quot;&quot;=
<br>INSANE_SKIP:${PN} +=3D &quot;dev-so&quot;<br><br>RPROVIDES:${PN} +=3D &=
quot;librj2d.so librj2d.so()(64bit)&quot;<br></div><div><br></div><div>That=
&#39;s not the first time I have this kind of problem with shared libs and =
yocto, so I really wish to make it right this time !<br></div><div><br></di=
v><div>Bests,<br></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_=
signature"><div dir=3D"ltr"><div>Yann</div></div></div></div></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Aug 7, 2024 at 11:21=E2=80=AFAM Mikko Rapeli &lt;<a href=3D"mailto:mi=
kko.rapeli@linaro.org">mikko.rapeli@linaro.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Wed, Aug 07, 2024 at 10:47:57AM +0200, Yann CARDAILLAC via <a href=3D"ht=
tp://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoc=
toproject.org</a> wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I&#39;m working on upgrading different yocto BSPs to scarthgap, I&#39;=
m having an<br>
&gt; error that I haven&#39;t seen. It&#39;s the one described here on stac=
k overflow by<br>
&gt; someone else:<br>
&gt; <br>
&gt; <a href=3D"https://stackoverflow.com/questions/64984897/yocto-package-=
requires-shared-library-but-no-providers-found-in-rdepends" rel=3D"noreferr=
er" target=3D"_blank">https://stackoverflow.com/questions/64984897/yocto-pa=
ckage-requires-shared-library-but-no-providers-found-in-rdepends</a><br>
&gt; <br>
&gt; I have a very simple C library package that provides a shared library.=
<br>
&gt; <br>
&gt; My package is looking very close to:<br>
&gt; meta-openembedded/meta-oe/recipes-extended/p7zip/<a href=3D"http://p7z=
ip_16.02.bb" rel=3D"noreferrer" target=3D"_blank">p7zip_16.02.bb</a><br>
&gt; &lt;<a href=3D"https://github.com/openembedded/meta-openembedded/blob/=
master/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/openembedded/meta-openembedded/blob/mast=
er/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb</a>&gt;<br>
&gt; <br>
&gt; I don&#39;t really understand why we need to add the lib7z.so()(64bit)=
? Is<br>
&gt; there a &quot;proper&quot; way of avoiding that as it&#39;s not so com=
mon in other libs?<br>
&gt; <br>
&gt; I&#39;m also not comfortable adding :<br>
&gt; INSANE_SKIP:${PN} +=3D &quot;dev-so&quot;<br>
&gt; <br>
&gt; If any, can you point me to a simple library build that doesn&#39;t re=
quire the<br>
&gt; (64bit) that I don&#39;t really understand nor the INSANE_SKIP ? To su=
m up my<br>
&gt; need is to have a simple recipe for a shared library.<br>
<br>
Please set soname correctly, see<br>
<a href=3D"https://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.ht=
ml" rel=3D"noreferrer" target=3D"_blank">https://tldp.org/HOWTO/Program-Lib=
rary-HOWTO/shared-libraries.html</a><br>
<br>
Shared libraries without soname are bad and this test correctly finds them.=
<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</blockquote></div>

--000000000000e0384b061f17adec--

