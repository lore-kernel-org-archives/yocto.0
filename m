Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web10.6482.1599511865555708474
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=W9aN6TJA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id e17so15380842wme.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=DsSseEmX4zhukBpEYhxniRaV7RlfxmsvjmjZebDIifA=;
        b=W9aN6TJArTVjwoZ8aM12yq4Lj+MxlCZEKRWUYSyWz/qJp7ykg1GDvfeY40MR5douAk
         XmiKRGpyRDQHHzqtH0C78MYnIvBmp/AKY5E1vBbEZGL8jHgBXzDF8y3pgi4vxVJ0ILDX
         06LXG1SynsRoVBtuQPy/Wz6mpmsh7/hXUA8mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DsSseEmX4zhukBpEYhxniRaV7RlfxmsvjmjZebDIifA=;
        b=nJufG6aVlchwTZ+fDi9AXm61ILL44CUty4wfjgDjvxhtncoaq/oO37Ad2lVwr3cgZL
         i3mvTtbYhV9zBsL+oYGIgo8cy2wrO3vEleNkLJeWKheQzwySSYHQWpZIr66zrTtl+J5K
         ttbYY+xOMui315vdDfFqXSEhKF89dk//CqEfr5UX8lDgGa7vmtVW9v6TAVR0b9pFLrv6
         wqBN4bX+jfHm/9CrzsC7abDo6ZP7gmb5TZqeG+jSFNf5dd+/QNuiHDfeZ3IPH1+uwofB
         whiWUMZZXTlaUSFNDxkvhKiM/8O0rR3BFIwEySyNBDOag+v2s3BAvwS+qbeN85IjM7DM
         w+LQ==
X-Gm-Message-State: AOAM531nzWj1STYJcfMQHW8uvDPFBrUsLwpLpGhyieqo/ljnRHZ8pAfx
	j94FNcjugkE8KmI8UFe1EJCPtfxj5JWdow==
X-Google-Smtp-Source: ABdhPJwwj0z5jFzzgmafp7KV7GOWtGnWdGsGDVtLfrZ7z7URisca+MFdFRtEFmOo6WZljvWV6f6Yyg==
X-Received: by 2002:a1c:a5ca:: with SMTP id o193mr1047023wme.106.1599511863798;
        Mon, 07 Sep 2020 13:51:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:03 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 28/32] config.json: Update buildtools config
Date: Mon,  7 Sep 2020 21:50:30 +0100
Message-Id: <20200907205034.1941516-29-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Need to use buildtools on centos8 and fedora32 as they lack makeinfo
as part of the default install now.

Also use buildtools to standard and extended as appropriate.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 516e050..2218891 100644
--- a/config.json
+++ b/config.json
@@ -8,9 +8,8 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
-    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
-    "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1+snapshot-20200617.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200907-11/buildtools/x86_64-buildtools-nativesdk-standalone-3.0.4.sh;f0c06b2cfd2f5d92ef5fb592f4d726f9ad270d83d7846f817a08abfd017d159d",
+    "BUILDTOOLS_URL_EXT" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200907-11/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0.4.sh;a5fea6b64109a604f3718dfb2a7b5ad32402d13ed5472d9d791e7bf9900621bd",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
@@ -963,6 +962,11 @@
     "buildtools" : {
         "debian8*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
+        "centos8*" : "${BUILDTOOLS_URL_EXT}",
+        "debian10*" : "${BUILDTOOLS_URL_EXT}",
+        "tumbleweed*" : "${BUILDTOOLS_URL_EXT}",
+        "fedora31*" : "${BUILDTOOLS_URL_EXT}",
+        "fedora32*" : "${BUILDTOOLS_URL_EXT}",
         "perf-centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

