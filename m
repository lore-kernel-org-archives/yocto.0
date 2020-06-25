Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web12.2120.1593125876668284328
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: rcoksX9lQHZ/VEal6D8t0h7ATz5rL7cxUbW062eXlzaqumtUvqaI9AvXL+7ZoOKMmFO8WyCTzv
 HrD0kvYWY0sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197885"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197885"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:56 -0700
IronPort-SDR: BA42AjLO2f9AyFGZbFvi6udGA4f5A+spCtbXecv5vrelm78b/v2rjdRb4qI3rwtwAC8fkAJM3M
 wg7K2R8sAqJQ==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299296013"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:56 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Amber Elliot <amber.n.elliot@intel.com>
Subject: [layerindexweb][PATCH 5/7] requirements.txt: Updating Django requirement to the 2.2 LTS release.
Date: Thu, 25 Jun 2020 15:57:37 -0700
Message-Id: <20200625225739.32402-6-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

Signed-off-by: Amber Elliot <amber.n.elliot@intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 4ba5397..c7399ff 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.8.1
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
-Django>=1.11.27,<1.12
+Django>=2.2<2.3
 django-appconf==1.0.3
 django-axes==4.5.4
 django-bootstrap-pagination==1.7.1
-- 
2.17.1

