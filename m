Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web09.1462.1616632802505003252
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=zxC8jeG2;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.169, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f169.google.com with SMTP id h25so106718pgm.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=1dLVkj+lz9yEJOlzSfPlXypspXkh6oRI9Z86Hrfp6EM=;
        b=zxC8jeG2zPC1QzWupxLtoxVIAjjHtgO155LpBM0LZOkKi458Ge9O797OFnWVPrDfoq
         WZFDxAX/HG8O8XZ6h850ITiEM/QU3bNQ0BEZcRgxFOcBZaqh0WVVi1FNhJZrtz9QQcfo
         iBiId1SlJhYc6/LXeCSqIm+JF0342d3pEfAElxmGA5dJLDuUkgpNA1jsO50uhE1bA9Q2
         FsBtwfusWAI47lHwiD2jG/AS79lb4+WMV3BzC6S2dyPKnt3ww91SHmyTcfbezEh1pYIb
         I44MGDHeqV4mB9yxt0FNqfwM4XOkgWg0QD4qCPV+O3uEu8TZLJXoRQYMx1H9E2Ki9O/v
         Qbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1dLVkj+lz9yEJOlzSfPlXypspXkh6oRI9Z86Hrfp6EM=;
        b=mCgCB9YvKs0jIwqzJKvPVI/fVId+PnRR+vLdY6cgnC1J59FiDGTV/GKseRuPDiKpvW
         1lCbkDKK37Hp61/RdO9daB29QLqEqnGjfyKhPoTSBdg+viOX9WiKiQxtwZFVOCiiXqss
         LIkGnkC39vZowBC55zNxRWymKM9LzEXKxHtStIJ4YQ2BRwScK95opVYayzLy/PwK+/px
         3KqXZEsTBZplKq4DvkK6Ge26Yqsl5mUV2g91g5tPgFjriCMpohi7U6pX2rw9IthSJhgv
         mAfVkFL1rN/XzJAA1PMMSisFDRzBsMkQHn2lwKje6ZU83cJOJoXtPYEIzQtWlQwiiLjN
         XJDA==
X-Gm-Message-State: AOAM530tT1KxTqlay3jPlcPyq4js3gTMGVkisx0D+uOx2TlMXd6N8DfY
	ncoC6r0uaPoBKZx5dNJ6+6u+TdygSFvNEwIz
X-Google-Smtp-Source: ABdhPJwZaLxwkBKQddHcmTHkj6VolQkuOlIwbRYjZuerA0FAlp0+VSDfmlO2nYrBX3SAw2LEBnnJPA==
X-Received: by 2002:a17:902:e889:b029:e7:1490:9da5 with SMTP id w9-20020a170902e889b02900e714909da5mr1028298plg.20.1616632801659;
        Wed, 24 Mar 2021 17:40:01 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:01 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 03/23] scripts/generate-testresult-index: Ensure backwards compatibility with older layout
Date: Wed, 24 Mar 2021 14:39:12 -1000
Message-Id: <f75eed77f57950c454c777bb327398fd6c4639b6.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 83c2052781a9fd587fbab06702eae31951d08dec)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/generate-testresult-index.py | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index d372f30..7839cc0 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -83,9 +83,11 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     reldir = "./" + build + "/testresults/"
     btype = "other"
     files = os.listdir(buildpath)
-    if os.path.exists(buildpath + "/a-full-posttrigger"):
+    if os.path.exists(buildpath + "/a-full-posttrigger") or \
+            os.path.exists(buildpath + "/a-full"):
         btype = "full"
-    elif os.path.exists(buildpath + "/a-quick-posttrigger"):
+    elif os.path.exists(buildpath + "/a-quick-posttrigger") or \
+            os.path.exists(buildpath + "/a-quick"):
         btype = "quick"
     elif len(files) == 1:
         btype = files[0]
-- 
2.25.1

