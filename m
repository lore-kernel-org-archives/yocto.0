Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7494C38A2B
	for <webhook@archiver.kernel.org>; Tue,  5 Apr 2022 17:24:47 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.7412.1649170890449547327
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Apr 2022 08:01:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=5W5H3kYU;
 spf=temperror, err=temporary DNS error (domain: sakoman.com,
 ip: 209.85.214.170, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f170.google.com with SMTP id f10so11124824plr.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Apr 2022 08:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=J5rfDxg/hfzGx7mohegJpPaM01UqAZ7buBRkhNUEfHo=;
        b=5W5H3kYUkhlkcJ60epQmZ1JqAOW6R99KsdseZVpJAuWubQeKUQFtYaXeYM8rQCysDi
         K/LlGJFQXPjklalxkQ8KCWSvUwHHum59oKgHRhPeuVD1ePZ1NmdvoIjqZwJHxUEFFq13
         klIPnKwrZc4HIWPkMA4CEaSupWgDjp8HT3X4XawcupB8kE8zXOajt+Yojw2NsZlp1PSj
         7tp3jiaWIifrbLLrjhJ7TA/SxQ/8LONYkrMmr2GWs52BKbCtGGS1jyMySKA33ExsiI3R
         MMpDr0du2U6wedgCJy/9z0zUHICJ4ojDrZGMDO+maTEvlMSerNPiwHhUK1XtyTH8fK6v
         +OXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J5rfDxg/hfzGx7mohegJpPaM01UqAZ7buBRkhNUEfHo=;
        b=y/qkNeyPmSpZCxVLfWHBTTChYvlVF3FuDMuQ69ysAxVxsYg6Hu2BpzPKkTLym3M3I8
         F7FVJNlx/nU3yDtuurTnyevvbbTtFFYCF8msCWKI2N4Z8f/Sb80fHWP37dLhNynYRioR
         k0hNd/cQevIHJsDKxTSmPZ2BWI460vFmfuzirXxMw15I3jPa81Wx2nyeki5mb1oSBgFW
         /QM2vKM5yOejxE7sykpLGnbrtl+e30Mfyuw2mgHI/NnCf8paeBr+LDZkucZGbhYqTAXs
         +EGisC2lyJ3wZGzF6+sgMtQH7G/M+HBZYGc22vgk06mphTJa0OV1q/vtsrW3SM0Aj9uu
         kRCA==
X-Gm-Message-State: AOAM533c//4YxsBA7/OSnLWG2l7y7fzXdCv1ViNmnju+IVkMcb5LpXtc
	FOvNfHR5JPsrgZ+dnld5tiheujdoE3npCZVL4R4=
X-Google-Smtp-Source: 
 ABdhPJxCwZsnlkxstcaoYVRtCCCNpTgE6p9HIIfaxy/vDgo+UEcV9A1EeBbQtvHUJjo6F2afkqYCtA==
X-Received: by 2002:a17:90b:3b89:b0:1c6:56a2:1397 with SMTP id
 pc9-20020a17090b3b8900b001c656a21397mr4575269pjb.239.1649170889253;
        Tue, 05 Apr 2022 08:01:29 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 g15-20020a056a0023cf00b004e17e11cb17sm16701711pfc.111.2022.04.05.08.01.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 08:01:28 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone] config.json: move kirkstone
 sstate to its own directory
Date: Tue,  5 Apr 2022 05:01:16 -1000
Message-Id: 
 <1c511c7f482695f2750e582f825aa1ab9d332f81.1649170814.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1649170814.git.steve@sakoman.com>
References: <cover.1649170814.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Apr 2022 17:24:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56668

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 4dfc865..e779e0b 100644
--- a/config.json
+++ b/config.json
@@ -30,8 +30,8 @@
         "SDKMACHINE" : "i686",
         "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
-        "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate'"],
-        "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
+        "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate-kirkstone'"],
+        "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate-kirkstone/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
         "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'", "BB_HASHSERVE = 'auto'"],
         "BUILDINFO" : false,
         "BUILDHISTORY" : false,
-- 
2.25.1


