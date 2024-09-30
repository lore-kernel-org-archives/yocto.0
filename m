Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C649CE837F
	for <webhook@archiver.kernel.org>; Mon, 30 Sep 2024 18:22:13 +0000 (UTC)
Subject: How to install a Snap package in Image #mickledore #snapd
To: yocto@lists.yoctoproject.org
From: "Spore, David" <dspore@parraid.com>
X-Originating-Location: Fort Worth, Texas, US (23.119.203.209)
X-Originating-Platform: Windows Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Sep 2024 11:22:09 -0700
Message-ID: <4AAy.1727720529418877126.OAb7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cONsyyGmjyFbneWxGlKb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 18:22:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63912

--cONsyyGmjyFbneWxGlKb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a snap package provided by a vendor that I would like to include in =
my Debian Bookworm 12 image (built with Yocto).=C2=A0 How do I create a rec=
ipe that can run Snapd to install a pre-built snap package?=C2=A0 Are there=
 any examples of how to deploy a pre-built snap package during the image bu=
ild process?=C2=A0 I want to avoid having to manually run snap on the packa=
ge after the image is deployed.

DART-MX8M-PLUS - Debian Bookworm 12.5 based on Yocto Mickledore 4.2 with NX=
P BSP L6.1.36_2.1.0

Thanks!

David

--cONsyyGmjyFbneWxGlKb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I have a snap package provided by a vendor that I would like to includ=
e in my Debian Bookworm 12 image (built with Yocto).&nbsp; How do I create =
a recipe that can run Snapd to install a pre-built snap package?&nbsp; Are =
there any examples of how to deploy a pre-built snap package during the ima=
ge build process?&nbsp; I want to avoid having to manually run snap on the =
package after the image is deployed.</div>
<div>&nbsp;</div>
<div><span style=3D"color: #000000; font-family: Roboto, 'Helvetica Neue', =
Arial, 'Noto Sans', sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Seg=
oe UI Symbol', 'Noto Color Emoji'; font-size: 12px; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; =
letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; background-color: #ffffff; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al; float: none; display: inline !important;">DART-MX8M-PLUS - Debian Bookw=
orm 12.5 based on Yocto Mickledore 4.2 with NXP BSP L6.1.36_2.1.0</span></d=
iv>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>&nbsp;</div>
<div>David</div>
<div>&nbsp;</div>

--cONsyyGmjyFbneWxGlKb--

