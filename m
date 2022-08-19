Return-Path: <rajeshx.dangi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A3BCC32773
	for <webhook@archiver.kernel.org>; Fri, 19 Aug 2022 11:53:40 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web12.2204.1660910016452466342
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Aug 2022 04:53:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=Z8ixVIHf;
 spf=pass (domain: intel.com, ip: 134.134.136.20,
 mailfrom: rajeshx.dangi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660910016; x=1692446016;
  h=from:to:subject:date:message-id;
  bh=xBfT9SKXyufqZSvk2JS/cU54rmwiGg2d0bdJY/ab4Gc=;
  b=Z8ixVIHfou12iVVGrXX1fVeXHRWHU5xhudFs4JaOf4P2fU2acMVB2ZFr
   tqAfJpPmnSVQyTz9N2Ovna/j38N02MNFsj8N3JWS9ZjSYLLYB9XsK0+O5
   CRkUwyxAd4TcWcGmdxadAA4OBnReSUe1nApPGqW0wBpvz/sJoCyEzx3L7
   Izs1oKhtbq49jDCXoB4Hb3jwyHoJwUv84Jj57686itYniPfl+f1sz76ek
   Davy07D673tqu9auRvsQ7nAKgc21ZdJir1aVftlOSALR0y8ffnvmXkAaP
   z7j5+OckU0JuiXvX6YCqdvyZGNpjbioBh8xoUdGaZNP/1XpSzXI8B/7rl
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="279959506"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200";
   d="scan'208";a="279959506"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 04:53:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200";
   d="scan'208";a="668557662"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 04:53:34 -0700
From: Rajesh Dangi <rajeshx.dangi@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone][PATCH 1/2] linux-yocto/5.15: update
 genericx86* machines to v5.15.59
Date: Fri, 19 Aug 2022 17:23:24 +0530
Message-Id: <20220819115325.1386-1-rajeshx.dangi@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Aug 2022 11:53:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57864

Signed-off-by: Rajesh Dangi <rajeshx.dangi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index a5c0ecdbd9..e6826203e3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
-SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:genericx86 ?= "efe20512212b0e85b5f884b1bfc8fbba2b43541a"
+SRCREV_machine:genericx86-64 ?= "efe20512212b0e85b5f884b1bfc8fbba2b43541a"
 SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
 SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.54"
-LINUX_VERSION:genericx86-64 = "5.15.54"
+LINUX_VERSION:genericx86 = "5.15.59"
+LINUX_VERSION:genericx86-64 = "5.15.59"
 LINUX_VERSION:edgerouter = "5.15.54"
 LINUX_VERSION:beaglebone-yocto = "5.15.54"
-- 
2.17.1


