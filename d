Return-Path: <makhlouf.gharbi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36502C3DA6F
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 07:10:14 +0000 (UTC)
Subject: Yocto Linux, root logging error : libcrypt does not support MD5, SHA256, SHA512
To: yocto@lists.yoctoproject.org
From: makhlouf.gharbi@gmail.com
X-Originating-Location: Toulouse, Occitanie, FR (91.169.42.163)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Aug 2023 00:10:13 -0700
Message-ID: <GJvM.1692861013028732747.xuv9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="G8jGj3gBuAjh053TEqjK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 07:10:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60874

--G8jGj3gBuAjh053TEqjK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building Linux image using yocto 4.2. I've already set up the root pass=
word on the local.conf file with hash generated my MD5 using openssl openss=
l passwd -1 root

INHERIT +=3D "extrausers"

EXTRA_USERS_PARAMS =3D "usermod -p '\$1$bI3FOrM/$aAr4Ar09j0BXowgMygJWt0' ro=
ot;"

I'm getting the following error when trying to login as root.

root logging error crypt method not supported by libcrypt? (MD5)

Then I tried SHA256=C2=A0 and SHA512 hash using openssl passwd -6 root and =
getting the same error !!

qemuarm64 login: root

Password:

crypt method not supported by libcrypt? (SHA512)

--G8jGj3gBuAjh053TEqjK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm building Linux image using yocto 4.2. I've already set up the root p=
assword on the local.conf file with hash generated my MD5 using openssl ope=
nssl passwd -1 root</p>
<p>INHERIT +=3D "extrausers"</p>
<p>EXTRA_USERS_PARAMS =3D "usermod -p '\$1$bI3FOrM/$aAr4Ar09j0BXowgMygJWt0'=
 root;"</p>
<p>I'm getting the following error when trying to login as root.</p>
<p>&nbsp;</p>
<p>root logging error crypt method not supported by libcrypt? (MD5)</p>
<p>Then I tried SHA256&nbsp; and SHA512 hash using openssl passwd -6 root a=
nd getting the same error !!</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp;qemuarm64 login: root</p>
<p>&nbsp; &nbsp; Password:&nbsp;</p>
<p>&nbsp; &nbsp; crypt method not supported by libcrypt? (SHA512)&nbsp;</p>

--G8jGj3gBuAjh053TEqjK--

