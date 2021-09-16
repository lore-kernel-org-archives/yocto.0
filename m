Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.5824.1631836684665656676
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:58:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kmzVXvum;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id r2so7822131pgl.10
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g/TYiQ2NSmcaQyNM0GaAIr5qNWSKz7xMtT74RlU0QsA=;
        b=kmzVXvumKUJnZrJ+Zg54jvVVk7wwxTTTZZ1n5aoMKBC11dixlJQjRC5UKpVGW6AgSG
         ONPBx3kiuyqrxYvYHWMCvDQWV4Dk0pq4wvM9qpxjVAmAx3bNcmJHHxOuo7EIbzpynsdj
         yxuCF6z2kesxtqfYUnk3Z7QLb0QRtdtPxGeMDxizxk7CK0lTgWTgDGQldoKu6dBGGOWT
         kzKdqyI3SoyRwwmFn/v0fnKfJ7O/Ph/OEqHxkQAA2SZC/p0vjS/r3l72wJQUQ+cNhm+H
         HnQThR4EquZlq9q5AzDPedGacgH7GDrkvP/zDffkFJ9DCRuKBTpVfEIyWfPU56Re3yqY
         LezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g/TYiQ2NSmcaQyNM0GaAIr5qNWSKz7xMtT74RlU0QsA=;
        b=lnlqI42e9KVvdYAZ5n96fLwVD4zuZ1KXLaD+71mthuOjKmbqw+QrQxInosXZWERuUn
         1Fs5RjUKg5GF+8CT2mEGLcYTYDQxtHWnxKg31fCSmC3IXmJezS6rL9pwtsHhDmzs9Xg7
         QO3TohA3yfTCZpXmex7ZTKeziR2jkPaMeV5ylPWUc/000VFfbivKcOAr6z7eeclmKu+h
         r3qoAj7Ll9yu0+gZ30xpuWC/L37+NmLjbmJ8d/7AUOjFzup2c4p4eTG4Ly02aOKsIu7J
         cSNYSrIUfsl/QMOMlVAiQFXVzInqQLyfNraN9X6yhFchinTp0m76v0D696G9zUJdTrfN
         PxEQ==
X-Gm-Message-State: AOAM533urh2B6ExtQqDUL03we7rjuuLaQZYa96ua6b+3ChsBR0QuS8ql
	Qp8XUy5GJKQtoySzDd3B5xviF5cyAko=
X-Google-Smtp-Source: ABdhPJyujJ2P6iGiaK1qKPPA4dUJznoxKouMgHo7Rzax1CPjWSd8cv50Hjo3OQSj0gMARHQfvN+VnQ==
X-Received: by 2002:a62:18c1:0:b0:436:2125:e79e with SMTP id 184-20020a6218c1000000b004362125e79emr7638011pfy.68.1631836684094;
        Thu, 16 Sep 2021 16:58:04 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id b7sm4400808pgs.64.2021.09.16.16.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:58:03 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][PATCH 2/3] libsepol: Security fix CVE-2021-36085
Date: Thu, 16 Sep 2021 16:58:00 -0700
Message-Id: <20210916235801.2628222-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916235801.2628222-1-akuster808@gmail.com>
References: <20210916235801.2628222-1-akuster808@gmail.com>
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
 recipes-security/selinux/libsepol_3.0.bb      |  1 +
 2 files changed, 39 insertions(+)
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
diff --git a/recipes-security/selinux/libsepol_3.0.bb b/recipes-security/selinux/libsepol_3.0.bb
index 537377b..b7a7071 100644
--- a/recipes-security/selinux/libsepol_3.0.bb
+++ b/recipes-security/selinux/libsepol_3.0.bb
@@ -10,4 +10,5 @@ SRC_URI += "\
         file://0001-libsepol-fix-CIL_KEY_-build-errors-with-fno-common.patch \
         file://0001-libsepol-remove-leftovers-of-cil_mem_error_handler.patch \
         file://CVE-2021-36084.patch \
+        file://CVE-2021-36085.patch \
         "
-- 
2.25.1

