Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.14607.1602252495836832338
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Naf1J9QT;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id b26so6990335pff.3
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=kixsdvLwOjLqHOm8sZXIDKpXuLEUulKef75mMrzHj9o=;
        b=Naf1J9QTQ0RYq8aopuhu2IsWeod+9dh984Txay7CPGNkBVNDTVSVcxJwhe1rhFIVrq
         a9fJQn/ZUR5vqDAl4c1eAqnBRFO5u3StHJcnS3FPzMAjEiPn2qgznhHcmN1O4/xnRJIE
         pQ6EDt3OZW8nHx7OcTpiuUkvqOcnVp36aelbnrhn9qLZ9j3cRy15+0MZAptoaLvaRAhR
         tLwVlpTxjkwVvpydhl49R8EvCyqB/1NmxpEMdZSvPSSm4LREAMTLc6bVoKYymjMjRSWQ
         XGrRw4vph7KWz+CrhDqZUjnRm5p8trXx6uiKdRQLnVrDHH3Jec+vny3TEt291THFuQJ3
         zguQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=kixsdvLwOjLqHOm8sZXIDKpXuLEUulKef75mMrzHj9o=;
        b=D9BkBLsKEohSaoQeheZiU8PLGX/1Y3iJZY3XTthiVzCyLWpsdpbZhE6U9niz4agFa0
         vCROMPMqLVzR7SjNiBQovZPOOuASstnZ0xgJx0SiA3GGMcAIbKDsxRe2ef7vye7p23BP
         xCTWSdb5rZM8hanJW0ssZcqVqGv78yzJnRH4sM4dU3Pawd8lnvDPjyW8vDA+fkOI8eOR
         L0tLCkvj/OjlCNdUk08FtuYA1GX8KGQy/F6mn3B6Q+ZiMJbVYBJ/8cPnvUwZBtQyi5zi
         4blHIyuDEd8oUuYZM9132VXWECFMQdyO3L6Y7Em6TeaD9cjVrEpteE7FxPhEcCyqcb8q
         XIxg==
X-Gm-Message-State: AOAM533EGhuFR+qyCIjRmMCqjTKPnCT0+eIJ3HJ2QfbsqJZhSEDKSi+M
	B6nmMPoGCPdSpoXPvv4Tpjao2nj3Osc=
X-Google-Smtp-Source: ABdhPJziy+n94Pux06kkEdYdHQUp4vTbbTM8hynK0FU13vljpkO2FGk7XpdQjQsuFjtan2eLJcEIAw==
X-Received: by 2002:a62:d0c1:0:b029:155:2e17:ea0 with SMTP id p184-20020a62d0c10000b02901552e170ea0mr10575339pfg.55.1602252494579;
        Fri, 09 Oct 2020 07:08:14 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:13 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/7] apparmor: fix build for on musl
Date: Fri,  9 Oct 2020 07:08:06 -0700
Message-Id: <20201009140812.21765-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_3.0.bb          | 11 +++++-
 ...-aa_status-Fix-build-issue-with-musl.patch | 31 ++++++++++++++++
 ...or-add-missing-include-for-socklen_t.patch | 36 ++++++++++++++++++
 ...dont-force-host-cpp-to-detect-reallo.patch | 37 +++++++++++++++++++
 ...aa_features_new_from_file-to-public-.patch | 37 +++++++++++++++++++
 ...-add-_aa_asprintf-to-private-symbols.patch | 34 +++++++++++++++++
 6 files changed, 185 insertions(+), 1 deletion(-)
 create mode 100644 recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch
 create mode 100644 recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch
 create mode 100644 recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch
 create mode 100644 recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
 create mode 100644 recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch

diff --git a/recipes-mac/AppArmor/apparmor_3.0.bb b/recipes-mac/AppArmor/apparmor_3.0.bb
index 9c98199..35e95a0 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.bb
@@ -25,6 +25,11 @@ SRC_URI = " \
     file://run-ptest \
     file://0001-apparmor-fix-manpage-order.patch \
     file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
