Return-Path: <belouargamohamed@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31772C48BC3
	for <webhook@archiver.kernel.org>; Sat, 17 Feb 2024 12:59:48 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.9186.1708174783084501545
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Feb 2024 04:59:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gGoXuwrQ;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: belouargamohamed@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4125df3c40aso2082815e9.3
        for <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 04:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708174781; x=1708779581; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g4pbzPN4UizJHTEu6L8rvMnGnKfy7BbVQbT4sMvYAsY=;
        b=gGoXuwrQbyr4EAJlrs+99TwVUf5N25G+70WzL+V89JVgoKTx9Xr6UU8zws/JDWP5Ew
         fR98ypEciL1OGzAlCiQYlKdOMZ1k7nJK8uQmBhrfQcbdGLe9CuNzoF+zc+hxI439Liwm
         egdt5+BCkmqvtbb1oXpu/YRfNpz14DaKyuhby0zuFURP1QjR1Fiw9fSmrWmm+SYkxHZm
         G2AhJyLYGLiTMEBJZcS55VcRKTn7v2WCiHbfXdUtuj3zWcNbdDaSDaTvfi3z0hQaXCzF
         ig8ft0KbYeLlZmx4J5s9SSP0H5vjuWAWt84SLbcrY1hpV7cXWWAAkVueIQTcwzlm/HxL
         519g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708174781; x=1708779581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g4pbzPN4UizJHTEu6L8rvMnGnKfy7BbVQbT4sMvYAsY=;
        b=V8sxuf8JKSeHQerCDbd29QF0gkuvXZ2FC8SBY4tdJuy+pw5c6siagMP44inTfxAgfc
         GA+eVZgUCOhT7QFGe/vSBrmVUiA3atcrIh7kuTEPGz19qG4cN5O+ZV+f57G6ScHDZFNG
         L11WhCg6CRNTtupbgwBPvJfSOKqjFZvj5KUDShTR04GJY4zhdpQV74BCM+TtzAIBMbvT
         HfoNtNI0ECB6PVVx1fTAN9ZzCT54rh5Lwt3E4w9MQCbyWkzSi3D2b7RFKYnJ5I+/YwJx
         jCQj9y9jv+Zci+7pp5Y3kbNrnPbzZQcrTA6arfLnRNqSWheoXoGZ4we5SrH/xeU9Jczf
         2ttw==
X-Gm-Message-State: AOJu0Yxw1stu7fqefo6D+uDktCZobLNWIOi8Rtp3ICFFEPhxskuwBK8A
	fVVDdVS9MYiZkkIf/DaGhQ3I8gXzmiju4e3ppEjYq/OhSgosSM5ZygJ6IIcp4wQZWw==
X-Google-Smtp-Source: AGHT+IG+d+gZxB3h02WVN8pt79cM1IcZyVs4/g2PAP022oU1O+FEGeC1SZeNAk32m0mRNCpNvG8Qdg==
X-Received: by 2002:a05:600c:4584:b0:411:d620:26bd with SMTP id r4-20020a05600c458400b00411d62026bdmr5275331wmo.17.1708174781137;
        Sat, 17 Feb 2024 04:59:41 -0800 (PST)
Received: from localhost.localdomain ([2a02:842a:10:ba01:8f8:f802:3b51:a9bc])
        by smtp.gmail.com with ESMTPSA id u6-20020a05600c19c600b00412572f5175sm2018973wmq.23.2024.02.17.04.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 04:59:40 -0800 (PST)
From: belouargamohamed@gmail.com
X-Google-Original-From: m.belouarga@technologyandstrategy.com
To: yocto@lists.yoctoproject.org
Cc: f.lahoudere@technologyandstrategy.com,
	BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
Subject: [meta-security][PATCH] lynis: Add missing runtime dependencies
Date: Sat, 17 Feb 2024 13:59:33 +0100
Message-Id: <20240217125933.404089-1-m.belouarga@technologyandstrategy.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 12:59:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62525

From: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>

Lynis tool needs ip, ss, tr and netstat.
If they are missing Lynis skips some important audit tests.

Signed-off-by: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
---
 recipes-compliance/lynis/lynis_3.0.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-compliance/lynis/lynis_3.0.9.bb b/recipes-compliance/lynis/lynis_3.0.9.bb
index 5b5864c..b8b97a5 100644
--- a/recipes-compliance/lynis/lynis_3.0.9.bb
+++ b/recipes-compliance/lynis/lynis_3.0.9.bb
@@ -41,4 +41,4 @@ do_install () {
 FILES:${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
 FILES:${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md" 
 
-RDEPENDS:${PN} += "procps findutils"
+RDEPENDS:${PN} += "procps findutils coreutils iproute2-ip iproute2-ss net-tools"
-- 
2.25.1


