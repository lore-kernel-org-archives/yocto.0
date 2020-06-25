Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web12.2119.1593125874946626116
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: N56PUJUs60hP6tl+9loaXzS0dL34m/B94+3zuiyr7rDJKxM0JiZ9OBErRcMDRd+BD6L2IbMtdi
 y2SrsRtptDOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197881"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197881"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:55 -0700
IronPort-SDR: gNd/r1h1YdArM42QqLkVH78uy3eTSs1tPp0h83twbxqjFrxVuSOeYmDnJLRjHdDJvQtgE/98vn
 m5b49yRirbsw==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299295938"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:55 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Amber Elliot <amber.n.elliot@intel.com>
Subject: [layerindexweb][PATCH 3/7] settings.py: Replacing MIDDLEWARE_CLASSES with MIDDLEWARE for Django 2.2 upgrade.
Date: Thu, 25 Jun 2020 15:57:35 -0700
Message-Id: <20200625225739.32402-4-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

Signed-off-by: Amber Elliot <amber.n.elliot@intel.com>
---
 settings.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/settings.py b/settings.py
index e9bf6cc..525a0c1 100644
--- a/settings.py
+++ b/settings.py
@@ -92,7 +92,7 @@ STATICFILES_FINDERS = (
 # Make this unique, and don't share it with anybody.
 SECRET_KEY = ''
 
-MIDDLEWARE_CLASSES = (
+MIDDLEWARE = (
     'corsheaders.middleware.CorsMiddleware',
     'django.middleware.common.CommonMiddleware',
     'django.contrib.sessions.middleware.SessionMiddleware',
-- 
2.17.1

