Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web12.24190.1615138189038441783
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 09:29:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TCCQVWvR;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id h4so4882068pgf.13
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 09:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=MYEqAdD25FiLhwIEprufoQbbYWySUTgjq5udz1moftQ=;
        b=TCCQVWvREehOL5n5ZcKWA45ZRAw0JGEALe/mO3o98oqhJ7uNFL4MyT29B/JNf+oBJP
         4X66qRyhXyaMHyvHyF3QBV+UnG5txeKne5M6930oIvU3L8ykHnoOdxelK2tl83iADusp
         yjQ+gLBVo75JyG/8S1MjqAXI0RLTrQNDRo7vbX1e8mcmQrvYtCm1ptSgDiWzsXlYhuKD
         FNhe5ejCD+vN3j7wM4lZfq6TcPcf+g5PSJ9WgNA+61A5tSZo7VggIWgfM5rbL50F0tJw
         ukMJWWN2jsaT/hDXcogvofHFPBuQcntRR6WaOaM/VQws5slpiXfJmde6ByPo5Yrid6T5
         VrYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=MYEqAdD25FiLhwIEprufoQbbYWySUTgjq5udz1moftQ=;
        b=pV81F2JuEjniYC7Gc4m6agy83MuoIPBL/W9WOuTOoTO66nL/tc9oYXIcsz00Zp4jVz
         YMFPIuHW4p3thC8yw8AW6nCtuSdjuk2C+kLUS7gtblwKJiXLKm3bjUIrGcpkgTQsLBCy
         pMezCtOaCCN8XhDB33ag7GGt3wnuE5Zj7jLrO0wElBbRPAkwAXk7GjNEvsSeyuuCugYw
         V0Xnbvf0d2D7jU1mGFGuAU5fkQ76nWgsEdfqDGY2Vn4Ix48hiGieNtOhaZnAHj/YcgsT
         9txcfSKpzGblS7Z5h0mEWozCIS8pljudz1wzaN3Df+/1RkTL71Z3TVfPtuG8fIN8tbcu
         +9fw==
X-Gm-Message-State: AOAM531K4uaXhnBPYnRlw/8W/qoaOVOQA22uXYwdNs7zaw8p7wDNIYzg
	dX1/UjUTqQf0HgprNBSE14PeKDGTNcg=
X-Google-Smtp-Source: ABdhPJwegaUlIwKxjt/5QEty1s86BXkdKSWzGdTnXzEMOkWg99ffh4RevQVIQPWqaKeEYw4RAU6EoQ==
X-Received: by 2002:a05:6a00:1a4b:b029:1d2:8522:75e7 with SMTP id h11-20020a056a001a4bb02901d2852275e7mr18079471pfv.80.1615138188114;
        Sun, 07 Mar 2021 09:29:48 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id h8sm7685283pfv.154.2021.03.07.09.29.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 09:29:47 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [v2][meta-security][PATCH] libtpm: update to 0.8.2
Date: Sun,  7 Mar 2021 09:29:46 -0800
Message-Id: <20210307172946.7787-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>

--
V2]
let include the updated changes
---
 .../recipes-tpm/libtpm/{libtpm_0.7.2.bb => libtpm_0.8.2.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.7.2.bb => libtpm_0.8.2.bb} (86%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
similarity index 86%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
index 0ade01d..9784aa1 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
@@ -2,8 +2,8 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "7325acb4777f70419fe10a1d9621c2666e977e73"
-SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.7.0"
+SRCREV = "f66a719eda0b492ea3ec7852421a9d98db0a0621"
+SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.8"
 
 PE = "1"
 
-- 
2.17.1

