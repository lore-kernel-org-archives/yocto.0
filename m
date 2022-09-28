Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F0A3C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 03:54:06 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web08.4014.1664337242099689513
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 20:54:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=Ix6LvdXm;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664337242; x=1695873242;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=iZdJ1GhIe5qIqa6td5yr0PnEZnddKU8QNGX9t/Fppjw=;
  b=Ix6LvdXmrl00/3Pt/wPBtV4x+SiboDToqbJztoDxvyNRRLJFCE0gS/Oz
   zrwtt+2srQj9d//IeXGxUxauH7NDljqSuajV3pZLMghsZEonK4uQvqXrF
   SMH3tq+LRkcYm29609pOaInsiY1ONslPxLno8ZvAiLRExDnQHofQIADz2
   h/SHouzSCYmUPFxql9aBU7yKYH0kiacUN5jTgjIA8D4DKOlDOSNSKpNc0
   KnkoX9RwcmzD830FxIAmrwGglkzhnrD67ypHCzyeGfJDkS0dshHJG5vvg
   fx0Opj8e51FU2h55GcH+NvaOdggYwr/rxvM/GQTQ+IIt0GIni2rE1esTS
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="300214581"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200";
   d="scan'208";a="300214581"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 20:53:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="617061047"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200";
   d="scan'208";a="617061047"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 20:53:56 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] qemuzephyrrunner: allow to pass QB_GRAPHICS to
 qemu cmdline
Date: Wed, 28 Sep 2022 12:14:20 +0800
Message-Id: <20220928041420.3047817-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 03:54:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58195

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py b/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py
index 7b486ce..c0a9e0f 100644
--- a/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py
@@ -157,6 +157,7 @@ class QemuZephyrRunner(QemuRunner):
             bb.error("Unsupported QEMU: %s" % self.machine)
             return False
 
+        self.qemuparams += " %s " %self.get('QB_GRAPHICS')
         self.qemuparams += " %s " %self.get('QB_OPT_APPEND')
         self.qemuparams += " %s " %self.get('QB_CPU')
 
-- 
2.25.1


