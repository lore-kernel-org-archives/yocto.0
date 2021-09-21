Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.4918.1632212851706483410
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 01:27:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="210389072"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="210389072"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:27:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="435805770"
Received: from marsalan-mobl1.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.238.172])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:27:31 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 2/4] local.conf.sample: Update sstate mirror entry with new hash equivalence setting
Date: Tue, 21 Sep 2021 16:27:11 +0800
Message-Id: <20210921082713.40965-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210921082713.40965-1-anuj.mittal@intel.com>
References: <20210921082713.40965-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 1d98182eb9fa059444c935967d1dc075535289db)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/local.conf.sample | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index a94b613..67124d4 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -225,13 +225,15 @@ BB_DISKMON_DIRS ??= "\
 # Yocto Project SState Mirror
 #
 # The Yocto Project has prebuilt artefacts available for its releases, you can enable
-# use of these by uncommenting the following line. This will mean the build uses
+# use of these by uncommenting the following lines. This will mean the build uses
 # the network to check for artefacts at the start of builds, which does slow it down
 # equally, it will also speed up the builds by not having to build things if they are
 # present in the cache. It assumes you can download something faster than you can build it
 # which will depend on your network.
+# Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
+#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/3.4/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.31.1

