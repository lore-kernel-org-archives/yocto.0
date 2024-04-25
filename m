Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11789C10F15
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 18:57:47 +0000 (UTC)
Subject: Re: [yocto] issue adding the user with the yocto kirkstone
To: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>, yocto@lists.yoctoproject.org
From: "Daniel" <dchvs11@gmail.com>
X-Originating-Location: Ashburn, Virginia, US (72.21.198.66)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Apr 2024 11:57:38 -0700
References: <MUdL.1714070859202231693.qcwE@lists.yoctoproject.org>
In-Reply-To: <MUdL.1714070859202231693.qcwE@lists.yoctoproject.org>
Message-ID: <3353.1714071458038827393@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3ddTGnKVvAeZdVErrjbV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 18:57:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63003

--3ddTGnKVvAeZdVErrjbV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, Mahendra

Try using `useradd` instead of `usermod` for creating your user with the EX=
TRA_USER_PARAMS feature. Something like this:

EXTRA_USERS_PARAMS : append =3D "\
useradd -m -s /bin /bash -P 'mahi' root; \
"

--3ddTGnKVvAeZdVErrjbV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi, Mahendra</p>
<p>Try using `useradd` instead of `usermod` for creating your user with the=
 EXTRA_USER_PARAMS feature. Something like this:</p>
<p>&nbsp;</p>
<div style=3D"color: #ffffff; background-color: #000000; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #9cdcfe;">EXTRA_USERS_PARAMS</span><span style=
=3D"color: #ffffff;">:</span><span style=3D"color: #c586c0;">append</span><=
span style=3D"color: #ffffff;"> </span><span style=3D"color: #d4d4d4;">=3D<=
/span><span style=3D"color: #ffffff;"> </span><span style=3D"color: #ce9178=
;">"\</span></div>
<div><span style=3D"color: #ce9178;"> useradd -m -s </span><span style=3D"c=
olor: #569cd6;">/bin</span><span style=3D"color: #ce9178;">/bash -P 'mahi' =
root; \</span></div>
<div><span style=3D"color: #ce9178;">"<br /></span></div>
</div>
<p>&nbsp;</p>

--3ddTGnKVvAeZdVErrjbV--

