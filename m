Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E449C7EE2D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 15:55:50 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.19871.1683731086032926493
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 08:04:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Bg+rceNl;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4494f4ed9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AAeZCg023728;
	Wed, 10 May 2023 15:04:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=KjsuLlsE7g3sp3/rs4DOIXbM1JL0ZZe2S3Q3aqHckyM=;
 b=Bg+rceNlFXFG3mPDoq8zzfhD0jm3yWt7gvKkbJeRNXnN2CBiNf3AEsloka1wwE8k+U1q
 pFmQFhtAkfIv5inBXU7rQRGgwv4w0Dr44BId7uwHG709pMx9hI5FncrGQmYy5ps+yOuj
 5tcuR8NowoNKBcbeQ8kpcYFywUwrbJZu9BzNc/4OjAsIq0wEKW5i8nAyFFB1cFejciEl
 fnN2QgqhpM3lkH43m1lijbv7gpp3xTwwmD0SfQ9zsSVE3Wu/VhNX9ccymORdr69a0J56
 F3ivIvyZPdId8vFczWS2wCXxhNpSv+cXYV0JPxKEeSDOc5Z3IQsZKIX2KwAP3yTGI/4H aQ== 
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf8b91rc3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 10 May 2023 15:04:44 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 08:04:43 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 08:04:42 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 0/4] dm-verity: add instructions for systemd x86-64
Date: Wed, 10 May 2023 11:04:38 -0400
Message-ID: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-Proofpoint-GUID: mhUA-SCWAKFQqOEGuSa9r_ThHSXd5v_3
X-Proofpoint-ORIG-GUID: mhUA-SCWAKFQqOEGuSa9r_ThHSXd5v_3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 clxscore=1011 lowpriorityscore=0 mlxlogscore=825 adultscore=0 spamscore=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305100121
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 15:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59974

From: Paul Gortmaker <paul.gortmaker@windriver.com>

This second series continues in the same general theme of making it
easier to use dm-verity within the Yocto/OE framework by adding a worked
example that can boot on x86-64 in QEMU and on physical hardware.

A couple small clarifications to exisitng files are also added.

Based on my reading, I believe there are still two things that would be
nice to support if time permits.  They are somewhat intertwined. 

Firstly, the dm-verity basically has two places to store the hash data -
at the end of the filesystem data in an "oversized" partition, or in a
completely separate partition/device.  Our current support is hardwired
to the append single partition support.

Secondly, we currently call veritysetup from within the initramfs with
all the parameters (hash size, location etc.) - which was sensible for
a sysV init based system.  However my reading seems to indicate that
recent systemd supports direct enablement of dm-verity device(s) from
either boot arguments or autodetection via GPT UUIDs assigned to
dm-verity (and dm-verity-hash).  Meaning (in theory) we should not
need to be manually calling veritysetup in a systemd initramfs at all.

So we'll see how that goes.  Might lead to another wks.in example?
---

Paul Gortmaker (4):
  dm-verity: ensure people don't ignore the DISTRO_FEATURES warning
  dm-verity: don't make read-only-rootfs sound like a requirement
  dm-verity: document the meta-intel dependency in the systemd example
  dm-verity: add x86-64 systemd based example instructions

 docs/dm-verity-systemd-x86-64.txt    | 77 ++++++++++++++++++++++++++++
 docs/dm-verity.txt                   | 13 ++++-
 wic/systemd-bootdisk-dmverity.wks.in |  1 +
 3 files changed, 89 insertions(+), 2 deletions(-)
 create mode 100644 docs/dm-verity-systemd-x86-64.txt

-- 
2.40.0


