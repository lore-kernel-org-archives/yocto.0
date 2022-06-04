Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E2C433EF
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 23:00:23 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.15320.1654383613743910631
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 16:00:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MPhCsnd8;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 v3-20020a17090a0c8300b001e862664a08so1032783pja.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 16:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8Ich8zTW9KSDHJFYymsl4yrz6MNVqFqQIIFNUS2i5b4=;
        b=MPhCsnd8IHeW1z04pxzQkQeE2q5no/udkzLuQDW8fcbiGsjJ/IRnk/XT5t7qR5zi1t
         84heKObfPxk9rJasrPORUSGXvPeT5klFb2S2Uyvo94H2n2Ks20MGGO4TWHfNtaCR6TVq
         TMj8moL95ROYdnIoe0yGeIfKUje0zO+EPcpAxibjHihDlWiCQGldTGCdURnNP7Wl4X1+
         HTxrksNlEm840qOr9SuKJz/P9S/EnFB2KS4/b9KUFkt3N+zzrB1t40YHuJ8qoB6foPX6
         Yachn7Lqty6FABj+H6mxOkIU7TyQAfo6LKd2oY4HAIUpqkmmTjqrpJxnECd0adpmhISw
         Fr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8Ich8zTW9KSDHJFYymsl4yrz6MNVqFqQIIFNUS2i5b4=;
        b=a1Lgf7pjcoDFJLxK2mPthBhiozGjCL/l378V1G6Hzdb+557SX+jWhQ6kjYhcZbmVzU
         VQhdokwx6Mxnsb/goW7SeZRvhg4gGGzpqTXo/g5H40LebiIC0oLeSILv7Vx8w6aPw094
         4ZqXw3oyx0n4FA3FyWYK3aLG5OIUU8kZWnm9ya2fYwK+47TmSJ6YToukR276gRrj0igD
         Fphv16KIqIDorR7pCnlGXVY0L6U7x6w88tcEc9GhPDuXBiGdB5EiIy+vRtA+pZ1LSSzE
         lTjTDb83g9FJkigpmVJITvG/FnDacnMrHJzt/31rolgxK+xIhq3kr3pKYlvttWX1BopF
         GTjg==
X-Gm-Message-State: AOAM531aArr1hCtyiCLK17rlZv4A0iWO4DwCRMNaijBzEzknng094U40
	7mdIbBzVZLaYICWDyDI/TnNEN5ZwzPY=
X-Google-Smtp-Source: 
 ABdhPJz9noTa3vl3kFf4cMm9EVDB9y5gz8XzqTSpJJ+GPPcDuhHHodf6mrPbsVr+mB9e3Lqhy6AG2w==
X-Received: by 2002:a17:90a:e642:b0:1e3:524e:4cb with SMTP id
 ep2-20020a17090ae64200b001e3524e04cbmr18130731pjb.114.1654383612920;
        Sat, 04 Jun 2022 16:00:12 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 b127-20020a62cf85000000b0051b9c02e4a3sm8032725pfg.178.2022.06.04.16.00.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jun 2022 16:00:12 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] arpwatch: update to 3.3
Date: Sat,  4 Jun 2022 15:58:10 -0700
Message-Id: <20220604225810.3950465-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 23:00:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57267

not compatible with musl

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
[v2]
Fix type
---
 .../arpwatch/{arpwatch_3.1.bb => arpwatch_3.3.bb}        | 9 +++++----
 recipes-scanners/arpwatch/files/host_contam_fix.patch    | 8 ++++----
 2 files changed, 9 insertions(+), 8 deletions(-)
 rename recipes-scanners/arpwatch/{arpwatch_3.1.bb => arpwatch_3.3.bb} (90%)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.1.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
similarity index 90%
rename from recipes-scanners/arpwatch/arpwatch_3.1.bb
rename to recipes-scanners/arpwatch/arpwatch_3.3.bb
index 3d8c5ae..4b4d476 100644
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
+COMPATIBLE_HOST:libc-musl = "null"
 
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


