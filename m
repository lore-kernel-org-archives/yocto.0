Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.4903.1632212746856645379
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 01:25:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308861357"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="308861357"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:25:45 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="701609155"
Received: from marsalan-mobl1.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.238.172])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:25:44 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [hardknott][yocto-autobuilder-helper][PATCH 1/2] config.json: Add BB_HASHSERVE to SDK_LOCAL_CONF_BLACKLIST
Date: Tue, 21 Sep 2021 16:25:35 +0800
Message-Id: <20210921082536.40686-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This should avoid issues with the hashequiv code attempting to contact
an non-existent server in the eSDKs built by the project.

[YOCTO #14471]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4db17f4c9da4efb48d428256efb696d86935a3ea)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 0ee7572..622908b 100644
--- a/config.json
+++ b/config.json
@@ -55,6 +55,7 @@
             "SANITY_TESTED_DISTROS = ''",
             "SDK_EXT_TYPE = 'minimal'",
             "SDK_INCLUDE_TOOLCHAIN = '1'",
+            "SDK_LOCAL_CONF_BLACKLIST:append = 'BB_HASHSERVE'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
             "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'"
-- 
2.31.1

