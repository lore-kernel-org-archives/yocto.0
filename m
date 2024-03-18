Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0637EC54E67
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 02:59:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by mx.groups.io with SMTP id smtpd.web10.34704.1710730740080397096
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Mar 2024 19:59:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=IfnEZu+C;
 spf=pass (domain: intel.com, ip: 192.198.163.17, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1710730740; x=1742266740;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=PErh0URWFyV3VsiUoGTnvzImWI1FpjxiI6zOzV5ENsg=;
  b=IfnEZu+Cj9A0Nz0tMAnagv1MduzHgA0KaDvfjm67NAOiM2Xe7wGSHIuZ
   9Wb1t9FVinBszhDZVPhk4W+xEOEmpqEcc2tfBrWCHD38vVGoSH0nTXR2W
   mQx7DSRG6RSLRiUAElq/IiXs4zteEOHu3YYbOON+eSM12cKzESXak7h+A
   ZlR7WXDC0lufP0EW03Uf7qJFHThVA978q2mdWC8Ji8+Do0MkMBfyGiAaG
   WpJrXHLRAfu+Z08mp6s9psrmDfZs+ERj2pxj5MhgnZaKckfZhqjWvfLdE
   IuMqoCAN/2fHDLEYjMvqG+dNvCM3IWZfEP5rvOAR5aKw0Goz2eXjh7viM
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="5389404"
X-IronPort-AV: E=Sophos;i="6.07,133,1708416000"; 
   d="scan'208";a="5389404"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2024 19:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,133,1708416000"; 
   d="scan'208";a="13292692"
Received: from andromeda02.png.intel.com ([10.221.253.198])
  by fmviesa009.fm.intel.com with ESMTP; 17 Mar 2024 19:58:58 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layer.conf: update LAYERSERIES_COMPAT to use scarthgap
Date: Mon, 18 Mar 2024 10:58:42 +0800
Message-Id: <20240318025842.3945978-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 02:59:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62776

Drop compatibility to nanbield.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-zephyr-bsp/conf/layer.conf  | 2 +-
 meta-zephyr-core/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-zephyr-bsp/conf/layer.conf b/meta-zephyr-bsp/conf/layer.conf
index 1edcb0b..28577b2 100644
--- a/meta-zephyr-bsp/conf/layer.conf
+++ b/meta-zephyr-bsp/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyrbsp = "1"
 
 LAYERDEPENDS_zephyrbsp = "zephyrcore core meta-python"
 
-LAYERSERIES_COMPAT_zephyrbsp = "kirkstone nanbield"
+LAYERSERIES_COMPAT_zephyrbsp = "kirkstone scarthgap"
diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/layer.conf
index 06e942e..e1bb263 100644
--- a/meta-zephyr-core/conf/layer.conf
+++ b/meta-zephyr-core/conf/layer.conf
@@ -15,7 +15,7 @@ LAYERVERSION_zephyrcore = "1"
 
 LAYERDEPENDS_zephyrcore = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyrcore = "kirkstone nanbield"
+LAYERSERIES_COMPAT_zephyrcore = "kirkstone scarthgap"
 
 PYTHON3_NATIVE_SITEPACKAGES_DIR = "${libdir_native}/${PYTHON3_DIR}/site-packages"
 
-- 
2.37.3


