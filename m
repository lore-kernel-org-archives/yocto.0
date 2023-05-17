Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07C8C7EE22
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:11 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.61670.1684354502206138656
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=RSc7yL3K;
 spf=pass (domain: baylibre.com, ip: 209.85.222.173, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-757742c2e5fso118500885a.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354501; x=1686946501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h8Tt7Vn+IUlKj3cow2zDaub/0zS4XKV4Aj6YqFtHW3M=;
        b=RSc7yL3Krm2UPXRuwVCELih3iduHsAKq4KJDUJwgBoGPT8rZ655qUfzd8mKsPRtuPh
         JOUwXBiAjko3TCfUGMNziErbmfmaZN7hBKO9MCoRWbhVxarSG/LMuOYnPUSp2pvK+Vnk
         V0KxxK28h70B/IgRPNk2yh+PQW/r23c77LnaTwmva4FIi1zi47jhOvX43gbn29JsgFXS
         podY5n++wue3KNFF9eewta3uKy+wxtVVw8iMzJn3ub5yoqQxiYfiGe5SO5EXAZ2WWC1p
         efuhQnDILgBm3cwXawhBSasWfV/FLn0ly08aFT/2DD/JxLa0j5syKToIaW+Izuz9KRIk
         qbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354501; x=1686946501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8Tt7Vn+IUlKj3cow2zDaub/0zS4XKV4Aj6YqFtHW3M=;
        b=k+FrJ+BaHNFH0EPhYtyQu8UrN2xQ/sT/efOjCfvHhPF8iE76yzjWVJTMkRy/8De6Nd
         +Yw9yx8JhHz+bCyfISs3PZxQiXR+cNqZLbDtRcA7EPEwDxGGTr/zksqi9+8RUnayKZSv
         3F2GhKss8WGc9X6N51f0pvrdvB2d5gaiI7BGufSIRGK1PHMqudfH0z/TuAQZsFQGBQiX
         P68+QqRZvOnhYrXaSOA7/P7D0QnGWyY7IYbFPSVhuhAlqDx5BcRdzvquVj6OkQCFQ029
         qR0F8ogUQZMl5zMltDEmLS+fCAcupZidzryXrBxiOPfkD7xUr//tg+wc1Eu/mtQKIOYb
         G5eA==
X-Gm-Message-State: AC+VfDyiefs5MR5HlgfwDybi5MaiVM9FYeV4rgFGzEyaoABmDMey82DY
	0bsby4RCDdhagSe9mws2oPYysGpMqa1m7/gOjeIi4g==
X-Google-Smtp-Source: ACHHUZ5cRGdGAAaYMZUH5PF8pmzYDLZX1unCI5COu86idjlJdLNDLt8ESzh5fjH7g8oPBP8tL8fyXw==
X-Received: by 2002:ac8:7dcb:0:b0:3f5:c257:9f13 with SMTP id c11-20020ac87dcb000000b003f5c2579f13mr1337199qte.51.1684354501164;
        Wed, 17 May 2023 13:15:01 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.15.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:15:00 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 07/11] python3-wrapt: upgrade 1.10.10 -> 1.15.0
Date: Wed, 17 May 2023 16:14:52 -0400
Message-Id: <20230517201456.1608917-8-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60054

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without requiring the layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-wrapt_1.10.10.bb              | 15 ---------------
 .../python/python3-wrapt_1.15.0.bb               | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 15 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb b/meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
deleted file mode 100644
index cd987d3..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY = "A Python module for decorators, wrappers and monkey patching."
-HOMEPAGE = "http://wrapt.readthedocs.org/"
-LICENSE = "BSD"
-SECTION = "devel/python"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=82704725592991ea88b042d150a66303"
-
-SRC_URI[md5sum] = "97365e906afa8b431f266866ec4e2e18"
-SRC_URI[sha256sum] = "42160c91b77f1bc64a955890038e02f2f72986c01d462d53cb6cb039b995cdd9"
-
-inherit pypi setuptools3
-
-RDEPENDS_${PN}_class-target += "\
-    ${PYTHON_PN}-stringold \
-    ${PYTHON_PN}-threading \
-"
diff --git a/meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb b/meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb
new file mode 100644
index 0000000..e35e1f7
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb
@@ -0,0 +1,16 @@
+SUMMARY = "A Python module for decorators, wrappers and monkey patching."
+HOMEPAGE = "http://wrapt.readthedocs.org/"
+LICENSE = "BSD-2-Clause"
+SECTION = "devel/python"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=dc34cbad60bc961452eb7ade801d25f7"
+
+SRC_URI[sha256sum] = "d06730c6aed78cee4126234cf2d071e01b44b915e725a6cb439a879ec9754a3a"
+
+inherit pypi setuptools3 
+
+RDEPENDS:${PN}:class-target += "\
+    ${PYTHON_PN}-stringold \
+    ${PYTHON_PN}-threading \
+"
+
+BBCLASSEXTEND = "native"
-- 
2.40.1


