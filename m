Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5666AC433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 06:51:52 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.8713.1635231111511552112
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 23:51:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="229782914"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800";
   d="scan'208";a="229782914"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 23:51:50 -0700
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800";
   d="scan'208";a="578505955"
Received: from yewchang-mobl.gar.corp.intel.com (HELO
 anmitta2-mobl1.gar.corp.intel.com) ([10.215.230.158])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 23:51:49 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: add honister to
 buildhistory
Date: Tue, 26 Oct 2021 14:51:38 +0800
Message-Id: <20211026065138.42907-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 06:51:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55160

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 0c7f711..0788123 100644
--- a/config.json
+++ b/config.json
@@ -5,7 +5,7 @@
 
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
-    "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:master"],
+    "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
-- 
2.31.1


