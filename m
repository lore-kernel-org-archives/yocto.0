Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web11.5766.1631836251479382245
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:50:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IdL3FDfW;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id r2so7807811pgl.10
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3tiv57bQk4MROcOcGR573rvqO7vsbw+Kb5BBlbb3AWM=;
        b=IdL3FDfWBxCx+ecRnnlEd3HOqJ/6Hqg26x+YAilubIu9ASqXa8H6ia62BRNn6WDZDS
         iNaidlwUYZ6LUeFbORHg3f0Dm+LfcpDUdRh5nSPeKoxC19KFWUFvt11CkHFAMZ36SvNs
         MfIQGhlaKGGXx59lwvOittAZQJYtthSu8pgzcb9ZI8qBdSkkpy3mXb+/VZirS8/JaMAg
         nbOVkxMfZhspExMdU9Uo07r92kZ8NbKjBR3anLy2puckEpOM7gS3Xi8+BxaU+iD3tsx7
         f6z3nU/QrOW2QDdoeBNTzCiJ4ASNuCey3zGwb+JbYshtPEOja052RmzRvAQvs4rjNkvX
         n4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3tiv57bQk4MROcOcGR573rvqO7vsbw+Kb5BBlbb3AWM=;
        b=fql1pLxWqnoIT2icppI2vLGPeM3UTQ9k53AQHlM+OO2JlpcfMOCeLM4oCj2WtAwg1S
         NwcfnFn4K6yl7selv094f2zVKDdc2ezi6Ow+c6Rw+krDyr0kJH/J+qbP0OawFrVQCwny
         YR3fpXc8rE6TqDSVUukL9RzgIUgIL3luYXyXt+ycJoXGwfvTMwsTKIk+d94mUru+FmdA
         aoIjyu1IsHI+yaUqlOz5Zl95rzFICmjpAfdjjJu/9Yncb9le9QWg6Q8E+UqsfStpjy5o
         fsmdMpR4yDKDjOtroH9omdoqasMUOjOfMU2xbgJEdFWHlPbfaVc9huQxpHM7JdEWueAo
         cSew==
X-Gm-Message-State: AOAM5322Dn6APh4hxBBWPDjp/vWjuO3m5SSIf1JDKpHJwUCtOPufkZFZ
	cOtSyqUXuBlxTjGXGb7UedxRs+/sbgE=
X-Google-Smtp-Source: ABdhPJxV2jrgEAUdXM4+6j0d4ds3IOZ8NUhDUKeYR3G7jK33ae9JenFzZ088BzFc9K+KmEzdqVJA/w==
X-Received: by 2002:a65:41c6:: with SMTP id b6mr7303364pgq.206.1631836250790;
        Thu, 16 Sep 2021 16:50:50 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id c3sm4210107pgn.76.2021.09.16.16.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:50:50 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][PATCH 1/3] libsepol: Security fix CVE-2021-36084
Date: Thu, 16 Sep 2021 16:50:47 -0700
Message-Id: <20210916235049.2519448-1-akuster808@gmail.com>
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
 recipes-security/selinux/libsepol_3.2.bb      |  2 +
 2 files changed, 101 insertions(+)
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
diff --git a/recipes-security/selinux/libsepol_3.2.bb b/recipes-security/selinux/libsepol_3.2.bb
index 48d5f49..6215d24 100644
--- a/recipes-security/selinux/libsepol_3.2.bb
+++ b/recipes-security/selinux/libsepol_3.2.bb
@@ -9,6 +9,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
 
+SRC_URI += "file://CVE-2021-36084.patch"
+
 inherit lib_package
 
 S = "${WORKDIR}/git/libsepol"
-- 
2.25.1

