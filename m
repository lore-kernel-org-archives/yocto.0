Return-Path: <mail2uvijay@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DDE5CD343F
	for <webhook@archiver.kernel.org>; Mon, 18 May 2026 06:35:59 +0000 (UTC)
Subject: Re: [yocto] imx93 yocto build failing due to parsec fetcherror
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: mail2uvijay@gmail.com
X-Originating-Location: Chennai, Tamil Nadu, IN (167.103.88.254)
X-Originating-Platform: Windows Chrome 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 17 May 2026 23:35:54 -0700
References: <QxVD.1778856846043312542.8F3H@lists.yoctoproject.org> <36BA4F6B-9434-462E-A2A8-BB5CD88CB7A0@arm.com> <2134633.1778858286628037772@lists.yoctoproject.org> <DF4DDA28-8A7A-43D8-BD0D-AD80A4197564@arm.com>
In-Reply-To: <DF4DDA28-8A7A-43D8-BD0D-AD80A4197564@arm.com>
Message-ID: <1690109.1779086154994713550@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wdXrFZG1C447GWFORiKG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 May 2026 06:35:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66573

--wdXrFZG1C447GWFORiKG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Able to do after adding below link in local.conf
FETCHCMD_wget =3D "/usr/bin/env wget -t 2 -T 30 --user-agent=3D'bitbake/2.0=
'"

--wdXrFZG1C447GWFORiKG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Able to do after adding below link in local.conf</div>
<div><span style=3D"color: #ffffff; font-family: 'Cascadia Mono', Consolas,=
 ui-monospace, Menlo, Monaco, monospace; font-size: 14px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: pre; background-color: #292929; text-decoration-th=
ickness: initial; text-decoration-style: initial; text-decoration-color: in=
itial; display: inline !important; float: none;">FETCHCMD_wget =3D "/usr/bi=
n/env wget -t 2 -T 30 --user-agent=3D'bitbake/2.0'"</span></div>

--wdXrFZG1C447GWFORiKG--

