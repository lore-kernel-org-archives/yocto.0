Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79841C36017
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 05:24:07 +0000 (UTC)
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>, yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.167.76)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Apr 2025 22:24:03 -0700
References: <19208.1743570434438484993@lists.yoctoproject.org>
In-Reply-To: <19208.1743570434438484993@lists.yoctoproject.org>
Message-ID: <19208.1743571443186192544@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qDVEzGAiTe9EJYHrpKzi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 05:24:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65059

--qDVEzGAiTe9EJYHrpKzi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Aleksandar Nikolic,

Yes, we need to use only the older Dunfell version. Initially, when I built=
 the latest image, I did not face any issues=E2=80=94the image was successf=
ully built. Afterward, I created my own layer and updated the BusyBox versi=
on to 1.35. Upon building using bitbake -c cleanall busybox and bitbake bus=
ybox, the updated BusyBox version was successfully built.
However, while compiling the complete image (for example, core-image-minima=
l), I observed an issue with GLIBC. To address this, I removed the layer I =
had added and rebuilt the image. Now, BusyBox has reverted to the backport =
version (1.31), but while jobs are running, cmake-native is also executing,=
 and an error related to GLIBC 2.3.40 not being found is displayed.
I suspect this issue might be related to the local PC environment. Could yo=
u please suggest an alternative solution to fix this issue?

Regards,
Sateesh

--qDVEzGAiTe9EJYHrpKzi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Aleksandar Nikolic,</div>
<div>&nbsp;</div>
<div>
<div>Yes, we need to use only the older Dunfell version. Initially, when I =
built the latest image, I did not face any issues&mdash;the image was succe=
ssfully built. Afterward, I created my own layer and updated the BusyBox ve=
rsion to 1.35. Upon building using bitbake -c cleanall busybox and bitbake =
busybox, the updated BusyBox version was successfully built.</div>
<div>However, while compiling the complete image (for example, core-image-m=
inimal), I observed an issue with GLIBC. To address this, I removed the lay=
er I had added and rebuilt the image. Now, BusyBox has reverted to the back=
port version (1.31), but while jobs are running, cmake-native is also execu=
ting, and an error related to GLIBC 2.3.40 not being found is displayed.</d=
iv>
<div>I suspect this issue might be related to the local PC environment. Cou=
ld you please suggest an alternative solution to fix this issue?</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>
</div>

--qDVEzGAiTe9EJYHrpKzi--

