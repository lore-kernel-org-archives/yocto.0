Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web12.2120.1593125876668284328
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: qdbr8jRfHk9uSieKjnWzWMtyxv6uJQzyerttcBUqV4M9zXKC028HuH6tRHNRU+R5ddGh/vg8Eg
 98TCMKIbrgYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197889"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197889"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:57 -0700
IronPort-SDR: hAm+cqhO5S8uyrigzXPRXZTaWkmC87s51W7liIaNX4DmX8qwPd//kQ/H5ipOOSB9J3wuhT4ao8
 y7lHTHB29WIQ==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299296041"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:57 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <ticotimo@gmail.com>
Subject: [layerindexweb][PATCH 7/7] docker/settings.py: MIDDLEWARE
Date: Thu, 25 Jun 2020 15:57:39 -0700
Message-Id: <20200625225739.32402-8-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

From: Tim Orling <ticotimo@gmail.com>

The docker/settings.py file also needs the change from
"Changing MIDDLEWARE_CLASSES to MIDDLEWARE."

Signed-off-by: Tim Orling <ticotimo@gmail.com>
---
 docker/settings.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker/settings.py b/docker/settings.py
index 2821d82..fb7d376 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -92,7 +92,7 @@ STATICFILES_FINDERS = (
 # Make this unique, and don't share it with anybody.
 SECRET_KEY = os.getenv('SECRET_KEY', '')
 
-MIDDLEWARE_CLASSES = (
+MIDDLEWARE = (
     'corsheaders.middleware.CorsMiddleware',
     'django.middleware.common.CommonMiddleware',
     'django.contrib.sessions.middleware.SessionMiddleware',
-- 
2.17.1

