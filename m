Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web12.1186.1580071568817397669
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2020 12:46:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIDFVPXQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: jonatan.p@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id y19so4811765lfl.9
        for <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2020 12:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i64kaUjcmgPMGtA8/ij46isMxSJCM4Ipgd3m0uIg/nI=;
        b=GIDFVPXQ5rWxdfwb0xuVol0JRKui/oLf/V3B42xdhdZczBbapN3Z8cOlSOY+SMNou9
         8xeXlzA2FeOBKgBnhqwsdi3EDdTrOEhpeO1S17RebGszaj9+qdBrrzrm84sRE+VxnJpm
         lJ9wigvqLBjyPbCxFbwwG51yMf/mqV3IWiW3p0WoMMHqPdUSBxW5kUlu7J011BFyS7zw
         VMbsxA/A8gdfzXKTQ9UOtDOjohLBf9S8mIdCq8EMY1PXH/GCq4Zp36EOBIdp4/rHi/ND
         EQyx8tCZKMSeXLYxlDePmY+HsmqVUYTY7AGFWWQHGiHIk1I4glK71yHIsOph+Js/KTLd
         XVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i64kaUjcmgPMGtA8/ij46isMxSJCM4Ipgd3m0uIg/nI=;
        b=nrqPm30huxCkV7MSQPLyFY9ogwhvfHkmTO6WcjjG8WA/oYA6rVI03U0UkYcFnSC7LY
         lsQrITDtmr84yPe7cPgpXVkDMfcg2QZO5QcsNHmTOrEFmWwOO20ZVGV4JCQb/X/mWyJM
         Aff8qIn/73RuFwybJPOkWqaW/vwjObMBqy40Z38GWpLBgrbLy6vhWAnxKmmlKjRHjM4X
         s0w5QiGnatFNECnX6O+ZApNhO3zSDXzS+5LfuEhJr/SYjtaBQwQNrs8KDmJk6KwpDTfD
         Vr+gMxyR5WDaZjGZnDLlYZLSHLFjLchuWawYygSxJXjyr2vOP4/9i2QG1oTM+uweKvAg
         qz8w==
X-Gm-Message-State: APjAAAUV3uTC/UC67OBIujMOgkIbjebbgYkXGMGThdjHJlkFKTcpwZuS
	vj5xowI2KOsAtA0qJVgIuTk3jX8g/pY=
X-Google-Smtp-Source: APXvYqyZXemltwpKXQBNwV2x2hOM5+eYnDlgPw0dx6lnc1Kts6sgo7lQkwYM2LJBLQobFlsqYge8cw==
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr6155031lfk.67.1580071566624;
        Sun, 26 Jan 2020 12:46:06 -0800 (PST)
Return-Path: <jonatan.p@gmail.com>
Received: from desktop.lan (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id v5sm7031332ljk.67.2020.01.26.12.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2020 12:46:05 -0800 (PST)
From: jonatan.p@gmail.com
To: yocto@lists.yoctoproject.org
Cc: srifenbark@gmail.com,
	=?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [yocto-docs][PATCH] dev-manual: Fix typo in note box, in section 3.2.4
Date: Sun, 26 Jan 2020 21:44:29 +0100
Message-Id: <20200126204429.19655-1-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

"inherit packages" should actually be "inherit packagegroup"

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 1e6addde4..ff53e0c9d 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -1397,7 +1397,7 @@
                 package specified in the <filename>PACKAGES</filename>
                 statement.
                 <note>
-                    The <filename>inherit packages</filename> should be
+                    The <filename>inherit packagegroup</filename> should be
                     located near the top of the recipe, certainly before
                     the <filename>PACKAGES</filename> statement.
                 </note>
-- 
2.24.1

