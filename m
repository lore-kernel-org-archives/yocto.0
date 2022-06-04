Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C73FCCA47F
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 19:04:42 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web11.13187.1654369481335005598
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eeaWjszp;
 spf=pass (domain: gmail.com, ip: 209.85.215.169,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id x12so9728897pgj.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MaXtGSZArdK04gNUrBn/0//5nuiNQk+CnpmYeTr+S48=;
        b=eeaWjszpQIQBe9MnZo3Hq5dyT1XKQaT0fc2R+eM/0MVZRYkIU1aDagUvkp6Ba+Zglw
         6r37j5hMyytcNWADuXQVXeZF/O1rSmcctBTfiMvvBhDUmfr6OJzCDvqvLC3jl2MZI+Jf
         sMu6i72tKC6bXSHBnEYY3UUUi+FdVxltdqeFFSqSA6fldV4EEIIZpz54MvOCPd+uo2GH
         Me8jh4ooE/1CbC1VYKWaMH3IPS1N094bGin0veSsf3VOmlxf/6p/eHFoZCS/Hx6SQchf
         VUPMrFQfla79OSHp0M4jcDEd7yFbutUGATNdHABeVG0yHSpIFBI7LzLSteMsUHjfpymV
         HIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MaXtGSZArdK04gNUrBn/0//5nuiNQk+CnpmYeTr+S48=;
        b=77p2pEFLAZZJjMGlx/RTCtc6jNhhuAn4gWEiGyw0IJLE1D+s2JIWupwtT0O2X+EnAg
         mR7+WcVnPfAfxL+0iUmXQAQhvuUoGb7iiFN/Zl9guEnI6L2FXRuxthBnu6J8aZ6p2pxh
         cEKRpkiTR9vVvO6+sp4gWDPH8oPcs/dcJE1WN6I8tIA7N3UYSVl1WQFL8vJ9TzT6sra3
         szZeb37F4m87/0ezsL6/b00t3yO1npSGMt/nZ87rP6r/yCOOpyN+DcNsPg98JeWZEM9w
         D+nSWhc7y4FCLx5jUOVhEo3wlM8tMyzZvVSp8BixL0B2Op8JWCxJDm9+VeMIo8jTzbcR
         kJRw==
X-Gm-Message-State: AOAM531OY2qgSXIGUJyMV5gG+G43b5qsFoFrlJ9Edri0KfaZbVIFcSA+
	XDwYII90fPjuWImqyBlF+zbJpjrJjTY=
X-Google-Smtp-Source: 
 ABdhPJzh/g56Tbd/3vNplSZgAyNoaTnDWzC7qTBrKRs/iCRyVoKrXNJHwsoI7Impn0gMmVOsiLlfSw==
X-Received: by 2002:a63:296:0:b0:3fc:aa42:5e8b with SMTP id
 144-20020a630296000000b003fcaa425e8bmr13866376pgc.519.1654369480432;
        Sat, 04 Jun 2022 12:04:40 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 u1-20020a1709026e0100b0015e8d4eb231sm7633298plk.123.2022.06.04.12.04.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jun 2022 12:04:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/5] arpwatch: update to 3.3
Date: Sat,  4 Jun 2022 12:02:29 -0700
Message-Id: <20220604190230.3700475-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220604190230.3700475-1-akuster808@gmail.com>
References: <20220604190230.3700475-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 19:04:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57262

not compatible with musl

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../arpwatch/{arpwatch_3.1.bb => arpwatch_3.3.bb}        | 9 +++++----
 recipes-scanners/arpwatch/files/host_contam_fix.patch    | 8 ++++----
 2 files changed, 9 insertions(+), 8 deletions(-)
 rename recipes-scanners/arpwatch/{arpwatch_3.1.bb => arpwatch_3.3.bb} (90%)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.1.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
similarity index 90%
rename from recipes-scanners/arpwatch/arpwatch_3.1.bb
rename to recipes-scanners/arpwatch/arpwatch_3.3.bb
index 3d8c5ae..8efb339 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.1.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.3.bb
@@ -1,7 +1,7 @@
 SUMARRY = "The ethernet monitor program; for keeping track of ethernet/ip address pairings"
 LICENSE = "BSD-4-Clause"
 HOME_PAGE = "http://ee.lbl.gov/"
-LIC_FILES_CHKSUM = "file://configure;md5=74ca964ed34fda7b46c6fe3e50bded9d"
+LIC_FILES_CHKSUM = "file://configure;md5=0f6cca2f69f384a14e2f5803210ca92e"
 
 DEPENDS += "libpcap"
 
@@ -9,10 +9,10 @@ SRC_URI = "https://ee.lbl.gov/downloads/arpwatch/${BP}.tar.gz \
            file://arpwatch.conf \
            file://arpwatch.default \
            file://arpwatch_init  \
-           file://postfix_workaround.patch \
-           file://host_contam_fix.patch "
+           file://host_contam_fix.patch \
+           "
 
-SRC_URI[sha256sum] = "ee1d15d9a07952c0c017908b9dbfd5ac988fed0058c3cc4fa6c13e0be36f3a9f"
+SRC_URI[sha256sum] = "d47fa8b291fc37a25a2d0f3e1b64f451dc0be82d714a10ffa6ef8b0b9e33e166"
 
 inherit  autotools-brokensep update-rc.d useradd
 
@@ -82,5 +82,6 @@ FILES:${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
 
 COMPATIBLE_HOST:riscv32 = "null"
 COMPATIBLE_HOST:riscv64 = "null"
+OMPATIBLE_HOST:libc-musl = "null"
 
 RDEPENDS:${PN} = "libpcap"
diff --git a/recipes-scanners/arpwatch/files/host_contam_fix.patch b/recipes-scanners/arpwatch/files/host_contam_fix.patch
index 7d7ffac..2e27aa4 100644
--- a/recipes-scanners/arpwatch/files/host_contam_fix.patch
+++ b/recipes-scanners/arpwatch/files/host_contam_fix.patch
@@ -4,11 +4,11 @@ Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-Index: arpwatch-3.0/configure
+Index: arpwatch-3.3/configure
 ===================================================================
---- arpwatch-3.0.orig/configure
-+++ arpwatch-3.0/configure
-@@ -4349,8 +4349,8 @@ fi
+--- arpwatch-3.3.orig/configure
++++ arpwatch-3.3/configure
+@@ -4353,8 +4353,8 @@ fi
  	    CC=cc
  	    export CC
      fi
-- 
2.25.1


