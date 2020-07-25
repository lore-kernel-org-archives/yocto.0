Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.3158.1595645327242018154
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 19:48:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYT98yZF;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id d4so6436174pgk.4
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2020 19:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=RvL63kCSU0GfYzuaHZ7f09UOvcM+AIlIw4wUfJnsMbg=;
        b=rYT98yZFhr7PbRQWA9xS8l3jYevx5r0AhOVRNKSg/Ewv7Yo27WGsgqeNj7+/yNP+qZ
         KVPktzKOvlXDbh1bDCGYy38WmdtfiYQL1nN4lPnhvMO+K2ZLC5ccusb97rtKmGiw7YYG
         qk4Htd/UW6QP7E6/EZxfUxqkd+dju8c+mZosedfL0l7jku2OVZjctCYbWRlxaYrV5VPT
         Ye9I45Wt9av5BxdRjEDQRBJNIMu5Y9adHP7GRNyrilYcprY/8UNNme11fhj6iKWv1mz0
         hZW4K5KqqxyCwdnHsIirZbMlbf9oKnXZQdtSusVz038MYFtPg10CeVw2Ep49j2gaJ31U
         i3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=RvL63kCSU0GfYzuaHZ7f09UOvcM+AIlIw4wUfJnsMbg=;
        b=lVy2SukTOpFMA/nJoPQy4tesc4fYC/J9nlh1ayYLgtDOzWpBye+TIZCGCgPyVLpeq8
         W53Sw/l0yA/XI36m5ZeBFj0tXAm0BytlQGKSTbfH4qVk0lK4tqg1p1VLahDTPg1wuyyc
         nlMlayOSq6yJ7cdXVlc2PY+znP9Ecb4adeCdn7S95wJspNxxhnX9qLsQM1HZ5GhMz3hJ
         mIEQc2ZCKni8oZNXStHMNJKj/NgfuQsrEN7fDHwVbT/9XiPKQuPvFV4I6l/vIm/aRxmM
         iRIOtr8cE4pPjbLxNYwFjF9UfOuGXZ1IR9Qso58JNyIj2ejDugSiSWyHrcAGEz1OBcEL
         7Hwg==
X-Gm-Message-State: AOAM5325/uc8ZWI8I9sdNdn6iE/2U5E7tNRGH7ZSeXEYhy/xf5b8TFpG
	6HpczqZ/1UeLhZpkYZHkdQKsImiVvpQ=
X-Google-Smtp-Source: ABdhPJwV3EGGbdgecMN1XfFlDYyyCOkvgaJ2cNxbNvjU/aptmF4h3g984gjl4CoquxltIX/XbSYv3w==
X-Received: by 2002:a65:4b85:: with SMTP id t5mr10914510pgq.36.1595645326591;
        Fri, 24 Jul 2020 19:48:46 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:c16f:613f:b5e6:25b7])
        by smtp.gmail.com with ESMTPSA id d18sm7117799pjz.11.2020.07.24.19.48.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 19:48:46 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] packagegroup-core-security: remove clamav for riscv*
Date: Fri, 24 Jul 2020 19:48:43 -0700
Message-Id: <20200725024843.14793-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200725024843.14793-1-akuster808@gmail.com>
References: <20200725024843.14793-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index e0a9d05..bb790b4 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -37,9 +37,7 @@ SUMMARY_packagegroup-security-scanners = "Security scanners"
 RDEPENDS_packagegroup-security-scanners = "\
     nikto \
     checksecurity \
-    clamav \
-    clamav-freshclam \
-    clamav-cvd \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam clamav-cvd",d)} \
     "
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
-- 
2.17.1

