Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39D7C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Jun 2022 15:20:06 +0000 (UTC)
Subject: bitbake python3-pygit2 fails but succeeds via devhsell
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jun 2022 08:20:06 -0700
Message-ID: <rbY2.1654096806512506377.uwd3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JFwxK1npqEBWlrnYGxd7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Jun 2022 15:20:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57242

--JFwxK1npqEBWlrnYGxd7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have a recipe (See below) for python3-pygit2 which fails at do_compile if=
 I just try to run it via

bitbake=C2=A0python3-pygit2

However if I instead

bitbake python3-pygit2 -c devhsell

and then

../temp/run.do_compile

It succeeds. Now I'm relatively new to devshell but I thought these were su=
pposed to be equivalent.

How can I figure out what is going on here?

SUMMARY =3D "Bindings to the libgit2 shared library, implements Git plumbin=
g. Supports Python 3.6+ and PyPy3 7.3+"
HOMEPAGE =3D "https://github.com/libgit2/pygit2"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc79469bcf6b93359579b76045ec0f0dc=
"

SRC_URI[sha256sum] =3D "20894433df1146481aacae37e2b0f3bbbfdea026db2f5506117=
0bd9823e40b19"

DEPENDS +=3D "python3-pip-native libgit2 python3-cffi"

inherit pypi setuptools3

export LIBGIT2 =3D "${RECIPE_SYSROOT}${prefix}"

do_compile:append() {
${PYTHON} setup.py -q bdist_egg --dist-dir ./
}

do_install:append() {
install -m 0644 ${S}/*.egg ${D}/${PYTHON_SITEPACKAGES_DIR}/
}

BBCLASSEXTEND =3D "native nativesdk"

--JFwxK1npqEBWlrnYGxd7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I have a recipe (See below) for python3-pygit2 which fails at do_c=
ompile if I just try to run it via <br /><br />bitbake&nbsp;python3-pygit2<=
br /><br />However if I instead<br /><br />bitbake python3-pygit2 -c devhse=
ll<br /><br />and then<br /><br />../temp/run.do_compile<br /><br />It succ=
eeds. Now I'm relatively new to devshell but I thought these were supposed =
to be equivalent.<br /><br />How can I figure out what is going on here?<br=
 /><br />
<div>SUMMARY =3D "Bindings to the libgit2 shared library, implements Git pl=
umbing. Supports Python 3.6+ and PyPy3 7.3+"</div>
<div>HOMEPAGE =3D "https://github.com/libgit2/pygit2"</div>
<div>LICENSE =3D "GPLv2"</div>
<div>LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc79469bcf6b93359579b76045ec=
0f0dc"</div>
<div>&nbsp;</div>
<div>SRC_URI[sha256sum] =3D "20894433df1146481aacae37e2b0f3bbbfdea026db2f55=
061170bd9823e40b19"</div>
<div>&nbsp;</div>
<div>DEPENDS +=3D "python3-pip-native libgit2 python3-cffi"</div>
<div>&nbsp;</div>
<div>inherit pypi setuptools3</div>
<div>&nbsp;</div>
<div>export LIBGIT2 =3D "${RECIPE_SYSROOT}${prefix}"</div>
<div>&nbsp;</div>
<div>do_compile:append() {</div>
<div>&nbsp; &nbsp; ${PYTHON} setup.py -q bdist_egg --dist-dir ./</div>
<div>}</div>
<div>&nbsp;</div>
<div>do_install:append() {</div>
<div>&nbsp; &nbsp; install -m 0644 ${S}/*.egg ${D}/${PYTHON_SITEPACKAGES_DI=
R}/</div>
<div>}</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>BBCLASSEXTEND =3D "native nativesdk"</div>

--JFwxK1npqEBWlrnYGxd7--

