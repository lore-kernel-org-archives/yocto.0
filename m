Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web10.8392.1582653699889280173
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 10:01:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01PI1Y8s005283;
	Tue, 25 Feb 2020 12:01:35 -0600
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [PATCH] libgcrypt: disable amd64 optimization
Date: Tue, 25 Feb 2020 12:01:34 -0600
Message-Id: <20200225180134.114469-1-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1

amd64 optimization when using with mingw32 sometimes results in:

| ../../libgcrypt-1.8.4/cipher/rijndael-tables.h:103:24: error: expected
']' before '.' token
|  103 | #define encT enc_tables.T

and then all usages of encT fail as well.

Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
---
 recipes-support/libgcrypt/libgcrypt_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-support/libgcrypt/libgcrypt_%.bbappend b/recipes-support/libgcrypt/libgcrypt_%.bbappend
index 50dca09..92242d0 100644
--- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
+++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
@@ -1,3 +1,4 @@
+EXTRA_OECONF_append_mingw32 = " --disable-amd64-as-feature-detection"
 
 # libcap does not support mingw32
 PACKAGECONFIG_remove_mingw32 = "capabilities"
-- 
2.17.1

