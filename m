Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
 by mx.groups.io with SMTP id smtpd.web10.4041.1578266315178151662
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLCZzQp5;
 spf=pass (domain: gmail.com, ip: 209.85.216.67, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f67.google.com with SMTP id s7so6996150pjc.0
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1APotuhjCHy/BgdiZ4vdOmspBXgqMdOZzuhRVjI5Oyk=;
        b=aLCZzQp5d7PgfdFKzH1Eb2n+MQEZf0nYX7rWNZCX5LDtpxMXNmKJXXO3/dftK5tNF+
         D8y2BgWGUMuaGu67LeCOY+ufb8LiTZfNqmjXv/2f5xBraRDmVdpPAkQITSYsEReWlPh/
         wZm84E9rbh+UOHxnCMb/LLD1CbZHIfIBv3MVhfI8FHUTjeb54HYUKD95Pjlrga864QK9
         q0Bd/hP1arAGgA3OuOwBaupXE0hvJM2LSkaixn3ZE7R1MrBMPvbQ87CPOg/UXhB9hHua
         dX1hpoe+Lz9o2vF8cOlDmjRuBVQhBDFJkbJLlulvHbgUq1LYt3XkP/shn5XciffdH1BV
         E+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1APotuhjCHy/BgdiZ4vdOmspBXgqMdOZzuhRVjI5Oyk=;
        b=IpOc/gjB2utNxG1/GSOMUOPNA2K/4aaExXpZPQN/GBaSCyYlg+IrL76Z+XtrOGQJNq
         8UqXMveI+x/XjLVEhtR1I6rt5QEVj+AjHuW/2fHi2rDd2Tod1sRZelUZ7uojcxfrLsFy
         jui4BY09IxzvgF5G313fdM4PJ+o5ZeiplAUIGCsbx6GwoimvfrxQTKpNl5+vLwHYVigp
         5dG82+0BU7W1AuD1BQbFHvNmLc9DlJaFQ/iodsw6YYWgpI1co4u6PtwxHLU8qjUpKbG0
         CPBGb7kcHzI/HNm+1hIPhrSGVbmcI65oHsrbAe0xhzXiGUxKb3I5PbteM+l6mQwVxdfu
         gomA==
X-Gm-Message-State: APjAAAWKSUCfSlwF3AePTKyECLcSI3z+y4Yr+dbatHMaYFWIG+ymlG6V
	bC4+hOPipW/OQV2N9uKN0Oq4xwQx
X-Google-Smtp-Source: APXvYqwkcJoez7ZOLhsLIoDHDxF4DMe+PSGwlvXH/MaLcShrGUcEMDqIMY1u+93uA6aYD3ITfGR/Zg==
X-Received: by 2002:a17:902:7613:: with SMTP id k19mr29113109pll.7.1578266314327;
        Sun, 05 Jan 2020 15:18:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:33 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-security][zeus][PATCH 3/9] checksecurity: use more portable find args
Date: Sun,  5 Jan 2020 15:18:24 -0800
Message-Id: <20200105231830.5281-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

From: Christopher Larson <chris_larson@mentor.com>

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../checksecurity/checksecurity_2.0.15.bb     |  3 ++-
 ...k-setuid-use-more-portable-find-args.patch | 23 +++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch

diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/recipes-security/checksecurity/checksecurity_2.0.15.bb
index a961691..030bf25 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
@@ -5,7 +5,8 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
-           file://setuid-log-folder.patch"
+           file://setuid-log-folder.patch \
+           file://check-setuid-use-more-portable-find-args.patch"
 
 SRC_URI[md5sum] = "a30161c3e24d3be710b2fd13fcd1f32f"
 SRC_URI[sha256sum] = "67abe3d6391c96146e96f376d3fd6eb7a9418b0f7fe205b465219889791dba32"
diff --git a/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch b/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch
new file mode 100644
index 0000000..f1fe8ed
--- /dev/null
+++ b/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch
@@ -0,0 +1,23 @@
+From f3073b8e06a607677d47ad9a19533b2e33408a4f Mon Sep 17 00:00:00 2001
+From: Christopher Larson <chris_larson@mentor.com>
+Date: Wed, 5 Sep 2018 23:21:43 +0500
+Subject: [PATCH] check-setuid: use more portable find args
+
+Signed-off-by: Christopher Larson <chris_larson@mentor.com>
+---
+ plugins/check-setuid | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+Index: checksecurity-2.0.15/plugins/check-setuid
+===================================================================
+--- checksecurity-2.0.15.orig/plugins/check-setuid	2018-09-06 00:49:23.930934294 +0500
++++ checksecurity-2.0.15/plugins/check-setuid	2018-09-06 00:49:49.694934757 +0500
+@@ -99,7 +99,7 @@
+ ionice -t -c3 \
+ find `mount | grep -vE "$CHECKSECURITY_FILTER" | cut -d ' ' -f 3` \
+ 	-xdev $PATHCHK \
+-	\( -type f -perm +06000 -o \( \( -type b -o -type c \) \
++	\( -type f \( -perm -4000 -o -perm -2000 \) -o \( \( -type b -o -type c \) \
+ 	$DEVCHK \) \) \
+         -ignore_readdir_race  \
+ 	-printf "%8i %5m %3n %-10u %-10g %9s %t %h/%f\n" |
-- 
2.17.1

