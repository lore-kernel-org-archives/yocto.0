Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web09.13237.1582125081979913390
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 07:11:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01JFBGXh025052;
	Wed, 19 Feb 2020 09:11:17 -0600
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][PATCH] gcc/binutils: Allow plugins to be enabled on cross-canadian toolchain
Date: Wed, 19 Feb 2020 09:11:16 -0600
Message-Id: <20200219151116.91973-1-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1

As of GCC 8, plugin support is available with mingw.  If the plugins are
enabled in the regular binutils/gcc configurations, carry over that
configuration with the mingw versions as well.

When plugins are enabled, they produce a file called [plugin].dll.a.  This
causes the debugsrc processor to find the file and attempt to pull out dwarf
information.  However, we need to prevent this as the files are not ELF, but
in Microsoft PE format, and trigger an error if processed.

Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
---
 .../binutils/binutils-cross-canadian_2.%.bbappend          | 2 +-
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend         | 7 ++++++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
index 026c932..5845fe0 100644
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
@@ -1,4 +1,4 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 
 DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 888d610..9c0d828 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -1,6 +1,11 @@
 INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --disable-lto"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 EXEEXT_sdkmingw32 = ".exe"
 ELFUTILS_sdkmingw32 = ""
 DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+
+# With plugins enabled, it will output 'dll.a' files that are mistaken
+# for ELF which can trigger a failure.  Simply avoid processing these
+# to avoid the error condition.
+INHIBIT_PACKAGE_DEBUG_SPLIT = '1'
-- 
2.17.1

