Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20BA4C433F5
	for <webhook@archiver.kernel.org>; Sun, 30 Jan 2022 20:13:09 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.23430.1643573587818426618
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jan 2022 12:13:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CTTDOios;
 spf=pass (domain: gmail.com, ip: 209.85.216.43,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id
 z14-20020a17090ab10e00b001b6175d4040so10450684pjq.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jan 2022 12:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=makshguHHkRo1xg54BO0mWLPVQCKl5fwf34BTONYFd8=;
        b=CTTDOiosdIB8Zd/yYQO7R3x3zqVeEPZm0Uk3Q1o8xKP5TqJVNulA4nrBbzKDUCkh6J
         5+2lv4diYjgBFPuPqMV+sPNSf984gr2iXU/yqg69xe2FKpuICUnR+xeEKHNXjVgu+ep1
         FqxjOv8ktdczvYcpa3vsTCjD4l3Ia1OQFFPNxtk1vgm6XEN2HQluJqd8eFl/gW0ShZaI
         iB8fu+lf7O3HQFsz5a0XOXY9dqK/CCzmlCnXjr/tuk6YvbHXVd2D6BEurvRPRtIi+h79
         G/IvVCmvg6hS2jtuhW9+wWCGG8unChgPN+fAB6jjqI01BfsmgqExsyRKZdbj8xWNhGYG
         XF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=makshguHHkRo1xg54BO0mWLPVQCKl5fwf34BTONYFd8=;
        b=PEegB9jwkwwjes7rT0bzcGkscXzjLYVX3EIwxhUdrlmCWyTvH2HYmG3Asa8SFPvD6G
         SStBebeSz5++C0jRecZBguuvR8H8RfV5VDscHtXkD85BJmGexX6xFHyD9i0fOI4Hqf9d
         nN62uhBzqmoLYCjgaQYqeq2vGCMIUtk2i7Hp2vkbDP4/88xYcbvhJPInmrTpg0VEWQmm
         E13+erScbAbtxfQrY6qU4ehvRvsGLIwWtoW5EjuQQnkwC+lmR7M07ZFm9YuNCCGND8+3
         FVH8bP5Bemzrn1bTqgspnSpQGOyO+x3HrzXY2/3J2v5gnxIqAMSArTdCcnnRgnyYlmpC
         OjCw==
X-Gm-Message-State: AOAM533yFmZDOVyATdjSWYzEavKDZJrPMY8Kn0aOBUaBXwnnQgX0PT2w
	IQ6ie588c2lYalWbIlYe4wldo2H+m3hYiw==
X-Google-Smtp-Source: 
 ABdhPJzTD0bKsXlAiu7Y3B+Kdn/h7A0BdsdE2oNvOSk7DmwHgmIs0fmIXsm//UvT8qRXhEkr4E810Q==
X-Received: by 2002:a17:90b:33c6:: with SMTP id
 lk6mr20964993pjb.213.1643573586778;
        Sun, 30 Jan 2022 12:13:06 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:f602:ae9d:2a2e:1991])
        by smtp.gmail.com with ESMTPSA id
 t17sm13355289pgm.69.2022.01.30.12.13.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jan 2022 12:13:06 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] lkrg-module: update to 0.9.2
Date: Sun, 30 Jan 2022 12:13:04 -0800
Message-Id: <20220130201304.206901-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jan 2022 20:13:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56022

see https://github.com/lkrg-org/lkrg
Support new stable and mainline kernels 5.14 to at least 5.16-rc*
Support new longterm kernels 5.4.118+, 4.19.191+, 4.14.233+

update SRC_URI as location changed.
refresh patch.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/lkrg/files/makefile_cleanup.patch          | 8 ++++----
 .../lkrg/{lkrg-module_0.9.1.bb => lkrg-module_0.9.2.bb}   | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)
 rename recipes-kernel/lkrg/{lkrg-module_0.9.1.bb => lkrg-module_0.9.2.bb} (84%)

diff --git a/recipes-kernel/lkrg/files/makefile_cleanup.patch b/recipes-kernel/lkrg/files/makefile_cleanup.patch
index 106dc3f..a4db2d9 100644
--- a/recipes-kernel/lkrg/files/makefile_cleanup.patch
+++ b/recipes-kernel/lkrg/files/makefile_cleanup.patch
@@ -4,10 +4,10 @@ This needs more work. Its my starting point.
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-Index: lkrg-0.9.0/Makefile
+Index: lkrg-0.9.2/Makefile
 ===================================================================
---- lkrg-0.9.0.orig/Makefile
-+++ lkrg-0.9.0/Makefile
+--- lkrg-0.9.2.orig/Makefile
++++ lkrg-0.9.2/Makefile
 @@ -4,28 +4,10 @@
  # Author:
  #  - Adam 'pi3' Zabrocki (http://pi3.com.pl)
@@ -39,7 +39,7 @@ Index: lkrg-0.9.0/Makefile
                    src/modules/hashing/p_lkrg_fast_hash.o \
                    src/modules/comm_channel/p_comm_channel.o \
                    src/modules/integrity_timer/p_integrity_timer.o \
-@@ -91,23 +73,14 @@ $(TARGET)-objs += src/modules/ksyms/p_re
+@@ -92,23 +74,14 @@ $(TARGET)-objs += src/modules/ksyms/p_re
                    src/p_lkrg_main.o
  
  
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.1.bb b/recipes-kernel/lkrg/lkrg-module_0.9.2.bb
similarity index 84%
rename from recipes-kernel/lkrg/lkrg-module_0.9.1.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.2.bb
index 782c6e3..e055fbe 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.1.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.2.bb
@@ -9,10 +9,10 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=5105ead24b08a32954f34cbaa7112432"
 
 DEPENDS = "virtual/kernel elfutils"
 
-SRC_URI = "https://www.openwall.com/lkrg/lkrg-${PV}.tar.gz \
+SRC_URI = "https://download.openwall.net/pub/projects/lkrg/lkrg-${PV}.tar.gz \
            file://makefile_cleanup.patch "
 
-SRC_URI[sha256sum] = "cabbee1addbf3ae23a584203831e4bd1b730d22bfd1b3e44883214f220b3babd"
+SRC_URI[sha256sum] = "c2b501c47089cce3ec3114cef6520b73aa3a098836183186b9bb5e097c99ac27"
 
 S = "${WORKDIR}/lkrg-${PV}"
 
-- 
2.25.1


