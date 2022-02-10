Return-Path: <b.senzio@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A4E4C433EF
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 13:10:01 +0000 (UTC)
Subject: Upgrading Yocto  without rebuilding instances #yocto
To: yocto@lists.yoctoproject.org
From: b.senzio@gmail.com
X-Originating-Location: =?utf-8?b?UXVlcsOpdGFybyBDaXR5LCBRdWVyw6l0YXJvLCBN?=
 =?utf-8?b?WCAoMTg5LjEyOC44Mi4zMCk=?=
X-Originating-Platform: Windows Firefox 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Feb 2022 05:10:00 -0800
Message-ID: <TDvW.1644498600309308080.vIMU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MaCYYxcqyvaB5NuhxYV1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 13:10:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56145

--MaCYYxcqyvaB5NuhxYV1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

Say I built Yocto for the latest build for instance Hardknott. Let=E2=80=99=
s say I need to build for Zeus instead (and hopefully keep everything I bui=
lt [that doesn=E2=80=99t need to be updated]).

Has anyone done this?

Outside of building a whole new Yocto distribution from scratch=E2=80=A6 Wh=
at else can I do?

I have to rebuild Yocto with an older version because apparently there is s=
ome issue with Uboot that is not able to be built correctly.

--MaCYYxcqyvaB5NuhxYV1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"x_MsoNormal">Hello everyone,<br /><br />Say I built Yocto for t=
he latest build for instance Hardknott. Let&rsquo;s say I need to build for=
 Zeus instead (and hopefully keep everything I built [that doesn&rsquo;t ne=
ed to be updated]).</p>
<p class=3D"x_MsoNormal" aria-hidden=3D"true">&nbsp;</p>
<p class=3D"x_MsoNormal">Has anyone done this?</p>
<p class=3D"x_MsoNormal" aria-hidden=3D"true">&nbsp;</p>
<p class=3D"x_MsoNormal">Outside of building a whole new Yocto distribution=
 from scratch&hellip; What else can I do?</p>
<p class=3D"x_MsoNormal" aria-hidden=3D"true">&nbsp;</p>
<p class=3D"x_MsoNormal">I have to rebuild Yocto with an older version beca=
use apparently there is some issue with Uboot that is not able to be built =
correctly.</p>

--MaCYYxcqyvaB5NuhxYV1--

