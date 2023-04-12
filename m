Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF74C7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 06:47:46 +0000 (UTC)
Subject: Re: Missing .o files.
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Apr 2023 23:47:44 -0700
References: <CAMKF1sq8ua5kXuoYz1x=8_yGfL3cMYRWqTnuQD_iKkj9Hd=75w@mail.gmail.com>
In-Reply-To: <CAMKF1sq8ua5kXuoYz1x=8_yGfL3cMYRWqTnuQD_iKkj9Hd=75w@mail.gmail.com>
Message-ID: <28742.1681282064236494666@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9ZPrsRoPuLbWmVoh1DNO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 06:47:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59686

--9ZPrsRoPuLbWmVoh1DNO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> you need to build for 32bit as well. I think you are building these
> binaries outside yocto and then weirdly mixing the install. So perhaps
> that should be fixed first maybe.

I think the makefile is using the default compiler present in my laptop. Ca=
n you share the file paths for compiler present in my yocto build.
Thanks and regards,
Hassan

--9ZPrsRoPuLbWmVoh1DNO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<br />
<blockquote>you need to build for 32bit as well. I think you are building t=
hese<br />binaries outside yocto and then weirdly mixing the install. So pe=
rhaps<br />that should be fixed first maybe.</blockquote>
I think the makefile is using the default compiler present in my laptop. Ca=
n you share the file paths for compiler present in my yocto build.<br />Tha=
nks and regards,<br />Hassan

--9ZPrsRoPuLbWmVoh1DNO--

