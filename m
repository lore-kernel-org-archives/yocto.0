Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C87EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 23:13:12 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.1732.1687389184706061290
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 16:13:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=shc/GXlq;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-bc379e4c1cbso6561442276.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 16:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687389183; x=1689981183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=zHs0eHbmyu4gpnot1S1Qv++/G0ZRnrY7OOBq/LlXa5w=;
        b=shc/GXlqkN4fyHsVQt2A8wGtMDuBbXGcfGXViGNz530tz8vSbPM+W9d7j0T6yiBX0W
         EYnTi9RzIhARPrAbqDjNkDLwAXs/W26MF/6GUynwpCykXjF+zPb/fxZJjWhk1b3r9y60
         +O74Km210cEvQ4RHSjx01D9LmoLbtR2X81h4N/JoGhaBQaj4/L71MmOVw3ayxjiGswEu
         PuoC8YiyJlLTuynwXLWf9PHXKV1I+YsvI7qhVUCcak2mry87EJS4j4kKhq+ywXieG5YO
         qOhMd4G3kett0pgzX8r9k2sunLRna0amRUKtvQFWANnNGm85r0QQeke9YncHqpQm0Btf
         7ViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687389183; x=1689981183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zHs0eHbmyu4gpnot1S1Qv++/G0ZRnrY7OOBq/LlXa5w=;
        b=P1uJDiUXyaY+dUXxSDrpVSR7CbddGOMO05vbTE0GOREy2L049ewoAg7IUFrAzcBbp6
         GGXRDbqn+aUeYm7nv/4K7ClR0XiwF0ZMbx2eGkaVeg0ATR3exsSr+3zyCREeZlmcZi3s
         SqE2BoIfxFl7dC+WucOu6TJpz/sqddZ3RaMt+n5NuYhj6Bva0hO5WsGf+Pt/ZFKynhSu
         0GvTSzGC7XrQLf33xWFI4WKmaoDzUjglGoEAYGpX1bru4hnJl40llBDl41tEe/OlfmEV
         Ij0i5uTYy+0jXa/fvoPVoB9OLB05aiBjB/xvTrY9M8JFHUm4488U/YZDKXBDy7jM5pdU
         o89A==
X-Gm-Message-State: AC+VfDzKfff7BSXgrD6EQfCSzisTtoUkvJkfB5Xw2DP2ebd3lonYXmcl
	FsCeOZNXONdUf+RnOdQRXNbGufzykxk=
X-Google-Smtp-Source: ACHHUZ4pKf6EAS9NoZi4PAp6Kd2wmMfKTem/j65OESZcwcuxbAgoQ3UbH7O7GNc2NFNn1FEgR+VDZw==
X-Received: by 2002:a25:2144:0:b0:bc7:1ca2:5488 with SMTP id h65-20020a252144000000b00bc71ca25488mr13357645ybh.19.1687389183525;
        Wed, 21 Jun 2023 16:13:03 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id l1-20020a252501000000b00bccc2241e14sm1228067ybl.28.2023.06.21.16.13.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 16:13:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] clamav: drop unused patch
Date: Wed, 21 Jun 2023 19:13:01 -0400
Message-Id: <20230621231302.476147-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 23:13:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60388

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/files/test.patch | 26 ------------------------
 1 file changed, 26 deletions(-)
 delete mode 100644 recipes-scanners/clamav/files/test.patch

diff --git a/recipes-scanners/clamav/files/test.patch b/recipes-scanners/clamav/files/test.patch
deleted file mode 100644
index 8d94863..0000000
--- a/recipes-scanners/clamav/files/test.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-Upstream-Status: Pending
-
-Index: clamav-0.103.0/Makefile.am
-===================================================================
---- clamav-0.103.0.orig/Makefile.am
-+++ clamav-0.103.0/Makefile.am
-@@ -28,7 +28,6 @@ else
- SUBDIRS = libltdl libclamav shared libfreshclam clamscan clamd clamdscan freshclam sigtool clamconf database docs etc clamav-milter test clamdtop clambc unit_tests
- EXTRA_DIST = examples shared libclamav.pc.in COPYING.bzip2 COPYING.lzma COPYING.unrar COPYING.LGPL COPYING.llvm COPYING.file COPYING.zlib COPYING.getopt COPYING.regex COPYING.YARA COPYING.pcre platform.h.in libclamunrar libclamunrar_iface libclammspack clamdscan/clamdscan.map win32 ChangeLog.md INSTALL.cmake.md INSTALL.autotools.md NEWS.md README.md cmake CMakeLists.txt CMakeOptions.cmake $(top_srcdir)/**/CMakeLists.txt libclammspack/config.h.in.cmake clamav-config.h.cmake.in target.h.cmake.in autogen.sh
- 
--bin_SCRIPTS=clamav-config
- 
- if BUILD_CLAMONACC
- SUBDIRS += clamonacc
-Index: clamav-0.103.0/Makefile.in
-===================================================================
---- clamav-0.103.0.orig/Makefile.in
-+++ clamav-0.103.0/Makefile.in
-@@ -641,7 +641,6 @@ ACLOCAL_AMFLAGS = -I m4
- @BUILD_LIBCLAMAV_ONLY_TRUE@SUBDIRS = libclamav $(am__append_1) \
- @BUILD_LIBCLAMAV_ONLY_TRUE@	$(am__append_2) $(am__append_3)
- @BUILD_LIBCLAMAV_ONLY_FALSE@bin_SCRIPTS = clamav-config
--@BUILD_LIBCLAMAV_ONLY_TRUE@bin_SCRIPTS = clamav-config
- @BUILD_LIBCLAMAV_ONLY_FALSE@EXTRA_DIST = examples shared libclamav.pc.in COPYING.bzip2 COPYING.lzma COPYING.unrar COPYING.LGPL COPYING.llvm COPYING.file COPYING.zlib COPYING.getopt COPYING.regex COPYING.YARA COPYING.pcre platform.h.in libclamunrar libclamunrar_iface libclammspack clamdscan/clamdscan.map win32 ChangeLog.md INSTALL.cmake.md INSTALL.autotools.md NEWS.md README.md cmake CMakeLists.txt CMakeOptions.cmake $(top_srcdir)/**/CMakeLists.txt libclammspack/config.h.in.cmake clamav-config.h.cmake.in target.h.cmake.in autogen.sh
- pkgconfigdir = $(libdir)/pkgconfig
- pkgconfig_DATA = libclamav.pc
-- 
2.34.1


