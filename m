Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4080C433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 02:02:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.1198.1664503317842741175
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 19:01:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E740B15A1
	for <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 19:02:03 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EADB43F73D
	for <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 19:01:56 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layers: add langdale compatibility
Date: Thu, 29 Sep 2022 22:01:52 -0400
Message-Id: <20220930020152.9419-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 02:02:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58225

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 meta-zephyr-bsp/conf/layer.conf  | 4 ++--
 meta-zephyr-core/conf/layer.conf | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-zephyr-bsp/conf/layer.conf b/meta-zephyr-bsp/conf/layer.conf
index 507374f..cbbaafe 100644
--- a/meta-zephyr-bsp/conf/layer.conf
+++ b/meta-zephyr-bsp/conf/layer.conf
@@ -15,6 +15,6 @@ LAYERVERSION_zephyrbsp = "1"
 
 LAYERDEPENDS_zephyrbsp = "zephyrcore core meta-python"
 
-LAYERSERIES_COMPAT_zephyrbsp = "dunfell gatesgarth hardknott honister kirkstone"
+LAYERSERIES_COMPAT_zephyrbsp = "dunfell gatesgarth hardknott honister kirkstone langdale"
 
-X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone', 'include/x86', 'include', d)}"
+X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone langdale', 'include/x86', 'include', d)}"
diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/layer.conf
index 20c8fdf..3d1e57b 100644
--- a/meta-zephyr-core/conf/layer.conf
+++ b/meta-zephyr-core/conf/layer.conf
@@ -15,8 +15,8 @@ LAYERVERSION_zephyrcore = "1"
 
 LAYERDEPENDS_zephyrcore = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyrcore = "dunfell gatesgarth hardknott honister kirkstone"
+LAYERSERIES_COMPAT_zephyrcore = "dunfell gatesgarth hardknott honister kirkstone langdale"
 
-X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone', 'include/x86', 'include', d)}"
+X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone langdale', 'include/x86', 'include', d)}"
 
 PYTHON3_NATIVE_SITEPACKAGES_DIR = "${libdir_native}/${PYTHON3_DIR}/site-packages"
-- 
2.17.1


