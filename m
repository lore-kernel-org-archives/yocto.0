Return-Path: <majid.nasiry65@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E5BBC4332F
	for <webhook@archiver.kernel.org>; Sat,  3 Dec 2022 09:06:28 +0000 (UTC)
Subject: Removing package-management from conf/local, still yocto create packages
To: yocto@lists.yoctoproject.org
From: majid.nasiry65@gmail.com
X-Originating-Location: Paris, Île-de-France, FR (92.222.48.217)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 03 Dec 2022 01:06:20 -0800
Message-ID: <Fx55.1670058380299826593.fFtE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TN5jRekrQUXzoj5Cklav"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Dec 2022 09:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58722

--TN5jRekrQUXzoj5Cklav
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
Thank you for your supporting
I don't use packages (dep, rmp, ipk) in my project and I want disable makin=
g packages by yocto because it's take storage and time.
I delete EXTRA_IMAGE_FEATURES +=3D "package-management" from my conf/local =
file but it's not worked for me and yocto is creating packages.

Please tell me how can I do this? Is package manager required any way?

--TN5jRekrQUXzoj5Cklav
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi<br />Thank you for your supporting&nbsp;<br />I don't use packages (dep,=
 rmp, ipk) in my project and I want disable making packages by yocto becaus=
e it's take storage and time.<br />I delete EXTRA_IMAGE_FEATURES +=3D "pack=
age-management" from my conf/local file but it's not worked for me and yoct=
o is creating packages.<br /><br />Please tell me how can I do this? Is pac=
kage manager required any way?

--TN5jRekrQUXzoj5Cklav--

