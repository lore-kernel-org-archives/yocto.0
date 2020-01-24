Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.7110.1579830715928010218
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 17:51:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=se25QAx+;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id 4so308833pfz.9
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 17:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=zjTj82sqaCSCmw+jlXmYP5k5uIsiBtTi0rR53PmTUKA=;
        b=se25QAx+8PSypatDxQ++NLf2oKH+helFhkrR5UFkzlKHh1OJK7ynqtZjMMWgd5Wz5p
         V6E8nVl/00DmyDL++5qG8kew3mW9UZvWcXGxHtCeJJA5h2QpSfRBNbq8nqalYDKxeISG
         TTZCywuu40AB8lXf+Cddjy7XujRvaNBMkts1twQM9Vb8kEkkX+GS+zA5PgeognYIy/Te
         Us90u21oCkWsoyqRiJleYJIO3RLeaPaaJdNBdjDKfXybQVEUQR3GH64XQA+PDBVOFoD7
         BKESBSK6fIQ8ISckb/wNV1kSoaKblk0vxDExqjNsL6qEU+7SJClj0uIsvhPOTiVe8XYJ
         7BdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=zjTj82sqaCSCmw+jlXmYP5k5uIsiBtTi0rR53PmTUKA=;
        b=uRwkWIfe6+o+tPSVIVmW6Hl53kqg0JPj8z0CTiIELB73LH3tTZLqFeTlY4T+BlxtWX
         bV9R+2HRNoQs82smRXCw1pIlg6uiCE+ifMcAV8i2WP5FQzx3cqxG1y2Aq2fMBbCEhVuo
         hUOa4s4QBWhj/R9QzQLzzO9y+yLKVfMidgiW7RpGbMJkDFCFopeCWDudGI2EnkLYyJR0
         xa0mwgs+f9UvlfCwbKPCi3AqA0ia/agG2hbtXoh1wnnq7g5AqsSO4GKdidcQfZHenT+i
         AqIsvwE33s88VqQcrNjvaPVauT1u0RVdCA9Dz4ADAeXZGn1e23kJcQojU5OD7saqAm1l
         PA3w==
X-Gm-Message-State: APjAAAWovtIKytd3kNaxIlFRoAao5f3Ih/8UzrGuawqTMsucsDt/cPnz
	REgpUJwM4ODZl+QIpzF5WqaN+1va
X-Google-Smtp-Source: APXvYqw/sUSbtgtcZTerlPQNi59wxFkjcVoLWZ4IR1WH9TzHfmSgK4ni0ccpNxcVv9n3DpLgK4LeHA==
X-Received: by 2002:a62:a11e:: with SMTP id b30mr1028973pff.149.1579830715103;
        Thu, 23 Jan 2020 17:51:55 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:682c:76b9:6d8a:bbd2])
        by smtp.gmail.com with ESMTPSA id k10sm3982572pjq.14.2020.01.23.17.51.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 17:51:54 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] sssd: drop py2 support
Date: Thu, 23 Jan 2020 17:51:50 -0800
Message-Id: <20200124015151.15742-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124015151.15742-1-akuster808@gmail.com>
References: <20200124015151.15742-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 089a99e..c381c32 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -14,7 +14,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
 SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
 SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
 
-inherit autotools pkgconfig gettext python-dir features_check
+inherit autotools pkgconfig gettext python3-dir features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
@@ -22,8 +22,7 @@ SSSD_UID ?= "root"
 SSSD_GID ?= "root"
 
 CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
-    ac_cv_path_NSUPDATE=${bindir} \
-    ac_cv_path_PYTHON2=${PYTHON_DIR} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
+    ac_cv_path_NSUPDATE=${bindir} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
     "
 
 PACKAGECONFIG ?="nss nscd"
@@ -34,7 +33,6 @@ PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
 PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
-PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
-- 
2.17.1

