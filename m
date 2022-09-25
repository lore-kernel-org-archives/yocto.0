Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A78C04A95
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 19:30:52 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web11.20401.1664134248628651328
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 12:30:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=G3B+MxWW;
 spf=pass (domain: gmail.com, ip: 209.85.210.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id
 r22-20020a9d7516000000b00659ef017e34so3249851otk.13
        for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 12:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=kVllY2LZBIcY1Kl4lC6dh4EDTFA3jnXP7oY9soUkp8Y=;
        b=G3B+MxWWSMa77gt6oNehYmuVG2roeJGbZk2ucTiGMtWCID+r1U/jOXeaefzX85xtJf
         ChQWDqfJStts3Htn7XxJcBSKdfKGfaTm7I304HLXIxQUG5D8DdpoC49B+XYinFsFh1ps
         tqW3BIsZWquSQxBk8RK1s3tW+5DdqcltYx53NSnRbLnNmoqggDi12+UWbV3sT1T6Zqsp
         rF0/rPETVygFib6lEvJNgXOFFUlZvV9yTrXB18aKBGmos0uV6lMYcLbzSlh4LvGPD/Vp
         AVWBkqpCEuCmN6rh2i0jLMESjtYQnE/6AL6+ihPEVplwCPXwV/g2e55rUL7JzHAGkGv7
         wzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=kVllY2LZBIcY1Kl4lC6dh4EDTFA3jnXP7oY9soUkp8Y=;
        b=CGKKh1Sc5tHzMplDaAJLKzDVrisafR7XUhqoSmb4sppI+hmRo/zk8nWhNUF6vZkKUK
         bZf+vx0ZF0aWkYTjaJiDkDcnd4fDGhl9aLQoXsFEzKlptQLRf/lPF5bl03p1Z97GTkuj
         EORieBa0gg26+TIM4hlt4PwUvti5oD9bRPskE2MPcoTz4u0lZxpL2OXGjOdnnCrb9qcy
         ueuGtPqvZUVW2De+jjHAUIv2zEc6qfd9ymSwt6i/lcZ5nTPjvQusWFmdkAtuIwrDBvNf
         mzcW45MvJbqJcJzIX025FjPmH4fyqNqw42HE7BrmE9b50OX5Xu8HiK2aSwCnlTsz4nuc
         2uDw==
X-Gm-Message-State: ACrzQf1iL6rZGFtjbYaFkBM4YZAAoh5O2noIgLFcEMffjCZTbO5HusNO
	ow1tgm0YRwfB+PKsZTN97nRrZ1Dkl98=
X-Google-Smtp-Source: 
 AMsMyM6qSwFJiSJDfBtKjsCMmo+b0tNEIacmiDn7KRMVk3PyhfdM6A+fOKmSPSghXkybYenSK3QJUg==
X-Received: by 2002:a05:6830:9c8:b0:654:d91:222 with SMTP id
 y8-20020a05683009c800b006540d910222mr8579796ott.67.1664134246444;
        Sun, 25 Sep 2022 12:30:46 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:bfa4:4cc0:9b6c:6bb5])
        by smtp.gmail.com with ESMTPSA id
 h18-20020a9d6f92000000b0065818e6fbdasm6834359otq.24.2022.09.25.12.30.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 12:30:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] cryptmount: update to 6.0
Date: Sun, 25 Sep 2022 15:30:43 -0400
Message-Id: <20220925193043.2865911-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220925193043.2865911-1-akuster808@gmail.com>
References: <20220925193043.2865911-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 19:30:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58155

LIC_FILES_CHKSUM changed do to yr change
Drop patch remove_linux_fs.patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...{cryptmount_5.3.3.bb => cryptmount_6.0.bb} |  7 +++----
 .../cryptmount/files/remove_linux_fs.patch    | 19 -------------------
 2 files changed, 3 insertions(+), 23 deletions(-)
 rename recipes-security/cryptmount/{cryptmount_5.3.3.bb => cryptmount_6.0.bb} (82%)
 delete mode 100644 recipes-security/cryptmount/files/remove_linux_fs.patch

diff --git a/recipes-security/cryptmount/cryptmount_5.3.3.bb b/recipes-security/cryptmount/cryptmount_6.0.bb
similarity index 82%
rename from recipes-security/cryptmount/cryptmount_5.3.3.bb
rename to recipes-security/cryptmount/cryptmount_6.0.bb
index 6741a5f..d712a61 100644
--- a/recipes-security/cryptmount/cryptmount_5.3.3.bb
+++ b/recipes-security/cryptmount/cryptmount_6.0.bb
@@ -1,13 +1,12 @@
 SUMMARY = "Linux encrypted filesystem management tool"
 HOMEPAGE = "http://cryptmount.sourceforge.net/"
-LIC_FILES_CHKSUM = "file://README;beginline=3;endline=4;md5=673a990de93a2c5531a0f13f1c40725a"
+LIC_FILES_CHKSUM = "file://README;beginline=3;endline=4;md5=dae0772f0ff46fd927e7fdb08af51b71"
 LICENSE = "GPL-2.0-only"
 
-SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-5.3/${BPN}-${PV}.tar.gz \
-           file://remove_linux_fs.patch \
+SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-${PV}/${BPN}-${PV}.tar.gz \
            "
 
-SRC_URI[sha256sum] = "682953ff5ba497d48d6b13e22ca726c98659abd781bb8596bb299640dd255d9b"
+SRC_URI[sha256sum] = "86528a9175e1eb53f60613e3c3ea6ae6d69dbfe5ac2b53b2f58ba0f768371e7e"
 
 inherit autotools-brokensep gettext pkgconfig systemd
 
diff --git a/recipes-security/cryptmount/files/remove_linux_fs.patch b/recipes-security/cryptmount/files/remove_linux_fs.patch
deleted file mode 100644
index 304b853..0000000
--- a/recipes-security/cryptmount/files/remove_linux_fs.patch
+++ /dev/null
@@ -1,19 +0,0 @@
-# From glibc 2.36, <linux/mount.h> (included from <linux/fs.h>) and 
-# <sys/mount.h> (included from glibc) are no longer compatible:
-# https://sourceware.org/glibc/wiki/Release/2.36#Usage_of_.3Clinux.2Fmount.h.3E_and_.3Csys.2Fmount.h.3E
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: cryptmount-5.3.3/cryptmount.c
-===================================================================
---- cryptmount-5.3.3.orig/cryptmount.c
-+++ cryptmount-5.3.3/cryptmount.c
-@@ -41,7 +41,6 @@
- #ifdef HAVE_SYSLOG
- #  include <syslog.h>
- #endif
--#include <linux/fs.h>       /* Beware ordering conflict with sys/mount.h */
- 
- 
- #include "armour.h"
-- 
2.25.1


