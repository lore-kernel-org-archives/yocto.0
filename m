Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web11.8004.1593553195501556808
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 14:39:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k8Cgy7sV;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: jpewhacker@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id e13so20201099qkg.5
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 14:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cXeNKJacJFlMCK50nR51r/X9cYPLwFtpwAm6VJ1Nc6w=;
        b=k8Cgy7sVeBpbGO2FPkqknCHLulw8mJJh9LIehvs9+fCbmQrZnPAypSobMjziVfMl90
         05UyYMN03xCrCNM9MLACQHmqTMOmDw752WF10mKUfyTV//CoMEkVzf9NgPLTMPQn3h6y
         DR5YdUCdtUXpXm1zfCTWJM4fNH1z4Grw3iYxfs5x6pQE2c6IbXWCdn/E2ga3VSpPRRIL
         VnRDCBhUeZw1tKfOynqdO6tVOLtjIysBKtOXCubEyRUBKLu9wOPpcetkvLfkrsh0IiOG
         6PqD0LjaGRQ4EQvZyrQraHySMGz962HNrd8fEg8xKsxWTwKZTLjIQk9gMHEKsDJEINL8
         3Vfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cXeNKJacJFlMCK50nR51r/X9cYPLwFtpwAm6VJ1Nc6w=;
        b=AFTbuSc0z+rUcNpQdyJdk/8XdnP2lpRbLEETca2equKoQaLI9SQMEKR2x65I2CpreC
         bx3djCGbevJGJP/VhFbRJVp9kawqOhTbhEfH+xD/PuiNf71oc4uXVIPxj9KxJCXE3jeN
         NbD5MekFbj/mojJbEOos2cZYSdoWRrN6sircZXp7NqGJpD9AWwLhHAG4zZ/tmggVKPYv
         aIvMCkLR8pXaByUD7j0yAqacXxKe4izzv/G9r5pYY+z/xguWn8jQa5cX8P2dLXIDoyG7
         07xwwSDj1nHuJ3sf8PcXPNXzw9xaUMyqe+BVqsXMFyiws+cgUSllxoAWBeQO4fkxPgWA
         oirA==
X-Gm-Message-State: AOAM53207eiy3A+pSB49XqPng+1KMxy9wH8gtAhaNVnlNISU1HisYU6C
	J4z+xOohWN7C9Fjqz6745C+chViBZVQ=
X-Google-Smtp-Source: ABdhPJw2U0NqWWx1IAZlDYNPYQQoXRG1t+tomHHMkO6XDA3rs0ZAfq4V6xDeNLYGG2byLC0TZB3ZEw==
X-Received: by 2002:a05:6638:160e:: with SMTP id x14mr13706244jas.35.1593552728599;
        Tue, 30 Jun 2020 14:32:08 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:1c9b:3646:316:137a])
        by smtp.gmail.com with ESMTPSA id d18sm2244838ils.34.2020.06.30.14.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 14:32:08 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] mingw-w64: Upgrade to 7.0.0
Date: Tue, 30 Jun 2020 16:31:50 -0500
Message-Id: <20200630213150.26785-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-devtools/mingw-w64/mingw-w64.inc                      | 3 +--
 ...-headers_6.0.0.bb => nativesdk-mingw-w64-headers_7.0.0.bb} | 4 ----
 ...-runtime_6.0.0.bb => nativesdk-mingw-w64-runtime_7.0.0.bb} | 0
 ...eads_6.0.0.bb => nativesdk-mingw-w64-winpthreads_7.0.0.bb} | 0
 4 files changed, 1 insertion(+), 6 deletions(-)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_6.0.0.bb => nativesdk-mingw-w64-headers_7.0.0.bb} (82%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_6.0.0.bb => nativesdk-mingw-w64-runtime_7.0.0.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_6.0.0.bb => nativesdk-mingw-w64-winpthreads_7.0.0.bb} (100%)

diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index 8c68bcc..a435dea 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -5,8 +5,7 @@ COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
 
-SRC_URI[md5sum] = "cf5673f6d689bb5e02863e6284cc3d03"
-SRC_URI[sha256sum] = "805e11101e26d7897fce7d49cbb140d7bac15f3e085a91e0001e80b2adaf48f0"
+SRC_URI[sha256sum] = "aa20dfff3596f08a7f427aab74315a6cb80c2b086b4a107ed35af02f9496b628"
 
 UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
 UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_6.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_7.0.0.bb
similarity index 82%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_6.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_7.0.0.bb
index 58073d6..292d22b 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_6.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_7.0.0.bb
@@ -10,10 +10,6 @@ inherit autotools nativesdk
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS = ""
 
-PACKAGECONFIG ??= "secure-api"
-
-PACKAGECONFIG[secure-api] = "--enable-secure-api,--disable-secure-api"
-
 do_configure() {
 	oe_runconf
 }
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_6.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_6.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_6.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_7.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_6.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_7.0.0.bb
-- 
2.27.0

