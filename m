Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 862A7C433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 08:12:53 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web12.6366.1635840772837658413
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 01:12:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211966308"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800";
   d="scan'208";a="211966308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 01:12:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800";
   d="scan'208";a="531465355"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 01:12:50 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] README.txt: update for honister release
Date: Tue,  2 Nov 2021 16:28:05 +0800
Message-Id: <20211102082805.33869-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 08:12:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55209

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 README.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README.txt b/README.txt
index 5a0ccc7..9889b01 100644
--- a/README.txt
+++ b/README.txt
@@ -9,9 +9,9 @@ Prerequisites:
 ==============
 
 This layer depends on:
-    Yocto distro (master)
+    Yocto distro (honister)
         git://git.yoctoproject.org/poky
-    Python layer (meta-openembedded/meta-python)
+    Python layer (meta-openembedded/meta-python) (honister)
         git://git.openembedded.org/meta-openembedded
 
 Modify local conf by adding:
-- 
2.17.1


