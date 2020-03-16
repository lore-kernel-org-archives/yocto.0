Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web11.65130.1584357085415348380
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 04:11:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: aaron.chun.yew.chan@intel.com)
IronPort-SDR: CxIjnrsgXQWPPD8sXDTp3Nd84+8rC+fzdG3aAYnVGDf9qp9G2BDARPPvrQvVzdO18Bt2xaQBOL
 4s8iDejxC3lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 04:11:24 -0700
IronPort-SDR: ykR/Z4L7lKipQkOaXPTXHKTuHfwev44fG1lP5LOus2qKaTlaf+LYva5VfPySHVAFV+DgPEwnx4
 BCIcXDg/V9uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; 
   d="scan'208";a="244106874"
Received: from aaronchu-mobl2.gar.corp.intel.com ([10.254.46.175])
  by orsmga003.jf.intel.com with ESMTP; 16 Mar 2020 04:11:23 -0700
From: "Aaron Chan" <aaron.chun.yew.chan@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] config: Fix giturl for meta-virtualization Layer
Date: Mon, 16 Mar 2020 19:11:20 +0800
Message-Id: <20200316111120.3692-1-aaron.chun.yew.chan@intel.com>
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

