Return-Path: <rajeshx.dangi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2567C28B2B
	for <webhook@archiver.kernel.org>; Tue, 16 Aug 2022 14:51:08 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web08.16666.1660661462061428070
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Aug 2022 07:51:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=OM0Z9YLo;
 spf=pass (domain: intel.com, ip: 192.55.52.43,
 mailfrom: rajeshx.dangi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660661462; x=1692197462;
  h=from:to:subject:date:message-id;
  bh=Lu6M+AHrXO0XV3eO2nshDoI/cEvHbvzpyzVb3eGCMkM=;
  b=OM0Z9YLo19ns54T4dzqHLatGMs3k8hpZl7sPSoS7b0r/Lw5S5QsSGfLD
   fSSC3buEwSfkc7r+4KECfJkjCKO+nJC2mnEdiIubYVlC30TqimnW7GrlO
   TIDRQVE/ia5cW/5BTw9H1gRFlO7RbCa1xeK7tHMVvf2/dEDkMVG+i+MoN
   ynJ+uyMK7zY6ZAuWP/whS39JF2KEfUYK7h9WwGLfM4VArTthBo8yAotR2
   KVyefZrhtpxKAsFoCZtL67srNUqkOSbvGkeI/A5ES8zzkpMBC+8RDV5Eu
   A+xtZzLqI/8KOV1KQ8+C884yRCypd/qamcSRovI6YJosgkiQWB5kkty1u
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="378531643"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200";
   d="scan'208";a="378531643"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 07:51:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200";
   d="scan'208";a="667141091"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 07:51:00 -0700
From: Rajesh Dangi <rajeshx.dangi@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-yocto][dunfell][PATCH] linux-yocto/5.4: update genericx86*
 machines to v5.4.205
Date: Tue, 16 Aug 2022 20:20:47 +0530
Message-Id: <20220816145047.4845-1-rajeshx.dangi@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Aug 2022 14:51:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57855

Signed-off-by: Rajesh Dangi <rajeshx.dangi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index b2824cbb1d..219e788f47 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
-SRCREV_machine_genericx86-64 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
+SRCREV_machine_genericx86 ?= "8a59dfded81659402005acfb06fbb00b71c8ce86"
+SRCREV_machine_genericx86-64 ?= "8a59dfded81659402005acfb06fbb00b71c8ce86"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.178"
-LINUX_VERSION_genericx86-64 = "5.4.178"
+LINUX_VERSION_genericx86 = "5.4.205"
+LINUX_VERSION_genericx86-64 = "5.4.205"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.17.1


