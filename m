Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web10.1499.1575060847389368877
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 12:54:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JidvUczX;
 spf=pass (domain: gmail.com, ip: 209.85.221.67, mailfrom: simon.haggett@gmail.com)
Received: by mail-wr1-f67.google.com with SMTP id g17so4615755wro.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2019 12:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=FI237RLYHSmuKF/tsmMBf94CDe+r2gfxiniVmDVp6ro=;
        b=JidvUczXF40CXmgrjjsd0oVqWhQWJSQkbNxD4l0YciO82+INDe1hAKryc1TwI6xaMu
         o3j+1rVhDncxBI31VcoPOAYvXI+Kzj9SSDpnw1qjgmC2j2hARM+9PbzZ+wOmk/AY4jr1
         ZMcqAt7j2tK6bvUTp6xoqn/S9qtUTe4lBA+PeEi8M4sIbbJwPkDFHE0kileW6OCchBJR
         hihoaYHpJ0rlw2N3I4/AlgC5i1MTg8rCQHNYI1mYw53WwCQJjauDSJqrplTu5oeR3S8w
         /8oaHopmpu+5SNSiykurFJI3AKHyRZDXPoXDpQPRvL3fZQoFR4r3LbDABrLvswbDFax4
         qrzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=FI237RLYHSmuKF/tsmMBf94CDe+r2gfxiniVmDVp6ro=;
        b=mZhkXwPNhQBSShoPHRZEX3fX4d02pVnc5Qz+SksdJbA6U0mNpfw2xPyCDxCSP7WrpZ
         hWNhliLJd4bX2fs1J7c/bYCkikZZTsdxHNCEHkfK+Bx1uharIQHSZqfHRfoYm33SHmuw
         3Vo+q+9OCnL3e9rrgFf8rP7LFj9cl6ClLfOqTW6/DNF5kNf/cm9KxKchzDC/BSJJPOXi
         koFYZ/Ae4NvpzZPX6vGFkUb77VngXzTObl0NQBPV54NTs1pS5CsdH9WLUSngbF2y8nRE
         TPQG+fNH9LqwL7ngEJKIOrJtrdLg1fHQEuQ2R7z+6Yb6oMT+Ie/wr+2XsjNyyBlPfabs
         5aDw==
X-Gm-Message-State: APjAAAXyM3JyvEJgJVqqE3XbljLRyUVpOAzqL/w/e0iiOBsg5Ealj6P2
	r3pRJLrcrUiHnKTmF7ISqC5b/RoBRZc=
X-Google-Smtp-Source: APXvYqzEvMnacNlVhw0hbbWWCwEC3GTxQSVuz0CnmTJRCHajX8yGlmcQvXmekgI5X3bp/TyUnHjDrw==
X-Received: by 2002:adf:cd92:: with SMTP id q18mr44694560wrj.261.1575060845669;
        Fri, 29 Nov 2019 12:54:05 -0800 (PST)
Return-Path: <simon.haggett@gmail.com>
Received: from localhost.localdomain (cpc92322-cmbg19-2-0-cust145.5-4.cable.virginm.net. [86.26.32.146])
        by smtp.gmail.com with ESMTPSA id i8sm6177951wro.47.2019.11.29.12.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2019 12:54:05 -0800 (PST)
From: simon.haggett@gmail.com
To: yocto@lists.yoctoproject.org
Subject: [matchbox-wm][PATCH] keys: Avoid freeing Wm_config member pointer in keys_load_config().
Date: Fri, 29 Nov 2019 20:53:50 +0000
Message-Id: <20191129205350.25448-1-simon.haggett@gmail.com>
X-Mailer: git-send-email 2.17.1

If the Wm_config instance contains a non-NULL pointer in its kbd_conf_file
member, then (in a build that does not use gconf) keys_load_config() will
assign that pointer to a local conf_path variable. However, keys_load_config()
later calls free() on this conf_path variable (since it may instead have been
assigned a malloc'd buffer). This can therefore leave Wm_config::kbd_conf_file
as a dangling pointer. Furthermore, if the user has specified the -kbdconfig
argument when starting matchbox-window-manager then this pointer comes from argv
and so the call to free() can lead to a segmentation fault.

This patch fixes the issue by using strdup() to make a copy of the string
pointed to by the Wm_config::kbd_conf_file member pointer. This matches the
approach used when conf_path is required to take the value of a string literal,
and ensures that free() can safely be called on conf_path.

Signed-off-by: Simon Haggett <simon.haggett@gmail.com>
---
 src/keys.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/keys.c b/src/keys.c
index bc83bd4..ca77f81 100644
--- a/src/keys.c
+++ b/src/keys.c
@@ -326,7 +326,7 @@ keys_load_config(Wm *w)
   };
 
   if (w->config->kbd_conf_file != NULL)
-    conf_path = w->config->kbd_conf_file;
+    conf_path = strdup(w->config->kbd_conf_file);
 
   if (conf_path == NULL && getenv("HOME"))
     {
-- 
2.17.1

