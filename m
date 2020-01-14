Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web12.1274.1579021162199562641
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 08:59:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 134.134.136.20, mailfrom: timothy.t.orling@linux.intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jan 2020 08:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; 
   d="scan'208";a="397571133"
Received: from wrath.jf.intel.com ([10.54.31.24])
  by orsmga005.jf.intel.com with ESMTP; 14 Jan 2020 08:59:21 -0800
From: "Tim Orling" <timothy.t.orling@linux.intel.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <timothy.t.orling@linux.intel.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: add buildtools-extended-tarball to "buildtools"
Date: Tue, 14 Jan 2020 08:59:08 -0800
Message-Id: <20200114165908.7898-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add buildtools-extended-tarball (which adds build-essentials) to
the existing "buildtools" x86_64 build step.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 79695c2..79f3da6 100644
--- a/config.json
+++ b/config.json
@@ -598,7 +598,7 @@
             ],
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "buildtools-tarball uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             },
             "step2" : {
                 "SDKMACHINE" : "i686",
-- 
2.24.0

