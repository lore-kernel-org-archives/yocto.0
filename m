Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
 by mx.groups.io with SMTP id smtpd.web12.1201.1595354224504637823
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 10:57:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LlI9c/sS;
 spf=pass (domain: gmail.com, ip: 209.85.166.67, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f67.google.com with SMTP id e64so22361352iof.12
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 10:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8hCK6c+ezoCxboWoeTnlaTFZce1MpUWq0Tk2E9dP2XI=;
        b=LlI9c/sSjB7YVpTiQzrZgScHHqP+E6bNDozgffi+kLPBOCy7eajXpvW2UyYwGi5Gj+
         wFBWBSIc7suIORUF53ND4KdZ1EVRBj9VaQMGVSdux3IZzzZkc4SPKKhsVHXTWGafhdsj
         2zozY237xNLVHDb5rBFdQgrZD73Y5bDj7GSWyaVTfh+PNtXbNI1wZAG3foUYD/uOG/FC
         SBSq2vtroITOCHpMWLNz4Lb4ax+r6ruOmXmAxU2hcRU4YVr9s9UeVllL0yM8nP8UmopD
         ej9CXMAFlc+Fa0IdJNMl5mVyZ1ii4Hhy00q6zcrnjtL6reBIatx22lNMMurzCp7jAEcq
         p8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8hCK6c+ezoCxboWoeTnlaTFZce1MpUWq0Tk2E9dP2XI=;
        b=NprGhQY9Jn/+Wj9wxu5w69jkujDeHNnWO53D6f7tblyK5JdC9tnbDS0Bj8ELI4IdSC
         fhA7LXEf3wgZIGO89DGLCAqIKe7tyoFB2GwswLL5dDG77doejY7xk+w9egawapa5jH6y
         m1bCohOHzuLnHaVVeJx/7p+Jw0G3M1BTi3aww97eO+lKl/LvdIogI09ztX4apnOkWv2I
         JzI+rD3Er9s+9VkPx2JkCEgczKiebSEmRim+2FRXi+z6pe4ggVPhOKqdF3J+2g3SRrHD
         cp7EvDbNxQvRpkuklWTEI8BO8cckTj1Asq3bsvGJXlucu9X7IGEV36mqjsvEISnEj7Er
         OL6A==
X-Gm-Message-State: AOAM530eNWUv84VdDGii5e2LF6Kw5ue+VLAU5triCVkhXJTSytLSBh4l
	zD5KV+WAmTYmjv7tCjrYBe3VEp1Yq74=
X-Google-Smtp-Source: ABdhPJzZCyszaoBILaX5OH9OSMcUsanySagliqBrtVSHQmRqP7bg0I6n+67oSiCUnfo/3uM4U0sZ3A==
X-Received: by 2002:a02:a408:: with SMTP id c8mr33854989jal.59.1595354223652;
        Tue, 21 Jul 2020 10:57:03 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:c183:1b34:3163:7b15])
        by smtp.gmail.com with ESMTPSA id f18sm10669646ion.47.2020.07.21.10.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 10:57:03 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] cmake: Remove toolchain append
Date: Tue, 21 Jul 2020 12:56:58 -0500
Message-Id: <20200721175658.11661-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that cmake.bbclass in OE-core correctly accounts for MinGW hosts, it
is no longer necessary to manually specify that CMAKE_SYSTEM_NAME as
"Windows"

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-devtools/cmake/cmake_%.bbappend | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/cmake/cmake_%.bbappend
index d9d7ceb..42d36ac 100644
--- a/recipes-devtools/cmake/cmake_%.bbappend
+++ b/recipes-devtools/cmake/cmake_%.bbappend
@@ -1,7 +1 @@
 DEPENDS_remove_mingw32 = "ncurses"
-
-cmake_do_generate_toolchain_file_append_mingw32() {
-    cat >> ${WORKDIR}/toolchain.cmake <<EOF
-set( CMAKE_SYSTEM_NAME Windows )
-EOF
-}
-- 
2.27.0

