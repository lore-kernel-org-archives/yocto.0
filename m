Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8426.1620877429686144225
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 20:43:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: changqing.li@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C425C38C0579
	for <yocto@yoctoproject.org>; Thu, 13 May 2021 03:43:48 +0000 (UTC)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 14D3hko9024460
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 20:43:46 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 12 May 2021 20:43:45 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.4 via Frontend Transport; Wed, 12 May 2021 20:43:44 -0700
From: "Changqing Li" <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-raspberrypi][PATCH] 99-com.rules: fix error invalid substitution type
Date: Thu, 13 May 2021 11:42:51 +0800
Message-ID: <20210513034251.9623-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

fix below error:
/etc/udev/rules.d/99-com.rules:10 Invalid value "/bin/sh -c
'ALIASES=/proc/device-tree/aliases; if cmp -s $ALIASES/uart0
$ALIASES/serial0; then echo 0;elif cmp -s $ALIASES/uart0
$ALIASES/serial1; then echo 1; else exit 1; fi'" for PROGRAM (char 58:
invalid substitution type)

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-core/udev/udev-rules-rpi/99-com.rules | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
index 6bf019b..ddd1e17 100644
--- a/recipes-core/udev/udev-rules-rpi/99-com.rules
+++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
@@ -1,8 +1,8 @@
 KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
 	ALIASES=/proc/device-tree/aliases; \
-	if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
+	if cmp -s $$ALIASES/uart0 $$ALIASES/serial0; then \
 		echo 0;\
-	elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
+	elif cmp -s $$ALIASES/uart0 $$ALIASES/serial1; then \
 		echo 1; \
 	else \
 		exit 1; \
@@ -11,9 +11,9 @@ KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
 
 KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
 	ALIASES=/proc/device-tree/aliases; \
-	if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
+	if cmp -s $$ALIASES/uart1 $$ALIASES/serial0; then \
 		echo 0; \
-	elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
+	elif cmp -s $$ALIASES/uart1 $$ALIASES/serial1; then \
 		echo 1; \
 	else \
 		exit 1; \
-- 
2.17.1

