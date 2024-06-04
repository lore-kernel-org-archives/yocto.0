Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0200C25B75
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 00:07:46 +0000 (UTC)
Received: from esa9.hc1455-7.c3s2.iphmx.com (esa9.hc1455-7.c3s2.iphmx.com [139.138.36.223])
 by mx.groups.io with SMTP id smtpd.web10.9544.1717459665795856108
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 17:07:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=lLFtoQtC;
 spf=pass (domain: fujitsu.com, ip: 139.138.36.223, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1717459665; x=1748995665;
  h=from:to:cc:subject:date:message-id;
  bh=URIjs7zqOnYvGflJidwH9rf+gSRCMnbIgqJCp2EJFZ8=;
  b=lLFtoQtCZiuEwWMrdJHlH/f6hM63Bw5XmMqoT4x7F6SEx1ne8KFH62Vd
   JOy63aGmfBbGvmEzngpppegCM4HUdSET0fr6xCb6YsZC0G03s4ebYONA2
   cyEGDnAGSj0vRmJKvNAoxGlQJO/ES5aoZmxlJJ2fNSewSC8ju6AAjlT/y
   Ffd689jGiJKAN2bvqx+DH9slJhJhb28mYl/0hmi/bqhhOdMFqCESrbpiI
   Jh/obexB45g756guMrGs1M1/5f2d1kXr9uecohrLXdAzAjHZ6Ag1HqcJi
   gNJeD3GvzYmw6uulVr9r9w9LaCkSNSXYTC96r6wS5wnkL+PYYg7VTHKJV
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="149915776"
X-IronPort-AV: E=Sophos;i="6.08,212,1712588400"; 
   d="scan'208";a="149915776"
Received: from unknown (HELO oym-r3.gw.nic.fujitsu.com) ([210.162.30.91])
  by esa9.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2024 09:07:42 +0900
Received: from oym-m1.gw.nic.fujitsu.com (oym-nat-oym-m1.gw.nic.fujitsu.com [192.168.87.58])
	by oym-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id CBE0DCA1E3
	for <yocto@lists.yoctoproject.org>; Tue,  4 Jun 2024 09:07:40 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id 10BD5D8C26
	for <yocto@lists.yoctoproject.org>; Tue,  4 Jun 2024 09:07:40 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id C91BC200877B8
	for <yocto@lists.yoctoproject.org>; Tue,  4 Jun 2024 09:07:38 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 47E4A1A0002;
	Tue,  4 Jun 2024 08:07:38 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH v2] recipes: Start WORKDIR ->  UNPACKDIR transition
Date: Tue,  4 Jun 2024 08:07:30 +0800
Message-Id: <1717459650-26382-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28430.003
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28430.003
X-TMASE-Result: 10--4.383500-10.000000
X-TMASE-MatchedRID: GRMrIe16s1lAJjQFQUSfYfLeH1FBnhK0J1hCPLkD1Z2HJC/JOD1QlSio
	k1n4cVGAeVCL4AZCQ9q12HagvbwDji/7QU2czuUNA9lly13c/gGYkAyCbA7KV1yqn5M9p8suo8W
	MkQWv6iXBcIE78YqRWo6HM5rqDwqt1BWNkuAnvolDKBowSZoWQQkC6G3JdVd2SowDZ+9tDhtryU
	kHw9+wSyT0S2u6c7z6plWEUy3hiv6m+Xut76LrqvufhNLmnOH1HSbhGbmGylXFJK7yLnZRGZdO3
	Q67ImL8gi4RUz90EQwG2MApbv6odw==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 00:07:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63268

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 recipes-mac/smack/mmap-smack-test_1.0.bb                | 2 +-
 recipes-mac/smack/smack-test_1.0.bb                     | 2 +-
 recipes-mac/smack/tcp-smack-test_1.0.bb                 | 2 +-
 recipes-mac/smack/udp-smack-test_1.0.bb                 | 2 +-
 recipes-security/redhat-security/redhat-security_1.0.bb | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-mac/smack/mmap-smack-test_1.0.bb b/recipes-mac/smack/mmap-smack-test_1.0.bb
index 9d11509..da96032 100644
--- a/recipes-mac/smack/mmap-smack-test_1.0.bb
+++ b/recipes-mac/smack/mmap-smack-test_1.0.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 
 SRC_URI = "file://mmap.c" 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 do_compile() {
     ${CC} mmap.c ${LDFLAGS} -o mmap_test
 }
diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index 3ab57c6..68155ec 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -10,7 +10,7 @@ SRC_URI = " \
            file://test_smack_onlycap.sh \
 " 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 
 inherit features_check
 
diff --git a/recipes-mac/smack/tcp-smack-test_1.0.bb b/recipes-mac/smack/tcp-smack-test_1.0.bb
index d2b3f6b..4d65b23 100644
--- a/recipes-mac/smack/tcp-smack-test_1.0.bb
+++ b/recipes-mac/smack/tcp-smack-test_1.0.bb
@@ -8,7 +8,7 @@ SRC_URI = "file://tcp_server.c \
            file://test_smack_tcp_sockets.sh \
 " 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 
 do_compile() {
     ${CC} tcp_client.c ${LDFLAGS} -o tcp_client
diff --git a/recipes-mac/smack/udp-smack-test_1.0.bb b/recipes-mac/smack/udp-smack-test_1.0.bb
index 9193f89..b277b27 100644
--- a/recipes-mac/smack/udp-smack-test_1.0.bb
+++ b/recipes-mac/smack/udp-smack-test_1.0.bb
@@ -8,7 +8,7 @@ SRC_URI = "file://udp_server.c \
            file://test_smack_udp_sockets.sh \
 " 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 do_compile() {
     ${CC} udp_client.c ${LDFLAGS} -o udp_client
     ${CC} udp_server.c ${LDFLAGS} -o udp_server
diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/recipes-security/redhat-security/redhat-security_1.0.bb
index c47688f..b4f1970 100644
--- a/recipes-security/redhat-security/redhat-security_1.0.bb
+++ b/recipes-security/redhat-security/redhat-security_1.0.bb
@@ -18,7 +18,7 @@ SRC_URI = "file://find-chroot-py.sh \
            file://selinux-check-devices.sh \
            file://selinux-ls-unconfined.sh"
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 
 do_install() {
 	install -d ${D}${bindir}
-- 
2.34.1


