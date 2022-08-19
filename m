Return-Path: <rajeshx.dangi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48E40C32771
	for <webhook@archiver.kernel.org>; Fri, 19 Aug 2022 11:53:40 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web12.2204.1660910016452466342
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Aug 2022 04:53:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=DkrZ/HMb;
 spf=pass (domain: intel.com, ip: 134.134.136.20,
 mailfrom: rajeshx.dangi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660910019; x=1692446019;
  h=from:to:subject:date:message-id:in-reply-to:references;
  bh=6NqG/ONM/nEfEyhM9wm9Rzh757r9SMckyO+Fr75V7y4=;
  b=DkrZ/HMb5DjRQmP0Y6lnZuipnH670ji5uffvY9iR1SjYMtlVjfuK3L1r
   wahIpgs+JiVvg0vanyyRiY/KTj2oHqF0tvhN68Fai39AkE3HZuHwIPehk
   IidEtrgfx+76tyxzlC8oo76f9fpEWbAfkW9VVwr61qSvtfQyMeeSdUDrH
   TkAvo/kR+SBJIb1k4Cyult8LyYZIZMuMmUC/jRArIGSS4UGe7SAa+D6vp
   ILxzFwUO9hw3vphkdOLQI43AuRuu74AQw3c1vRn95nUUFimeUv6PdFa6n
   Ys6zKdxymXuTKh2ESbHii9DyVldhtAVjL4aJWFaMo6HbCX3zP4NyR3tLf
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="279959516"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200";
   d="scan'208";a="279959516"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 04:53:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200";
   d="scan'208";a="668557676"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 04:53:38 -0700
From: Rajesh Dangi <rajeshx.dangi@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone][PATCH 2/2] linux-yocto/5.10: update
 genericx86* machines to v5.10.135
Date: Fri, 19 Aug 2022 17:23:25 +0530
Message-Id: <20220819115325.1386-2-rajeshx.dangi@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220819115325.1386-1-rajeshx.dangi@intel.com>
References: <20220819115325.1386-1-rajeshx.dangi@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Aug 2022 11:53:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57865

Signed-off-by: Rajesh Dangi <rajeshx.dangi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index bec8319c34..1f49fd106c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
-SRCREV_machine:genericx86-64 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:genericx86 ?= "d09b184cbc0321794bda715ab560dec077a048d0"
+SRCREV_machine:genericx86-64 ?= "d09b184cbc0321794bda715ab560dec077a048d0"
 SRCREV_machine:edgerouter ?= "7c9332d91089ee63581be6cd3e7197c9d3e9a883"
 SRCREV_machine:beaglebone-yocto ?= "3c44f12b9de336579d00ac0105852f4cbf7e8b7d"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.130"
-LINUX_VERSION:genericx86-64 = "5.10.130"
+LINUX_VERSION:genericx86 = "5.10.135"
+LINUX_VERSION:genericx86-64 = "5.10.135"
 LINUX_VERSION:edgerouter = "5.10.130"
 LINUX_VERSION:beaglebone-yocto = "5.10.130"
-- 
2.17.1


