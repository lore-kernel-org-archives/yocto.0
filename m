Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7E49EE57CA
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 06:01:22 +0000 (UTC)
Subject: Re: Memory requirements for building images with different architectures
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Sep 2023 23:01:18 -0700
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
In-Reply-To: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
Message-ID: <3255.1694152878755997438@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1oxk8MyuDmjcALLxFbhx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 06:01:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60943

--1oxk8MyuDmjcALLxFbhx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
>=20
> Right, you're not the only one!
> See
> https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimum=
-free-disk-space
>=20
> and https://docs.yoctoproject.org/dev/dev-manual/disk-space.html

I can use rm_work and remove all the build related files, however every sub=
sequent build would take a lot more time to build. I want my builds to be a=
s fast as possible. Do you have any suggestions to for faster builds while =
consuming less memory space.

Regards,
Hassan

--1oxk8MyuDmjcALLxFbhx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><br />Right, you're not the only one!<br />See <br /><a href=3D=
"https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimum-=
free-disk-space" target=3D"_blank" rel=3D"noopener">https://docs.yoctoproje=
ct.org/ref-manual/system-requirements.html#minimum-free-disk-space</a><br /=
>and <a href=3D"https://docs.yoctoproject.org/dev/dev-manual/disk-space.htm=
l" target=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/dev/dev=
-manual/disk-space.html</a></blockquote>
I can use rm_work and remove all the build related files, however every sub=
sequent build would take a lot more time to build. I want my builds to be a=
s fast as possible. Do you have any suggestions to for faster builds while =
consuming less memory space.<br /><br />Regards,<br />Hassan

--1oxk8MyuDmjcALLxFbhx--

