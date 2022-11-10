Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F717C4332F
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 06:49:38 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.3978.1668062964834609945
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Nov 2022 22:49:28 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=QXmo6awx;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668062968; x=1699598968;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=Z58I7PVQqu+C3TStBGYFlgiHEWKtvkHYq/iKvZy0vOU=;
  b=QXmo6awx7DPnK8pUTRzmuuHRpX+3xCoVAeZSkf1GHwkZUM3nUb/aXRCg
   BUpmHepOeGaUjdxA4QFSC3g9DrWTFBhYho8nYs+Da9PmZTrUjAK4m0DHE
   9H88OVDp4sgissoh2ygjpRAwIZcWtJRf6HQLrvUWjudUtZahH3Sq5JhLc
   Bjrb99rjV2wA3lwvl1EUb/RI5cpSkJwGynUk25vWWSej//zqvanf/bB6V
   xf9SInWtozELx9oPQDtLarAR7NSHPfS3p9jgrNZk747uzrvDKAl/Y2jgc
   yQ3VYsGTtoEjc22k3A/0/fqDIuhPZDUMVCoRBaZpS/r0suhE4v5fCTQPO
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309944905"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="309944905"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="882241273"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="882241273"
Received: from saininav-desk1.png.intel.com ([172.30.130.9])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:27 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 5/5] newlib: add bbappend
Date: Thu, 10 Nov 2022 15:09:59 +0800
Message-Id: <20221110070959.3104172-5-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
References: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 06:49:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58534

Build newlib library to be thread-safe in multithreaded environment.

https://github.com/zephyrproject-rtos/zephyr/pull/21518
https://github.com/zephyrproject-rtos/zephyr/issues/21519
https://github.com/zephyrproject-rtos/zephyr/pull/36201

https://sourceware.org/legacy-ml/newlib/2016/msg01165.html
https://sourceware.org/git/?p=newlib-cygwin.git;a=commit;h=bd54749095ee45d7136b6e7c8a1e5218749c87b6

Error log:
newlib/libc-hooks.c:310:1: note: in expansion of macro 'BUILD_ASSERT'
BUILD_ASSERT(IS_ENABLED(_RETARGETABLE_LOCKING), "Retargetable locking must be enabled");

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend

diff --git a/meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend b/meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend
new file mode 100644
index 0000000..1a20b06
--- /dev/null
+++ b/meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend
@@ -0,0 +1,5 @@
+# BUILD_ASSERT(IS_ENABLED(_RETARGETABLE_LOCKING), "Retargetable locking must be enabled");
+
+EXTRA_OECONF:append = " \
+        --enable-newlib-retargetable-locking \
+        "
-- 
2.25.1


