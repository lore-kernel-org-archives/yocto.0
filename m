Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.51])
 by mx.groups.io with SMTP id smtpd.web10.5038.1617790808745816249
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 03:20:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.51, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 137AJvbD026467;
	Wed, 7 Apr 2021 11:19:57 +0100
From: anton.antonov@arm.com
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] Use libest "main" branch instead of "master".
Date: Wed,  7 Apr 2021 11:19:54 +0100
Message-Id: <20210407101954.1422-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch fixes the issue:

WARNING: libest-3.2.0-r0 do_fetch: Failed to fetch URL git://github.com/cisco/libest, attempting MIRRORS if available
ERROR: libest-3.2.0-r0 do_fetch: Fetcher failure: Unable to find revision 4ca02c6d7540f2b1bcea278a4fbe373daac7103b in branch master even from upstream
ERROR: libest-3.2.0-r0 do_fetch: Fetcher failure for URL: 'git://github.com/cisco/libest'. Unable to fetch URL from any source.

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 recipes-security/libest/libest_3.2.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index f993bd6..5b6dc99 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -6,7 +6,7 @@ LICENSE = "OpenSSL"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=ecb78acde8e3b795de8ef6b61aed5885"
 
 SRCREV = "4ca02c6d7540f2b1bcea278a4fbe373daac7103b"
-SRC_URI = "git://github.com/cisco/libest"
+SRC_URI = "git://github.com/cisco/libest;branch=main"
 
 DEPENDS = "openssl"
 
-- 
2.20.1

