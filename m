Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.4896.1632212747193756627
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 01:25:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308861359"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="308861359"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:25:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="701609162"
Received: from marsalan-mobl1.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.238.172])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:25:45 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [hardknott][yocto-autobuilder-helper][PATCH 2/2] config.json: Ensure BB_HASHSERVE is set in SDKs to auto
Date: Tue, 21 Sep 2021 16:25:36 +0800
Message-Id: <20210921082536.40686-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210921082536.40686-1-anuj.mittal@intel.com>
References: <20210921082536.40686-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4689763b513521fc70cca576b88035de240a3ba6)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 622908b..33d36ad 100644
--- a/config.json
+++ b/config.json
@@ -31,7 +31,7 @@
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
         "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate'"],
         "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
-        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
+        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'", "BB_HASHSERVE = 'auto'"],
         "BUILDINFO" : false,
         "BUILDHISTORY" : false,
         "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
-- 
2.31.1

