Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FF48C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 18:33:58 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.1389.1672770828403520909
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 10:33:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pPOhFzH5;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id o21so3619465pjw.0
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 10:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X80wKTugNUYpUIvAR2BdbhhOewj3Id8Apn5xFUzo2LA=;
        b=pPOhFzH5WKAA/mimirp3H6Cm1kN0uT72DZnS/x9bA/Q6+orRnVzqkJhR9AdvmzMYrR
         8hxj+jo5NvuW+Ca0JZbt4xyTxy4oJQ8dfjb3mWLCeusFC0TV0Wnqxp99ySoY9oEuuL1F
         V0rLIGTDU6w3fdHjrqh2cfgxM5CQDQcoRMOXiEetCUvb2AnpnnGM3hQu0xTYDsUgZ/TQ
         4VnaDwahZaq07MlT4e/sdvDI1i869ti0tG/kWIlqc3Cr9htH/BdcRPgXXKKZlxD8G9wQ
         z6xbKQ1AOqwkuqENLkMzZraSzSfZfL7X4Kf0GEsqKdmgfR08ZtXOdBhkbet50I7SRPIw
         bcYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X80wKTugNUYpUIvAR2BdbhhOewj3Id8Apn5xFUzo2LA=;
        b=IrgHGHntPF+V1X8u1Y8i6+587IDZt8quan7weZ/HEqXmeAsYOR4ETukEREX6kGSnys
         u+imVa0W+4N+jQuUYr4qPR8jSDZ94CH1V8sADRoCuKeBfxX6yZziIqsMHR3BKeSI4OR8
         XEePzwMiQlCE8iinuWrDgj4Hf+1FfMOPykYgMTFZXqwaWOd1NEHqggy+LyrocrAgBuez
         M4f0J+KTdC0Pv7uG8hVwov3uTD0UZl3gX/2Gfr1SZHkf6x3vMOKlYCruwvO0dbbXrJoA
         gdZ/jcrgnJB1oCgOi4jImFT2B7vwPInnsE/I2B46iHXRJ3N3GvhOBihatq1XB61Fw5Ms
         L9nQ==
X-Gm-Message-State: AFqh2krF2UoE+R7pD1t3TXqKi8w6g7laCjsAgN8OoviQVhFrJzyWmqmG
	aOI6UWtKo9K4oCq/7RPo804x6clvJ6Q=
X-Google-Smtp-Source: AMrXdXuab3J/CnAM/Ih6WG0FT9xDSVEJlIErcxVble+L/eSwMI6py5AXG+wJPTm3SLqU9U53PwPalw==
X-Received: by 2002:a17:90a:930f:b0:225:be98:f5b5 with SMTP id p15-20020a17090a930f00b00225be98f5b5mr41780892pjo.23.1672770827425;
        Tue, 03 Jan 2023 10:33:47 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9181:1cf0::bccc])
        by smtp.gmail.com with ESMTPSA id s5-20020a17090a760500b0022630ba1c80sm8899132pjk.42.2023.01.03.10.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 10:33:46 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] layer.conf: Update LAYERSERIES_COMPAT for mickledore
Date: Tue,  3 Jan 2023 10:33:43 -0800
Message-Id: <20230103183343.959016-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 18:33:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58916

oe-core switched to mickedore [1]

[1] https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9197c3b..e8c50f8 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "langdale"
+LAYERSERIES_COMPAT_rockchip = "mickledore"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.39.0


