Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27F6C7EE2F
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.41726.1683658639382105676
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=E4khrCPS;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-3f420618d5bso23709595e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658637; x=1686250637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gcEO/kOXMOwuKmt4gB+shWDaLgA1L01CMugHbJ3bX8=;
        b=E4khrCPSqb5w7i1Q4DyzFpeyIz5a4iWPryEicZxRRP3QSs2vjHBBPjvCXIOkncWpgE
         TN+LoeW2a1hB1Lrug+MGvM3+oSwp6Tq06uk0AbpPA/IvBSi3DLs3ZdlYjTkG56qYyOLP
         IXMlMXTOXaIATvysk66YglqetSnSRM7GzeLsuOStyFaGj2eWFypZVI2TuTniphzZqqOQ
         vbgui7XxSzGriNM0HsmY4mGL61B3oYndybvuzusA6US+OjohDmRXRG2nivn+LooFM12M
         Rcj5Xvnw0nmqLNUjEx5NLU9P7jl60KIUJVOuZH2Cepoc2x4fBP4V1vqKJL+7TZlfaHgk
         hYRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658637; x=1686250637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6gcEO/kOXMOwuKmt4gB+shWDaLgA1L01CMugHbJ3bX8=;
        b=W8kkhzVW4RuiA0AMyF4fvLcsmZEER49KQfIfxecFclMQ/h6gnILRDp5fFDrMdY9+Qa
         4vvMcOh8M1PafbxE6jk2f23x/sae5989pACYEd3NRLoq5U6hWH/rQyqv4bv2qB0RxMji
         IS8ER6SJkNFrVLvtUrxsdpwEmgC8vqPyPmSgoSCk7nRV/4Gaggdf5d49SPkwhXfqbw2M
         +EQMszgFmda3r2Y/zBM3jx8C94kLq70yrOvbP7+OCArHGWUBY2FOg+hdeduzSZI36NUq
         xefEn8IB9UnL/zofJSMBuJf+B59S7+Dx0otTYH9TrDTZ+QEFlrSoudQTdqjC4OuuiNR2
         Ua6w==
X-Gm-Message-State: AC+VfDwsU8JBnnwrS+1y6SRYV8ZzNpH5yzo85ek8Bk15Lh1WzHV5yesW
	vKfXYUhXAtVIrCo+8R3WSeOu9fEPVlMhVQJN
X-Google-Smtp-Source: ACHHUZ6av8PO7OOee/Ud2e62sgWXowaI4ZzmTQUwawXEGCBmw5Xy7IxpPgnUclN+AUAdeSLMDCgLyw==
X-Received: by 2002:a5d:5589:0:b0:307:8666:a50e with SMTP id i9-20020a5d5589000000b003078666a50emr8136474wrv.67.1683658637515;
        Tue, 09 May 2023 11:57:17 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:17 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 2/8] Revert "linux: overlayfs: Add kernel patch resolving a file change notification issue"
Date: Tue,  9 May 2023 18:56:25 +0000
Message-Id: <20230509185631.3182570-2-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59947

This reverts commit 319522e00dfd23c78cbe28ab26b87e08a8f46993.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 ...Increment-iversion-upon-file-changes.patch | 42 -------------------
 .../recipes-kernel/linux/linux_ima.inc        |  1 -
 2 files changed, 43 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch

diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
deleted file mode 100644
index d2b5c28..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 2001
-From: Stefan Berger <stefanb@linux.ibm.com>
-Date: Thu, 6 Apr 2023 11:27:29 -0400
-Subject: [PATCH] ovl: Increment iversion upon file changes
-
-This is a temporary patch for kernels that do not implement
-STATX_CHANGE_COOKIE (<= 6.2). The successor patch will be this one:
-
-https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
-
-Increment the lower inode's iversion for IMA to be able to recognize
-changes to the file.
-
-Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
----
- fs/overlayfs/file.c | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
-index 6011f955436b..1dfe5e7bfe1c 100644
---- a/fs/overlayfs/file.c
-+++ b/fs/overlayfs/file.c
-@@ -13,6 +13,7 @@
- #include <linux/security.h>
- #include <linux/mm.h>
- #include <linux/fs.h>
-+#include <linux/iversion.h>
- #include "overlayfs.h"
- 
- struct ovl_aio_req {
-@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *iter)
- 		if (ret != -EIOCBQUEUED)
- 			ovl_aio_cleanup_handler(aio_req);
- 	}
-+	if (ret > 0)
-+		inode_maybe_inc_iversion(inode, false);
- out:
- 	revert_creds(old_cred);
- out_fdput:
--- 
-2.34.1
-
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index 9d48e5c..0b6f530 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -2,7 +2,6 @@ FILESEXTRAPATHS:append := "${THISDIR}/linux:"
 
 SRC_URI += " \
     ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
-    file://0001-ovl-Increment-iversion-upon-file-changes.patch \
 "
 
 do_configure() {
-- 
2.34.1


