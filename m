Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E758CEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:23 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4345.1687367661520111438
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=N9smp/So;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35LBJaov009708;
	Wed, 21 Jun 2023 10:14:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=NG2EeJA3OquTuIIvPYqZ1nFVIY1sSjP8Vh+Yd7dzA5w=;
 b=N9smp/SorCOHFJk8N/I25U3Ld6qD0uS5PIc1eXelUdwBzvysmDhwSl69voNfwHSoGYso
 WdzsswgRbWT9BI8WDan4Nx7mW3mYB3xMP44j5ONcibor1w2BqVDwy45SyQeVqprudGev
 8CNb6L2zBSdfvEbNwyk4XOMQv9cbEQQsjcPEIGbc2ZTCkxWjd9whk12ch4L04MO46ddb
 YseEcSBbwo0mEVy4BjCSoRo0PMgb2rU3vpQDftZ9YxDDt9VG4Z0ZRJB2rjCks9vYbc6M
 pqiHasSt+biJ08RakTsxRZKC59UOn6vEoW/nyfl/UEB2V5pmT/8XPlB8ZeioQCLyN186 4A== 
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6q-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:20 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:14:19 -0700
Received: from ala-lpggp3.wrs.com (147.11.105.124) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 10:14:19 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>,
        Paul Gortmaker
	<paul.gortmaker@windriver.com>
Subject: [meta-security][PATCH 6/7] dm-verity: hook separate hash into initramfs framework
Date: Wed, 21 Jun 2023 10:13:34 -0700
Message-ID: <20230621171335.1354905-7-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: OQzqXKkhx-U7J6moFVa93dtfXuYfIr6D
X-Proofpoint-GUID: OQzqXKkhx-U7J6moFVa93dtfXuYfIr6D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210145
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 17:35:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60382

The prior commits create the separate hash so now it is time to update
the initramfs framework so that veritysetup, which is responsible for
binding the data and hash, is aware of when separate hash is in use,
and can react accordingly.

The added code follows the existing appended hash code style, but is
considerably smaller because it doesn't have the large case statement
that supports all possible identification schemes (label, UUID, ...).

With the root hash split in two to create the respective partition
UUIDs, we know exactly how to identify it, and the UUIDs used.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 .../initramfs-framework-dm/dmverity           | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
index 71afc91..1923490 100644
--- a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
+++ b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
@@ -8,12 +8,41 @@ dmverity_run() {
     DATA_SIZE="__not_set__"
     DATA_BLOCK_SIZE="__not_set__"
     ROOT_HASH="__not_set__"
+    SEPARATE_HASH="__not_set__"
 
     . /usr/share/misc/dm-verity.env
 
     C=0
     delay=${bootparam_rootdelay:-1}
     timeout=${bootparam_roottimeout:-5}
+
+    # we know exactly what we are looking for; don't need the wide hunt below
+    if [ "${SEPARATE_HASH}" -eq "1" ]; then
+        while [ ! -b "/dev/disk/by-partuuid/${ROOT_UUID}" ]; do
+            if [ $(( $C * $delay )) -gt $timeout ]; then
+                fatal "Root device (data) resolution failed"
+                exit 1
+            fi
+            debug "Sleeping for $delay second(s) to wait for root data to settle..."
+            sleep $delay
+            C=$(( $C + 1 ))
+        done
+
+        veritysetup \
+            --data-block-size=${DATA_BLOCK_SIZE} \
+            create rootfs \
+            /dev/disk/by-partuuid/${ROOT_UUID} \
+            /dev/disk/by-partuuid/${RHASH_UUID} \
+            ${ROOT_HASH}
+
+            mount \
+                 -o ro \
+                /dev/mapper/rootfs \
+                ${ROOTFS_DIR} || exit 2
+
+	    return
+    fi
+
     RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=} 2>/dev/null)"
     while [ ! -b "${RDEV}" ]; do
         if [ $(( $C * $delay )) -gt $timeout ]; then
-- 
2.39.0


