Return-Path: <lordtacolord@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23387C369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 19:53:38 +0000 (UTC)
Subject: CVE checker not choosing the correct base score
To: yocto@lists.yoctoproject.org
From: lordtacolord@gmail.com
X-Originating-Location: Montreal, Quebec, CA (165.225.213.117)
X-Originating-Platform: Mac Safari 18.4
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Apr 2025 12:53:28 -0700
Message-ID: <dRZb.1745351608863335299.EW0v@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VoRmog1eTMLGNyPUpoE6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 19:53:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65230

--VoRmog1eTMLGNyPUpoE6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Need to confirm if this is expected.

For the CVE: CVE-2025-0840, for CVSS 3.1, NVD has it listed as a base score=
 of 7.5. But using the Yocto CVE checker, it does not pick up the score 7.5=
. For scorev2, it picks up 5.1 and scorev3 has 5.0 from CNA: VulDB instead =
of the higher score of 7.5 provided by NVD. Is this is a bug?

--VoRmog1eTMLGNyPUpoE6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Need to confirm if this is expected.</div>
<div>&nbsp;</div>
<div>For the CVE: CVE-2025-0840, for CVSS 3.1, NVD has it listed as a base =
score of 7.5. But using the Yocto CVE checker, it does not pick up the scor=
e 7.5. For scorev2, it picks up 5.1 and scorev3 has 5.0 from CNA: VulDB ins=
tead of the higher score of 7.5 provided by NVD. Is this is a bug?</div>

--VoRmog1eTMLGNyPUpoE6--