+    file://0001-libapparmor-add-missing-include-for-socklen_t.patch \
+    file://0002-libapparmor-add-aa_features_new_from_file-to-public-.patch \
+    file://0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch \
+    file://0001-aa_status-Fix-build-issue-with-musl.patch \
+    file://0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch \
     "
 
 SRCREV = "5d51483bfecf556183558644dc8958135397a7e2"
@@ -175,8 +180,12 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
+DEPENDS_append_libc-musl = " fts "
+RDEPENDS_${PN}_libc-musl +=  "musl-utils"
+RDEPENDS_${PN}_libc-glibc +=  "glibc-utils"
+
 # Add coreutils and findutils only if sysvinit scripts are in use
-RDEPENDS_${PN} +=  "glibc-utils ${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
 
diff --git a/recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch b/recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch
new file mode 100644
index 0000000..239562a
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch
@@ -0,0 +1,31 @@
+From 2bf15cc68f31c9f41962bb60a669ab2b453a039b Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Wed, 7 Oct 2020 08:27:11 -0700
+Subject: [PATCH] aa_status: Fix build issue with musl
+
+add limits.h
+
+aa_status.c:269:22: error: 'PATH_MAX' undeclared (first use in this function); did you mean 'AF_MAX'?
+|   269 |    real_exe = calloc(PATH_MAX + 1, sizeof(char));
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+---
+ binutils/aa_status.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/binutils/aa_status.c b/binutils/aa_status.c
+index 78b03409..41f1954e 100644
+--- a/binutils/aa_status.c
++++ b/binutils/aa_status.c
+@@ -10,6 +10,7 @@
+ #include <stdio.h>
+ #include <stdlib.h>
+ #include <string.h>
++#include <limits.h>
+ #include <sys/types.h>
+ #include <sys/stat.h>
+ #include <sys/wait.h>
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch b/recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch
new file mode 100644
index 0000000..2a56d8b
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch
@@ -0,0 +1,36 @@
+From 47263a3a74d7973e7a54b17db6aa903701468ffd Mon Sep 17 00:00:00 2001
+From: Patrick Steinhardt <ps@pks.im>
+Date: Sat, 3 Oct 2020 20:37:55 +0200
+Subject: [PATCH] libapparmor: add missing include for `socklen_t`
+
+While `include/sys/apparmor.h` makes use of `socklen_t`, it doesn't
+include the `<sys/socket.h>` header to make its declaration available.
+While this works on systems using glibc via transitive includes, it
+breaks compilation on musl libc.
+
+Fix the issue by including the header.
+
+Signed-off-by: Patrick Steinhardt <ps@pks.im>
+
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ libraries/libapparmor/include/sys/apparmor.h | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/libraries/libapparmor/include/sys/apparmor.h b/libraries/libapparmor/include/sys/apparmor.h
+index 32892d06..d70eff94 100644
+--- a/libraries/libapparmor/include/sys/apparmor.h
++++ b/libraries/libapparmor/include/sys/apparmor.h
+@@ -21,6 +21,7 @@
+ #include <stdbool.h>
+ #include <stdint.h>
+ #include <unistd.h>
++#include <sys/socket.h>
+ #include <sys/types.h>
+ 
+ #ifdef __cplusplus
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch b/recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch
new file mode 100644
index 0000000..9f7ad3c
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch
@@ -0,0 +1,37 @@
+From 965bb9c3e464f756b258a7c259a92bce3cde74e7 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster@mvista.com>
+Date: Wed, 7 Oct 2020 20:50:38 -0700
+Subject: [PATCH] parser/Makefile: dont force host cpp to detect reallocarray
+
+In cross build environments, using the hosts cpp gives incorrect
+detection of reallocarray. Change cpp to a variable.
+
+fixes:
+parser_misc.c: In function 'int capable_add_cap(const char*, int, unsigned int, capability_flags)':
+| parser_misc.c:297:37: error: 'reallocarray' was not declared in this scope
+|   297 |   tmp = (struct capability_table *) reallocarray(cap_table, sizeof(struct capability_table), cap_table_size+1);
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Upstream-Status: Pending
+
+---
+ parser/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/parser/Makefile b/parser/Makefile
+index acef3d77..8250ac45 100644
+--- a/parser/Makefile
++++ b/parser/Makefile
+@@ -54,7 +54,7 @@ endif
+ CPPFLAGS += -D_GNU_SOURCE
+ 
+ STDLIB_INCLUDE:="\#include <stdlib.h>"
+-HAVE_REALLOCARRAY:=$(shell echo $(STDLIB_INCLUDE) | cpp ${CPPFLAGS} | grep -q reallocarray && echo true)
++HAVE_REALLOCARRAY:=$(shell echo $(STDLIB_INCLUDE) | ${CPP} ${CPPFLAGS} | grep -q reallocarray && echo true)
+ 
+ WARNINGS = -Wall
+ CXX_WARNINGS = ${WARNINGS} ${EXTRA_WARNINGS}
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch b/recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
new file mode 100644
index 0000000..333f40f
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
@@ -0,0 +1,37 @@
+From c9255a03436e6a91bd4e410601da8d43a341ffc2 Mon Sep 17 00:00:00 2001
+From: Patrick Steinhardt <ps@pks.im>
+Date: Sat, 3 Oct 2020 20:58:45 +0200
+Subject: [PATCH] libapparmor: add `aa_features_new_from_file` to public
+ symbols
+
+With AppArmor release 3.0, a new function `aa_features_new_from_file`
+was added, but not added to the list of public symbols. As a result,
+it's not possible to make use of this function when linking against
+libapparmor.so.
+
+Fix the issue by adding it to the symbol map.
+
+Signed-off-by: Patrick Steinhardt <ps@pks.im>
+
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ libraries/libapparmor/src/libapparmor.map | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/libraries/libapparmor/src/libapparmor.map b/libraries/libapparmor/src/libapparmor.map
+index bbff51f5..1579509a 100644
+--- a/libraries/libapparmor/src/libapparmor.map
++++ b/libraries/libapparmor/src/libapparmor.map
+@@ -117,6 +117,7 @@ APPARMOR_2.13.1 {
+ 
+ APPARMOR_3.0 {
+   global:
++	aa_features_new_from_file;
+ 	aa_features_write_to_fd;
+ 	aa_features_value;
+   local:
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch b/recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch
new file mode 100644
index 0000000..543c7a1
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch
@@ -0,0 +1,34 @@
+From 9a8fee6bf1c79c261374d928b838b5eb9244ee9b Mon Sep 17 00:00:00 2001
+From: Patrick Steinhardt <ps@pks.im>
+Date: Sat, 3 Oct 2020 21:04:57 +0200
+Subject: [PATCH] libapparmor: add _aa_asprintf to private symbols
+
+While `_aa_asprintf` is supposed to be of private visibility, it's used
+by apparmor_parser and thus required to be visible when linking. This
+commit thus adds it to the list of private symbols to make it available
+for linking in apparmor_parser.
+
+Signed-off-by: Patrick Steinhardt <ps@pks.im>
+
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ libraries/libapparmor/src/libapparmor.map | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/libraries/libapparmor/src/libapparmor.map b/libraries/libapparmor/src/libapparmor.map
+index 1579509a..41e541ac 100644
+--- a/libraries/libapparmor/src/libapparmor.map
++++ b/libraries/libapparmor/src/libapparmor.map
+@@ -127,6 +127,7 @@ APPARMOR_3.0 {
+ PRIVATE {
+ 	global:
+ 		_aa_is_blacklisted;
++		_aa_asprintf;
+ 		_aa_autofree;
+ 		_aa_autoclose;
+ 		_aa_autofclose;
+-- 
+2.17.1
+
-- 
2.17.1

