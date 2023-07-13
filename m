Return-Path: <daniel_herrmann22@web.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7325C0015E
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 19:47:18 +0000 (UTC)
Subject: opencv, third party library issue #cmake #kirkstone #opencv
To: yocto@lists.yoctoproject.org
From: daniel_herrmann22@web.de
X-Originating-Location: Tholey, Saarland, DE (131.117.152.238)
X-Originating-Platform: Mac Safari 16.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jul 2023 12:47:16 -0700
Message-ID: <Ko2D.1689277636141937655.Gufn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VFsLKk1J9FnGjIobpaWM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 19:47:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60572

--VFsLKk1J9FnGjIobpaWM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to install opencv by using the meta-oe layer on the kirkstone b=
ranch. For that I just added in my recipe INSTALL +=3D "opencv". Building w=
ith bitbake runs fine, but when I try to include opencv in cmake with find_=
package I am struggling with an third-party issue:
/usr/lib/cmake/opencv4/OpenCVModules.cmake:405 (message): The imported targ=
et "correspondence" references the file, sysroots/cortexa57-poky-linux/usr/=
lib/opencv4/3rdparty/libcorrespondence.a"
In my sdk there is actually no 3rdparty directory.
I tried to add some libs like: INSTALL +=3D "opencv libopencv-core libopenc=
v-imgproc" but no success.
If any has an idea what I am doing wrong, that would be cool.. Thanks

--VFsLKk1J9FnGjIobpaWM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to install opencv by using the meta-oe layer on the kirkstone b=
ranch. For that I just added in my recipe INSTALL +=3D "opencv". Building w=
ith bitbake runs fine, but when I try to include opencv in cmake with find_=
package I am struggling with an third-party issue:<br /><em>/usr/lib/cmake/=
opencv4/OpenCVModules.cmake:405 (message):</em>&nbsp;<em>The imported targe=
t "correspondence" references the file, sysroots/cortexa57-poky-linux/usr/l=
ib/opencv4/3rdparty/libcorrespondence.a"<br /></em>In my sdk there is actua=
lly no 3rdparty directory.&nbsp;<br />I tried to add some libs like: INSTAL=
L +=3D "opencv libopencv-core libopencv-imgproc" but no success.<br />If an=
y has an idea what I am doing wrong, that would be cool.. Thanks

--VFsLKk1J9FnGjIobpaWM--

