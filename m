Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13556C001DD
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:24 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4344.1687367660755148060
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=L/Nt547v;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35L5dhtq008888;
	Wed, 21 Jun 2023 10:14:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=/4gxN5duuUJTOMbG5dzCLCrDjrnOgRwk0VN+GouO3lw=;
 b=L/Nt547vM3CT62Q2tj9EN5qsfwE9WEu6wvBwTW2eQ+c1phyMcqqeBR4jFc374WHvp1WT
 D+lWWuNRShOB0mx1WDQf+kMUAndYQlmIjh1cLhywMRmnibdmEaeyXhYNlg2HK9JWtUG8
 GZp03ZfypDp4LUCvkCs8ka++/hGBh3JJw8m7fXnKfIfPm7BXJpocDkh6CvpkTVBCdaJN
 QWdVjYpYEaWhLbCTq5DgXgKhw+I4sMl3LP/49w1ht71QqUTX054e3QAH7iUNvOyCEebY
 7bx71xhqw7V4+/GO+jzhEnzavP7Ws+nofEYhNuDi0bDFil0ThGcF2rrjgThi8/ZhONYA ug== 
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6r-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:19 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
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
Subject: [meta-security][PATCH 4/7] dm-verity: add support for hash storage on separate partition
Date: Wed, 21 Jun 2023 10:13:32 -0700
Message-ID: <20230621171335.1354905-5-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: kVOPbWm4Y9RYBrB-M_2P7tfeHJ_Oy_gD
X-Proofpoint-GUID: kVOPbWm4Y9RYBrB-M_2P7tfeHJ_Oy_gD
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60381

There are essentially two ways for dealing with where to put the hash
data for dm-verity block integrity checks.

You can store both in a single partition, by using ~95% of the storage
space for the filesystem and the remaining 5% tail for the hash, or you
can use a completely separate partition (or even device) for storing the
hash data elsewhere.

Method A relies on using a hash offset argument during creation, which
is generally OK from a scripted use case but is error prone when run
from the command line and the offset calculated manually.

Method B has the advantage of using the basic partition/device
compartmentalization of the kernel to ensure the fs data doesn't
overwrite the hash or vice versa.  It takes any possible errors due to
math miscalculations completely off the table.

At the moment, our current support is hard coded to only support the
offset method A.  Here we add support for separate hash as per B.

As multiple partitions are now in play, we use the UUID creation
standard adopted by the systemd/verity community which implicitly links
the root and hash partitions by splitting the top roothash in two for
the UUIDs of the components.

This change optionally creates the separate hash file but no examples
use it yet.  Further commits will implement an example.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 classes/dm-verity-img.bbclass | 60 +++++++++++++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index e190c87..8351ab2 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -10,11 +10,15 @@
 # assure data integrity, the root hash must be stored in a trusted location
 # or cryptographically signed and verified.
 #
+# Optionally, we can store the hash data on a separate device or partition
+# for improved compartmentalization and ease of use/deployment.
+#
 # Usage:
 #     DM_VERITY_IMAGE = "core-image-full-cmdline" # or other image
 #     DM_VERITY_IMAGE_TYPE = "ext4" # or ext2, ext3 & btrfs
+#     DM_VERITY_SEPARATE_HASH = "1" # optional; store hash on separate dev
 #     IMAGE_CLASSES += "dm-verity-img"
-#
+
 # The resulting image can then be used to implement the device mapper block
 # integrity checking on the target device.
 
@@ -28,6 +32,9 @@ DM_VERITY_IMAGE_DATA_BLOCK_SIZE ?= "1024"
 # Define the hash block size to use in veritysetup.
 DM_VERITY_IMAGE_HASH_BLOCK_SIZE ?= "4096"
 
+# Should we store the hash data on a separate device/partition?
+DM_VERITY_SEPARATE_HASH ?= "0"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we need to
 # convert it to some better format. Let's drop the first line (doesn't contain
