Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.2119.1593125874946626116
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 15:57:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: amber.n.elliot@intel.com)
IronPort-SDR: aONTHW2t3CZm1tkkj/xwfDhp1isNzTwUlkCt6plx33jAUIlBux5ogt1j7SpIQBW6GDJxef0Tc0
 /sTO8NtR6VWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144197877"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="144197877"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:54 -0700
IronPort-SDR: t+4id+TAqLv4y2fJNA8ji2DWfs2E3nQZPUaRjVyj5uqZKulvgllMpFU+imIhvRIogn2NvWhp7N
 0Hx/8EgF+OVg==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; 
   d="scan'208";a="299295819"
Received: from rbommagx-mobl1.amr.corp.intel.com (HELO localhost.localdomain) ([10.209.186.34])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 15:57:53 -0700
From: "Amber Elliot" <amber.n.elliot@intel.com>
To: yocto@lists.yoctoproject.org
Cc: Amber Elliot <amber.n.elliot@intel.com>
Subject: [layerindexweb][PATCH 1/7] README: Correcting mailing list.
Date: Thu, 25 Jun 2020 15:57:33 -0700
Message-Id: <20200625225739.32402-2-amber.n.elliot@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625225739.32402-1-amber.n.elliot@intel.com>
References: <20200625225739.32402-1-amber.n.elliot@intel.com>

Signed-off-by: Amber Elliot <amber.n.elliot@intel.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 6df1bf0..6fc4591 100644
--- a/README
+++ b/README
@@ -431,7 +431,7 @@ The latest version of the code can always be found here:
   http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/
 
 Contributions are welcome. Please send patches / pull requests to
-yocto@yoctoproject.org with '[layerindex-web]' in the subject.
+yocto@lists.yoctoproject.org with '[layerindex-web]' in the subject.
 
 
 
-- 
2.17.1

