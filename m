Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web12.527.1601484734476241998
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 09:52:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gwjbSdiL;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id n61so2470256ota.10
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 09:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=IWLM9uqJQpTCYw0WScmqT98Y/8ktiYGJVjf0OmODRqM=;
        b=gwjbSdiL8pX6zbrAn7uBog6noUAqfWpsZJyBQnB9TNFOJTlVONhUGx+MAQ5yCiLnfq
         3Zmdun6CwRHCzdOsnmGbSTeSIOtFPV3y5STe4ZSElrPxs4Kk4teLywEkaUeTptvzMopX
         iz2DL8q65qH8SzywJk0TOk8OXie8Qvtcm5sAq5MUANjWnIEEpuhT4ZUS9keUQDt/dA0C
         bRVdGtHMpXR23iSLL9jHReTt4x8RIgsb+SsPExblXwV7Aff6iPBNVrX4OKsSmop8cs32
         sgQf7elUpgWSX5EKLDRNCDaKaICi2GdjEcoEGwpDTWNr99dxexsYgZ/W0hmE08WdFnlr
         I8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=IWLM9uqJQpTCYw0WScmqT98Y/8ktiYGJVjf0OmODRqM=;
        b=iIxSt9exApY+Z+ldNb2ItufkRNuFmftB6Zin9Y9LoWZyzP5DhnjT7yF6XqMoKpR7z7
         +ySvfACzvYsM5mlZeXOWyeh8nXFLJ9rlSxgMLxm5ekMQCqua53IuC5NKRV3o2NU9EUhx
         OsUwlQPf+ryjgl5s388+uoitKOV5DyUu8xHZe79R2bQEh8ilGxB3vkXTlwjrUrpZbzB6
         Giie92Nr/RJ9X3tTgb0ANbE9P4R/An39mMW1wLspq0y4b4Qzhs7V/a7ZemAfpSURDNOm
         Bc3wCG9icuMZnxRh+Mzc55HfASZIC09Q/4FvlOl11fqEOUijtE8c4pX9SS/zHcDKSY2S
         MnTQ==
X-Gm-Message-State: AOAM532Fs9jaMrUKd8nGXX71UiEznGtOjVLRQxLlZWqrepqgID9dkK9y
	ou1K0ZtFq3hcKtgeIF+R50OCO90waFg=
X-Google-Smtp-Source: ABdhPJyQzW9oYnjC6SxmwvAt+CHYlQVPowHDZ3K5cZceJltcH33l1MX7ersNDkXUVXmEqQ6w6RTOoQ==
X-Received: by 2002:a9d:6213:: with SMTP id g19mr2242386otj.34.1601484733544;
        Wed, 30 Sep 2020 09:52:13 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e2:552d:b045:4166])
        by smtp.gmail.com with ESMTPSA id p16sm494561otl.17.2020.09.30.09.52.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:52:13 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] packagegroup-core-security-ptest: remove
Date: Wed, 30 Sep 2020 09:52:08 -0700
Message-Id: <20200930165208.31659-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930165208.31659-1-akuster808@gmail.com>
References: <20200930165208.31659-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup-core-security-ptest.bb       | 27 -------------------
 1 file changed, 27 deletions(-)
 delete mode 100644 recipes-core/packagegroup/packagegroup-core-security-ptest.bb

diff --git a/recipes-core/packagegroup/packagegroup-core-security-ptest.bb b/recipes-core/packagegroup/packagegroup-core-security-ptest.bb
deleted file mode 100644
index 75b816a..0000000
--- a/recipes-core/packagegroup/packagegroup-core-security-ptest.bb
+++ /dev/null
@@ -1,27 +0,0 @@
-DESCRIPTION = "Security ptest packagegroup"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
-                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-
-inherit features_check
-
-REQUIRED_DISTRO_FEATURES = "ptest"
-
-PACKAGES = "\
-    ${PN} \
-    "
-
-ALLOW_EMPTY_${PN} = "1"
-
-SUMMARY_${PN} = "Security packages with ptests"
-RDEPENDS_${PN} = " \
-    ptest-runner \
-    samhain-standalone-ptest \
-    libseccomp-ptest \
-    python3-scapy-ptest \
-    suricata-ptest \
-    tripwire-ptest \
-    python3-fail2ban-ptest \
-    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
-    "
-- 
2.17.1

