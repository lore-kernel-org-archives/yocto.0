Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web10.36926.1605543663384611179
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 08:21:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=mcMMgYTm;
 spf=pass (domain: burtonini.com, ip: 209.85.221.67, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f67.google.com with SMTP id u12so12098957wrt.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2020 08:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bDZjA6imk2tYzNKiimmt4OSCP7Ol89DBKbr8qdg2m7w=;
        b=mcMMgYTmJcEqWLgr5zfcVTtj/XKynm9Eg+Fgwf3E0egnX8QOOZ61N2gtH8sssVEr8Z
         cfD+TTVvRJ9f5YC4rDkDL+fnYAAlIk432xdPfpGlzrD5+pJRADrhyfFQMXTaJQQ7I6N5
         8KO8oXdQyfvkQRWjSytyYp3z0fwxQ2DsOweJZT6zHiYT26Ph8yhn85xeNydEmpIKakTx
         Xt/reThGLJ9OdUd8QYrF7FKIxDwS0zuOStJGc3ju9cmzhNq5ihHXBelyeT6lrLi3ch9U
         IF/DCRjDYnOKAvkSWomRjyNzstjB5e3NbdOpefnkwBoyPwuQTaesvzUWx+bZKhlzu1WB
         UfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bDZjA6imk2tYzNKiimmt4OSCP7Ol89DBKbr8qdg2m7w=;
        b=W2rQKyYpbIunqI3MIz7Zmgkb6cr59B/0f1BXxPV+4w+V7Asrw7rxqIBj9dqzNK1LfA
         isk2fuKmjpK6KjYOs57pxTNvZO9yBPjacyUD5IrWkVh1S/D1cOwiVRMi1+q6NHUsh79a
         4JR0Gg6P3sS0KLp8BVxbi/p0Qeb3XVbvcKuRecZ2St2RaVxpTmkQO4j/HQ7aS2MBk87H
         V+nCX7x9IIiPpsefJ/z1JHc4ZJTXkouljsEDeyvtM2cGUoe/Gh7mFUlscHMfDy8p2Aej
         fgr/zHEUOWUu2kVJSmmGmthbbpKcOYUzs2rudaFjKNZP5BndvLa+6+PJO7RlV1NUb3VW
         7sZg==
X-Gm-Message-State: AOAM531tBlhwSOLlSLitwZU7Y7d5GmHVGcEtBnLWuuD4qsk9T8abU9FC
	pH5X64Tl+hcbLsZ7hDUg6g+68LjkPS7/f9N6IvQ=
X-Google-Smtp-Source: ABdhPJz0qKCLMTAfl0SaTBld5O8TT4hG8a8PZI9QN3AXRp/Xc2PDH2d+8c4iZpYJPMrNAg6kYYTgRg==
X-Received: by 2002:adf:e611:: with SMTP id p17mr21090405wrm.180.1605543661398;
        Mon, 16 Nov 2020 08:21:01 -0800 (PST)
Return-Path: <ross@burtonini.com>
Received: from localhost.localdomain (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id m22sm24682800wrb.97.2020.11.16.08.21.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 08:21:00 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2 PATCH] config.py: remove redundant meta-kernel references
Date: Mon, 16 Nov 2020 16:20:56 +0000
Message-Id: <20201116162056.8790-1-ross@burtonini.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/config.py b/config.py
index 035a2f8..271e6b0 100644
--- a/config.py
+++ b/config.py
@@ -6,14 +6,14 @@ buildertorepos = {
     "a-quick": ["poky", "meta-intel", "oecore", "bitbake",
                 "meta-mingw", "meta-gplv2"],
     "a-full": ["poky", "meta-intel", "oecore", "bitbake",
-                "meta-mingw", "meta-gplv2", "meta-arm", "meta-kernel"],
+                "meta-mingw", "meta-gplv2", "meta-arm"],
     "non-gpl3": ["poky", "meta-gplv2"],
     "meta-mingw": ["poky", "meta-mingw"],
     "qa-extras": ["poky", "meta-mingw"],
     "meta-oe": ["poky", "meta-openembedded"],
     "meta-virt": ["poky", "meta-openembedded", "meta-virtualization"],
     "meta-intel": ["poky", "meta-intel"],
-    "meta-arm": ["poky", "meta-arm", "meta-kernel"],
+    "meta-arm": ["poky", "meta-arm"],
     "qemuarm-oecore": ["oecore", "bitbake"],
     "checkuri": ["poky"],
     "check-layer": ["poky", "meta-mingw", "meta-gplv2"],
@@ -43,7 +43,6 @@ repos = {
     "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
     "meta-openembedded": ["git://git.openembedded.org/meta-openembedded", "master"],
     "meta-virtualization": ["git://git.yoctoproject.org/meta-virtualization", "master"],
-    "meta-kernel": ["https://gitlab.com/openembedded/community/meta-kernel.git", "master"],
     "yocto-docs": ["git://git.yoctoproject.org/yocto-docs", "master"]
 }
 
-- 
2.24.3 (Apple Git-128)

