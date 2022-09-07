Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51ED1C6FA8A
	for <webhook@archiver.kernel.org>; Wed,  7 Sep 2022 21:40:15 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web11.1493.1662586812586594705
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 14:40:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=r80AhHPh;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id E6ED45C016A;
	Wed,  7 Sep 2022 17:40:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 07 Sep 2022 17:40:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662586811; x=1662673211; bh=0f
	kQm7b6V3Pe0TMpPS8R4XGtchln9BlKc3aDHG6NFIo=; b=r80AhHPhYEc7EBQmi5
	m+Y1WJBW23lzzgmfbMeYitiFbKr7RElvmHx28zVZ2QCufmHAP98u9sVfAeEvWhfx
	PN8DREkmVnBDdHHuqMpF+qayZWSC34y5Yx6G7SL5GzfCpKsy/SOlHVkLkp4iAd8j
	zpXrnKoXUuW+682Q3CmmqVNbF8Wf4FhEBN2Sd7332EM7u4qqxb4bkXjuR9vRoDoV
	mTb14wKs0f2A3eMBP8I4r5CML9kmXwAjL5xIT/5ROMdBxPIn+sORgmktTRLoEHA7
	kjz2aD16bX7StMxtPBUDHDUw94oyGWihoWfgoS9PQpGoTNkPg5KFc3gUTi43rmcV
	/5kQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662586811; x=1662673211; bh=0fkQm7b6V3Pe0
	TMpPS8R4XGtchln9BlKc3aDHG6NFIo=; b=YMqo2vIDZn2kxz4eOb/O63FRYy8SQ
	sSGIHVFSCUSMGXpZPamzR8z6TKWSvNCnjrP9kQb7tZGinlOLroA51hahirPi8xKg
	NPLGO4/bn1ZKPMPIVXLjcXpVGHPGDuG7I59pjgdy7ZK+FvBDWuTGXMW0C+Lb9c4B
	ikLkCc8eWiprBwK2X5Jbq0Ducm4F1DqRNgtUwvtB2j7vLrsm4ICbDZIP4IpKGPUP
	IGm2jXoz/n2JNOBVmi7fl5+rx0I6nIC+fjnn1CGiGotMxFGTMKwb0Fk629yYrjRI
	2P6DbK3y66P0Wb0Shnq0uc3L7UkpQJom9XPHD6OBgeryCMicgpSEcqsGg==
X-ME-Sender: <xms:uw8ZY5I14-_sn0dsGLULG3A-CaZ7AIh9nILwYcECxMJY85HkKhDGzw>
    <xme:uw8ZY1IXbYynAEgj_JCi_F4L5fBuFrTi4HjXsZnrBlT63zbGp46q7lIPiXvnBlXP8
    i0OdAbXXbCXEOfMdrg>
X-ME-Received: 
 <xmr:uw8ZYxvyXmCHmfwJHeI3kwFOds6MQowJ2wEM195p3dvgus2lotz5RFKBMXKIjWVZA-oP0TpVvWeGLZif7OBXmz_iGB6WgENuL65BVX1GBrgx0x73NLEu1mSl>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtuddgtdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:uw8ZY6bDuDUrJAtbzzz33J09llD7mkIsLddq2PV5m7uE_JOP5lKnBw>
    <xmx:uw8ZYwY2vmxM5ydTyGQh_GEbJuyFeaYCPYFi86rZ8hkuzsvoEhKnXA>
    <xmx:uw8ZY-AA9bO82bnM3h9GlUbkn-6hmJTF1WE4WEf0zl6eCfKfjZLvvA>
    <xmx:uw8ZY7xdqiq5VsiIqBsJif-x4SPr_TThaJjDOlK22AcV2ZnMcnUMng>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Sep 2022 17:40:11 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 2/4] multiconfig: Add multiconfig setup for
 Raspberry Pi 3+4 images
Date: Wed,  7 Sep 2022 23:39:57 +0200
Message-Id: <20220907213959.1115886-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907213959.1115886-1-andrei@gherzan.com>
References: <20220907213959.1115886-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Sep 2022 21:40:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58003

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This defines two multiconfigs:

- raspberrypi: can used to generate an image that support both
  Raspberypi 3 and Raspberrypi 4 booting
- raspberrypi3: used as a dependency for the above

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 conf/multiconfig/raspberrypi.conf  | 30 ++++++++++++++++++++++++++++++
 conf/multiconfig/raspberrypi3.conf |  7 +++++++
 2 files changed, 37 insertions(+)
 create mode 100644 conf/multiconfig/raspberrypi.conf
 create mode 100644 conf/multiconfig/raspberrypi3.conf

diff --git a/conf/multiconfig/raspberrypi.conf b/conf/multiconfig/raspberrypi.conf
new file mode 100644
index 0000000..2b6d6c3
--- /dev/null
+++ b/conf/multiconfig/raspberrypi.conf
@@ -0,0 +1,30 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+TMPDIR = "${TOPDIR}/tmp-multi-raspberrypi"
+
+# Base it on Raspberry Pi 4 (32 bit)
+MACHINE = "raspberrypi4"
+
+#
+# Add boot support for:
+#  - Raspberry Pi 3 (32 bit)
+#
+
+# Make sure the kernel is deployed for all the supported targets.
+do_image_wic[mcdepends] += " \
+	mc:${BB_CURRENT_MC}:raspberrypi3:virtual/kernel:do_deploy \
+"
+
+# Include firmware for all the supported targets.
+MACHINE_EXTRA_RRECOMMENDS:append = " \
+	${RASPBERRYPI_3_FIRMWARE_PACKAGES} \
+"
+
+# Deploy the kernel images for all the supported targets in the boot partition.
+# FIXME: No support for u-boot (yet).
+RASPBERRYPI_3_MULTI_DEPLOY_DIR_IMAGE = "${TOPDIR}/tmp-multi-raspberrypi3/deploy/images/raspberrypi3"
+IMAGE_BOOT_FILES:append = " \
+	${RASPBERRYPI_3_MULTI_DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE_DIRECT};${RASPBERRYPI_3_KERNEL} \
+"
diff --git a/conf/multiconfig/raspberrypi3.conf b/conf/multiconfig/raspberrypi3.conf
new file mode 100644
index 0000000..9fa6245
--- /dev/null
+++ b/conf/multiconfig/raspberrypi3.conf
@@ -0,0 +1,7 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+MACHINE = "raspberrypi3"
+
+TMPDIR = "${TOPDIR}/tmp-multi-raspberrypi3"
-- 
2.25.1


