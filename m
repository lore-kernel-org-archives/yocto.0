Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.47580.1628931415442908780
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 01:56:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsAJ4vKu;
 spf=pass (domain: gmail.com, ip: 209.85.221.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id r7so16538276wrs.0
        for <yocto@lists.yoctoproject.org>; Sat, 14 Aug 2021 01:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kfMIczZxIx+N14mG/LwOLJByf9Z4OfsJ+8eg3E4mLpk=;
        b=hsAJ4vKuqNlLKjLX8R7AJbQGCxZ/t/P0yvdGepZ2TiArzmMImxh5K+LGa1IwcbOHGC
         ecvGVcBfwjdO+CAD05Xk5BPLcQjfpEGQLDNYBZRKyl0a8PXDZ+zw3Ym+07kK1N6RVkia
         pMo3ppLqf+6MST29qvS9PjUlr933Q1ryXddgDZ6DBg4iT1xU8HpMmuyv28ufdWz53lVP
         Ep+WT3vj/Z17YfruGhDKdKpSfLouHClOtYgJmP5xG6DlSMndbk92Z4LLCmSFlbCdiWpk
         kLMrl4a2feIQzCCYK79VDfGac3wSDOsalyP1lduEyyvvEQnOwHhpBU+2zuRW4rAyNvmT
         OzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kfMIczZxIx+N14mG/LwOLJByf9Z4OfsJ+8eg3E4mLpk=;
        b=oZ/iPOSFfXCJMhCUc5kSKyeYFoA2/UGhzom5BzFF49UE0Hp+CnXwEbEzd094amGizX
         aCG7x5ndlQs/Ox+sg7kuxvkc+au1RjYFRq1kIyctnRPARK/1tLLrPp/fR8u4H2Za59Ed
         26dFSwNFNxaPPDnYDQAs/+qusOtH2cUl7wbg8z0ns83TcuAIg/qJE20SZhw0tt/oh8lA
         edL704sDd3VzC1WTfObJyvH6M3rE2orGR7GNqw8kS3mKDDM7AohzSMjpMqGvYI1gBhqy
         lFEnpWQp7NwAzW2zwq5TW1WBe68iUVJL4zIiooxZHdt5e48X9ZzDSfY94bLlL0EKqYq+
         8sUQ==
X-Gm-Message-State: AOAM533uOnd9FrEGE1OOBA5vIuIbQbvSzZUgCV6/2jQCAcMh+Jm10Avv
	z7s+BYDs+4kAuQz42plDZY0HffxhxDhGdg==
X-Google-Smtp-Source: ABdhPJxNP9o7ga93QCpWEfZRHSNyQMX//RKd4wbjJFzvrnPmsqSqqc3CC/UiCh2Xb19q4ydWVwcRWw==
X-Received: by 2002:a5d:5448:: with SMTP id w8mr1678549wrv.52.1628931414081;
        Sat, 14 Aug 2021 01:56:54 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id u16sm4191736wmc.41.2021.08.14.01.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Aug 2021 01:56:53 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 2/2] auh-config: adjust to new override syntax
Date: Sat, 14 Aug 2021 10:56:44 +0200
Message-Id: <20210814085644.19989-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210814085644.19989-1-alex.kanavin@gmail.com>
References: <20210814085644.19989-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
index 417d228..25c062b 100644
--- a/scripts/auh-config/local.conf.append
+++ b/scripts/auh-config/local.conf.append
@@ -1,5 +1,5 @@
 
 INHERIT += "buildhistory"
 LICENSE_FLAGS_WHITELIST = "commercial"
-DISTRO_FEATURES_append_libc-glibc = ' systemd'
-DISTRO_FEATURES_append = ' pam'
+DISTRO_FEATURES:append:libc-glibc = ' systemd'
+DISTRO_FEATURES:append = ' pam'
-- 
2.31.1

