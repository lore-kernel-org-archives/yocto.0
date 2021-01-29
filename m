Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web08.7954.1611916283609735429
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 02:31:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NetLm6b3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id z16so4124198wml.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 02:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=usKLJqIGxu39NFqGmersv3ZjvODaRVHKmQ5rqSiKiys=;
        b=NetLm6b3eAvkGg1SeHiYhAqlAVV+jo3lJXMyYaYX5QNk2NHk/hcLZm5b5VC0BgxTjL
         2u0PEa0PEpAUZ/sr6/zEpTccYmfJq6FVIjzHyCnNfwHjUuUCezQhoDNjbaZIl/H3rtru
         Jbe0EPuVd2pg5Dg8PVi4Z87p3ZhMYArGzr2gw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=usKLJqIGxu39NFqGmersv3ZjvODaRVHKmQ5rqSiKiys=;
        b=DOr2NX9EqBKcK3MWe2lGKWwL+JfaNK4TuolM1O7DSp23CVypCfWavmGIuehtRJ94AI
         v2VYx25krcUSJUylbxGY2OMWaQcsn0TvmDyQzvfHbiYLVCPxYSfD3e5U5nR7h/4YYhM4
         jRStRmDsrtKtO5AUuQ/LO8e9DGzlPI55WTjGChTZNd0pqrq/0DTzU+BZqnVHKjo2PmXa
         0d8xGSsXP39OwvzOUvOGdqLb6BVLU6oo0tKle9zMCY8/Vi1VdZXP6/G1j+RalgMQvnFF
         D8Gob0AFt/ORjXTEujwq4gFl7Yjp6ktyggqC6P6I9QW2DiA/s/vNCdwPYTYG4BfJWAus
         h5ww==
X-Gm-Message-State: AOAM532V2QQIiCHlFQE0miPDq0XeseUt2bG+fivkAiiQdxmIxxoQ/K+T
	yZohI4Vm69iPNfx0mfEtufTCl9yN1K23dg==
X-Google-Smtp-Source: ABdhPJxk1YWUAyab3vlFt8XpfSzItX3etauStIhfWRm2rjA8AkSafPMRcaHq5AcQ+MlngC9bb3qzFw==
X-Received: by 2002:a1c:cc14:: with SMTP id h20mr3171871wmb.180.1611916281927;
        Fri, 29 Jan 2021 02:31:21 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id l10sm11496016wro.4.2021.01.29.02.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 02:31:21 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH 1/2] libiconv: Update to work with autoconf 2.70
Date: Fri, 29 Jan 2021 10:31:20 +0000
Message-Id: <20210129103121.1360969-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../libiconv/libiconv/autoconf270.patch         | 17 +++++++++++++++++
 recipes-support/libiconv/libiconv_1.15.bb       |  3 ++-
 2 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 recipes-support/libiconv/libiconv/autoconf270.patch

diff --git a/recipes-support/libiconv/libiconv/autoconf270.patch b/recipes-support/libiconv/libiconv/autoconf270.patch
new file mode 100644
index 0000000..17e6e0b
--- /dev/null
+++ b/recipes-support/libiconv/libiconv/autoconf270.patch
@@ -0,0 +1,17 @@
+Update to add the required gettext version to work with autoconf 2.70
+
+Upstream-Status: Pending
+RP - 2021/1/28
+
+Index: libiconv-1.15/configure.ac
+===================================================================
+--- libiconv-1.15.orig/configure.ac
++++ libiconv-1.15/configure.ac
+@@ -98,6 +98,7 @@ fi
+ gl_VISIBILITY
+ AM_ICONV
+ AM_GNU_GETTEXT([external], [need-ngettext])
++AM_GNU_GETTEXT_VERSION([0.21])
+ 
+ dnl           checks for typedefs
+ 
diff --git a/recipes-support/libiconv/libiconv_1.15.bb b/recipes-support/libiconv/libiconv_1.15.bb
index e3eacd9..df7f527 100644
--- a/recipes-support/libiconv/libiconv_1.15.bb
+++ b/recipes-support/libiconv/libiconv_1.15.bb
@@ -10,7 +10,8 @@ LICENSE = "LGPLv3"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
                     file://libcharset/COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674"
 
-SRC_URI = "${GNU_MIRROR}/${BPN}/${BPN}-${PV}.tar.gz"
+SRC_URI = "${GNU_MIRROR}/${BPN}/${BPN}-${PV}.tar.gz \
+           file://autoconf270.patch"
 
 SRC_URI[md5sum] = "ace8b5f2db42f7b3b3057585e80d9808"
 SRC_URI[sha256sum] = "ccf536620a45458d26ba83887a983b96827001e92a13847b45e4925cc8913178"
-- 
2.27.0

