Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46C7FC25B06
	for <webhook@archiver.kernel.org>; Mon, 15 Aug 2022 14:58:21 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web08.3170.1660575498650570529
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Aug 2022 07:58:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a1s9dXws;
 spf=pass (domain: gmail.com, ip: 209.85.216.47,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 15-20020a17090a098f00b001f305b453feso14689411pjo.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 15 Aug 2022 07:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc;
        bh=4qkn4+v2eM1AVkErkUle3Q+tHO850S3+Kpgorq67EEw=;
        b=a1s9dXwse+FWCclkpojtbkAVkPtuNLscCS6yQgrVTtBw72bCeiKAryhPDx1uCkbiPV
         3160AfOD6vZilUYxZYj7hypHTQId2ABdlkcQrwZgr8K+X2JfmrKrzoaAwDo8TU3P2Zer
         uxVT5ffcxO056NIUOGqfueeywaEyWofXZDwoa5iz0m1hP0ALQC1mPrv+K3xoQ40Xi8I4
         v4IJ5mO0mUT+45jlwUzCFIQEBX/Au/U4b/NBXnVhHPcz8D9JlLEtxW3TMV52k//BnmiJ
         nccIiUhBdrlsM9tM/wKmN5C7hd5bM797QIfa0gmpjauL+mjAv8pjIqdWj60P7B2m03P2
         f0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc;
        bh=4qkn4+v2eM1AVkErkUle3Q+tHO850S3+Kpgorq67EEw=;
        b=R12SfHbXB7OV2ghY6VNaW9w45cbvXbpFYikyN1YQobOIYoEmA7IaTtLC/nx7gWr4Gd
         PDTtzpesMHv910P7ZEtWomi5FkSGPNlVWfyBmaKegtebmTeE6eVmV1SB0qcLDBw1OzSB
         0KZH0UZ2uVGgquIGB5CT/CODD3X1DHYMjtXAjxI6ZOX+BElORf+RfnPaso8OG8PNZSrK
         kr9TTQ4UDNWjgXyadjPKxowMVsyWt53i5K+lsWIQVV2obcRnWqkZCxODpJnJQEZsObDH
         Pj3suwc1BVBmNCSOmFifPkWNWdJcuU7R3uUdpb8vso1Y0w2Pe7IXvINXKzqXZ9SOl2vP
         jx6w==
X-Gm-Message-State: ACgBeo2Uz9kDamiXUGVtkLdzLAbXdZc3rGNapQTJmkLJqFwYThhzB43o
	3RXDtsIbF2TzWCrPsuvUNEsyzFb6gGU=
X-Google-Smtp-Source: 
 AA6agR430CIPFWQvqNHQk9f5OodsLVXd0/17D13DKXdop8tgAT4zmZQL1W0WuA4fouwmyjPy8aakLQ==
X-Received: by 2002:a17:90a:d58e:b0:1f4:f9a5:22a8 with SMTP id
 v14-20020a17090ad58e00b001f4f9a522a8mr18618521pju.58.1660575497561;
        Mon, 15 Aug 2022 07:58:17 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 rt6-20020a17090b508600b001fa8af47032sm471491pjb.23.2022.08.15.07.58.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Aug 2022 07:58:16 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] cyptmount: Fix mount.h conflicts seen with
 glibc 2.36+
Date: Mon, 15 Aug 2022 07:56:14 -0700
Message-Id: <20220815145614.677637-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Aug 2022 14:58:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57843

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptmount/cryptmount_5.3.3.bb            |  4 +++-
 .../cryptmount/files/remove_linux_fs.patch    | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/cryptmount/files/remove_linux_fs.patch

diff --git a/recipes-security/cryptmount/cryptmount_5.3.3.bb b/recipes-security/cryptmount/cryptmount_5.3.3.bb
index 6e653c8..fb522cb 100644
--- a/recipes-security/cryptmount/cryptmount_5.3.3.bb
+++ b/recipes-security/cryptmount/cryptmount_5.3.3.bb
@@ -3,7 +3,9 @@ HOMEPAGE = "http://cryptmount.sourceforge.net/"
 LIC_FILES_CHKSUM = "file://README;beginline=3;endline=4;md5=673a990de93a2c5531a0f13f1c40725a"
 LICENSE = "GPL-2.0-only"
 
-SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-5.3/${BPN}-${PV}.tar.gz"
+SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-5.3/${BPN}-${PV}.tar.gz \
+           file://remove_linux_fs.patch \
+           "
 
 SRC_URI[sha256sum] = "682953ff5ba497d48d6b13e22ca726c98659abd781bb8596bb299640dd255d9b"
 
diff --git a/recipes-security/cryptmount/files/remove_linux_fs.patch b/recipes-security/cryptmount/files/remove_linux_fs.patch
new file mode 100644
index 0000000..304b853
--- /dev/null
+++ b/recipes-security/cryptmount/files/remove_linux_fs.patch
@@ -0,0 +1,19 @@
+# From glibc 2.36, <linux/mount.h> (included from <linux/fs.h>) and 
+# <sys/mount.h> (included from glibc) are no longer compatible:
+# https://sourceware.org/glibc/wiki/Release/2.36#Usage_of_.3Clinux.2Fmount.h.3E_and_.3Csys.2Fmount.h.3E
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: cryptmount-5.3.3/cryptmount.c
+===================================================================
+--- cryptmount-5.3.3.orig/cryptmount.c
++++ cryptmount-5.3.3/cryptmount.c
+@@ -41,7 +41,6 @@
+ #ifdef HAVE_SYSLOG
+ #  include <syslog.h>
+ #endif
+-#include <linux/fs.h>       /* Beware ordering conflict with sys/mount.h */
+ 
+ 
+ #include "armour.h"
-- 
2.25.1


