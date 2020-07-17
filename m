Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
 by mx.groups.io with SMTP id smtpd.web11.4840.1594959006440935532
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:10:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZUmsCss;
 spf=pass (domain: gmail.com, ip: 209.85.210.195, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f195.google.com with SMTP id x72so4759763pfc.6
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 21:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cUNdNiHWutNclHcGWrUX5ExtYmOa90dKk3r+izkbx14=;
        b=jZUmsCssR0xK8vAiaxppVJAZot69MM+sP1GNRoL3OWy5n2bwT22k3e+3k32wpJXAvt
         cVyiyFva7odb7uA5PVr2WAJPnqIw6qUXExheT9+y2cczDdB5+NImSn3FVJ2MeWM7s3ls
         EfCSrkKpgflpIl4p10YvcmEh0geQAk5RpdsPp4e8shLOqe/X1aNLDRxsHQBbbJqMQ3fU
         ReHzMPuBrAQ52d7k9xKafEqQGhM3z2tJ1ZrsCJXlZ6AztvVdggIW8YDTdOSwJh6E8oXY
         Z5lh13nZppOxrGKSxK216f4OYl2FGv0KmON+BjqxQTy/esSbymeB0zwiUzASky8h0+J7
         qzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=cUNdNiHWutNclHcGWrUX5ExtYmOa90dKk3r+izkbx14=;
        b=SnQVYUODXOTHkvxE5X1CYAVgzGgpLBh8Dg+Newnu1Oe1roIE0OL0CbgDKF3WDZVSdW
         3a//41k/JNMA37jfRLGjt+D7wxpKPxb35+m/d4Duv9sEjPG2htf0Njx3K1Hbjr9D4CJF
         dmdN/7TNQOMVWhoOoPZI8uEGFY+11DkxXo+JHCz/yHmakt8uesRJBDVC43c7tLKST8WY
         lEOmJyK/IaPCe1yK9umNeH97LmOdBMpqq1lWNhhsnMxFmgxoZUZ1U1GGGUzn6/yqhxkN
         mqkNSBLlMKXxs0zkjYKBjjMimaCQCRQrCibSGoOQo55hYeXnosBXdBtT6LoCbx8HjDWU
         yHYw==
X-Gm-Message-State: AOAM532czfhJeC3hehHSwG1spXRsgmCrzOvhrMAknWKmymqoyfw/p1/W
	9ELoaCKd5406t1xNTCCvtE9N0Cv/EAA=
X-Google-Smtp-Source: ABdhPJw8hEUqaz7sjStUKHGH2GKX4uHPVYDuyJVd+XWW+xH8tqGqh8juxMG3salAM+wQdtSCtzikhw==
X-Received: by 2002:a63:6741:: with SMTP id b62mr6992422pgc.58.1594959005478;
        Thu, 16 Jul 2020 21:10:05 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id k7sm6212446pgh.46.2020.07.16.21.10.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 21:10:05 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] strongswan: add bbappends for tpm changes
Date: Fri, 17 Jul 2020 04:09:58 +0000
Message-Id: <20200717041001.17312-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.8.6
In-Reply-To: <20200717041001.17312-1-akuster808@gmail.com>
References: <20200717041001.17312-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...01-xfrmi-Only-build-if-libcharon-is-built.patch | 38 ++++++++++++++++++++++
 .../recipes-support/strongswan/strongswan-tpm.inc  | 12 +++++++
 .../strongswan/strongswan_5.%.bbappend             |  1 +
 3 files changed, 51 insertions(+)
 create mode 100644 meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch
 create mode 100644 meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
 create mode 100644 meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend

diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch
new file mode 100644
index 0000000..8250282
--- /dev/null
+++ b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch
@@ -0,0 +1,38 @@
+From db772305c6baa01f6c6750be74733e4bfc1d6106 Mon Sep 17 00:00:00 2001
+From: Tobias Brunner <tobias@strongswan.org>
+Date: Tue, 14 Apr 2020 10:44:19 +0200
+Subject: [PATCH] xfrmi: Only build if libcharon is built
+
+The kernel-netlink plugin is only built if libcharon is.
+
+Closes strongswan/strongswan#167.
+
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ src/Makefile.am | 7 +++----
+ 1 file changed, 3 insertions(+), 4 deletions(-)
+
+Index: strongswan-5.8.4/src/Makefile.am
+===================================================================
+--- strongswan-5.8.4.orig/src/Makefile.am
++++ strongswan-5.8.4/src/Makefile.am
+@@ -42,6 +42,9 @@ endif
+ 
+ if USE_LIBCHARON
+   SUBDIRS += libcharon
++if USE_KERNEL_NETLINK
++  SUBDIRS += xfrmi
++endif
+ endif
+ 
+ if USE_FILE_CONFIG
+@@ -143,7 +146,3 @@ endif
+ if USE_TPM
+   SUBDIRS += tpm_extendpcr
+ endif
+-
+-if USE_KERNEL_NETLINK
+-  SUBDIRS += xfrmi
+-endif
diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
new file mode 100644
index 0000000..d8604e1
--- /dev/null
+++ b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
@@ -0,0 +1,12 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+DEPENDS = "libtspi"
+
+SRC_URI_append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
+
+PACKAGECONFIG += "aikgen tpm"
+
+PACKAGECONFIG[tpm] = "--enable-tpm,--disable-tpm,,"
+PACKAGECONFIG[aikgen] = "--enable-aikgen,--disable-aikgen,,"
+
+EXTRA_OECONF += "--with-linux-headers=${STAGING_KERNEL_DIR}"
diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
new file mode 100644
index 0000000..34757bb
--- /dev/null
+++ b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', 'strongswan-tpm.inc', '', d)}
-- 
2.8.6

