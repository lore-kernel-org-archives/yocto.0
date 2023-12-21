Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3348FC4706C
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 07:58:08 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.47235.1703145482992956974
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 23:58:03 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rGDwP-008V8H-0D;
	Thu, 21 Dec 2023 09:58:01 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1rGDwO-000qY8-QK; Thu, 21 Dec 2023 09:58:00 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Erik Schilling <erik.schilling@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-security][PATCH 4/4] dm-verity-img.bbclass: add DM_VERITY_DEPLOY_DIR
Date: Thu, 21 Dec 2023 09:57:30 +0200
Message-Id: <20231221075730.201111-4-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231221075730.201111-1-mikko.rapeli@linaro.org>
References: <20231221075730.201111-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: FROM_HAS_DN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: MIME_GOOD(-0.10)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: FUZZY_BLOCKED(0.00)
 Symbol: R_DKIM_NA(0.00)
 Symbol: NEURAL_HAM(0.00)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: RCPT_COUNT_THREE(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Message-ID: 20231221075730.201111-4-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 07:58:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62010

If image recipe A wants to embed another image B which used
dm-verity-img.bbclass and generated the .wks file, then
recipe B must deploy everything to IMGDEPLOYDIR but recipe A
finds the output from DM_VERITY_DEPLOY_DIR = "${DEPLOY_DIR_IMAGE}".

Now both A and B images can use dm-verity-img.bbclass.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 classes/dm-verity-img.bbclass | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 7f35df5..2f212d6 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -33,6 +33,10 @@
 # is stored where it can be installed into associated initramfs rootfs.
 STAGING_VERITY_DIR ?= "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
 
+# location of images, default current image recipe. Set to DEPLOY_DIR_IMAGE
+# if non-verity images want to embed the .wks and verity image.
+DM_VERITY_DEPLOY_DIR ?= "${IMGDEPLOYDIR}"
+
 # Define the data block size to use in veritysetup.
 DM_VERITY_IMAGE_DATA_BLOCK_SIZE ?= "1024"
 
@@ -107,10 +111,10 @@ process_verity() {
     # Create wks.in fragment with build specific UUIDs for partitions.
     # Unfortunately the wks.in does not support line continuations...
     # First, the unappended filesystem data partition.
-    echo 'part / --source rawcopy --ondisk sda --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity" --part-name verityroot --part-type="${DM_VERITY_ROOT_GUID}"'" --uuid=\"$ROOT_UUID\"" > $WKS_INC
+    echo 'part / --source rawcopy --ondisk sda --sourceparams="file=${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}.rootfs.${DM_VERITY_IMAGE_TYPE}.verity" --part-name verityroot --part-type="${DM_VERITY_ROOT_GUID}"'" --uuid=\"$ROOT_UUID\"" > $WKS_INC
 
     # note: no default mount point for hash data partition
-    echo 'part --source rawcopy --ondisk sda --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash" --part-name verityhash --part-type="${DM_VERITY_RHASH_GUID}"'" --uuid=\"$RHASH_UUID\"" >> $WKS_INC
+    echo 'part --source rawcopy --ondisk sda --sourceparams="file=${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash" --part-name verityhash --part-type="${DM_VERITY_RHASH_GUID}"'" --uuid=\"$RHASH_UUID\"" >> $WKS_INC
 }
 
 verity_setup() {
-- 
2.34.1