@@ -50,6 +57,35 @@ process_verity() {
 
     # Add partition size
     echo "DATA_SIZE=$SIZE" >> $ENV
+
+    # Add whether we are storing the hash data separately
+    echo "SEPARATE_HASH=${DM_VERITY_SEPARATE_HASH}" >> $ENV
+
+    # Configured for single partition use of veritysetup?  OK, we are done.
+    if [ ${DM_VERITY_SEPARATE_HASH} -eq 0 ]; then
+        return
+    fi
+
+    # Craft up the UUIDs that are part of the verity standard for root & hash
+    # while we are here and in shell.  Re-read our output to get ROOT_HASH
+    # and then cut it in 1/2 ; HI for data UUID and LO for hash-data UUID.
+    # https://uapi-group.org/specifications/specs/discoverable_partitions_specification/
+
+    ROOT_HASH=$(cat $ENV | grep ^ROOT_HASH | sed 's/ROOT_HASH=//' | tr a-f A-F)
+    ROOT_HI=$(echo "obase=16;ibase=16;$ROOT_HASH/2^80" | /usr/bin/bc)
+    ROOT_LO=$(echo "obase=16;ibase=16;$ROOT_HASH%2^80" | /usr/bin/bc)
+
+    # Hyphenate as per UUID spec and as expected by wic+sgdisk parameters.
+    # Prefix with leading zeros, in case hash chunks weren't using highest bits
+    # "bc" needs upper case, /dev/disk/by-partuuid/ is lower case. <sigh>
+    ROOT_UUID=$(echo 00000000$ROOT_HI | sed 's/.*\(.\{32\}\)$/\1/' | \
+        sed 's/./-&/9;s/./-&/14;s/./-&/19;s/./-&/24' | tr A-F a-f )
+    RHASH_UUID=$(echo 00000000$ROOT_LO | sed 's/.*\(.\{32\}\)$/\1/' | \
+        sed 's/./-&/9;s/./-&/14;s/./-&/19;s/./-&/24' | tr A-F a-f )
+
+    # Emit the values needed for a veritysetup run in the initramfs
+    echo "ROOT_UUID=$ROOT_UUID" >> $ENV
+    echo "RHASH_UUID=$RHASH_UUID" >> $ENV
 }
 
 verity_setup() {
@@ -57,6 +93,8 @@ verity_setup() {
     local INPUT=${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.$TYPE
     local SIZE=$(stat --printf="%s" $INPUT)
     local OUTPUT=$INPUT.verity
+    local OUTPUT_HASH=$INPUT.verity
+    local HASH_OFFSET=""
     local SETUP_ARGS=""
     local SAVED_ARGS="${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.verity.args"
 
@@ -69,12 +107,19 @@ verity_setup() {
     fi
     SIZE=$(expr \( $SIZE + $align - 1 \) / $align \* $align)
 
+    # Assume some users may want separate hash vs. appended hash
+    if [ ${DM_VERITY_SEPARATE_HASH} -eq 1 ]; then
+        OUTPUT_HASH=$INPUT.vhash
+    else
+        HASH_OFFSET="--hash-offset="$SIZE
+    fi
+
     cp -a $INPUT $OUTPUT
 
     SETUP_ARGS=" \
         --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} \
         --hash-block-size=${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} \
-        --hash-offset=$SIZE format $OUTPUT $OUTPUT \
+        $HASH_OFFSET format $OUTPUT $OUTPUT_HASH \
     "
 
     echo "veritysetup $SETUP_ARGS" > $SAVED_ARGS
@@ -84,6 +129,13 @@ verity_setup() {
     veritysetup $SETUP_ARGS | tail -n +2 | process_verity
 }
 
+# make "dateless" symlink for the hash so the wks can find it.
+verity_hash() {
+    cd ${IMGDEPLOYDIR}
+    ln -sf ${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.${DM_VERITY_IMAGE_TYPE}.vhash \
+        ${IMAGE_BASENAME}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash
+}
+
 VERITY_TYPES = " \
     ext2.verity ext3.verity ext4.verity \
     btrfs.verity \
@@ -94,10 +146,12 @@ IMAGE_TYPES += "${VERITY_TYPES}"
 CONVERSIONTYPES += "verity"
 CONVERSION_CMD:verity = "verity_setup ${type}"
 CONVERSION_DEPENDS_verity = "cryptsetup-native"
+IMAGE_CMD:vhash = "verity_hash"
 
 python __anonymous() {
     verity_image = d.getVar('DM_VERITY_IMAGE')
     verity_type = d.getVar('DM_VERITY_IMAGE_TYPE')
+    verity_hash = d.getVar('DM_VERITY_SEPARATE_HASH')
     image_fstypes = d.getVar('IMAGE_FSTYPES')
     pn = d.getVar('PN')
 
@@ -112,6 +166,8 @@ python __anonymous() {
         bb.fatal('DM_VERITY_IMAGE_TYPE must contain exactly one type')
 
     d.appendVar('IMAGE_FSTYPES', ' %s.verity' % verity_type)
+    if verity_hash == "1":
+        d.appendVar('IMAGE_FSTYPES', ' vhash')
 
     # If we're using wic: we'll have to use partition images and not the rootfs
     # source plugin so add the appropriate dependency.
-- 
2.39.0


