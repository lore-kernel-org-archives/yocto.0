Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB148CD6E55
	for <webhook@archiver.kernel.org>; Wed,  3 Jun 2026 17:30:28 +0000 (UTC)
Subject: Task chain for population to sysroot-native?
To: yocto@lists.yoctoproject.org
From: "H. Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (91.11.222.118)
X-Originating-Platform: Linux Firefox 151
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Jun 2026 10:30:26 -0700
Message-ID: <2QUP.1780507826891383486.LNlm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="T698tiv4X0eaMvBMvFBS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2026 17:30:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66587

--T698tiv4X0eaMvBMvFBS
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi!

We have the need to modify some fonts at Yocto build time. So, I created a =
recipe for [fonttools python module](https://github.com/fonttools/fonttools=
) on which our recipe `DEPENDS`. The goal is to have the font tools availab=
le at build time of our recipe by populating to `recipe-sysroot-native`. Ou=
r recipe depends on fonttools like this:

```
DEPENDS =3D+ "fonttools-native"
```

And the fonttools recipe looks like this:

```
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D211c9e4671bde3881351f22a2901f692=
"

PV =3D "4.63.0"

SRC_URI =3D "git://github.com/fonttools/fonttools.git;protocol=3Dhttps;bran=
ch=3Dmain"
SRCREV =3D "7fc2aa089b1bdc0d03157de2423e9b6681d22c20"

S =3D "${WORKDIR}/git"

inherit setuptools3

BBCLASSEXTEND =3D "native"

do_install:append() {
    install -d ${D}${bindir}
    for PYFILE in ${S}/Snippets/*.py
    do
        install -m 0755 ${PYFILE} ${D}${bindir}
    done
}
```
The problem is that nothing gets populated to `recipe-sysroot-native` when =
our receipe gets build. But the font tools package gets perfectly build sta=
nd alone.

So the question is what tasks are called when doing populate sysroot native=
. Where does the populate-sysroot-native task gets the files from? I had a =
look at `${SYSROOT_DIRS_NATIVE}` and `${D}${bindir}` is one of the folders.=
 So, at least the files I added via `do_install:append()` should be availab=
le in `recipe-sysroot-native`.

Can please someone shine some light on this?

Thanks in advance.

H. Wulff

--T698tiv4X0eaMvBMvFBS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p>

<p>We have the need to modify some fonts at Yocto build time. So, I created=
 a recipe for <a href=3D"https://github.com/fonttools/fonttools" target=3D"=
_blank">fonttools python module</a> on which our recipe <code>DEPENDS</code=
>. The goal is to have the font tools available at build time of our recipe=
 by populating to <code>recipe-sysroot-native</code>. Our recipe depends on=
 fonttools like this:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">DEPENDS =3D+ &#=
34;fonttools-native&#34;
</code></pre>
<p>And the fonttools recipe looks like this:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">LICENSE =3D &#3=
4;MIT&#34;
LIC_FILES_CHKSUM =3D &#34;file://LICENSE;md5=3D211c9e4671bde3881351f22a2901=
f692&#34;

PV =3D &#34;4.63.0&#34;

SRC_URI =3D &#34;git://github.com/fonttools/fonttools.git;protocol=3Dhttps;=
branch=3Dmain&#34;
SRCREV =3D &#34;7fc2aa089b1bdc0d03157de2423e9b6681d22c20&#34;

S =3D &#34;${WORKDIR}/git&#34;

inherit setuptools3

BBCLASSEXTEND =3D &#34;native&#34;

do_install:append() {
    install -d ${D}${bindir}
    for PYFILE in ${S}/Snippets/*.py
    do
        install -m 0755 ${PYFILE} ${D}${bindir}
    done
}
</code></pre>
<p>The problem is that nothing gets populated to <code>recipe-sysroot-nativ=
e</code> when our receipe gets build. But the font tools package gets perfe=
ctly build stand alone.</p>

<p>So the question is what tasks are called when doing populate sysroot nat=
ive. Where does the populate-sysroot-native task gets the files from? I had=
 a look at <code>${SYSROOT_DIRS_NATIVE}</code> and <code>${D}${bindir}</cod=
e> is one of the folders. So, at least the files I added via <code>do_insta=
ll:append()</code> should be available in <code>recipe-sysroot-native</code=
>.</p>

<p>Can please someone shine some light on this?</p>

<p>Thanks in advance.</p>

<p>H. Wulff</p>

--T698tiv4X0eaMvBMvFBS--

