Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8ADDEB64D8
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:23 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4349.1687367661827212289
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=L+X9nSR2;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35L5dhtr008888;
	Wed, 21 Jun 2023 10:14:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=5cu6ihHkFujuw/NMom/DWNrO/7P+m0y9Dgaf/EG3d2k=;
 b=L+X9nSR2SppYqdfhwr7oc6zopT06HvIOa6uIruQAF3I/+nKLUIm6zpbCB0cb0ZoXUdqS
 0cjNCtCuWRAu4V6tcheG8VcSmodg1NEVndTJ0JIPzY+7ypNku7UT4exfeTrO1Vn1xpBn
 A+v7zOfFAzxqtqTLPWIQPj+m1w0PRE69s63H62UHFeOBOAwkRappA1flkdU8jJt2VDqF
 QjOCi6r2P9ceb9CIjuJXKymoz/nvuzvqkPruQyzbGRFUzsTvv14xTcw8yu8CTK5wLGSa
 u+5cLME+GUHf4jlzr13++Z+dkK8QGBnmggCf5hq3UKwWNQt6J91JOB1KPl+lOIl51ahh rw== 
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6r-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:20 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
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
Subject: [meta-security][PATCH 5/7] dm-verity: add wks.in fragment with dynamic build hash data
Date: Wed, 21 Jun 2023 10:13:33 -0700
Message-ID: <20230621171335.1354905-6-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: NSXPlw7H5Jqe7o40H7XbxAEIqw7vo77j
X-Proofpoint-GUID: NSXPlw7H5Jqe7o40H7XbxAEIqw7vo77j
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60379

Export the dynamic build data for consumption in wic image generation.

It can either be included directly or manually parsed for useful chunks
in custom configurations people end up making.

For convenience, it is placed alongside the work-shared/dm-verity dir
where we already store the plain environment file and the veritysetup
formatting argument that was used.

There is a subtle thing going on here with respect to using an include,
which warrants a mention.  The wic (wks.in) stuff only has access to
normal Yocto/OE/bitbake variables.

So, instead of a fragment, say if you had:
   DM_VERITY_ROOT_HASH = "__not_set__"
and then later, did a:
   d.setVar("DM_VERITY_ROOT_HASH", value)
after the image was built, and the hash was known - that seems sane.

But the problem is that once you do that, your variables are tracked
by default, and bitbake/lib/bb/siggen.py will be angry with you for
changing metadata during a build.  In theory one should be able to avoid
this with BB_BASEHASH_IGNORE_VARS and "vardepsexclude" but it means more
exposed variables, and as much as I tried, I couldn't get this to work.

Creating a fragment with the dynamic data for inclusion avoids all that.
The wks template itself remains static, and hence doesn't trigger warns.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 classes/dm-verity-img.bbclass | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 8351ab2..045c860 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -18,6 +18,13 @@
 #     DM_VERITY_IMAGE_TYPE = "ext4" # or ext2, ext3 & btrfs
 #     DM_VERITY_SEPARATE_HASH = "1" # optional; store hash on separate dev
 #     IMAGE_CLASSES += "dm-verity-img"
+#
+# Using the GPT UUIDs specified in the standard can also be useful in that
+# they are displayed and translated in cfdisk output.
+#
+#     DM_VERITY_ROOT_GUID = <UUID for your architecture and root-fs>
+#     DM_VERITY_RHASH_GUID = <UUID for your architecture and verity-hash>
+# https://uapi-group.org/specifications/specs/discoverable_partitions_specification/
 
 # The resulting image can then be used to implement the device mapper block
 # integrity checking on the target device.
@@ -35,12 +42,20 @@ DM_VERITY_IMAGE_HASH_BLOCK_SIZE ?= "4096"
 # Should we store the hash data on a separate device/partition?
 DM_VERITY_SEPARATE_HASH ?= "0"
 
+# These are arch specific.  We could probably intelligently auto-assign these?
+# Take x86-64 values as defaults. No impact on functionality currently.
+# See SD_GPT_ROOT_X86_64 and SD_GPT_ROOT_X86_64_VERITY in the spec.
+# Note - these are passed directly to sgdisk so hyphens needed.
+DM_VERITY_ROOT_GUID ?= "4f68bce3-e8cd-4db1-96e7-fbcaf984b709"
+DM_VERITY_RHASH_GUID ?= "2c7357ed-ebd2-46d9-aec1-23d437ec2bf5"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we need to
 # convert it to some better format. Let's drop the first line (doesn't contain
 # any useful info) and feed the rest to a script.
 process_verity() {
     local ENV="${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.verity.env"
+    local WKS_INC="${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.wks.in"
     rm -f $ENV
 
     # Each line contains a key and a value string delimited by ':'. Read the
@@ -86,6 +101,14 @@ process_verity() {
     # Emit the values needed for a veritysetup run in the initramfs
     echo "ROOT_UUID=$ROOT_UUID" >> $ENV
     echo "RHASH_UUID=$RHASH_UUID" >> $ENV
+
+    # Create wks.in fragment with build specific UUIDs for partitions.
+    # Unfortunately the wks.in does not support line continuations...
+    # First, the unappended filesystem data partition.
+    echo 'part / --source rawcopy --ondisk sda --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity" --part-name verityroot --part-type="${DM_VERITY_ROOT_GUID}"'" --uuid=\"$ROOT_UUID\"" > $WKS_INC
+
+    # note: no default mount point for hash data partition
+    echo 'part --source rawcopy --ondisk sda --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash" --part-name verityhash --part-type="${DM_VERITY_RHASH_GUID}"'" --uuid=\"$RHASH_UUID\"" >> $WKS_INC
 }
 
 verity_setup() {
-- 
2.39.0


