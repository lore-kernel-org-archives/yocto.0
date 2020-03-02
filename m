Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web10.18294.1583170784078966430
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 09:39:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 022Hdd6n006260;
	Mon, 2 Mar 2020 11:39:41 -0600
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
To: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
Subject: [PATCH] gcc-cross-canadian: Enable wildcard expansion support
Date: Mon,  2 Mar 2020 11:39:39 -0600
Message-Id: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1

In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
of gcc were disabled by default.  This behavior may be required by some
(poorly written) makefiles.

This will allow someone to do:

gcc *.c -o myoutput

Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
---
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 9c0d828..e0463c6 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -1,5 +1,5 @@
 INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 EXEEXT_sdkmingw32 = ".exe"
 ELFUTILS_sdkmingw32 = ""
-- 
2.17.1

