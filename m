Return-Path: <colin.mcinnes@vecima.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AE3C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 18:49:00 +0000 (UTC)
Subject: Re: [yocto] INCOMPATIBLE_LICENSE_EXCEPTIONS not working in kirkstone
To: colin.mcinnes@vecima.com,yocto@lists.yoctoproject.org
From: colin.mcinnes@vecima.com
X-Originating-Location: Yorkton, Saskatchewan, CA (69.11.36.209)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Jan 2024 10:48:54 -0800
References: <bqM9.1706121915380083681.SlAF@lists.yoctoproject.org>
In-Reply-To: <bqM9.1706121915380083681.SlAF@lists.yoctoproject.org>
Message-ID: <29417.1706122134836625439@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MhZpVVPndWtoRth63imY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:49:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62267

--MhZpVVPndWtoRth63imY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My exception list was incomplete, I had not added what licenses were exempt=
.
The following now works:

INCOMPATIBLE_LICENSE_EXCEPTIONS +=3D "gdb:GPL-3.0-only gdb:LGPL-3.0-only"

--MhZpVVPndWtoRth63imY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My exception list was incomplete, I had not added what licenses were exempt=
.<br />The following now works:<br /><br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; line-height: 19px; white-space: pre;"=
>
<div>INCOMPATIBLE_LICENSE_EXCEPTIONS +=3D <span style=3D"color: #ce9178;">"=
gdb:GPL-3.0-only gdb:LGPL-3.0-only"</span></div>
</div>

--MhZpVVPndWtoRth63imY--

