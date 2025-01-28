Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28185C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 03:58:17 +0000 (UTC)
Subject: [scarthgap] RDEPENDS Syntax  #scarthgap #yocto
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 19:58:14 -0800
Message-ID: <ZyLz.1738036694643254088.yHwJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lz7mjHKrD6uwHKJO22Ta"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 03:58:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64650

--lz7mjHKrD6uwHKJO22Ta
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What is the correct synatx for RDEPENDS

RDEPENDS_${PN} =3D .....
OR
RDEPENDS:${PN} =3D .....

Below document has : https://docs.yoctoproject.org/5.0.6/ref-manual/variabl=
es.html#term-RDEPENDS RDEPENDS:${PN} =3D "package (operator version)"
Ganesh Mahajan

--lz7mjHKrD6uwHKJO22Ta
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>What is the correct synatx for RDEPENDS<br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">&nbsp;</div>
RDEPENDS_${PN} =3D .....</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;OR<br />RDEPENDS:${PN} =3D .....</di=
v>
<div>&nbsp;</div>
<div>Below document has : https://docs.yoctoproject.org/5.0.6/ref-manual/va=
riables.html#term-RDEPENDS
<pre style=3D"box-sizing: border-box; line-height: 1.4; font-family: SFMono=
-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courie=
r, monospace; font-size: 12px; white-space: pre; margin: 0px; padding: 12px=
; display: block; overflow: auto; color: #333333; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial;">RDEPENDS:${PN} =3D "package (operator version=
)"</pre>
&nbsp;<br />Ganesh Mahajan</div>

--lz7mjHKrD6uwHKJO22Ta--

