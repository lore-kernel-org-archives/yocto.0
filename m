Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web10.5867.1631836683852462429
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:58:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MJZRlzRX;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id w8so7832468pgf.5
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bMi9bln6e4YyB1Min0sJpzte9kNRGKsssCkBGzvmYAU=;
        b=MJZRlzRXUMaol6+g3j39UV5Viehix0a6fEDY7CV7a9i39r7Z9bRNHrO9Q3oq/1P9Wy
         uRdffMHa/Zkeocd7iecWF7PMWyVPDwFBuWSX2KmY0OI6F/NCSG5c+KTxp6EspIDX/EY8
         gctd6sbn1YkDj/oztUnTaZuV6KDZ+5HZhK3RA0MGeJG31phtpOLItQ9aLyEvTwzufuKQ
         69lnrgtXrwfTj/zFHmrNm0wDTpekqws0sQFrKvQ2Zzu60JKBTB0r8yjzn/vMLTmwR7EW
         iGu3yz3MTCBEmTzAQoAHILen82SMN9pI76pOSotDHjJv4gpd2iHNNnA6WYShDBPvy7BK
         0cuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bMi9bln6e4YyB1Min0sJpzte9kNRGKsssCkBGzvmYAU=;
        b=sDfqCKdnEIjpNDD+UCjEgaXz2AMaENvbG1sQq4oJtDEsUpx+I0bVnBa92cFFNzvyf7
         3GhkkjSeenwj7PLlZuDeahZaZ9LAoCb4tuncTx57QSSY0w0EhFmfXDRvasq6h4wlBSVq
         5Ta7L49yd6lEwcNDK+bhpJeCXpnXukg9R0QCQ5CeZamuoJRBSxNfEwL0OOiKPeaWpTxH
         Vad50H3U/qL2VPgGsy7K4a+6ks5j6VGnA3Sf/aqxu5dT8FOBMvhRJa4M1pg1iqxa8OUY
         g++FZLd+Z5U84l4mee8BE+MJeM1ndYymomEMOnrF28tTIrjBw5jbrWlC8hMjkrX8/5m2
         5ycQ==
X-Gm-Message-State: AOAM533hCG6TUPy8BArvJ5YFKLNxj97be0HhtsJLX0fzkprvCvHl8fWi
	BVs79xNkwGhAl+mNiv3+fHNDWBfbxwI=
X-Google-Smtp-Source: ABdhPJzOqf41T1mg52pGv6g7M2yVCU9+2qxyIZh3ltPVku1DiaG63/YHGz8gkkEwm/STHynNmDa4lQ==
X-Received: by 2002:aa7:8d10:0:b0:414:ab01:656c with SMTP id j16-20020aa78d10000000b00414ab01656cmr7489266pfe.13.1631836683225;
        Thu, 16 Sep 2021 16:58:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id b7sm4400808pgs.64.2021.09.16.16.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:58:02 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][PATCH 1/3] libsepol: Security fix CVE-2021-36084
Date: Thu, 16 Sep 2021 16:57:59 -0700
Message-Id: <20210916235801.2628222-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Armin Kuster <akuster@mvista.com>

Source: https://github.com/SELinuxProject/selinux
MR: 111851
Type: Security Fix
Disposition: Backport from https://github.com/SELinuxProject/selinux/commit/f34d3d30c8325e4847a6b696fe7a3936a8a361f3
ChangeID: 7fae27568e26ccbb18be3d2a1ce7332d42706f18
Description:

Affects: libsepol < 3.2

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../selinux/libsepol/CVE-2021-36084.patch     | 99 +++++++++++++++++++
 recipes-security/selinux/libsepol_3.0.bb      |  1 +
 2 files changed, 100 insertions(+)
 create mode 100644 recipes-security/selinux/libsepol/CVE-2021-36084.patch

