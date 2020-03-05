Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
 by mx.groups.io with SMTP id smtpd.web11.10833.1583406113219890475
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 03:01:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MdTtsSjt;
 spf=pass (domain: gmail.com, ip: 209.85.215.196, mailfrom: jonatan.p@gmail.com)
Received: by mail-pg1-f196.google.com with SMTP id u12so2584488pgb.10
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 03:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+jKhFtd1uzrE10gYh7A5j4VpEWMDVwaDgRRx/Msec/4=;
        b=MdTtsSjt5OeK0YO4ciTT0ScZTefxl9AXVlTXal/5PKTPuwMjhGEt1hWIwj1XBRpHgA
         IQ4K2MXskcPvIoNNN7B/G5RR7Q8VzSiyU+o9BBdAPxFGd2fYQkr8RjOESo+MlYIQ9iRr
         z70+2je8DGCZ6uM8CyL6Ov7PZJW6YsMl6U+Vc+E1l0vtSTdxwTAsaE9fgpfrk8c4ok5f
         nZKxkSSdU7zT8vynF9+UScvocP01AiQzOhCV9yaK+BEqAXt8KJ0gere/yvGy1u6DSCu6
         YTALdgAThKQXVJzYmSJKkTU1g7E05/eH5n0Czqiusn2IABnVihZeE9LZZLMSd7AkA/4p
         fDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+jKhFtd1uzrE10gYh7A5j4VpEWMDVwaDgRRx/Msec/4=;
        b=gLvwthkyCzQi7pjea6gwQ3IQNKNuxBIf1vQJySGuUZLCDMPLN25z8LsWeLWfljKILv
         PcV1bMeapDFUAkLAxw059V9KqrXBVfDUvPVLsgSCX7AqIzj/QzKRzop1iW/e98+10ugv
         rnAO7zzJXP3TQW6emeGeusMNEbbHD7TOLankOjvNeXfw7Z80+Ahd+TIXeR3Dy8ZvlBPi
         630qu5SEDuhFz1z4W/5h8aCUPnCG0QGnU5LUWkiYTBsxO3UQpgG24Ii3whJCu6prOBMH
         Kubj7n9AYrdksz3hVwhnzxAuGkI2mB2Ju3mgx6gTSq0lPwmWzsYF9uEiCkIX3+0FGINa
         D07Q==
X-Gm-Message-State: ANhLgQ39waOmOJsHFDnO809z7sfloenfhlpLk3qlfIzCqm4qyXKYCUYR
	GId8Zu4kgXzqy34UaAg5FEUaqe4s
X-Google-Smtp-Source: ADFU+vtzh8TrRBCGhi2uJUA4urZiyCBAFvXtsjFXXfRXt3ia1fy4rKI02J0J3ERwHf5h6MPMhWh8vA==
X-Received: by 2002:a63:330f:: with SMTP id z15mr5408924pgz.104.1583406112312;
        Thu, 05 Mar 2020 03:01:52 -0800 (PST)
Return-Path: <jonatan.p@gmail.com>
Received: from X1.corp.ad.wrs.com ([2a02:aa1:101f:619d:9533:e6b4:96e9:5f67])
        by smtp.gmail.com with ESMTPSA id o12sm5778157pjs.6.2020.03.05.03.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 03:01:51 -0800 (PST)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH] README: Add meta-python to list of layer deps
Date: Thu,  5 Mar 2020 12:01:29 +0100
Message-Id: <20200305110129.2509522-1-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 README | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/README b/README
index 7cc5f48..f223fee 100644
--- a/README
+++ b/README
@@ -24,6 +24,11 @@ This layer depends on:
   revision: HEAD
   prio: default
 
+  URI: git://git.openembedded.org/meta-openembedded/meta-python
+  branch: master
+  revision: HEAD
+  prio: default
+
   URI: git://git.openembedded.org/meta-openembedded/meta-networking
   branch: master
   revision: HEAD
-- 
2.25.1

