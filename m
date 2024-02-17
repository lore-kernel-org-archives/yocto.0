Return-Path: <belouargamohamed@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 304CCC48BC4
	for <webhook@archiver.kernel.org>; Sat, 17 Feb 2024 12:57:28 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.9152.1708174642919872846
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Feb 2024 04:57:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iC5jjQWK;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: belouargamohamed@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4125cf6eadaso2550275e9.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 04:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708174640; x=1708779440; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rQqV7R6r7pfQVc7QKya2p5fiE0mEGidmvWtqlpCmnnM=;
        b=iC5jjQWKYcVQYTjJIRBcCtYEWOniq/B5b/HM1sISmcZS/yjiqnHONXqg9K25onKkB1
         GjOsm6t4N+E7FbTs/m7puXnX0hWfTG3YBFLmrIges2tf8IJDfVhQxlAqClmeGA4hlw5Z
         S9ikAHC8CTY2ql66hV+6PDUSYU3DAGHDP3DORihk/z7KK7xPvLa7JdkiV9xj50IImL2W
         fEOK4wRxWIvSsWft74oyvmyfVU4/FN29p2Qv+/Ry77eHnDkYtyDZz/YB11pIRjiPCsTr
         ArpXZXE8TLSHKgVrWKT1K5jzA14A0/KvT6u1KVNS2q2nsfKcaambUuKN7sU2FASg/PEf
         Dlrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708174640; x=1708779440;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQqV7R6r7pfQVc7QKya2p5fiE0mEGidmvWtqlpCmnnM=;
        b=vIsMVEYeSCE/9XxhzEQjpPX0FH727SHI7FGoTdSmDrLAUM8u7CpGrpXSxvUrtoDORP
         V+pX2ll+y0o9UxlNfLmhhosLR0O8Zu2owugrDrCp6tsDTCqtOpOdRXkiGj/HoIuQrNRV
         D/0YErh9I1CH6KzvoNhDGjeifBetouLinF3nRrtnyzhqSJgca5eDMuYT/8Jb1TrO3qib
         QnLrOqZovoo2YEnpKVMVV9PGDw4XkmMGGiz76nGya8dDHufIEnrWmliSWdzSOEoU9ta2
         hnNFW+zV4uuXW3vIj4dMQEjx538iqPFhJBWc+aaqfleTEOTq6o0OrUAZ3fgACgztMDbW
         ThRg==
X-Gm-Message-State: AOJu0YwuO5mH2yH/zGXaqAcIoWGUfw8u1Gq5b2UibvSK0f9+cOpCyaG+
	z1HOFqLzQqjTpD/ZjAQDgfFnXNk3GZHoq85RIEX7yX3aodhEyIcE0mJG1gpesKFpmA==
X-Google-Smtp-Source: AGHT+IFW8d7plTfBU5WKhitKeY/ksdXNa1gf453ZRtutdv4p8P9I7C6oinW9+KT3DUdXj2c5JYGTfA==
X-Received: by 2002:a05:600c:4710:b0:412:40fc:46aa with SMTP id v16-20020a05600c471000b0041240fc46aamr3096773wmo.41.1708174640411;
        Sat, 17 Feb 2024 04:57:20 -0800 (PST)
Received: from localhost.localdomain ([2a02:842a:10:ba01:8f8:f802:3b51:a9bc])
        by smtp.gmail.com with ESMTPSA id x11-20020adff64b000000b0033d157bb26esm4835344wrp.32.2024.02.17.04.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 04:57:20 -0800 (PST)
From: belouargamohamed@gmail.com
X-Google-Original-From: m.belouarga@technologyandstrategy.com
To: yocto@lists.yoctoproject.org
Cc: f.lahoudere@technologyandstrategy.com,
	BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
Subject: [meta-security][PATCH] checksec: Add more runtime dependencies to checksec tool
Date: Sat, 17 Feb 2024 13:56:17 +0100
Message-Id: <20240217125616.402329-1-m.belouarga@technologyandstrategy.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 12:57:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62524

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


