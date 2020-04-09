Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.1424.1586397423421348734
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 18:57:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: mohamad.noor.alim.hussin@intel.com)
IronPort-SDR: h1GL4v0Wq3IHhutCS0toO2TfwlUAbNclo1rsdCq3KP7QYvUjQIZTPLldXO71+G7RzvUaMJoRfo
 V6r3ZbiFAclQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2020 18:57:02 -0700
IronPort-SDR: uSgHwIxYccmf8DpsorOj5mL4hkDpUAG08UHo1bTpceatBN8WxLO3uPC9zfIVqYR6gFCi+fqB1+
 TQlNbh4WWxdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; 
   d="scan'208";a="242516246"
Received: from hussinmo-desk.png.intel.com ([172.30.199.124])
  by fmsmga007.fm.intel.com with ESMTP; 08 Apr 2020 18:57:01 -0700
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org,
	Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
Subject: [yocto-autobuilder-helper][zeus][PATCH] config.json: Override BBTARGETS for meta-intel
Date: Thu,  9 Apr 2020 09:54:54 +0800
Message-Id: <20200409015454.32736-1-mohamad.noor.alim.hussin@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>

Using meta-intel with core-image-sato-(sdk)-ptest
results in a hddimg size of more than 4 GB. Remove
that image type from testing.

hddimg is not built by default in dunfell so this
is applicable only to zeus.

Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
---
 config.json | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 7a88e6e..2989b8a 100644
--- a/config.json
+++ b/config.json
@@ -384,7 +384,10 @@
             "NEEDREPOS" : ["poky", "meta-intel"],
             "ADDLAYER" : ["${BUILDDIR}/../meta-intel"],
             "MACHINE" : "intel-corei7-64",
-            "TEMPLATE" : "arch-hw"
+            "TEMPLATE" : "arch-hw",
+	     "step1": {
+		 "BBTARGETS": "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk"
+	    }
         },
         "genericx86-64-alt" : {
             "MACHINE" : "genericx86-64",
-- 
2.20.1

