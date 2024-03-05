Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55D3C54798
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 09:06:03 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.18036.1709629557736023718
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 01:05:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HXO8JlRK;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: haokexin@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1dd1d9daf02so10989195ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 01:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709629556; x=1710234356; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ft34ETLr/MpQswpAI1Lrv7EEeH5jXPYGwKIz2gkrtKQ=;
        b=HXO8JlRKaAdNxuSMM51qcXn6F166DlT/OBgUIQHsvpwRbqNhfL96QKWdb/22kNPVEX
         DCktKx4dXaIN51a4KHuIbE0QMNa5Z3tZcSoDIIcy8RVpPVV9JCyj0MD5WHDTzuE60FA6
         /G2EVFuQ1oWRQvHxnk46VkwtyHd0V5BrZVAEe3s0flQ5UJkYKbqjMSupUara4JQ1BTg3
         kzYi3b4SsUSHwxmRRzyYEnX0M0yYURy35vsW+PHC4e5xhskASiIfhdNuPn6XUvWoX8e/
         P78eDBjGzj1ZLmfmzwhXfVa5V7DEgXRbtabVawok/xLzkhK8qsub+T78kWqImIcPK4yE
         2TSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709629556; x=1710234356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ft34ETLr/MpQswpAI1Lrv7EEeH5jXPYGwKIz2gkrtKQ=;
        b=Tvn2MyY9cWdYr+fRuTel+CjVcPIOp+He7yo8t+oUKvBIJ+pUoy1BRQ0+sYz22G/ktg
         JsVHgqpjVMW3n8HRa13GrisWOvfcWTkaP+15Zyl503zIgG4vWzl5TP3s6mZqk4Mcs/1M
         oLULMNkgvXwM9nBXuRW+P9f98NOI1+WuX74O8oJsnDXUrboSJzXgJxMVdilKEey312dP
         1zEQXYAmY5IE9KULyRY/4oqrLOUAucKGHXGGj3Vqk4kPGLWO5vihAokjUYv3U8FHl8KI
         5loavL1KKF8M+Ck228KMT6n7ykKmIKnsfKAhamrAYjHSNUIPKGEKUrVce+9/Wl8jfv5G
         +hlQ==
X-Gm-Message-State: AOJu0YxyD++EdorsSgCHGQPqphLVjZutsv60qxYPg2a6q60Ud6zPewSg
	dWD9vTUUuErvzQJCX+CerCx1+KHmKBQLtUEeMD/2h8B5nDdhsmq/RANfYY0AlSk=
X-Google-Smtp-Source: AGHT+IGEv6gqRFqYJ22NNAy0fcs7GWWjiRfG+U7VHQRb+87fcCyKIAv0WZAkwydE53b+H5x0phgNaQ==
X-Received: by 2002:a17:90a:c3:b0:29a:ae40:9e10 with SMTP id v3-20020a17090a00c300b0029aae409e10mr8450596pjd.17.1709629555856;
        Tue, 05 Mar 2024 01:05:55 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id ta6-20020a17090b4ec600b0029a849e7268sm11388123pjb.28.2024.03.05.01.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 01:05:55 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][PATCH] dm-verity-image-initramfs: Set IMAGE_NAME_SUFFIX to empty
Date: Tue,  5 Mar 2024 17:05:31 +0800
Message-ID: <20240305090531.378926-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 09:06:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62683

From: Kevin Hao <kexin.hao@windriver.com>

According to the Yocto reference manual [1], the IMAGE_NAME_SUFFIX should
be set to empty for the initramfs image. Otherwise, we may incur a build
error like following due to the initrd check in live-vm-common.bbclass:
  ERROR: core-image-minimal-1.0-r0 do_bootimg: build-test/tmp/deploy/images/genericx86-64/dm-verity-image-initramfs-genericx86-64.cpio.gz is invalid. initrd image creation failed.
  ERROR: core-image-minimal-1.0-r0 do_bootimg: ExecutionError('build-test/tmp/work/genericx86_64-poky-linux/core-image-minimal/1.0/temp/run.build_hddimg.1961965', 1, None, None)
  ERROR: Logfile of failure stored in: build-test/tmp/work/genericx86_64-poky-linux/core-image-minimal/1.0/temp/log.do_bootimg.1961965
  ERROR: Task (poky/meta/recipes-core/images/core-image-minimal.bb:do_bootimg) failed with exit code '1'

[1] https://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_NAME_SUFFIX

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 78f7b49b27d6..4256e19ea202 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -18,6 +18,8 @@ PACKAGE_INSTALL = " \
 IMAGE_FEATURES = ""
 IMAGE_LINGUAS = ""
 
+IMAGE_NAME_SUFFIX ?= ""
+
 # Can we somehow inspect reverse dependencies to avoid these variables?
 python __anonymous() {
     verity_image = d.getVar('DM_VERITY_IMAGE')
-- 
2.43.2


