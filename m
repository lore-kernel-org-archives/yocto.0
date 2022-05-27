Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA362C433F5
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 15:07:59 +0000 (UTC)
Subject: host file contamination with recipes using cmake and find_package
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 May 2022 08:07:57 -0700
Message-ID: <VDCD.1653664077949368330.uKFK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xvP8rUySZVCphw0b2YIE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 15:07:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57201

--xvP8rUySZVCphw0b2YIE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
We have an internal source tree, I'll call it libA for brevity here, which =
uses cmake and find_package to build against openssl as follows:

find_package(OpenSSL REQUIRED)

The recipe for this source runs fine but some subsequent ones that depend o=
n it (libB, libC etc) fail on some systems saying that a library file (libc=
rypto.so.1.1) required by libA cannot be found. Now it seems that the build=
 for libA is managing to find and link against=C2=A0libcrypto.so.1.1 from t=
he host libraries found under /usr. I have seen issues like this many years=
 ago but not experienced any such issues since then until recently.

Do we need to do something special in the recipe to prevent this happening?=
 At first I thought I was going to find some hardcoded=C2=A0 absolute paths=
 in the CMakeLists.txt file of libA as I have in the past but there is noth=
ing like that.

Many Thanks

--xvP8rUySZVCphw0b2YIE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />We have an internal source tree, I'll call it libA for brevity her=
e, which uses cmake and find_package to build against openssl as follows:<b=
r /><br />
<div>
<div>find_package(OpenSSL REQUIRED)<br /><br />The recipe for this source r=
uns fine but some subsequent ones that depend on it (libB, libC etc) fail o=
n some systems saying that a library file (libcrypto.so.1.1) required by li=
bA cannot be found. Now it seems that the build for libA is managing to fin=
d and link against&nbsp;libcrypto.so.1.1 from the host libraries found unde=
r /usr. I have seen issues like this many years ago but not experienced any=
 such issues since then until recently.&nbsp;<br /><br />Do we need to do s=
omething special in the recipe to prevent this happening? At first I though=
t I was going to find some hardcoded&nbsp; absolute paths in the CMakeLists=
.txt file of libA as I have in the past but there is nothing like that.<br =
/><br />Many Thanks</div>
</div>

--xvP8rUySZVCphw0b2YIE--

