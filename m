Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 011AFEB64DD
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:24 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.4526.1687367661759856151
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KNytAHzj;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35LBJaot009708;
	Wed, 21 Jun 2023 10:14:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=cvgg/YFNLQ4xTWMQWoGsCVl5lwWGBmh87tEzbyL6ih0=;
 b=KNytAHzj/GjW+zOIm9lMidhxPE16vWp3hB0PTVFFBQe8voRZS4Nz/Si7vbDZRP45oPzW
 6EOhLOah7rd3mpkSA7QGjUTCh67STIhpEOAO/LuYaBVWOLLp3U9Aoh3p+0i7eblc4Kvf
 3utZsUQkQ8J1ggHZ3zuJkWwmmgHq96WGnbtLk0CASIqVD81x+YbwFSmrsTdfp9rPd5NC
 ovw1rH9eA0ZCoZUVloEZwdOP0e5iceqmkaV5JkqoNnkhXimz1DqiyLUgnbzGDGSxeZey
 PNyRsT1HevpcR376zzyvPZvnNYMHhCjy9aAHkVIwGJrZ7eZn8d/Q8XqeLcijN8yr7ZnC zw== 
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6q-2
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
Subject: [meta-security][PATCH 2/7] dm-verity: restructure the veritysetup arg parsing
Date: Wed, 21 Jun 2023 10:13:30 -0700
Message-ID: <20230621171335.1354905-3-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: a5l3l9bWkZdFwOFA5UiHP2dahv4LVqjJ
X-Proofpoint-GUID: a5l3l9bWkZdFwOFA5UiHP2dahv4LVqjJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=960
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210145
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 17:35:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60384

In making changes to the existing veritysetup arg list, it is harder to
see what the proposed change is since they are are glued together on one
long line.  Break them up so reviewing future unified diffs will be more
easy to visually parse.

This also makes it easier to temp. dump the args to a file for debugging.

In theory this should have no functional change.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 classes/dm-verity-img.bbclass | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index d809985..b279fa8 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -58,6 +58,7 @@ verity_setup() {
     local INPUT=${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.$TYPE
     local SIZE=$(stat --printf="%s" $INPUT)
     local OUTPUT=$INPUT.verity
+    local SETUP_ARGS=""
 
     if [ ${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} -ge ${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} ]; then
         align=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE}
@@ -68,9 +69,15 @@ verity_setup() {
 
     cp -a $INPUT $OUTPUT
 
+    SETUP_ARGS=" \
+        --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} \
+        --hash-block-size=${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} \
+        --hash-offset=$SIZE format $OUTPUT $OUTPUT \
+    "
+
     # Let's drop the first line of output (doesn't contain any useful info)
     # and feed the rest to another function.
-    veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-block-size=${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
+    veritysetup $SETUP_ARGS | tail -n +2 | process_verity
 }
 
 VERITY_TYPES = " \
-- 
2.39.0


