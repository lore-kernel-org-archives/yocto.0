Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.33962.1600657897880018675
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Sep 2020 20:11:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: TXGrWJguzkS7p/h1AUvDA1yf0BlobKnM81eHZkeWxGWnKx60KK65qv7iJn6iL166TXpAlmPY/U
 rpG2L/wKPVzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="157682598"
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; 
   d="scan'208";a="157682598"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2020 20:11:34 -0700
IronPort-SDR: YlvJ4uO2pEZscXdjpbR+Kqq39HeV11xpRY6LhBahwfRXZ6ebkbYSPkXQAwgsTCvdxFbaY9c4ww
 dQeQ9uVB1u2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; 
   d="scan'208";a="411936675"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2020 20:11:33 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] README.txt: update doc
Date: Mon, 21 Sep 2020 11:11:31 +0800
Message-Id: <20200921031131.35919-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add python dependencies.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 README.txt | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/README.txt b/README.txt
index 208843b..be1ea39 100644
--- a/README.txt
+++ b/README.txt
@@ -8,11 +8,17 @@ https://wiki.yoctoproject.org/wiki/TipsAndTricks/BuildingZephyrImages
 Prerequisites:
 ==============
 
-Yocto distro (master)"
+This layer depends on:
+    Yocto distro (master)
+        git://git.yoctoproject.org/poky
+    Python layer (meta-openembedded/meta-python)
+        git://git.openembedded.org/meta-openembedded
 
 Modify local conf by adding:
     DISTRO="zephyr"
 
+Add "meta-openembedded/meta-oe" to BBLAYERS
+Add "meta-openembedded/meta-python" to BBLAYERS
 Add "meta-zephyr" to BBLAYERS
 
 Building and Running Zephyr Samples
-- 
2.27.0

