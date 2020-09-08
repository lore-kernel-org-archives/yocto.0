Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.13937.1599542916885388491
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 22:28:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 198.145.29.25, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by mail.yoctoproject.org (Postfix) with ESMTP id D440838C0894
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 22:28:35 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.76,404,1592841600"; 
   d="scan'208";a="98993272"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 08 Sep 2020 13:28:35 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 0EB1848990D9
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2020 13:28:32 +0800 (CST)
Received: from localhost.localdomain (10.167.225.35) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 8 Sep 2020 13:28:30 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] trousers: Fix the problem that do_package fails when multilib is enabled.
Date: Tue, 8 Sep 2020 13:28:09 +0800
Message-ID: <1599542889-126645-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.35]
X-ClientProxiedBy: G08CNEXCHPEKD04.g08.fujitsu.local (10.167.33.200) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: 0EB1848990D9.A7335
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
X-Spam-Status: No
Content-Type: text/plain

The following error will occur when multilib is enabled:
ERROR: trousers-0.3.14+gitAUTOINC+e74dd1d967-r0 do_package: QA Issue: trousers: Files/directories were installed but not shipped in any package:
  /lib
  /lib/systemd
  /lib/systemd/system
  /lib/systemd/system/tcsd.service

Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
---
 meta-tpm/recipes-tpm/trousers/trousers_git.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index 992e7f2..27b4e2f 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -104,6 +104,8 @@ FILES_${PN}-doc = " \
 	${mandir}/man8 \
 	"
 
+FILES_${PN} += "${systemd_unitdir}/*" 
+
 INITSCRIPT_NAME = "trousers"
 INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."
 
-- 
2.25.1



