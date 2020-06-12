Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.24908.1591982069016006165
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:14:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rpd78LY2;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id w20so4407053pga.6
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=mn750t0EfHxa8f+YzZqOd+cPC701SuTZKrqc8fAJZ98=;
        b=Rpd78LY2NwiU3xzPENrkvlWV/pY11loG+81t5r2SJHkGO/cIOLtfaRluxIXiXZpRK+
         JEUVgz0p/eXi9AQ8aA27O5BfFW9dqTLjy0gq9GOsDQ90vF9iOL1tTMUpDDUJcCzUxBJL
         HjB9siioYMgi2+U3kuQeSkpRCRH12QArQOMP6SaCsjYhIlnZWTWAI9SqsAffjSyIGUzQ
         BVMvU57JYGcCU5LTBUj5VmdXbEFKRYV2bCmSGouYxfVYTo16wB7CKK36twO6onEV9Xse
         zexUCyVV3ksxYYVB6uANUoq3WV8ax3hZXuQ+BuKsqw3SSYYnlxes7aIuLVYlA4dtbqfw
         Iu9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=mn750t0EfHxa8f+YzZqOd+cPC701SuTZKrqc8fAJZ98=;
        b=MOc8TQAPBwlejpmybA10AWof7zya9od9Uqj+CVwdWQ/OTaL/IedAGJp0YY4ZI8lmuI
         QM3LOFuCOcYOTMiLAgrzfAxMuQQ6oB+3H+91RPigI9RXby0h3GBY0pWeVGdl1BlgxmWj
         z1EO3RiiDL/FF8YPM0h0XxCBs2GJWtKzcm3in/zGpBwE4o/LO9FqcnmXJ8Bzb8GnLprz
         fDUDI4UDCZYwGnxvsiSyd/KF4oYmOcIBoJE+JuzOk/7SeVDnNCjp8ZpVMKV5XdGqHBUd
         EqScj+aOnG2/+NHYJcpQpRWPAwVWiIxp4IQ+xhYfcoBaFlX/zDj1Os/W+uShtfH9Mewi
         uNpQ==
X-Gm-Message-State: AOAM530POGaIBGjLvmXKIy+wRE0+gQAkDOr+TEg5JSyXkfzd3ovRVXwJ
	pzSoeGl2bnw+HW/u+MRkMuSLLZ9F
X-Google-Smtp-Source: ABdhPJxQWCPIfIgdfLrGOSbeH2oMKhdfIcNOJgxFFnEji1UgzrCk0YB/rJVmfePDhfLimZAA+uMHhA==
X-Received: by 2002:a62:ac0a:: with SMTP id v10mr13031865pfe.27.1591982068105;
        Fri, 12 Jun 2020 10:14:28 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5030:aa9f:23eb:a3d9])
        by smtp.gmail.com with ESMTPSA id q6sm6687494pff.163.2020.06.12.10.14.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:14:27 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] openscap: update to 1.3.3
Date: Fri, 12 Jun 2020 10:14:22 -0700
Message-Id: <20200612171422.3380-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612171422.3380-1-akuster808@gmail.com>
References: <20200612171422.3380-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/{openscap_1.3.1.bb => openscap_1.3.3.bb}         | 2 +-
 .../recipes-openscap/openscap/openscap_git.bb                 | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta-security-compliance/recipes-openscap/openscap/{openscap_1.3.1.bb => openscap_1.3.3.bb} (76%)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.3.bb
similarity index 76%
rename from meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
rename to meta-security-compliance/recipes-openscap/openscap/openscap_1.3.3.bb
index ad29efd..51fa9ee 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.3.bb
@@ -2,7 +2,7 @@ SUMARRY = "NIST Certified SCAP 1.2 toolkit"
 
 require openscap.inc
 
-SRCREV = "3a4c635691380fa990a226acc8558db35d7ebabc"
+SRCREV = "0cb55c55af6be9934d6fd0caf4563b206f289732"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3 \
 "
 
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
index 963d3de..73a4729 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
@@ -5,8 +5,8 @@ SUMARRY = "NIST Certified SCAP 1.2 toolkit with OE changes"
 
 include openscap.inc
 
-SRCREV = "4bbdb46ff651f809d5b38ca08d769790c4bfff90"
+SRCREV = "a85943eee400fdbe59234d1c4a02d8cf710c4625"
 SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3 \
 "
 
-PV = "1.3.1+git${SRCPV}"
+PV = "1.3.3+git${SRCPV}"
-- 
2.17.1