diff --git a/recipes-security/selinux/libsepol/CVE-2021-36084.patch b/recipes-security/selinux/libsepol/CVE-2021-36084.patch
new file mode 100644
index 0000000..1001563
--- /dev/null
+++ b/recipes-security/selinux/libsepol/CVE-2021-36084.patch
@@ -0,0 +1,99 @@
+From f34d3d30c8325e4847a6b696fe7a3936a8a361f3 Mon Sep 17 00:00:00 2001
+From: James Carter <jwcart2@gmail.com>
+Date: Thu, 8 Apr 2021 13:32:01 -0400
+Subject: [PATCH] libsepol/cil: Destroy classperms list when resetting
+ classpermission
+
+Nicolas Iooss reports:
+  A few months ago, OSS-Fuzz found a crash in the CIL compiler, which
+  got reported as
+  https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=28648 (the title
+  is misleading, or is caused by another issue that conflicts with the
+  one I report in this message). Here is a minimized CIL policy which
+  reproduces the issue:
+
+  (class CLASS (PERM))
+  (classorder (CLASS))
+  (sid SID)
+  (sidorder (SID))
+  (user USER)
+  (role ROLE)
+  (type TYPE)
+  (category CAT)
+  (categoryorder (CAT))
+  (sensitivity SENS)
+  (sensitivityorder (SENS))
+  (sensitivitycategory SENS (CAT))
+  (allow TYPE self (CLASS (PERM)))
+  (roletype ROLE TYPE)
+  (userrole USER ROLE)
+  (userlevel USER (SENS))
+  (userrange USER ((SENS)(SENS (CAT))))
+  (sidcontext SID (USER ROLE TYPE ((SENS)(SENS))))
+
+  (classpermission CLAPERM)
+
+  (optional OPT
+      (roletype nonexistingrole nonexistingtype)
+      (classpermissionset CLAPERM (CLASS (PERM)))
+  )
+
+  The CIL policy fuzzer (which mimics secilc built with clang Address
+  Sanitizer) reports:
+
+  ==36541==ERROR: AddressSanitizer: heap-use-after-free on address
+  0x603000004f98 at pc 0x56445134c842 bp 0x7ffe2a256590 sp
+  0x7ffe2a256588
+  READ of size 8 at 0x603000004f98 thread T0
+      #0 0x56445134c841 in __cil_verify_classperms
+  /selinux/libsepol/src/../cil/src/cil_verify.c:1620:8
+      #1 0x56445134a43e in __cil_verify_classpermission
+  /selinux/libsepol/src/../cil/src/cil_verify.c:1650:9
+      #2 0x56445134a43e in __cil_pre_verify_helper
+  /selinux/libsepol/src/../cil/src/cil_verify.c:1715:8
+      #3 0x5644513225ac in cil_tree_walk_core
+  /selinux/libsepol/src/../cil/src/cil_tree.c:272:9
+      #4 0x564451322ab1 in cil_tree_walk
+  /selinux/libsepol/src/../cil/src/cil_tree.c:316:7
+      #5 0x5644513226af in cil_tree_walk_core
+  /selinux/libsepol/src/../cil/src/cil_tree.c:284:9
+      #6 0x564451322ab1 in cil_tree_walk
+  /selinux/libsepol/src/../cil/src/cil_tree.c:316:7
+      #7 0x5644512b88fd in cil_pre_verify
+  /selinux/libsepol/src/../cil/src/cil_post.c:2510:7
+      #8 0x5644512b88fd in cil_post_process
+  /selinux/libsepol/src/../cil/src/cil_post.c:2524:7
+      #9 0x5644511856ff in cil_compile
+  /selinux/libsepol/src/../cil/src/cil.c:564:7
+
+The classperms list of a classpermission rule is created and filled
+in when classpermissionset rules are processed, so it doesn't own any
+part of the list and shouldn't retain any of it when it is reset.
+
+Destroy the classperms list (without destroying the data in it)  when
+resetting a classpermission rule.
+
+Reported-by: Nicolas Iooss <nicolas.iooss@m4x.org>
+Signed-off-by: James Carter <jwcart2@gmail.com>
+
+Upstream-Status: Backport
+CVE: CVE-2021-36084
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+---
+ libsepol/cil/src/cil_reset_ast.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+Index: libsepol-3.0/cil/src/cil_reset_ast.c
+===================================================================
+--- libsepol-3.0.orig/cil/src/cil_reset_ast.c
++++ libsepol-3.0/cil/src/cil_reset_ast.c
+@@ -52,7 +52,7 @@ static void cil_reset_classpermission(st
+ 		return;
+ 	}
+ 
+-	cil_reset_classperms_list(cp->classperms);
++	cil_list_destroy(&cp->classperms, CIL_FALSE);
+ }
+ 
+ static void cil_reset_classperms_set(struct cil_classperms_set *cp_set)
diff --git a/recipes-security/selinux/libsepol_3.0.bb b/recipes-security/selinux/libsepol_3.0.bb
index 58559d7..537377b 100644
--- a/recipes-security/selinux/libsepol_3.0.bb
+++ b/recipes-security/selinux/libsepol_3.0.bb
@@ -9,4 +9,5 @@ SRC_URI[sha256sum] = "5b7ae1881909f1048b06f7a0c364c5c8a86ec12e0ec76e740fe9595a60
 SRC_URI += "\
         file://0001-libsepol-fix-CIL_KEY_-build-errors-with-fno-common.patch \
         file://0001-libsepol-remove-leftovers-of-cil_mem_error_handler.patch \
+        file://CVE-2021-36084.patch \
         "
-- 
2.25.1

