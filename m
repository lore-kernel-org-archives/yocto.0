Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web08.5708.1631836252298393333
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:50:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lY/ePZPn;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id t1so7840177pgv.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=svvuz9Ktzod7yr9YJQk/QSFcYOr75Pr1g4fupsAY3T4=;
        b=lY/ePZPnQMfRrMyKsaqgd2O5prcwnz7/TfD/chij971fB0QWwkskBU1b2bJ+UFBe9z
         g7H+R3rx3SrEEgLG6mww/knta6MndlangdiMD3tcj91rGZ7sYgHnkBM8GHikRrpUtLZZ
         IsvfX9aW9mNRGwYjtHZCCbRooqcD6vMHAn3KRZ71nWlUbL+dGpvKQnc1V0BNrx4qa3YL
         k2hZjR8U1qaaa46+yIgSbtuzmi1Blfd3BSTd6rXmzxLbZRY/sy8WdTR14X/+87bhmm1G
         rfb1+y6aIPzKtkqAx0eXU5wxpaKFk8HJRUJOYbi1xvhG0pW/Uxtf4M/cn3bLcA0Vmog9
         YE1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=svvuz9Ktzod7yr9YJQk/QSFcYOr75Pr1g4fupsAY3T4=;
        b=yphUxi7/F1wCeG3u7DqA8nH/H1oVaQ7HBIhgm30d1qDWypZ4gN7zPHdlYCM2sMWC5k
         8Cwob63Wt5UILQnxJbaxHYsWbjsm1dgrn+SZ1RefFDhI3JmzqDdksGdRGQ+asW8IyEZ0
         MGKTaeWcr7FJPJgx3vNn0evJtqfFULejdUpbH3B5PZvh6aM4WY5+61tOZEc8UH+jcWrT
         y01SUktU9gmxzGGqxIXVECuWDG+iRGo+ygLHOYHEq1sLnoRxjvSgDoVU9Rjt19PxADbB
         anCXnGaVR7ncEIEQquDF8x+xol/C7qS7KviKoAI5d2/ON0j90ZAMM7ihZzfIzTiIJUGl
         JTAg==
X-Gm-Message-State: AOAM533bfZ/4Qgx5hp5mVOeG5x3stmhJrkoyaAFRDCzuDRMgG3RJ8hqD
	o/reRfsSLqK2Tlmd8n4iCCQBdnmTGn8=
X-Google-Smtp-Source: ABdhPJwX0bdFBn2ubP1C7pnCqv4poQBpmXscgI9kAPRgm1FJrkTtfPsHJ7L+W+0XmnDPa1NsCfAiMQ==
X-Received: by 2002:a65:4007:: with SMTP id f7mr7150372pgp.251.1631836251560;
        Thu, 16 Sep 2021 16:50:51 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id c3sm4210107pgn.76.2021.09.16.16.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:50:51 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][PATCH 2/3] libsepol: Security fix CVE-2021-36085
Date: Thu, 16 Sep 2021 16:50:48 -0700
Message-Id: <20210916235049.2519448-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916235049.2519448-1-akuster808@gmail.com>
References: <20210916235049.2519448-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Armin Kuster <akuster@mvista.com>

Source: https://github.com/SELinuxProject/selinux/
MR: 111857
Type: Security Fix
Disposition: Backport from https://github.com/SELinuxProject/selinux/commit/2d35fcc7e9e976a2346b1de20e54f8663e8a6cba
ChangeID: e50ae65189351ee618db2b278ba7105a5728e4c4
Description:

Affects: libsepol <= 3.2

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../selinux/libsepol/CVE-2021-36085.patch     | 38 +++++++++++++++++++
 recipes-security/selinux/libsepol_3.2.bb      |  3 +-
 2 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/libsepol/CVE-2021-36085.patch

diff --git a/recipes-security/selinux/libsepol/CVE-2021-36085.patch b/recipes-security/selinux/libsepol/CVE-2021-36085.patch
new file mode 100644
index 0000000..4bd05eb
--- /dev/null
+++ b/recipes-security/selinux/libsepol/CVE-2021-36085.patch
@@ -0,0 +1,38 @@
+From 2d35fcc7e9e976a2346b1de20e54f8663e8a6cba Mon Sep 17 00:00:00 2001
+From: James Carter <jwcart2@gmail.com>
+Date: Thu, 8 Apr 2021 13:32:04 -0400
+Subject: [PATCH] libsepol/cil: Destroy classperm list when resetting map perms
+
+Map perms share the same struct as regular perms, but only the
+map perms use the classperms field. This field is a pointer to a
+list of classperms that is created and added to when resolving
+classmapping rules, so the map permission doesn't own any of the
+data in the list and this list should be destroyed when the AST is
+reset.
+
+When resetting a perm, destroy the classperms list without destroying
+the data in the list.
+
+Signed-off-by: James Carter <jwcart2@gmail.com>
+
+Upstream-Status: Backport
+CVE: CVE-2021-36085
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
+@@ -34,7 +34,7 @@ static void cil_reset_class(struct cil_c
+ 
+ static void cil_reset_perm(struct cil_perm *perm)
+ {
+-	cil_reset_classperms_list(perm->classperms);
++	cil_list_destroy(&perm->classperms, CIL_FALSE);
+ }
+ 
+ static inline void cil_reset_classperms(struct cil_classperms *cp)
diff --git a/recipes-security/selinux/libsepol_3.2.bb b/recipes-security/selinux/libsepol_3.2.bb
index 6215d24..ef5de1e 100644
--- a/recipes-security/selinux/libsepol_3.2.bb
+++ b/recipes-security/selinux/libsepol_3.2.bb
@@ -9,7 +9,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
 
-SRC_URI += "file://CVE-2021-36084.patch"
+SRC_URI += "file://CVE-2021-36084.patch \
+            file://CVE-2021-36085.patch "
 
 inherit lib_package
 
-- 
2.25.1

