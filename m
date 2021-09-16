Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web09.5743.1631836659120921338
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:57:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jeSLf9sX;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id m26so7484607pff.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=svvuz9Ktzod7yr9YJQk/QSFcYOr75Pr1g4fupsAY3T4=;
        b=jeSLf9sXVz0urneaoc8EEDVIWOUGqwy66WllJPX9jSsiixzz/oao0jbzmOW6SZ0nZ3
         xpwXB7PKgv/+hf1JHWvXZXxP8/USlE9b8fTVkrdYpb9zEU3e8OpCZqFJMfWiOALJVLV8
         MVKFhTbkPVjsOEx7Ykz//+BBp01nUZleN6thJZWJDx1XzeZKagQJDWbP8UKG+kV7/PrD
         PesHflk8JH1TsNnW6ii6wNBHOsrHR6urx3YtXMBk0D7pg/v6+hu2EES8pdkPx6B4mqF6
         wjC830hr3g4KVuEKMZ+6mkoa2eBBCBwgv7/JLXLba+CHqvYsDZszDf3z7YXXEzi34NPl
         K05g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=svvuz9Ktzod7yr9YJQk/QSFcYOr75Pr1g4fupsAY3T4=;
        b=SsCzGy0nJ2GBLqDZA7prVfscyPdRMZFJuAdJsBVMwWZtcsphB4i7ebesUGA79mP7Cf
         v7DogH3+5oB/SWCyyGrs4ck1ng9KCEl7eKnO8u+GjS8sXT3L6T3Ql+fhhP+ZoOgYbjS/
         96saGPM/e81miiALMfkQChi6ayAAhZRPvNaxixhNoOeivXUpsYQCEiAiPkPhOtZLDOsl
         YcT0zia8zNyxRxSe6NYwXytFpgXv6POezSNMiRs8ggF1qLW8/eFfuO1Pff/a7ILm3lfi
         M1Cr33ph6QVlahJsc6cs70xwVhV6bIDtyzbgXKUDLtdJsFvqFBW7DtVLtGY/1sIHOWOH
         sicw==
X-Gm-Message-State: AOAM53157eW0TyQs/AbAipZ/fv4VWsvlWwB3A7Bc8IjlLglHRBGWvjLY
	u7ctobDI5Fp1DXsrVle9Wrcr+QWMbBI=
X-Google-Smtp-Source: ABdhPJzr2IaTnrj/x21qokPR2IYFa2U3ddiBprvC03ggzez6PGr5YPYMAXja+RYml/nWH7ywOLuoYA==
X-Received: by 2002:a05:6a00:4:b0:43d:32f3:e861 with SMTP id h4-20020a056a00000400b0043d32f3e861mr8062254pfk.60.1631836658476;
        Thu, 16 Sep 2021 16:57:38 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id x9sm4248116pfo.172.2021.09.16.16.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:57:38 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][hardknott][PATCH 2/3] libsepol: Security fix CVE-2021-36085
Date: Thu, 16 Sep 2021 16:57:35 -0700
Message-Id: <20210916235736.2628153-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916235736.2628153-1-akuster808@gmail.com>
References: <20210916235736.2628153-1-akuster808@gmail.com>
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

