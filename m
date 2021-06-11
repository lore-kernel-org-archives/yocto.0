Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web12.5628.1623401085925788797
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:44:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l4T0F7SV;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id m21so7410981lfg.13
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CCBqOmcs3YKdGlzSk5P0+dBXEqz5zN9WHyCNO9Yrqk8=;
        b=l4T0F7SVKOr5xtFO+Nea+GIRiE02Oh0VEc3lDXYlhrOrpb6szl4V3UZ+w/X4SbRVs4
         w9GlRM+isuxhRAfrfetN9+f9TuJHx9l0q12pev3a/UmJQeR9vgCQlx5Sd8UPzlfnaL/+
         TZtXUaV903HTGoRGz5TxxbAWfYDoU/bbUXNC+JVQqydj4oLj/Ils6bvSsCjlK0SKSfOw
         DJBfZZqizUpggLihgdk7EFoUMtG84LX8e4x5DMOqTv9FRkY39aSYvujrLCRm85cgdSwb
         OTsxt48Jd9aIgiqRCNAQUdGRUCmQMzsUG3BLQT8Cz11txZ/v1t6JaFUkMC1xLrS12WB+
         j0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CCBqOmcs3YKdGlzSk5P0+dBXEqz5zN9WHyCNO9Yrqk8=;
        b=Ec9lG95KieV+S1CRWFdblhzo2Q9mQzxrTAL66NyZ06nIJz5eE416dwvl6u2mEodFT1
         F8I1iH/NPSLM3h2PFec2v0FZAbsW+ONfFwp0Znj/4FegKeC/lgFKEfnCtsjCDLjEInHr
         eBwFQfGhBZCa2RO/xuvQ3Wr47fVuAYsyYJX51O2uGbuVdSTyrBwDp0Vc3HnuggRo4m1y
         k3CpoGETqBqRalr92NL+KIRw5jFmSI0CJI3t/VnD1v/G7ZM7zQqlDjpwdAqEvGNasowH
         Rbz/uGFkyiUPHv0hToiGdHnzfGeKptaqkc7mFDO6KTsIdlxzFls+Swfkm0heaHGvHoy7
         r5kQ==
X-Gm-Message-State: AOAM531NVS2KYITiMW+E2MNNrpiOBkeQNgSgJINubA8vXJy97Iip2lj3
	nfh45b+/3ze4C+l3T6jFOAY1s3Ao/UOcCyEQ
X-Google-Smtp-Source: ABdhPJxItc3a6dD1MvY4El6o4Z36v3JbsRTP4tfk9DWsxkynXWc51X13qEFnmlG90XdNqpyZkEP19g==
X-Received: by 2002:a19:c756:: with SMTP id x83mr2049275lff.394.1623401083915;
        Fri, 11 Jun 2021 01:44:43 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id i36sm531010lfv.51.2021.06.11.01.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:44:43 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Nagesh shamnur <nagesh.shamnur@huawei.com>,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 1/1] zephyr-kernel-test: fix Cortex-M tests failure with 2.6.0 kernel
Date: Fri, 11 Jun 2021 10:44:31 +0200
Message-Id: <20210611084431.1870665-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210611084431.1870665-1-zmuda.w@gmail.com>
References: <20210611084431.1870665-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Nagesh shamnur <nagesh.shamnur@huawei.com>

Edit the test recipe removing obj_tracing tests that have
been removed from Zephyr 2.6.0 release.

Signed-off-by: Nagesh Shamnur <nagesh.shamnur@huawei.com>
Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index b6b4766..78747f9 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -36,7 +36,6 @@ ZEPHYRTESTS = " \
     mp \
     msgq \
     mutex \
-    obj_tracing \
     pending \
     pipe \
     poll \
-- 
2.25.1

