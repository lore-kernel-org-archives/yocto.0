Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9581BC433FE
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 12:59:02 +0000 (UTC)
Subject: Re: Howto build packages for dependencies of an out of image recipe
 build.
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Mar 2022 04:59:01 -0800
References: <3501.1646830187806955501@lists.yoctoproject.org>
In-Reply-To: <3501.1646830187806955501@lists.yoctoproject.org>
Message-ID: <19841.1646830741667464206@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4GRgQUz11va4QVUyoo18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 12:59:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56408

--4GRgQUz11va4QVUyoo18
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just to be absolutely clear, here is the result of having run bitbake build=
-essential having first removed and thus started with a clean tmp dir.

dan@melon:/home/dan/workspace_ssd/kas/build$ find tmp/deploy/deb/
tmp/deploy/deb/
tmp/deploy/deb/all
tmp/deploy/deb/all/build-essential-ptest_1.0.0-r0.0_all.deb
tmp/deploy/deb/all/build-essential-dev_1.0.0-r0.0_all.deb
tmp/deploy/deb/all/build-essential_1.0.0-r0.0_all.deb
tmp/deploy/deb/all/build-essential-dbg_1.0.0-r0.0_all.deb

--4GRgQUz11va4QVUyoo18
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just to be absolutely clear, here is the result of having run bitbake build=
-essential having first removed and thus started with a clean tmp dir.<br /=
><br /><span style=3D"font-family: monospace;"><span style=3D"color: #00000=
0;">dan@melon:/home/dan/workspace_ssd/kas/build$ find tmp/deploy/deb/ </spa=
n><br />tmp/deploy/deb/ <br />tmp/deploy/deb/all <br />tmp/deploy/deb/all/b=
uild-essential-ptest_1.0.0-r0.0_all.deb <br />tmp/deploy/deb/all/build-esse=
ntial-dev_1.0.0-r0.0_all.deb <br />tmp/deploy/deb/all/build-essential_1.0.0=
-r0.0_all.deb <br />tmp/deploy/deb/all/build-essential-dbg_1.0.0-r0.0_all.d=
eb<br /><br /></span>

--4GRgQUz11va4QVUyoo18--

