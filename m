Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BB9FC7EE23
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 15:55:50 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.19996.1683731086100743286
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 08:04:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=gfrZLoZk;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4494f4ed9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ACBxCw025302;
	Wed, 10 May 2023 08:04:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=zXTPhJttE95vg1kXsn4HPZmA1KiO9WJzlW1Ij2z5kcE=;
 b=gfrZLoZkvGKp3bd/1ij8enSH0CVzKgjSJa2nl5b565JQoRYXy51hTnLOaLGCfFSlfR4M
 97PMPFAmOaGIAgLIqJuDoROAYWfn5nnJNueBjYR05UGLx+nOfrK5exhuxhxE7hLUlldR
 SBYL0dYNHIp8CBxGJVdn0qj9rjofmQVYC8rOLqvAROQB/6zkFtI+JFl2+h6a/tVHHpXF
 uSiRG7LzBWLGMnNosyRKezlul1pcvE2ftmCjQUSYrVMDq5Aasy2hQN6N5+OW7xMDBQ+x
 GUbuveF6hGRQYY5sy1TitMOqMb1QG+cGpMJTXTcSA3UF6ItNGmHV9u3W6o1u9S03LkqY 5Q== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf81jss5t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 10 May 2023 08:04:44 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 08:04:43 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 08:04:43 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 1/4] dm-verity: ensure people don't ignore the DISTRO_FEATURES warning
Date: Wed, 10 May 2023 11:04:39 -0400
Message-ID: <20230510150442.2427548-2-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
References: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 7z8nZwUCDMA0VlGQ0GwYdUSP8zqt0KBl
X-Proofpoint-GUID: 7z8nZwUCDMA0VlGQ0GwYdUSP8zqt0KBl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305100121
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 15:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59973

From: Paul Gortmaker <paul.gortmaker@windriver.com>

Some platform creators tend to list a whole bunch of layers by
default in conf/bblayers.conf.  Without getting into the debate of
whether that is a good idea, it can tend to have the effect of
people seeing the meta-security DISTRO_FEATURES warning time and
time again and becoming essentially numb to it.

After having fallen into this trap myself, I figured it was worth
the extra mention in the dm-verity doc so there is a better chance
of users realizing "hey - this applies to me!".

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 docs/dm-verity.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/docs/dm-verity.txt b/docs/dm-verity.txt
index 602a82693930..ce1839520982 100644
--- a/docs/dm-verity.txt
+++ b/docs/dm-verity.txt
@@ -31,6 +31,8 @@ Kernel Configuration
 Kernel configuration for dm-verity happens automatically via IMAGE_CLASSES
 which will source features/device-mapper/dm-verity.scc when dm-verity-img
 is used. [See commit d9feafe991c]
+IMPORTANT: As per the top level README, you *must* put security in the
+DISTRO_FEATURES, or else you won't get the dm-verity kernel settings.
 
 Supported Platforms
 -------------------
-- 
2.40.0


