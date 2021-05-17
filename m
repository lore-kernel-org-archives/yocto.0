Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web09.13388.1621215309501745280
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 18:35:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mdF5e8h4;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id v12so2238133plo.10
        for <yocto@lists.yoctoproject.org>; Sun, 16 May 2021 18:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G5lpD+beH192A9B/+Djd//T0GDekEQUzHkQIWWfd8ok=;
        b=mdF5e8h4aiDkGlmW+QQmZrNDPjEl+K+0o9xp+tCQJFCou54HM/AGVfEgngx1Mcxehs
         LF5iWUCwcCkzIJHiQOZqnamfTPA9oqC5WnezDyanpqaPn3VGELNHUm7Y5O9lKscIr0/f
         bY06OZWfKwOOXp5vCtBdt6DsMIIwprr2v0dFqYg1QUly4237tEKFbgbwQ0oNVhRv7ajR
         q+Y7jkHjXCZQEPPw0NUixqPk0xc+M2P2gXp4OOuj/RyMpaW8oSfWLoLn+8NRYJ7J2RHL
         TcHogvh42wV0pOetd6YlvjG1Pl4eGiXmWbk//GqhRbjZ34Hf437XB7f7PJHw+n7GN8Om
         BkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G5lpD+beH192A9B/+Djd//T0GDekEQUzHkQIWWfd8ok=;
        b=jsdZdhBLLyTJLBNOgGm2S92pkWJKuI2ZytOjcHbqDb3ZVriqoKqC4gERFlKjATUm9Y
         JowGSjVqguq3pNjS+yQkJGnGFiENkddiLe3ht95UGgaKCv8NZishL6C3jWJLCW7LGLkZ
         stp4x+p4ex7oyyK7P6eoDcCygABC6doRu05AQvnsTh0X8KEQvrepbmkKSOTzr+g6bG/E
         cmiJpxhu5XNtQKJQRt1YqxRAwGhlC+5Nzix2O9e8hlTQbCHJs2nOHiEKbBbEuMBJ66Ze
         LcqzCuCrulghJBepb28T2ntGsJNyLz0L9qlmHCfZu+t3yOPvfqm/0ZL5C6kKnRAYPPVB
         NPYQ==
X-Gm-Message-State: AOAM532VL7LBJQOEKgZeGw8POyvtfmrIdjobwv9Ph9o5hHjxpeQTh60r
	gfNAM0CrKc+veEIPhNae2HxgjkC6StU=
X-Google-Smtp-Source: ABdhPJxIy7rtZkHizGxKSXsXj1zJjVYESDqpWTh9odhWtXILkYkw2Hm5Rq1DtrpkK1wqjsaE71gD6A==
X-Received: by 2002:a17:90a:6285:: with SMTP id d5mr42112599pjj.3.1621215308913;
        Sun, 16 May 2021 18:35:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t1sm8910659pjo.33.2021.05.16.18.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 18:35:08 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Upgrade Helper <akuster808@gmail.com>
Subject: [meta-security][PATCH 1/4] clamav: upgrade to latest revision
Date: Mon, 17 May 2021 01:35:04 +0000
Message-Id: <20210517013507.4023975-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Upgrade Helper <akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index ce5b0ea..4f20309 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -8,8 +8,8 @@ DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c li
  
 LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
 
-# May 2nd
-SRCREV = "de0086aa918b79cd22570d0c05977a288b197e23"
+# May 15th
+SRCREV = "fe96de86bb90c489aa509ee9135f776b7a2a7eb4"
 
 SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=dev/0.104 \
     file://clamd.conf \
-- 
2.25.1

