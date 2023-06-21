Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03F3EC001B3
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:24 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4348.1687367661800243718
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Vndmhybu;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35LBJaou009708;
	Wed, 21 Jun 2023 10:14:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=rKi8XBSzCiYi404mrMk2DKFRQO8hn2KHpzQF4whbbBE=;
 b=Vndmhybu6rI4nQRVxaPZpjh4JgPJsX3DYe2aOW5Rwwz9cUDDSWv8qwE+G7u+yS0cEhI3
 nRSB21nvQD6/KBx2Sdn4q7NFBY2NkeV8SDijSSjg63+XTzTZToydCO1fdNsL+Lbo6/gG
 HcMKUnnZA6o5IB7VXT/pdRUsEYV/E3xsq48e92zC40iYOEeTjSRyBJXmgF82MiDVMGTH
 WGXPYD5HoAe+M+5zoAzGY17ha/s6PLvb1rsoyXCwXKnLUFVYRQus1E8+LdofSjsYTs6u
 fZi7QmDuUBS3XwShMik2El1TX6OAjn7mttybtmRIrFRenMjjyTi2Fn0QE3SxAjCio1+0 Qw== 
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6q-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:19 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:14:18 -0700
Received: from ala-lpggp3.wrs.com (147.11.105.124) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 10:14:18 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>,
        Paul Gortmaker
	<paul.gortmaker@windriver.com>
Subject: [meta-security][PATCH 3/7] dm-verity: save veritysetup args beside runtime environment
Date: Wed, 21 Jun 2023 10:13:31 -0700
Message-ID: <20230621171335.1354905-4-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: d9dGguyutCLyu_cRoGP9ucXYrwjHUZTk
X-Proofpoint-GUID: d9dGguyutCLyu_cRoGP9ucXYrwjHUZTk
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
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 17:35:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60383

We already have this directory to save the environment variable settings
so they can be copied into the initramfs for runtime setup.

There are quite a few veritysetup args, and the nature of storing the
hash data after the filesystem data in an "oversized" partition can be
error prone due to rounding, fencepost errors, etc.

Save a copy of what we used for ease of debug inspection, and for basic
cut and paste use in experimentation and tweaking.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 classes/dm-verity-img.bbclass | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index b279fa8..e190c87 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -34,7 +34,6 @@ DM_VERITY_IMAGE_HASH_BLOCK_SIZE ?= "4096"
 # any useful info) and feed the rest to a script.
 process_verity() {
     local ENV="${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.verity.env"
-    install -d ${STAGING_VERITY_DIR}
     rm -f $ENV
 
     # Each line contains a key and a value string delimited by ':'. Read the
@@ -59,6 +58,9 @@ verity_setup() {
     local SIZE=$(stat --printf="%s" $INPUT)
     local OUTPUT=$INPUT.verity
     local SETUP_ARGS=""
+    local SAVED_ARGS="${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.verity.args"
+
+    install -d ${STAGING_VERITY_DIR}
 
     if [ ${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} -ge ${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} ]; then
         align=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE}
@@ -75,6 +77,8 @@ verity_setup() {
         --hash-offset=$SIZE format $OUTPUT $OUTPUT \
     "
 
+    echo "veritysetup $SETUP_ARGS" > $SAVED_ARGS
+
     # Let's drop the first line of output (doesn't contain any useful info)
     # and feed the rest to another function.
     veritysetup $SETUP_ARGS | tail -n +2 | process_verity
-- 
2.39.0


