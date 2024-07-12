Return-Path: <chwoo@ls-electric.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CC33C2BD09
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 05:57:30 +0000 (UTC)
Subject: Inquiry Regarding Docker Execution Issue in overlayfs Rootfs Configuration
To: yocto@lists.yoctoproject.org
From: chwoo@ls-electric.com
X-Originating-Location: KR (121.139.137.131)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Jul 2024 22:57:21 -0700
Message-ID: <q01G.1720763841204258580.2k2I@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EF655swiRJWtE1VO1S7t"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 05:57:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63475

--EF655swiRJWtE1VO1S7t
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto developers,

I hope this message finds you well. My name is ChangHyun Woo, and I am curr=
ently engaged in developing Embedded Linux devices.

I have been using the recipe from ' https://github.com/marcusfolkesson/meta=
-readonly-rootfs-overlay ' to configure the rootfs. However, I have encount=
ered an issue: after integrating Docker, I discovered that 'docker exec' do=
es not function within the overlayfs rootfs.

Despite extensive searches across various platforms, I have been unable to =
find a solution, prompting me to reach out to you for assistance. If I have=
 contacted the wrong place, I kindly ask for guidance on where to direct my=
 inquiry.

Furthermore, if anyone has encountered and resolved a similar issue, I woul=
d greatly appreciate any advice or solutions you could provide.

Thank you for your attention to this matter.

Best regards,
ChangHyun Woo

--EF655swiRJWtE1VO1S7t
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Dear Yocto developers,</p>
<p>I hope this message finds you well. My name is ChangHyun Woo, and I am c=
urrently engaged in developing Embedded Linux devices.</p>
<p>I have been using the recipe from '<a href=3D"https://github.com/marcusf=
olkesson/meta-readonly-rootfs-overlay" target=3D"_new" rel=3D"noreferrer">h=
ttps://github.com/marcusfolkesson/meta-readonly-rootfs-overlay</a>' to conf=
igure the rootfs. However, I have encountered an issue: after integrating D=
ocker, I discovered that 'docker exec' does not function within the overlay=
fs rootfs.</p>
<p>Despite extensive searches across various platforms, I have been unable =
to find a solution, prompting me to reach out to you for assistance. If I h=
ave contacted the wrong place, I kindly ask for guidance on where to direct=
 my inquiry.</p>
<p>Furthermore, if anyone has encountered and resolved a similar issue, I w=
ould greatly appreciate any advice or solutions you could provide.</p>
<p>Thank you for your attention to this matter.</p>
<p>Best regards,<br />ChangHyun Woo</p>

--EF655swiRJWtE1VO1S7t--

