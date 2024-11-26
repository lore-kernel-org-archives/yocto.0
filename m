Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7A2D65556
	for <webhook@archiver.kernel.org>; Tue, 26 Nov 2024 20:52:25 +0000 (UTC)
Subject: Periodic cleanup of the downloads directory
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.139.87)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 Nov 2024 12:52:15 -0800
Message-ID: <l3M2.1732654335906500283.Pq1Y@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b0B0OOf5L6duAuETCPus"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 20:52:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64350

--b0B0OOf5L6duAuETCPus
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings,

With every recipe update, the new code revision gets downloaded and if I am=
 not wrong the already downloaded old one does not get deleted. Is there a =
good rule of thumb how the downloads directory should be cleaned up periodi=
cally? In other words, how can one know which recipes have been updated, so=
 the previously downloaded source code revision can be safely deleted, as i=
t's not needed anymore.

Aleksandar

--b0B0OOf5L6duAuETCPus
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Greetings,</div>
<div>&nbsp;</div>
<div>With every recipe update, the new code revision gets downloaded and if=
 I am not wrong the already downloaded old one does not get deleted. Is the=
re a good rule of thumb how the downloads directory should be cleaned up pe=
riodically? In other words, how can one know which recipes have been update=
d, so the previously downloaded source code revision can be safely deleted,=
 as it's not needed anymore.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>

--b0B0OOf5L6duAuETCPus--

