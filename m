Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web11.7653.1580125500121091289
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 03:45:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=K9zVGvZT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id z7so10837974wrl.13
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2020 03:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7W371BgWOCx7vCixcCyTlnTdEyI9YDOydVsE46kYxCo=;
        b=K9zVGvZTn34GLExLx/1Eu4xtjxhQnbjmzpv4rdbE+CnbdRC+aCn/+4OLv+B9by57Fi
         Izb4nwQjTeLMhupzow9qrL3Q6QZORt4jaloQ3nD2y04+Ux0tE54Gx5xfkBQLCRmHWXsL
         9VZn7YrCJdqwa5g0U/+GbiIIrpjVtK/fzkuy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7W371BgWOCx7vCixcCyTlnTdEyI9YDOydVsE46kYxCo=;
        b=iyEvZe40cxF1ocAHV2MJdqPmyCz8RtpgekICTmNzUiVpQPUxYI94TPWUNjOYEUfGRV
         feQikkN6DCQgbPq+qsX5n12yUZbNb2zzTBR89Dptf4nyr5wWsI9ArHpqh0SIZ4j4cmiL
         B6sHJMb0TCYSAcBhpY5Lzr99MFNQXnS2RY9KRv1gbXh+oyl695mt+udrpqvOSa5DXDXQ
         +a6y9NXc/tHK6uxTMhsmem9o2D2XMMwxkn9PjWpq6SXQDFq0yU/8lwF4lYON0tZpN31l
         8usBkVS6yccH759j7MiJjFbkFPnxzY2HnVrqUv3j0sIubeVANGYdm3vO7oWuLE7UyUNO
         xYYw==
X-Gm-Message-State: APjAAAWTkZaYbWYXLuTAmptHsko70RUBrhEfVzm79kOurwW1HHtdW/cq
	eBEfkYtiat4C1+kA2TYL9AMuf8BFLE4=
X-Google-Smtp-Source: APXvYqy3MMW+l5HpnJjeRj9fIZwRdwzsk33Qfr+no9Qf2aQ9McR6YOcaQB9eELa00pYJ9oeGHGHFdA==
X-Received: by 2002:a05:6000:11c5:: with SMTP id i5mr21287575wrx.102.1580125498253;
        Mon, 27 Jan 2020 03:44:58 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id w20sm17665608wmk.34.2020.01.27.03.44.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 03:44:57 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] distrodata/maintainers: Add PARSE_ALL_RECIPES flag to fix test issues
Date: Mon, 27 Jan 2020 11:44:53 +0000
Message-Id: <20200127114453.4847-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently the test depends on which DISTRO_FEATURES and targets are selected.
Similar to SOURCE_MIRROR_FETCH, add PARSE_ALL_RECIPES to allow the test to see
a much wider range of them. This avoids issues added by the new ucontext musl
specific recipe and allows the current whitelist to be cleared out a bit (more
cleanup can follow).

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/base.bbclass                  | 4 ++--
 meta/classes/features_check.bbclass        | 3 +++
 meta/lib/oeqa/selftest/cases/distrodata.py | 7 +++----
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index c243700bcdd..45f9435fd8e 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -510,7 +510,7 @@ python () {
         d.appendVarFlag('do_devshell', 'depends', ' virtual/fakeroot-native:do_populate_sysroot')
 
     need_machine = d.getVar('COMPATIBLE_MACHINE')
-    if need_machine:
+    if need_machine and not d.getVar('PARSE_ALL_RECIPES', False):
         import re
         compat_machines = (d.getVar('MACHINEOVERRIDES') or "").split(":")
         for m in compat_machines:
@@ -519,7 +519,7 @@ python () {
         else:
             raise bb.parse.SkipRecipe("incompatible with machine %s (not in COMPATIBLE_MACHINE)" % d.getVar('MACHINE'))
 
-    source_mirror_fetch = d.getVar('SOURCE_MIRROR_FETCH', False)
+    source_mirror_fetch = d.getVar('SOURCE_MIRROR_FETCH', False) or d.getVar('PARSE_ALL_RECIPES', False)
     if not source_mirror_fetch:
         need_host = d.getVar('COMPATIBLE_HOST')
         if need_host:
diff --git a/meta/classes/features_check.bbclass b/meta/classes/features_check.bbclass
index 391fbe1c946..876d32e3155 100644
--- a/meta/classes/features_check.bbclass
+++ b/meta/classes/features_check.bbclass
@@ -23,6 +23,9 @@
 # Copyright 2013 (C) O.S. Systems Software LTDA.
 
 python () {
+    if d.getVar('PARSE_ALL_RECIPES', False):
+        return
+
     # Assume at least one var is set.
     distro_features = set((d.getVar('DISTRO_FEATURES') or '').split())
 
diff --git a/meta/lib/oeqa/selftest/cases/distrodata.py b/meta/lib/oeqa/selftest/cases/distrodata.py
index 5f7f488349a..e1cfc3b6214 100644
--- a/meta/lib/oeqa/selftest/cases/distrodata.py
+++ b/meta/lib/oeqa/selftest/cases/distrodata.py
@@ -56,15 +56,14 @@ but their recipes claim otherwise by setting UPSTREAM_VERSION_UNKNOWN. Please re
             return False
 
         def is_maintainer_exception(entry):
-            exceptions = ["systemd", "musl", "libpam", "newlib", "linux-yocto", "opensbi", "linux-dummy",
-                          "mesa-gl", "libgfortran", "volatile-binds", "libgloss", "bsd-headers",
-                          "cve-update-db-native", "libssp-nonshared", "argp-standalone", "fts"]
+            exceptions = ["musl", "newlib", "linux-yocto", "linux-dummy", "mesa-gl", "libgfortran",
+                          "cve-update-db-native"]
             for i in exceptions:
                  if i in entry:
                      return True
             return False
 
-        feature = 'require conf/distro/include/maintainers.inc\nLICENSE_FLAGS_WHITELIST += " commercial"\n'
+        feature = 'require conf/distro/include/maintainers.inc\nLICENSE_FLAGS_WHITELIST += " commercial"\nPARSE_ALL_RECIPES = "1"\n'
         self.write_config(feature)
 
         with bb.tinfoil.Tinfoil() as tinfoil:
-- 
2.20.1

