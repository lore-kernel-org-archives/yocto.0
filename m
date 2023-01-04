Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B9DC4332F
	for <webhook@archiver.kernel.org>; Wed,  4 Jan 2023 04:14:49 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web11.4343.1672805683921024704
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 20:14:44 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=TGxNdsob;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1672805683; x=1704341683;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=c6DZ38rDi1NgaAXUltp+hgqP1qJ6EowCgVMiNb/CVVM=;
  b=TGxNdsobIRkiYqtkOTAWbl4wFAZYFFkdNCzXhT4a6Xpz6/tUuyHen0/B
   OdTH32E75wCT+swPV8POJ4ER7XlHdw5tw+ZO+Gs0CMXuesE+N0+t4EiCS
   ho5kseXIpbuwshGA71jUVmJ7GohDgJo+CTuo4AfUEXbu5/W1RWhPxV1Tu
   /9bnKbjrQ9Rgs49URuzsyKI5EaI9tE75P5BlIji5IfNdCXwllQFwZfden
   4Ga7qmDs/Gbdg8hz57Y6ipFJX6Uul/cLtAXsOXUKYvfvzlSEw82jn/6Hx
   Roj7Ehsl1xT0RaL7cd2cprtnDRe7aDQbU5UnEwrhwGInO9d3yGHBNylY2
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="384117202"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; 
   d="scan'208";a="384117202"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jan 2023 20:14:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="743709374"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; 
   d="scan'208";a="743709374"
Received: from saininav-desk1.png.intel.com ([172.30.130.9])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jan 2023 20:14:42 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layer.conf: update LAYERSERIES_COMPAT for mickledore
Date: Wed,  4 Jan 2023 12:36:32 +0800
Message-Id: <20230104043632.1351038-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 04:14:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58921

oe-core switched to mickedore in:
https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f

Drop support for old releases.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-zephyr-bsp/conf/layer.conf                             | 4 +---
 meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc | 4 ++--
 meta-zephyr-bsp/conf/machine/qemu-x86.conf                  | 2 +-
 meta-zephyr-core/conf/layer.conf                            | 4 +---
 4 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/meta-zephyr-bsp/conf/layer.conf b/meta-zephyr-bsp/conf/layer.conf
index cbbaafe..d809926 100644
--- a/meta-zephyr-bsp/conf/layer.conf
+++ b/meta-zephyr-bsp/conf/layer.conf
@@ -15,6 +15,4 @@ LAYERVERSION_zephyrbsp = "1"
 
 LAYERDEPENDS_zephyrbsp = "zephyrcore core meta-python"
 
-LAYERSERIES_COMPAT_zephyrbsp = "dunfell gatesgarth hardknott honister kirkstone langdale"
-
-X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone langdale', 'include/x86', 'include', d)}"
+LAYERSERIES_COMPAT_zephyrbsp = "kirkstone langdale mickledore"
diff --git a/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc b/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc
index b68fc05..6975c50 100644
--- a/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc
+++ b/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc
@@ -1,6 +1,6 @@
 DEFAULTTUNE ?= "corei7-64"
-require conf/machine/${X86_TUNE_DIR}/tune-corei7.inc
-require conf/machine/${X86_TUNE_DIR}/x86-base.inc
+require conf/machine/include/x86/tune-corei7.inc
+require conf/machine/include/x86/x86-base.inc
 
 # Add x86 to MACHINEOVERRIDE
 MACHINEOVERRIDES =. "x86:"
diff --git a/meta-zephyr-bsp/conf/machine/qemu-x86.conf b/meta-zephyr-bsp/conf/machine/qemu-x86.conf
index 0333d7c..d21de35 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-x86.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-x86.conf
@@ -3,7 +3,7 @@
 #@DESCRIPTION: Machine for Zephyr BOARD qemu_x86
 
 require conf/machine/include/qemu.inc
-require conf/machine/${X86_TUNE_DIR}/tune-i586.inc
+require conf/machine/include/x86/tune-i586.inc
 
 ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/layer.conf
index 2b1c821..fdff4f6 100644
--- a/meta-zephyr-core/conf/layer.conf
+++ b/meta-zephyr-core/conf/layer.conf
@@ -15,9 +15,7 @@ LAYERVERSION_zephyrcore = "1"
 
 LAYERDEPENDS_zephyrcore = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyrcore = "dunfell gatesgarth hardknott honister kirkstone langdale"
-
-X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone langdale', 'include/x86', 'include', d)}"
+LAYERSERIES_COMPAT_zephyrcore = "kirkstone langdale mickledore"
 
 PYTHON3_NATIVE_SITEPACKAGES_DIR = "${libdir_native}/${PYTHON3_DIR}/site-packages"
 
-- 
2.25.1


