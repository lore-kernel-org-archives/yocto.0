Return-Path: <alain.meirhaeghe@laposte.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 324F9C001DB
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 08:33:05 +0000 (UTC)
Subject: git ls-remote ssh kex_exchange_identification: Connection closed by remote host
To: yocto@lists.yoctoproject.org
From: alain.meirhaeghe@laposte.net
X-Originating-Location: Alès, Occitanie, FR (92.167.96.66)
X-Originating-Platform: Linux Firefox 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Aug 2023 01:32:58 -0700
Message-ID: <lZrZ.1691656378987725088.wLL9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xLrySFYDlqNrKJe1GB7s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 08:33:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60768

--xLrySFYDlqNrKJe1GB7s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a ramdomize problem on local ssh git repository.
The git server is on the PC where i am using YOCTO
The git repository belong to an another user=C2=A0 (git) than bitbake user =
(ame).

DISTRO =3D "poky"
DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION =3D "4.2"
DISTRO_CODENAME =3D "mickledore"

example:
git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat ls-remote ssh://git@maison=
/home/git/bleconnect.git=C2=A0 failed with exit code 128, output: kex_excha=
nge_identification: Connection closed by remote host
In my bitbake terminal console, i can try this command many times without a=
ny problem.
with bitbake build image, i have a very hazardous and common problem and=C2=
=A0 on different local git depository recipe.

The recipe syntax is
SRCREV=3D"${AUTOREV}"
SRCBRANCH =3D "master"
PV =3D "1.0-1+git${SRCPV}"
S =3D "${WORKDIR}/git"
SRC_URI =3D "git://git@maison/home/git/bleconnect.git;branch=3Dmaster;proto=
col=3Dssh \
"
This problem recently appears and I had no problem before. I generate image=
 for this project for years.
But its appear recently. I have done some POKY=C2=A0 update. (raspberry)
Do you know the problem ?
Is there a solution .
Thanks.

--xLrySFYDlqNrKJe1GB7s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a ramdomize problem on local ssh git repository. <br />The git serve=
r is on the PC where i am using YOCTO<br />The git repository belong to an =
another user&nbsp; (git) than bitbake user (ame).<br /><br />DISTRO =3D "po=
ky"<br />DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"<br />DISTR=
O_VERSION =3D "4.2"<br />DISTRO_CODENAME =3D "mickledore"<br /><br />exampl=
e:<br />git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat ls-remote ssh://gi=
t@maison/home/git/bleconnect.git&nbsp; failed with exit code 128, output: k=
ex_exchange_identification: Connection closed by remote host<br /><span cla=
ss=3D"Y2IQFc" lang=3D"en">In my </span>bitbake terminal console, i <span cl=
ass=3D"Y2IQFc" lang=3D"en">can try this command many times without any prob=
lem. </span><br />with bitbake build image, i have a very hazardous and com=
mon problem and&nbsp; on different local git depository recipe.<br /><br />=
The recipe syntax is <br />SRCREV=3D"${AUTOREV}"<br />SRCBRANCH =3D "master=
"<br />PV =3D "1.0-1+git${SRCPV}"<br />S =3D "${WORKDIR}/git"<br />SRC_URI =
=3D "git://git@maison/home/git/bleconnect.git;branch=3Dmaster;protocol=3Dss=
h \<br />"<br />This problem recently appears and I had no problem before. =
I generate image for this project for years.<br />But its appear recently. =
I have done some POKY&nbsp; update. (raspberry)<br />Do you know the proble=
m ?<br />Is there a solution .<br />Thanks.<br /><br /><br />
<div id=3D"tw-target-rmn-container" class=3D"tw-target-rmn tw-ta-container =
F0azHf tw-nfl">
<pre id=3D"tw-target-rmn" class=3D"tw-data-placeholder tw-text-small tw-ta"=
 dir=3D"ltr" style=3D"text-align: left;" data-placeholder=3D""><span class=
=3D"Y2IQFc">&nbsp;</span></pre>
</div>
<span class=3D"Y2IQFc" lang=3D"en"></span>

--xLrySFYDlqNrKJe1GB7s--

