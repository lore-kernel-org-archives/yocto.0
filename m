Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1363E7717D
	for <webhook@archiver.kernel.org>; Mon,  9 Dec 2024 11:42:11 +0000 (UTC)
Subject: Re: [yocto] How to add ARM trust zone TA and CA in my os image
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Dec 2024 03:42:04 -0800
References: <0EAFCB74-983C-4EEB-AF2C-74E5F850B816@arm.com>
In-Reply-To: <0EAFCB74-983C-4EEB-AF2C-74E5F850B816@arm.com>
Message-ID: <15637.1733744524844652799@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QhIDLWBxQaJwScyor73M"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 11:42:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64415

--QhIDLWBxQaJwScyor73M
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,
Well you are right. But I need to develop the TA and CA first. They wont su=
pport me on it due to security constraints. So i needed to implement it mys=
elf.
I am thinking of having an application that would allow me store some secre=
t data like key in the RPMB block of the eMMC. Any resources that you guys =
might be aware of can be of help to me.

Thanks

--QhIDLWBxQaJwScyor73M
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Ross,</div>
<div>Well you are right. But I need to develop the TA and CA first. They wo=
nt support me on it due to security constraints. So i needed to implement i=
t myself.</div>
<div>I am thinking of having an application that would allow me store some =
secret data like key in the RPMB block of the eMMC. Any resources that you =
guys might be aware of can be of help to me.</div>
<div>&nbsp;</div>
<div>Thanks</div>

--QhIDLWBxQaJwScyor73M--

