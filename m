Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web10.8641.1623855144784079456
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 07:52:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTJaDBzM;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id q5-20020a9d66450000b02903f18d65089fso2711513otm.11
        for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 07:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gOAz/mJclCK2q9bGj9ln8lSFjvMEwnI6gMs71o8YyBk=;
        b=bTJaDBzMDkro7fVw1OQAkaAzohuWgJSPfjM9pGxARazi55Hl/RTs9Ryso0pPgLnp+l
         VedPNCVjqoWwJBPjFTYWbs9htOo5X3IrDhI0Ljfln/DC3KSsbDpwChctVb+G9E+svMfB
         rMcCZOOTH7Ixnx5QNptIS4jcLOUsgffzvhLX+ZK3mIhTBF+ItImB2cVdeq7e0m9DNcKQ
         sRH2tWlmIEgkgWk+Rj8OhQIs10dVpG2OsS2RKgw2qwGCFtFj6pu4ByltPEDRDG3wnd32
         I0A9SIqYuWYZK7zqxyoC4McSlkXaoJIgc07tJKkoJmQoBVKJQud6jpvzlwYs8RS+NvYY
         JDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gOAz/mJclCK2q9bGj9ln8lSFjvMEwnI6gMs71o8YyBk=;
        b=HuQK3tcDHpaV8/S93oS6n9WNK/o6PjOo6rU9wMTR3zNgJmAme55klaeDuzmvHmFddN
         l2RRLbbPsydCda7EBmryre2o4CdUTsOF04AY0vR5SnFCZODSbuiH2WPsbkJwrT0H8RX5
         RZtbh0IUNFVFOT5kWZJAoyMdy6ozesEQ+50xrw6Kse1iSGjkVBwZVINo8RQZlclIhuW4
         2oBY6ZhTDkv0+0sT+PzW4V6sPBYRlnlh1karolnwkZeH5K6r08TWfp/35H+n0e9Qlb+8
         oKJnGdlSJ87tTLSdLKd+kYw6vgi4uTwTuJ0LGjkAkrlLb1wWNFReZiX8zQ86Kue8poue
         +D+A==
X-Gm-Message-State: AOAM531l6yICLuPDN3L8kuAXOfIVseBwCei0g8bdNc+CiRHJWr3zb24i
	LTU1BaOe5A/ZstqJWWbtTibpciKFoio=
X-Google-Smtp-Source: ABdhPJz0//4Egdjzdkl+nWnkww8HgGp0VlmUyLkbCMcu5rxJB3LYnv/+fFganNb3JWFeESpDFHK4jg==
X-Received: by 2002:a05:6830:1598:: with SMTP id i24mr274870otr.52.1623855143897;
        Wed, 16 Jun 2021 07:52:23 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id 22sm561032otv.8.2021.06.16.07.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 07:52:23 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] Disable debuginfod
Date: Wed, 16 Jun 2021 09:52:18 -0500
Message-Id: <20210616145218.22916-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Disables debuginfod when using MingGW. This feature brings in
unbuildable dependencies and can't be used.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine-sdk/include/mingw32-common.inc        | 2 ++
 recipes-devtools/gdb/gdb-cross-canadian_%.bbappend | 1 +
 2 files changed, 3 insertions(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 0109e75..3997a26 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -15,6 +15,8 @@ USE_NLS_mingw32 = "no"
 FILES_${PN}-staticdev_append_mingw32 = " ${libdir}/*.lib"
 ALLOW_EMPTY_${PN}_mingw32 = "1"
 
+DISTRO_FEATURES_FILTER_NATIVESDK_remove_mingw32 = "debuginfod"
+
 # Do what amounts to a NOOP
 SDK_PACKAGING_FUNC = "do_compile"
 
diff --git a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
index c33a9ce..096fc63 100644
--- a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
+++ b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
@@ -4,3 +4,4 @@ RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang
 EXTRA_OECONF_append_sdkmingw32 = " --without-curses --without-system-readline --with-python=no"
 PACKAGECONFIG_remove_sdkmingw32 = "readline"
 PACKAGECONFIG_remove_sdkmingw32 = "python"
+PACKAGECONFIG_remove_sdkmingw32 = "debuginfod"
-- 
2.31.1

