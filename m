Return-Path: <blenkmax@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BBBBC433EF
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 15:18:41 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web09.7005.1636125519678947052
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 08:18:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dmtU9SsT;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: blenkmax@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id z200so7348964wmc.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 08:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FztuIxoEy6DDO09x62gydox3omnNxsvJmOId0GcLtME=;
        b=dmtU9SsTwnLwHuWgPe+f7efHHKjXqrkESe96wT+t125trtWHfgebn6L6yZx7Vl2w2N
         wi94BoBHchCpTBTUG2XS+3XaMOOKwQC7qDF/vpvzigYYnPMFnQQjhYG/dbyNF8aKT6ul
         sJqmgycNb59xhG+GexvxGT5y5zl5eZgqJn6H/WM4QevaP63Z371sBrYOV1uIlKiRJAlR
         lY+taIwIvfd+gSPG+LlxjB05OkhO4Nslf2E8osLBl0T/VnFjreIypumi1bSI0yr6najL
         cFyP/76OvOmQWO0sqAvjcag+cLA0QUfDHMiuYYBTMnTpuQOsyNuX3wU625so3I4wohl6
         r35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FztuIxoEy6DDO09x62gydox3omnNxsvJmOId0GcLtME=;
        b=XyOTWdlUHC9RAwmQe3aj4uHMch0IhEg+bt5isV4xCWm27gTW6HgLWVXWLH/TYAI8pH
         UtU6n+8eyGfq+XMg7rJOZwFGwMWJm2fJTu8PMpwgo7pAgjHu22z9abMU6oSeK7rAY/Ek
         UtGNw7J4g9PsJkH4FJ7EvLkvE/lNunHHq8xCMRu0IMhG9GxitbeY2787SxKa/4rbiM2L
         bkUrtKf7nbo8qGyLc8D5Wc+2QVgBnpc5uEhhdMJntNLTR4uWJzZelPcwHUPMhogbh5ku
         aIMXGGqYzTA3n9kXJUgpvPfg7NEig0Xhn866ejovhQ7aDicp0VM6zXHqQUweEGzJyXPS
         5Abg==
X-Gm-Message-State: AOAM530Sk/KMu/qbPEsELd9n2+2ykw8Fbc5EZ8WdGjzhXkpGbqkcy7b/
	I31ciKDaDJ/PxzPN7XPKwV13pSXL5Qs=
X-Google-Smtp-Source: 
 ABdhPJyYaFtYvkv65Vq6eqYiclCFIPYa87uyeOpmS48p+oaYZ5/BLcG6ZUjI9oBkSuLflT9zvSX91Q==
X-Received: by 2002:a7b:c049:: with SMTP id u9mr32018714wmc.102.1636125518125;
        Fri, 05 Nov 2021 08:18:38 -0700 (PDT)
Received: from manjaro.bmw-carit.intra ([212.118.206.70])
        by smtp.gmail.com with ESMTPSA id o2sm8570678wrg.1.2021.11.05.08.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 08:18:36 -0700 (PDT)
From: Maximilian Blenk <blenkmax@gmail.com>
X-Google-Original-From: Maximilian Blenk <Maximilian.Blenk@bmw.de>
To: yocto@lists.yoctoproject.org
Cc: Maximilian Blenk <Maximilian.Blenk@bmw.de>
Subject: [meta-selinux][PATCH] libselinux: mount selinuxfs with noexec
Date: Fri,  5 Nov 2021 16:15:51 +0100
Message-Id: <20211105151550.549844-1-Maximilian.Blenk@bmw.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 15:18:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55251

Ensure that selinuxfs is mounted using the noxec and nosuid flags.
The current master branch of meta-selinux already contains this commit.

Change-Id: I38cba8ad0da17286f8b722c24717da5990ac1ee8
Upstream-Status: Backport [https://github.com/SELinuxProject/selinux/commit/7eaea214a0a5d9e3fb517152ac6162449ed3ef40]
---
 ...ux-mount-selinuxfs-noexec-and-nosuid.patch | 36 +++++++++++++++++++
 recipes-security/selinux/libselinux_3.0.bb    |  1 +
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-libselinux-mount-selinuxfs-noexec-and-nosuid.patch

Hi there,

this commit backports a patch of libselinux that ensures that the
selinuxfs is mounted using the noexec and nosuid flag. Thought you guys
might also be interested in backporting this one.

BR Max


diff --git a/recipes-security/selinux/libselinux/0001-libselinux-mount-selinuxfs-noexec-and-nosuid.patch b/recipes-security/selinux/libselinux/0001-libselinux-mount-selinuxfs-noexec-and-nosuid.patch
new file mode 100644
index 0000000..2de9573
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-libselinux-mount-selinuxfs-noexec-and-nosuid.patch
@@ -0,0 +1,36 @@
+From a94f3791ddd3155dde94ed48ffd1566fbe8bf4e2 Mon Sep 17 00:00:00 2001
+From: Topi Miettinen <toiwoton@gmail.com>
+Date: Tue, 28 Apr 2020 14:11:42 +0300
+Subject: [PATCH] libselinux: mount selinuxfs noexec and nosuid
+
+Mount selinuxfs with mount flags noexec and nosuid. It's not likely
+that this has any effect, but it's visually more pleasing.
+
+Option nodev can't be used because of /sys/fs/selinux/null device,
+which is used by Android.
+
+Signed-off-by: Topi Miettinen <toiwoton@gmail.com>
+Acked-by: Stephen Smalley <stephen.smalley.work@gmail.com>
+---
+ libselinux/src/load_policy.c | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+Upstream-Status: Backport [git https://github.com/SELinuxProject/selinux/commit/7eaea214a0a5d9e3fb517152ac6162449ed3ef40]
+
+diff --git a/src/load_policy.c b/src/load_policy.c
+index 9e75292d..ccf73c95 100644
+--- a/src/load_policy.c
++++ b/src/load_policy.c
+@@ -281,7 +281,8 @@ int selinux_init_load_policy(int *enforce)
+ 	const char *mntpoint = NULL;
+ 	/* First make sure /sys is mounted */
+ 	if (mount("sysfs", "/sys", "sysfs", 0, 0) == 0 || errno == EBUSY) {
+-		if (mount(SELINUXFS, SELINUXMNT, SELINUXFS, 0, 0) == 0 || errno == EBUSY) {
++		/* MS_NODEV can't be set because of /sys/fs/selinux/null device, used by Android */
++		if (mount(SELINUXFS, SELINUXMNT, SELINUXFS, MS_NOEXEC | MS_NOSUID, 0) == 0 || errno == EBUSY) {
+ 			mntpoint = SELINUXMNT;
+ 		} else {
+ 			/* check old mountpoint */
+-- 
+2.33.0
+
diff --git a/recipes-security/selinux/libselinux_3.0.bb b/recipes-security/selinux/libselinux_3.0.bb
index 4a60962..40defcd 100644
--- a/recipes-security/selinux/libselinux_3.0.bb
+++ b/recipes-security/selinux/libselinux_3.0.bb
@@ -13,4 +13,5 @@ SRC_URI += "\
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch \
         file://0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch \
+        file://0001-libselinux-mount-selinuxfs-noexec-and-nosuid.patch \
         "
-- 
2.33.0


