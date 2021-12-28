Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE21C433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 20:37:44 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web12.42704.1640723863885481352
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 12:37:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nrVx/5+l;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 n30-20020a17090a5aa100b001b2b6509685so721035pji.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 12:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=A1DlsOWA/zk8Kfr+VjbA2a4LjGSqf7MXvgfv2hNDecE=;
        b=nrVx/5+lbCDi3vfMn/lW4avTpDkpevwToJ1d2lr1MKL+7InQ2wFd+RxXU2vRhd9ct3
         n5LSp3l1zgWFM8Im2+UInVsGPcqre5WuXIrNjQrAKwAdpWbk+0osmTbgINjIvHhD7lW0
         vguAVNLRjMOEKPW3eeI7n3PAtsrUyDG7VjdWE57PQtiIhBXhgZrQJeXy5fxEMrUOUoOA
         +mwvyOoZtZD3Dpa3cpT16Zu2/6KCcSmMYRakQzd/PdWttB8t2KX0j50zpjOeOlSl8yUu
         mIGeK+p0hfP2gGhEV9rszpjPRslyZfDvyLmraKXz40jj7mKdwm/SqegyI+V00decw4fG
         i49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A1DlsOWA/zk8Kfr+VjbA2a4LjGSqf7MXvgfv2hNDecE=;
        b=qWiKLFCrReeEQi6ZWqDl7scIGRRmT8vyChQyPxMXjx5hUFWXADyxbDhxiSoHh4zxpY
         1neeiXrCjco/VI4AXavSJpA2m/tY6duxcljfF0FTMRL3+H6kD/ToMp3ECPMEo6he4fv3
         UberlqZ0+1VPa7Eaw0f22y1ZbjkS+w68SHt7d9NGNTJpo3x5qCw9nybxyTqslrTZgBs7
         QxqwpgUd1o9yBJsnHzuMzeg/2VhH2MCL1ZX/uql0PAeZxJNDPbJBaKVSr+wzm549EUTe
         qD0yCDLkUKY4oMo0Fh2G3KS4SnQyFcF8IHwmrR1z9pO08xZSavIu4jczmSOhcmYAwRLm
         3+Ug==
X-Gm-Message-State: AOAM5325sAJ4cGKCE7oRBTY/ahGvo48ljXClM39qVHd1Mp3/ZaklpXd8
	6C+iQeT/o3HtXZP1CdIxtclpLFW4WSs=
X-Google-Smtp-Source: 
 ABdhPJz2LJFW5C2+xQXZOGJvYfGRMrNIQ5vSX/iUpeBmCCHYfU9siNSVylzE+7Bp8l1X1q2+dFCJVQ==
X-Received: by 2002:a17:902:7044:b0:148:ef6f:fc52 with SMTP id
 h4-20020a170902704400b00148ef6ffc52mr23720239plt.67.1640723863059;
        Tue, 28 Dec 2021 12:37:43 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:ae31:6fc8:90c:39d4])
        by smtp.gmail.com with ESMTPSA id
 e21sm6778806pjr.4.2021.12.28.12.37.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 12:37:42 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] meta-tpm: drop strongswan bbappends
Date: Tue, 28 Dec 2021 12:37:40 -0800
Message-Id: <20211228203740.491299-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211228203740.491299-1-akuster808@gmail.com>
References: <20211228203740.491299-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 20:37:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55679

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...rmi-Only-build-if-libcharon-is-built.patch | 38 -------------------
 .../strongswan/strongswan-tpm.inc             | 12 ------
 .../strongswan/strongswan_5.%.bbappend        |  1 -
 3 files changed, 51 deletions(-)
 delete mode 100644 meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch
 delete mode 100644 meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
 delete mode 100644 meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend

diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch
deleted file mode 100644
index 8250282..0000000
--- a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/files/0001-xfrmi-Only-build-if-libcharon-is-built.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From db772305c6baa01f6c6750be74733e4bfc1d6106 Mon Sep 17 00:00:00 2001
-From: Tobias Brunner <tobias@strongswan.org>
-Date: Tue, 14 Apr 2020 10:44:19 +0200
-Subject: [PATCH] xfrmi: Only build if libcharon is built
-
-The kernel-netlink plugin is only built if libcharon is.
-
-Closes strongswan/strongswan#167.
-
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- src/Makefile.am | 7 +++----
- 1 file changed, 3 insertions(+), 4 deletions(-)
-
-Index: strongswan-5.8.4/src/Makefile.am
-===================================================================
---- strongswan-5.8.4.orig/src/Makefile.am
-+++ strongswan-5.8.4/src/Makefile.am
-@@ -42,6 +42,9 @@ endif
- 
- if USE_LIBCHARON
-   SUBDIRS += libcharon
-+if USE_KERNEL_NETLINK
-+  SUBDIRS += xfrmi
-+endif
- endif
- 
- if USE_FILE_CONFIG
-@@ -143,7 +146,3 @@ endif
- if USE_TPM
-   SUBDIRS += tpm_extendpcr
- endif
--
--if USE_KERNEL_NETLINK
--  SUBDIRS += xfrmi
--endif
diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
deleted file mode 100644
index 497474f..0000000
--- a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
+++ /dev/null
@@ -1,12 +0,0 @@
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-
-DEPENDS = "libtspi"
-
-SRC_URI:append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
-
-PACKAGECONFIG += "aikgen tpm"
-
-PACKAGECONFIG[tpm] = "--enable-tpm,--disable-tpm,,"
-PACKAGECONFIG[aikgen] = "--enable-aikgen,--disable-aikgen,,"
-
-EXTRA_OECONF += "--with-linux-headers=${STAGING_KERNEL_DIR}"
diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
deleted file mode 100644
index 34757bb..0000000
--- a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', 'strongswan-tpm.inc', '', d)}
-- 
2.25.1


