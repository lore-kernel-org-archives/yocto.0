Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8176C54EBD
	for <webhook@archiver.kernel.org>; Thu, 12 Jan 2023 06:09:25 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.48570.1673503757815170996
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Jan 2023 22:09:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=MYeGXxak;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1673503757; x=1705039757;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=iZIBzdhjCLJFXhDFQBHtxkxvFSNroWshhkdf8vUHP4Q=;
  b=MYeGXxakQKOjTLERewULzeodXbqrF0dKHJddb0hY2c9WiH4lEb64IWAW
   yXwEAURdvh78Doo2hpHg12BFIJU9F4iwDHtZhQF5NhF11JxUEK9rzEWo5
   QzBiqtJ8uckARLDU/tJ3eKaLwKP+687VaJTW6ZbVzLyF/GlTy6a5tClmX
   dxQb5RP8iHPDrtGn+39KRDa2LFqQ3psVXik1LzwGzxfAcQEVGfaVVLTFd
   iFSUKDaK0+ZqA9EiYs7RKfmlnJqz6xC+M1Daci0OXFUCgoWlQynOlUayN
   oDLSofSTbMBOVXGl+Si5yBspm6BCLiV8Yx+3NVxn5tkGuUjv5mcXPpQIz
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="322325773"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; 
   d="scan'208";a="322325773"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jan 2023 22:09:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="607676901"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; 
   d="scan'208";a="607676901"
Received: from cheeyang-desk1.png.intel.com ([172.30.130.12])
  by orsmga003.jf.intel.com with ESMTP; 11 Jan 2023 22:09:16 -0800
From: chee.yang.lee@intel.com
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH] requirements.txt: bump gitpython and pillow
Date: Thu, 12 Jan 2023 14:07:06 +0800
Message-Id: <20230112060706.2700968-1-chee.yang.lee@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 06:09:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58968

From: Chee Yang Lee <chee.yang.lee@intel.com>

bump gitpython and pillow to version with fixes for these CVEs

pillow: CVE-2022-22817 CVE-2022-24303 CVE-2022-45198

gitpython: CVE-2022-24439

Signed-off-by: Chee Yang Lee <chee.yang.lee@intel.com>
---
 requirements.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 77b1aa9..1f4975e 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -16,10 +16,10 @@ django-reversion-compare==0.14.1
 django-simple-captcha==0.5.14
 djangorestframework==3.13.1
 gitdb==4.0.9
-GitPython==3.1.26
+GitPython==3.1.30
 kombu==5.2.3
 mysqlclient==2.1.0
-Pillow==9.0.0
+Pillow==9.2.0
 pytz==2021.3
 six==1.16.0
 smmap==5.0.0
-- 
2.34.1


