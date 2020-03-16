Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.65613.1584358025719947718
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 04:27:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: aaron.chun.yew.chan@intel.com)
IronPort-SDR: Ot47MO18immDUER44QFey4dtuhSTQz3Z9umoL+YWdwpZwl9tRSlOLa3e+1GMsaeEEKO7uET+31
 NA2cjnMG0p7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 04:27:05 -0700
IronPort-SDR: 5Dc0IZWJa8SuAA38azWRfIsZOZNTVKX6F3MOGcqrTLPVDAnUz5g9+rvEXBlVo0SuwW97JxLyox
 2sZO5e/sYK7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; 
   d="scan'208";a="443300014"
Received: from aaronchu-mobl2.gar.corp.intel.com ([10.254.46.175])
  by fmsmga005.fm.intel.com with ESMTP; 16 Mar 2020 04:27:05 -0700
From: "Aaron Chan" <aaron.chun.yew.chan@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder2][PATCH] config: Fix giturl for meta-virtualization Layer
Date: Mon, 16 Mar 2020 19:27:02 +0800
Message-Id: <20200316112702.14576-1-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Aaron Chan <aaron.chun.yew.chan@intel.com>

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 6d629f1..b1e2c05 100644
--- a/config.py
+++ b/config.py
@@ -39,7 +39,7 @@ repos = {
     "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", "master"],
     "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
     "meta-openembedded": ["git://git.openembedded.org/meta-openembedded", "master"],
-    "meta-virtualization": ["git://git.openembedded.org/meta-openembedded", "master"]
+    "meta-virtualization": ["git://git.yoctoproject.org/meta-virtualization", "master"]
 }
 
 trigger_builders_wait_shared = [
-- 
2.21.0.windows.1

