Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web10.6512.1579976492894657717
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 10:21:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=arzT0n7o;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id t14so2153190plr.8
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jan 2020 10:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=d+/VcxVhN7Suwhhmtmk7Vwqg5NQ6yMDdoJ59D0kZiPU=;
        b=arzT0n7onoz8zEGx1S891qdfoHpf11UsJZc+/qLHGCXhAgMuLYzrCLv/QxSFLpTfSe
         +actU0Sm84KvcqUUvsjh11pTgX8TPDDq77qF53ml79+95Fb3T520tc6hZ8LryGh9ftia
         8TWCE2W5zyMmh3rT/L6rDO7fD6ijE5QEfmoj+2Z8eGDrngy7U7QPjKffr+UZjx1BuqPO
         PShcYNsVP25RjtavoxY2akMsJT1ZIPf2tBn3mM5RvUBUhrFUP1RKR7289Em4Cwqxpsz/
         cFJhZ7Fqq70bfu+Oh+ozw16sy40M2+IdEETYgnRWz2g6KjmoifLuEDuiU3nuPmJ06PL1
         hQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=d+/VcxVhN7Suwhhmtmk7Vwqg5NQ6yMDdoJ59D0kZiPU=;
        b=bHk0b5heK7kyHBna0Iuf1RfwfnGAjkleSHRlHFgMNZqDdRCWcExZtb7nngWuVTBpri
         4Ak/B/WVj+FAM+o78QK2d6BxRkz+w/9aBp/NZutnHeag7tSnow8g7B3zhmirVxiT3x7n
         ETKBdJI3IV8oSAveJcq//oe1CtUcicE0S05QgcP44wprO4ysc04HN1+l/poebAT3VeAw
         Y7beH/SQ6D9w5VwE1p3hkxx8LVFixwOf0VtuGrEGrXbNfMof432UbT9Uv0CLZlvl7uME
         KLHIyI+Lt9NJMroovaGFGCeUGVNa9iWnz69qi3FYZxeg9UCxWmxStM4iZTOUeLsWP+4s
         rcqw==
X-Gm-Message-State: APjAAAU8P2hoVP+5cUYWs1saHzvUtOpLCKhM2uTScYZIVacKJX3RgyGW
	3/T3WbMdIcizNn19+zzmjVRSH3T7
X-Google-Smtp-Source: APXvYqyA41gHPIlF7bOfHkT0Gk6Lr8dBO+4l/QbiAuqB8iyr6Ju1XIBJc1dhjmsJ1DUtzfT1g4a4Nw==
X-Received: by 2002:a17:90a:6545:: with SMTP id f5mr6110456pjs.42.1579976491718;
        Sat, 25 Jan 2020 10:21:31 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:953f:6ade:6955:1d1c])
        by smtp.gmail.com with ESMTPSA id c188sm10808020pga.83.2020.01.25.10.21.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2020 10:21:31 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [master][zeus]meta-security][PATCH] linux-yocto-dev: remove "+"
Date: Sat, 25 Jan 2020 10:21:29 -0800
Message-Id: <20200125182129.13652-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 239e30e..39d4e6f 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,2 +1,2 @@
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-- 
2.17.1

