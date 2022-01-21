Return-Path: <changqing.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8428BC433EF
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 08:51:47 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web08.9404.1642755106314274907
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 00:51:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: changqing.li@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 20L8piE1015215
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 00:51:45 -0800
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 20L8piT3025169
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 00:51:44 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 21 Jan 2022 00:51:44 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Fri, 21 Jan 2022 00:51:43 -0800
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-tensorflow][PATCH] Update SRC_URI git default protocol
Date: Fri, 21 Jan 2022 16:51:42 +0800
Message-ID: <20220121085142.11944-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 08:51:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55938

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-framework/tensorflow/keras_2.6.0.bb              | 2 +-
 recipes-framework/tensorflow/tensorflow-estimator_2.6.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-framework/tensorflow/keras_2.6.0.bb b/recipes-framework/tensorflow/keras_2.6.0.bb
index dc1a98d..ebb668d 100644
--- a/recipes-framework/tensorflow/keras_2.6.0.bb
+++ b/recipes-framework/tensorflow/keras_2.6.0.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "TensorFlow Keras is an implementation of the Keras API that\
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c573baaa40a28002a2d03d3e7e9bc583"
 
-SRC_URI = "git://github.com/keras-team/keras.git;branch=r2.6 \
+SRC_URI = "git://github.com/keras-team/keras.git;branch=r2.6;protocol=https \
            file://0001-customize-for-yocto.patch \
           "
 
diff --git a/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb b/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb
index 910ca4d..83804af 100644
--- a/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb
+++ b/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb
@@ -3,7 +3,7 @@ learning programming."
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
 
-SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r2.6 \
+SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r2.6;protocol=https \
            file://0001-customize-for-yocto.patch \
           "
 SRCREV = "9a6c1260bbb468a013e39cf7d6f5af369cf2db2b"
-- 
2.17.1


