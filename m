Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.2687.1585009635412981467
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 17:27:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: aaron.chun.yew.chan@intel.com)
IronPort-SDR: c+QUODAxlK7B6U5xXF9lFgcksNNMmv/pr7Z5ZO5ZvZctZ/7NBuvW6OBl9IZEcDWYNEKt2Zu3wM
 p7i1BtGo/Wsw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 17:27:15 -0700
IronPort-SDR: f552dCXQn4c2anJrmx+kGAXS0x+678ccrGoroq27r3zFPKAyh3CKRE4dZ5mZ1U3e7dIW/+wxO0
 mRLbzOrcQMLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,298,1580803200"; 
   d="scan'208";a="281416319"
Received: from kloh3-mobl.gar.corp.intel.com (HELO aaronchu-MOBL2.gar.corp.intel.com) ([10.255.144.233])
  by fmsmga002.fm.intel.com with ESMTP; 23 Mar 2020 17:27:14 -0700
From: "Aaron Chan" <aaron.chun.yew.chan@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder-helper][PATCH 1/2] utils: Add getconfiglistfilter() to return config based on regexpr
Date: Tue, 24 Mar 2020 08:27:09 +0800
Message-Id: <20200324002710.13224-1-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Aaron Chan <aaron.chun.yew.chan@intel.com>

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/utils.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 68652d9..204360d 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -119,6 +119,16 @@ def getconfiglistfilter(name, config, target, stepnum):
         merge(ret, config['defaults'][name])
     return expandresult(ret, config)
 
+# Return a list of configuration keys based on regular expressions
+def getconfigexpr(name, config, target, stepnum):
+    ret = []
+    step = "step" + str(stepnum)
+    if target in config['overrides'] and step in config['overrides'][target]:
+        for i in config['overrides'][target][step].keys():
+            if re.search(name, i):
+                ret.append(i)
+    return ret
+
 #
 # Expand 'templates' with the configuration
 #
-- 
2.21.0.windows.1

