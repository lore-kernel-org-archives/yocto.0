Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03B27C4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 21:27:45 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.3426.1708031545476019565
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 13:12:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NzKSPGKg;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: belouargamohamed@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33ce2d1ab86so35316f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 13:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708031543; x=1708636343; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rQqV7R6r7pfQVc7QKya2p5fiE0mEGidmvWtqlpCmnnM=;
        b=NzKSPGKg2uEDPVUuiiEyRrhbteMZLet0BKSGKd6J1YU4Lt6yjdumKEwAfhtj40+0Bv
         0+HnGOT93iKq6QZMd9GplvW16yRX4+Ep0BvLRZxMUxPOHaBzbqiadMNdKid/wlGMVzlU
         WwP7JpSK04WkIJjcClC5fWjkcEmZPNKLgBF30/jOkv/g/I6W6JiLHgUT0XKK/id8XgRw
         e/bXB84HD8TciXRpP0Zt7rBR5UtbUvWVQQwwSQ4jIWdvCHNC4saQRMKn8xeBkYjleB4b
         oDPcOf3j74JMs+42/W0Y90ZycEhPQc0kvOPUMcXN5zKbNRvhsrd6t4wW1l9hE7Ykr2zv
         KZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708031543; x=1708636343;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQqV7R6r7pfQVc7QKya2p5fiE0mEGidmvWtqlpCmnnM=;
        b=ntqgmXJE6N+MQk4pgTOCl6nXTZm/LlUlU7vlLGcPtTBYVw0I3yDKoFM6XYNWtnVj3M
         TI0MeV13LRfYPGwo/gKw06xs+ogsP4LFD31tVgX/jzT/8Giqp2517Px+OVp3YHmx/+rb
         E42EGsimVYJutvifYtLAp88Qb6va0ZSo5QAKwJVjiEIy3CqeZNOmUlYgsvXf+95Zo5JO
         FsQGH762mrLfRbqX/JylXKKn3NCLKRq92wOXf6vl8BqtqBZtr9cehUKsJnKe3uJC2QrA
         Sqnru/5IQrMvxfo0eXe50udcRjdGh51MD99nXMmZA+WM7q32402GiSKT4e2N4yrnCY4d
         CNMw==
X-Gm-Message-State: AOJu0YwMFCw1DmhS27xW5Ux6XnAlJJomjkcL5wKZOarOuVFUJyUHMMi0
	iewxZKByXmQDSIq5Uff/76yPBsLpU235lHRbo16eSsPnBH31D2IJskcMEiGn9yKNIA==
X-Google-Smtp-Source: AGHT+IEtBSFvOP06LPmHTJKHuW6nEfOFEBcPn0/w8uWKOu3ZDINtG/aJ1udim88IBKsTNnCBNau5ug==
X-Received: by 2002:adf:e542:0:b0:33b:7b43:4ea4 with SMTP id z2-20020adfe542000000b0033b7b434ea4mr1997883wrm.28.1708031543043;
        Thu, 15 Feb 2024 13:12:23 -0800 (PST)
Received: from localhost.localdomain ([2a02:842a:10:ba01:5c7f:415a:59e:513c])
        by smtp.gmail.com with ESMTPSA id g16-20020adfa490000000b00337d6f0013esm224719wrb.107.2024.02.15.13.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 13:12:22 -0800 (PST)
From: belouargamohamed@gmail.com
X-Google-Original-From: m.belouarga@technologyandstrategy.com
To: yocto@lists.yoctoproject.org
Cc: f.lahoudere@technologyandstrategy.com,
	BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
Subject: [PATCH] checksec: Add more runtime dependencies to checksec tool
Date: Thu, 15 Feb 2024 22:12:20 +0100
Message-Id: <20240215211220.266782-1-m.belouarga@technologyandstrategy.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 21:27:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62505

From: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>

Checksec tool depends of commands "find, file and ps"

Signed-off-by: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
---
 recipes-scanners/checksec/checksec_2.6.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/checksec/checksec_2.6.0.bb b/recipes-scanners/checksec/checksec_2.6.0.bb
index f4a014e..1ba3721 100644
--- a/recipes-scanners/checksec/checksec_2.6.0.bb
+++ b/recipes-scanners/checksec/checksec_2.6.0.bb
@@ -16,6 +16,6 @@ do_install() {
     install -m 0755 ${S}/checksec ${D}${bindir}
 }
 
-RDEPENDS:${PN} = "bash openssl-bin binutils"
+RDEPENDS:${PN} = "bash openssl-bin binutils findutils file procps"
 
 BBCLASSEXTEND = "native"
-- 
2.25.1


