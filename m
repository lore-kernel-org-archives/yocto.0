Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11907.1599532237681297783
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 19:30:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 198.145.29.25, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by mail.yoctoproject.org (Postfix) with ESMTP id C8D1538C0894
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 19:30:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.76,404,1592841600"; 
   d="scan'208";a="98988438"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 08 Sep 2020 10:30:34 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 0DF3E48990F8
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2020 10:30:34 +0800 (CST)
Received: from localhost.localdomain (10.167.225.35) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 8 Sep 2020 10:30:32 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Subject: [yocto] [meta-selinux][PATCH] audit: Fix compile bug
Date: Tue, 8 Sep 2020 10:30:26 +0800
Message-ID: <1599532226-124109-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.35]
X-ClientProxiedBy: G08CNEXCHPEKD04.g08.fujitsu.local (10.167.33.200) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: 0DF3E48990F8.A803B
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
X-Spam-Status: No
Content-Type: text/plain

The following error occurred during compile:
ausearch-common.h:53: multiple definition of `event_node_list'

Header definitions need to be external when building with -fno-common.

Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
---
 ...ns-need-to-be-external-when-building.patch | 26 +++++++++++++++++++
 recipes-security/audit/audit_2.8.5.bb         |  1 +
 2 files changed, 27 insertions(+)
 create mode 100644 recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch

diff --git a/recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch b/recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch
new file mode 100644
index 0000000..209d8cf
--- /dev/null
+++ b/recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch
@@ -0,0 +1,26 @@
+From 017e6c6ab95df55f34e339d2139def83e5dada1f Mon Sep 17 00:00:00 2001
+From: Steve Grubb <sgrubb@redhat.com>
+Date: Fri, 10 Jan 2020 21:13:50 -0500
+Subject: [PATCH] Header definitions need to be external when building with
+ -fno-common (which is default in GCC 10) - Tony Jones
+
+---
+ src/ausearch-common.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/ausearch-common.h b/src/ausearch-common.h
+index 6669203..3040547 100644
+--- a/src/ausearch-common.h
++++ b/src/ausearch-common.h
+@@ -50,7 +50,7 @@ extern pid_t event_pid;
+ extern int event_exact_match;
+ extern uid_t event_uid, event_euid, event_loginuid;
+ extern const char *event_tuid, *event_teuid, *event_tauid;
+-slist *event_node_list;
++extern slist *event_node_list;
+ extern const char *event_comm;
+ extern const char *event_filename;
+ extern const char *event_hostname;
+-- 
+2.25.1
+
diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
index af36ed5..e3e5ddd 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -11,6 +11,7 @@ SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintena
            file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
            file://Fixed-swig-host-contamination-issue.patch \
            file://0001-lib-i386_table.h-add-new-syscall.patch \
+           file://0001-Header-definitions-need-to-be-external-when-building.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
-- 
2.25.1



