Received: from mga01.intel.com (mga01.intel.com [])
 by mx.groups.io with SMTP id smtpd.web10.2687.1585009635412981467
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 17:27:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: aaron.chun.yew.chan@intel.com)
IronPort-SDR: Y5zf3dZqIajIQt8kFFN5tTqHSi5FtVz7+tw/U94swo5dAAtn1LjEAPA70x76K21aEg1rKVUcfZ
 kPmMpvsm5ERg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 17:27:17 -0700
IronPort-SDR: dWHMvD8beKFSrOFabH35/fPML4fOUurB5uzLYO49xDbuGq4joP4P6GgBtUteSiLz1a6v5FghQm
 QyY8joy64C+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,298,1580803200"; 
   d="scan'208";a="281416332"
Received: from kloh3-mobl.gar.corp.intel.com (HELO aaronchu-MOBL2.gar.corp.intel.com) ([10.255.144.233])
  by fmsmga002.fm.intel.com with ESMTP; 23 Mar 2020 17:27:16 -0700
From: "Aaron Chan" <aaron.chun.yew.chan@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder-helper][PATCH 2/2] setup-config: Add multiconfig setup support
Date: Tue, 24 Mar 2020 08:27:10 +0800
Message-Id: <20200324002710.13224-2-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200324002710.13224-1-aaron.chun.yew.chan@intel.com>
References: <20200324002710.13224-1-aaron.chun.yew.chan@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Aaron Chan <aaron.chun.yew.chan@intel.com>

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/setup-config | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/scripts/setup-config b/scripts/setup-config
index 3c8862a..c006297 100755
--- a/scripts/setup-config
+++ b/scripts/setup-config
@@ -9,6 +9,7 @@ import sys
 import subprocess
 import errno
 import copy
+import re
 
 import utils
 
@@ -119,3 +120,19 @@ with open(sdkextraconf, "w") as f:
         print("  " + v)
         f.write(v + "\n")
 
+# Add multiconfig setup support
+multivars=utils.getconfigexpr("multi-(.*)", ourconfig, args.target, stepnum)
+if multivars:
+    for conf in multivars:
+        mvars=utils.getconfiglistfilter(conf, ourconfig, args.target, stepnum)
+        m=re.search("multi-(.*)", conf)
+        mpath=os.path.join(args.builddir, "conf", "multiconfig")
+        mfile=os.path.join(mpath, "%s.conf" % m.group(1))
+        os.makedirs(mpath, exist_ok=True)
+        if os.path.exists(mfile):
+            os.remove(mfile)
+        utils.printheader("Writing %s with contents:" % mfile)
+        with open(mfile, 'w') as f:
+            for v in mvars:
+                print("  " + v)
+                f.write(v + "\n")
-- 
2.21.0.windows.1

