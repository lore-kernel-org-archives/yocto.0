Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web12.6019.1615541584820752920
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:33:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hta9V2Lc;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id dm8so6996810edb.2
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 01:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wrkYGRn0NANFcHj6vyv5XjKFG9JNd8es895lVSuWoGU=;
        b=hta9V2Lc07LPm9OlYkbLoyfOjydjjbDzSTWHnOpKKHFUSZsVPyTpJ+cRB+/co+dqY4
         NkxFi4GkvtMpxtDjBT8gGTa9+TcJEhJ4RhJRCYxypW/hyt9exqdrPONv5jkwHdBGfJcb
         hYZM86YKhOc4WaZTYBZNTYuv1q3ds+QwdoxZpa7fcrAfRZRTnl4L3nMqNpJqNM+8iCfI
         fUdprksq0EihyoW6Am+UrQWlrbiZwRnYjPQCRgY+Xk1zlFX6YQElnGplIyaGs1PkjPZj
         qxWaSATOvNN/pfIQb61YPYgn/22/kPG9W7BEgNH400DgE54e1J7Q80vvEqpOsXyU/TAC
         sF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wrkYGRn0NANFcHj6vyv5XjKFG9JNd8es895lVSuWoGU=;
        b=Ry78+Br2FNm6K6Ok0AJwPJ0pH6qYJMLPpUdnbvfBvQ+BzwW3TMf3KPjhIOzR8LUp+G
         GQ0IvjlDWiDxnzHjrY7NC3JKM/jYTm+4mJXFP0fuEGjzC+Eh9aVn+ZKw3r7URUdboJ1p
         H6MDcX+qR6uAcXcPR6VCgYlgIQI7Py3b8QtfJ583PcfMs8L/ChIicL0MtBKYveaMQq5h
         F+3PJbDQHG1nZ7PEdET2VTohjtmt7//9zl9EpgzyLUOoMOazwSnjwBSCdO8zCOKjz8qU
         VPUt2ig8rDI37tfN8TI5OGz2MJqlQ63PwOGNRKX5rpZrpvTfCi/QUiz5ZoidMYLpfK8A
         WPvg==
X-Gm-Message-State: AOAM531mhLjPKtJnXs4YkBWFvbfovogLJEi/CpvDrZoZeW9Xgt2PYDWL
	e53J6j/Vj0FBEOVkdlzWswVDnyspjazygQ==
X-Google-Smtp-Source: ABdhPJy5oizTkfOzX29OuCwr+habY272lF0HvZhWmd+ed6l9Lrs2266cfmghspouUNYM5GPUU+DGyw==
X-Received: by 2002:aa7:d54a:: with SMTP id u10mr13187629edr.316.1615541583511;
        Fri, 12 Mar 2021 01:33:03 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h2sm2532708ejk.32.2021.03.12.01.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:33:03 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 5/6] config.json: pam is required when weston starts under systemd
Date: Fri, 12 Mar 2021 10:32:39 +0100
Message-Id: <20210312093240.319125-5-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210312093240.319125-1-alex.kanavin@gmail.com>
References: <20210312093240.319125-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index cf6165a..75bf4e2 100644
--- a/config.json
+++ b/config.json
@@ -937,7 +937,7 @@
                 "BBTARGETS" : "core-image-weston",
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "TEST_SUITES_append = ' systemd'"
                 ]
@@ -957,7 +957,7 @@
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' systemd'",
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
-- 
2.29.2

