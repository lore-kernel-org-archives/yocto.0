Return-Path: <mohandesi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFFB8EB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 21:58:02 +0000 (UTC)
Subject: How to exclude package from build history in Yocto?
To: yocto@lists.yoctoproject.org
From: "Ehsan Mohandesi" <mohandesi@gmail.com>
X-Originating-Location: Houston, Texas, US (98.198.161.66)
X-Originating-Platform: Windows Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Jul 2023 14:58:01 -0700
Message-ID: <N1ke.1688680681085244156.m9yS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vh2Yt4zsSMOr9bXMJpDi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 21:58:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60536

--vh2Yt4zsSMOr9bXMJpDi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I have updated BUILDHISTORY_FEATURES=3Dimage to avoid including the package=
 directory in the build history. However, I am still seeing the package dir=
ectory with numerous subdirectories in the build history.
How can I completely exclude the package directory from the build history?
The following is what I see in the buildhistory directory.
~/ws/OpenBMC/build/dc-scm-m1110$ ls buildhistory
images=C2=A0 metadata-revs=C2=A0 packages

--vh2Yt4zsSMOr9bXMJpDi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br />I have updated <span style=3D"font-family: courier_newregular,=
 courier; background-color: #999999;">BUILDHISTORY_FEATURES=3Dimage</span> =
to avoid including the package directory in the build history. However, I a=
m still seeing the package directory with numerous subdirectories in the bu=
ild history.<br />How can I completely exclude the package directory from t=
he build history?<br />The following is what I see in the buildhistory dire=
ctory.<br /><span style=3D"font-family: courier_newregular, courier;">~/ws/=
OpenBMC/build/dc-scm-m1110$ ls buildhistory</span><br /><span style=3D"font=
-family: courier_newregular, courier;">images&nbsp; metadata-revs&nbsp; pac=
kages</span>

--vh2Yt4zsSMOr9bXMJpDi--

