Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web09.2964.1579207519817460945
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 12:45:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=d9S3R/cP;
 spf=pass (domain: konsulko.com, ip: 209.85.128.44, mailfrom: pbarker@konsulko.com)
Received: by mail-wm1-f44.google.com with SMTP id u2so5250024wmc.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 12:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IyyHYlUc0Ls/ruM8meOPgfnW1WUw5SWPo5mGhMnhXIg=;
        b=d9S3R/cPQSYQkj0e0nCpFr08LNRzO1txW2EaL2pArV5VaE6KjX27Sq5IVj6CrbRJAu
         enIO3NO3rQxXYY85kXVt8H3zc+HZ8KrK3vXztgMO/Ci4xmTyM8ZAtWfAZVx5Orxgc5KR
         8E27I0CRDg5F0nVrQX8D06HTmvxUpNcUe4CPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IyyHYlUc0Ls/ruM8meOPgfnW1WUw5SWPo5mGhMnhXIg=;
        b=cFrMCGCfOPVZnnd2xd2S81XQpzC2u8sRvZuiNzajgd2VN57P6sFuqkpVqE0uZHKR2P
         GFkZpDIVhhTW6BCwSUeSF4lwFYenuHP1fNvo9XCTkaalYVQYxoJgii7fdAj3hlRL0bd7
         fm195tprzjqYNXEw4uLoB9zlneu11gDED8z1cAykQCh/Gg1aOOxyV5sPGtZ37UofRdrK
         ESx8rC77axR8zDYCgMu/W60XPap6KJZkQEhe4a21vzdYi/34QPxpC7ubhiJ5XE/hSIjs
         OFtTb6f4JQIratAfjEpCiH5S3KURV5zWYVmRdjaH5NCevNexmiX4hBtl0wGkfSglrtQc
         3e2A==
X-Gm-Message-State: APjAAAVLPDP5e69P5rc2G5DZrFQC6eWy0vjQ1lkAnGqmMK9NI1uDJ4FZ
	Xeiy6sIqb8ACE++TWmxEaNgmPjWse8Qnkxbn
X-Google-Smtp-Source: APXvYqxwxBhrAIq2oH795swngvN1RusQU+yVZ4Mi0DX7oqrKMXkZ0B8x1Kw2ZEzd6mvFRGkKo9COoA==
X-Received: by 2002:a1c:8086:: with SMTP id b128mr853887wmd.80.1579207517995;
        Thu, 16 Jan 2020 12:45:17 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from arch0.home.b5net.uk ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id q11sm31101771wrp.24.2020.01.16.12.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 12:45:17 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [patchtest][PATCH 1/2] README: Update maintainers
Date: Thu, 16 Jan 2020 20:45:07 +0000
Message-Id: <20200116204508.5489-1-pbarker@konsulko.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 README | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/README b/README
index b87eeb4..0a429f8 100644
--- a/README
+++ b/README
@@ -40,8 +40,7 @@ Maintenance
 -----------
 
 Maintainers:
-    Leo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
-    Paul "bluelightning" Eggleton <paul.eggleton@linux.intel.com>
+    Paul Barker <pbarker@konsulko.com>
 
 Links
 -----
-- 
2.25.0

