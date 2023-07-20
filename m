Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EDD0EB64DD
	for <webhook@archiver.kernel.org>; Fri, 21 Jul 2023 09:04:29 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.962.1689877848710753573
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 11:30:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=QnAAKck6;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-76ad842d12fso63877285a.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 11:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689877847; x=1690482647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xAjmpJxpn8lH9KzP74GVfc641bLr9f6l2x260mBsuhE=;
        b=QnAAKck6MR6vGd+IdJSv4THuVHmco8eMiyaywt/AfcSv9OCWE11H+Xouvm41grl7A3
         hLjQBaHLPdkvG1Srqd+WUCr2OIXtbLSbFL/5WQ2/dmvI+laCwqLFpmSgp4SOiyvp7zfd
         lHGhKjQh1gQviyeMN/7Q5b2cKZwQKJtnLfMnn51vCTeAElGyGtYfU/VTD0+VYcAYdpJ+
         bgJ4MZElyzzsYv1V2LbCQ+jrnfjg/JKyLxaxn5UqeaaLNRIKQLG8eP3wwihzWj53GBy6
         RcsmSxqlp6Aj8as1ap6RlW4XDtyVbfeE2oBXbTYkSB5w0tqTT23J01ry4pNeNcRdbuKo
         DjRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689877847; x=1690482647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xAjmpJxpn8lH9KzP74GVfc641bLr9f6l2x260mBsuhE=;
        b=W7JhrAAMfQAX85/bFbXhd1zFQB2E2ogSfMgdfeOtfcgohYfvn1ltTwN41IXRpI2/6q
         E1jNQQI1JUWl6lT8b159C0wDDa2RKxASdpSu1enJ4Ftgbjenvn5LTK9lpveIOpg6xqXJ
         HKS+dWo1l1q8gSS9C9fJ84NuZdRRLbFCovlPYt0KAjA5n39sEWmErUPgRzmqHRkAvW3j
         oNtI/tz5h9+CSXO4UMry1Wjbxe+LvEwdohInQZye8ey4O0QEnGFLHYLcnRa0pyrHX0Qs
         XA9d6aGUFn2oiL0TG/oy8U8hsTXhF7tOm55GmSPf1D/vbRX7t6WxPWlYDL6je79gQgZl
         3eXA==
X-Gm-Message-State: ABy/qLYId2hxV9vtOm2oEjcL/zoWop3dDGCyu2DoamvBswwpNtKpKJW8
	8Io2LfUqrpzHuWHbMYQv7F8UojYKHws=
X-Google-Smtp-Source: APBJJlEoPTbJcAfMAG7cXH0bpy9+g826XP0m8q2B1YyJJZmCAIut2J9BrnuzKeJJx4NAmzQsONj8Vg==
X-Received: by 2002:a05:620a:4694:b0:765:a984:ac52 with SMTP id bq20-20020a05620a469400b00765a984ac52mr8510375qkb.9.1689877847444;
        Thu, 20 Jul 2023 11:30:47 -0700 (PDT)
Received: from localhost ([174.88.247.33])
        by smtp.gmail.com with ESMTPSA id g2-20020a05620a108200b00767b07ec8adsm530802qkk.82.2023.07.20.11.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 11:30:46 -0700 (PDT)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei@gherzan.com>,
	Khem Raj <raj.khem@gmail.com>,
	Vivien Didelot <vivien.didelot@gmail.com>
Subject: [meta-raspberrypi][PATCH] rpi-libcamera-apps: fix Illegal Instruction
Date: Thu, 20 Jul 2023 14:29:35 -0400
Message-ID: <20230720182935.1089619-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 09:04:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60628

With armv8-neon being enforced for all ARM based machines, running
any libcamera app on raspberrypi (e.g. Raspberry Pi B Rev 2) results
in Illegal Instruction.

To fix this, defaults to TARGET_ARCH for non-aarch64 machines.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb b/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
index 062ded9..3460065 100644
--- a/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
+++ b/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
@@ -30,7 +30,6 @@ EXTRA_OECMAKE = "\
 
 LIBCAMERA_ARCH = "${TARGET_ARCH}"
 LIBCAMERA_ARCH:aarch64 = "arm64"
-LIBCAMERA_ARCH:arm = "armv8-neon"
 EXTRA_OECMAKE += "-DENABLE_COMPILE_FLAGS_FOR_TARGET=${LIBCAMERA_ARCH}"
 
 PACKAGECONFIG[x11] = "-DENABLE_X11=1,-DENABLE_X11=0"
-- 
2.41.0


