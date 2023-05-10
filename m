Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5ACC7EE2A
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 15:55:50 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.19873.1683731087146358567
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 08:04:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cvP2TrhR;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4494f4ed9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AAeZCh023728;
	Wed, 10 May 2023 15:04:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=A1fyh/VEx/avITmHk3Pyx3s0bygJkqyqy/qeKgi4WU0=;
 b=cvP2TrhRh5rMfr28ebNJDBbp+w6UTukPKn8jM1fXZsOwTVnLgFWGO/J8fTWmAGH2iTDZ
 UY5hpbNA8ogK6/hep8GT7dj5yTcA6d9QGoZu7e/RIZmNFDaQe8XzmO12zy9KixxH8n2N
 xnW0CvrLQeU9a+L6M9xD83G+QPs/3IjcVC5xxPRq6U+RfO/VJVv2r9wIJKsDxtJ1DQpl
 3P/J4MBOsfI3UsTuGIgTJ6eZTafpZtNSFC9b/yiuvFuaLXYDL49X1Y5SxqqOohNyD3AD
 RrlxzAgZgSmz4Qyz86820Hso6cBZRHeXpGQdyHl7k3GnnL/4dCkrdvL3eC8X/ELhjniY mw== 
Received: from ala-exchng01.corp.ad.wrs.com (unknown-82-252.windriver.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf8b91rc3-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 10 May 2023 15:04:44 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 08:04:44 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 08:04:44 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 2/4] dm-verity: don't make read-only-rootfs sound like a requirement
Date: Wed, 10 May 2023 11:04:40 -0400
Message-ID: <20230510150442.2427548-3-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
References: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-GUID: DvPbQVHwyXHcdz2mm1FI-gKdTh7Z-sjc
X-Proofpoint-ORIG-GUID: DvPbQVHwyXHcdz2mm1FI-gKdTh7Z-sjc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 mlxlogscore=803 adultscore=0 spamscore=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305100121
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 15:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59975

From: Paul Gortmaker <paul.gortmaker@windriver.com>

Adding to your local.conf right out of the gate:

  EXTRA_IMAGE_FEATURES = "read-only-rootfs"

while you are trying to sort out other things can be just another
complication to an already steep learning curve.

For example, I found simply enabling this with systemd caused:

  systemd[1]: Failed to fork off sandboxing environment for executing generators: Protocol error
  [!!!!!!] Failed to start up manager.
  systemd[1]: Freezing execution.

While I'd like to get to the root cause of that, it doesn't change that
things boot fine w/o adding to EXTRA_IMAGE_FEATURES, even though the
rootfs is still read-only courtesy of dm-verity.

Reword things so as to make it clear it isn't strictly a hard requirement
and hence can be delayed as people work through their implementation.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 docs/dm-verity.txt | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/docs/dm-verity.txt b/docs/dm-verity.txt
index ce1839520982..c2dce739790d 100644
--- a/docs/dm-verity.txt
+++ b/docs/dm-verity.txt
@@ -53,11 +53,18 @@ conf/local.conf and conf/bblayers.conf from the oe-init-build-env
 Firstly, you need the meta-security layer to conf/bblayers.conf along with
 the dependencies it has -- see the top level meta-security README for that.
 
-Next, assuming you'll be using dm-verity for validation of your rootfs,
-you'll need to enable read-only rootfs support in your local.conf with:
+Note that if you are using dm-verity for your rootfs, then it enforces a
+read-only mount right at the kernel level, so be prepared for issues such
+as failed creation of temporary files and similar.
+
+Yocto does support additional checks and changes via setting:
 
 EXTRA_IMAGE_FEATURES = "read-only-rootfs"
 
+...but since read-only is enforced at the kernel level already, using
+this feature isn't a hard requirement.  It may be best to delay/defer
+making use of this until after you've established basic booting.
+
 For more details, see the associated documentation:
 
 https://docs.yoctoproject.org/dev/dev-manual/read-only-rootfs.html
-- 
2.40.0


