Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FADAC3DA6E
	for <webhook@archiver.kernel.org>; Sat, 23 Dec 2023 10:47:40 +0000 (UTC)
Subject: CVE Scanners and Package Version
To: yocto@lists.yoctoproject.org
From: fabian.hanke@bosch.com
X-Originating-Location: =?UTF-8?B?U3R1dHRnYXJ0LCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (194.39.218.18)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 23 Dec 2023 02:47:36 -0800
Message-ID: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="11mKGbiySiEKFEj31QNH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Dec 2023 10:47:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62031

--11mKGbiySiEKFEj31QNH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto community,

we must provide a SBOM for our Yocto based product which will then be used =
for (internal) CVE scanning by the security department. Generating the base=
 document in cycloneDX format is fairly easy (thanks to the nature of Yocto=
).

But we do not know how to include information about CVE patches for each pa=
ckage in the document. Not providing these, will cause a lot of =E2=80=9Cfa=
lse=E2=80=9D feedback on CVEs for specific versions which are already patch=
ed (but version number did not change). This problem was also mentioned a f=
ew days ago in the presentation from David Reyna: https://youtu.be/PegU1G1b=
A80?t=3D1127. I like the proposed solution of adding a vendor specific stri=
ng to the package version. But I'm still wondering: How would the CVE scann=
er vendor know which CVEs are included in a yocto specific version and whic=
h are not?

I hope this is the correct place to start a discussion (if not please point=
 me to the correct place):

Does anyone else also have the same problem with false feedback from CVE sc=
anners? How do you deal with it?

Best regards, Fabian Hanke

----------------------------------

Bosch Rexroth AG

Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner

--11mKGbiySiEKFEj31QNH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"MsoPlainText" style=3D"line-height: 1.42857;">Hello Yocto commu=
nity,</p>
<p class=3D"MsoPlainText" style=3D"line-height: 1.42857;">we must provide a=
 SBOM for our Yocto based product which will then be used for (internal) CV=
E scanning by the security department. Generating the base document in cycl=
oneDX format is fairly easy (thanks to the nature of Yocto).</p>
<p class=3D"MsoPlainText" style=3D"line-height: 1.42857;">But we do not kno=
w how to include information about CVE patches for each package in the docu=
ment. Not providing these, will cause a lot of &ldquo;false&rdquo; feedback=
 on CVEs for specific versions which are already patched (but version numbe=
r did not change). This problem was also mentioned a few days ago in the pr=
esentation from David Reyna:&nbsp;<a href=3D"https://youtu.be/PegU1G1bA80?t=
=3D1127">https://youtu.be/PegU1G1bA80?t=3D1127</a>&nbsp;. I like the propos=
ed solution of adding a vendor specific string to the package version. But =
I'm still wondering: How would the CVE scanner vendor know which CVEs are i=
ncluded in a yocto specific version and which are not?</p>
<p class=3D"MsoPlainText" style=3D"line-height: 1.42857;">I hope this is th=
e correct place to start a discussion (if not please point me to the correc=
t place):</p>
<p class=3D"MsoPlainText" style=3D"line-height: 1.42857;">Does anyone else =
also have the same problem with false feedback from CVE scanners? How do yo=
u deal with it?</p>
<p class=3D"MsoPlainText" style=3D"line-height: 1.42857;">Best regards, Fab=
ian Hanke</p>
----------------------------------
<p class=3D"MsoPlainText">Bosch Rexroth AG</p>
<p class=3D"MsoPlainText">Registered Office: Stuttgart, Registration Court:=
 Amtsgericht Stuttgart HRB 23192 Executive Board: Dr. Steffen Haack (Presid=
ent), Roland Bittenauer, Thomas Fechner, Holger von Hebel, Reinhard Sch&aum=
l;fer Chairman of the Supervisory Board: Dr. Markus Forschner</p>

--11mKGbiySiEKFEj31QNH--

