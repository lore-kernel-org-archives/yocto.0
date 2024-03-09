Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C7FBC54798
	for <webhook@archiver.kernel.org>; Sat,  9 Mar 2024 08:41:25 +0000 (UTC)
Subject: Re: [yocto] Cannot ssh into qemu guest
To: Xylopyrographer <xylopyrographer@gmail.com>,yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 09 Mar 2024 00:41:16 -0800
References: <ZMbp.1709938683080134225.bPqU@lists.yoctoproject.org>
In-Reply-To: <ZMbp.1709938683080134225.bPqU@lists.yoctoproject.org>
Message-ID: <16720.1709973676185939798@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Icbu7h6pt5osT7fvVTrs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 08:41:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62712

--Icbu7h6pt5osT7fvVTrs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In *local.conf* add
*EXTRA_IMAGE_FEATURES =3D "ssh-server-openssh"*
--
Marco

--Icbu7h6pt5osT7fvVTrs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In <strong>local.conf</strong> add<br /><strong><span style=3D"font-family:=
 courier_newregular, courier;">EXTRA_IMAGE_FEATURES =3D "ssh-server-openssh=
"</span></strong><br />--<br />Marco

--Icbu7h6pt5osT7fvVTrs--

