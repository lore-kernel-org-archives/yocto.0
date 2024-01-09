Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E37C46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 13:29:10 +0000 (UTC)
Subject: Re: [yocto] Problem with overlayed recipes
To: Daniele Lugli <daniele.lugli@gmail.com>,yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 09 Jan 2024 05:29:03 -0800
References: <28934.1704796928231404958@lists.yoctoproject.org>
In-Reply-To: <28934.1704796928231404958@lists.yoctoproject.org>
Message-ID: <11840.1704806943255271079@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Bl65TbUcoiGvrgyltnwg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 13:29:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62119

--Bl65TbUcoiGvrgyltnwg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What happens if you change the recipe like this?

*mytest-image.bb* :

```
inherit core-image

DESCRIPTION =3D "Just a test"

IMAGE_INSTALL:append =3D " simple-local"
```

--Bl65TbUcoiGvrgyltnwg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What happens if you change the recipe like this?<br /><br /><strong>mytest-=
image.bb</strong> :<br /><br />```<br />inherit core-image<br /><br />DESCR=
IPTION =3D "Just a test"<br /><br />IMAGE_INSTALL:append =3D " simple-local=
"<br />```<br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">&nbsp;</div>
<p><span style=3D"color: #0000ff;">&nbsp;</span></p>

--Bl65TbUcoiGvrgyltnwg--

