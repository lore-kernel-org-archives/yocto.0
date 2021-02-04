Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web08.3101.1612474868477889936
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 13:41:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCiTpsz9;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: idadelm@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id jj19so8146555ejc.4
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 13:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ah1EApSYJsT0drJ4784QySmPzRb1LRoIeDDKjqzxLaE=;
        b=OCiTpsz9WnHQc+WBJOxZngbDkvKxNocH6eAMAHI7e2Oa/ZBxTMf6jAPxqIim/AX0g4
         KqUelMMsqV3Psg8BTo0a30f2OPLXDhcLhIg9dOTtBl9QCDFw3opFZJYowvtMtO0be2uI
         MjmYbY8BkLaAGj7J2z8wZ6FisMVTMUk0Lz05inMy9LjBk/5vxFHTMYsAvo/mak6tYdeq
         FBbWm4ymNV85CAH2zkj9sF0KQAsoXcz0HpxoEnBTYjFqTYhePYsLiTaGzapziWWRg1Tx
         OU4msIQcNvk/k+Fblz2EaYiYhJddAVO0fPb/WbNoLn7jptouS97AanmsuXsRuQME7V44
         86vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ah1EApSYJsT0drJ4784QySmPzRb1LRoIeDDKjqzxLaE=;
        b=Gx4w/diaydpOx43a5VBd82LFSs9KdY9x2+4pikjc9Vt80i2k0QvRlunk33hhbROR4u
         8FtJa/kh2sNAhTkiMGWqIHYyvB5jY2J8WGgnvPNqNrytXlG9cGpq7unCQnQUQE4NbCen
         NU3sYWSGND91I0eCLKBrvjv4aMHrArdR4+GQuDQO91mgKpLH8J1a3Ud5BJpMm3k9KS6J
         igcEmBt/Ja+awQPcc610ZrpZnhXYtbGh9tYX5g+mQNx94ClfDq1KgjQYxqyLbV82lwfy
         6ZUSViqOKZe1eyBL7MUbYxvCrnhWXT0G8v5P2Ge57Qrbo1Gthpsf83NihAaH+6JeB8rg
         JCSw==
X-Gm-Message-State: AOAM53237X92fO43Qaa/wTAaHPyAM+Vw6BKODJFlDqWoE2wTOhsEBjt9
	Frk3Vut8FNLc9WcvxYzNLesKTtIcAMAUh+1I
X-Google-Smtp-Source: ABdhPJyaDJGxjYcVEzAHE9jCmFXBxCgDVODoqngXZsA0CMuOXrjefZMSZATk0Rqy2XaBVgiXVSNb0A==
X-Received: by 2002:a17:906:dbd0:: with SMTP id yc16mr1066140ejb.524.1612474866626;
        Thu, 04 Feb 2021 13:41:06 -0800 (PST)
Return-Path: <idadelm@gmail.com>
Received: from ida-pc.lan ([129.0.101.30])
        by smtp.gmail.com with ESMTPSA id v23sm3000562eja.11.2021.02.04.13.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 13:41:06 -0800 (PST)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: mark.hatle@kernel.crashing.org
Subject: [prelink-cross][PATCH 3/3] Edit SPDX license header version
Date: Thu,  4 Feb 2021 22:40:55 +0100
Message-Id: <20210204214055.13078-1-idadelm@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Ida Delphine <idadelm@gmail.com>
---
 src/canonicalize.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/canonicalize.c b/src/canonicalize.c
index e94ec06..a8b2d44 100644
--- a/src/canonicalize.c
+++ b/src/canonicalize.c
@@ -2,7 +2,7 @@
    Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
 
-* SPDX-License-Identifier: GPL-2.0-or-later
+* SPDX-License-Identifier: LGPL-2.1-or-later
 */
 
 #include <assert.h>
-- 
2.25.1

