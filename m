Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B66C54E41
	for <webhook@archiver.kernel.org>; Sat,  9 Mar 2024 08:42:24 +0000 (UTC)
Subject: Re: [yocto] Cannot ssh into qemu guest
To: Marco Cavallini <koansoftware@gmail.com>,yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 09 Mar 2024 00:42:05 -0800
References: <16720.1709973676185939798@lists.yoctoproject.org>
In-Reply-To: <16720.1709973676185939798@lists.yoctoproject.org>
Message-ID: <27822.1709973725254624537@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iTL4DQZ5cD34fk5sYiPw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 08:42:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62713

--iTL4DQZ5cD34fk5sYiPw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 9, 2024 at 09:41 AM, Marco Cavallini wrote:

>=20
> In *local.conf* add
> *EXTRA_IMAGE_FEATURES =3D "ssh-server-openssh"*
> --
> Marco

or better
*EXTRA_IMAGE_FEATURES +=3D "ssh-server-openssh"

*

--iTL4DQZ5cD34fk5sYiPw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 9, 2024 at 09:41 AM, Marco Cavallini wrote:<br />
<blockquote>In <strong>local.conf</strong> add<br /><strong><span style=3D"=
font-family: courier_newregular, courier;">EXTRA_IMAGE_FEATURES =3D "ssh-se=
rver-openssh"</span></strong><br />--<br />Marco</blockquote>
or better<br /><strong><span style=3D"font-family: courier_newregular, cour=
ier;">EXTRA_IMAGE_FEATURES +=3D "ssh-server-openssh"<br /><br /></span></st=
rong>

--iTL4DQZ5cD34fk5sYiPw--

