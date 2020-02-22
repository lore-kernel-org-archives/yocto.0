Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web09.8238.1582388695784633160
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 08:24:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4GgdKLo;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 6so2653789pgk.0
        for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2020 08:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=s/Co3U+KvyWu1RGc4pJxRwaNeN6h6h4KpO0wNIG2aaw=;
        b=Y4GgdKLoDml5Bvtb3/1deL9hm1dnaDF+xdepFId9QICUBgyDOjZzFaiLUUDsgoX4Ny
         rAiwBU5WyH85ZcAVGoacTwusRrNrVIUV6yaR/9F0nragKoOuaiBdk2p/5en7WWwucFAp
         uRAvprKhp+uXMBLPTeKEPYe3PhZKihSUQnQtfLeUu+JIc0njFKp48hZDG2UBuh7TXgub
         GMFoN6uSOhL2+W/9Ec1E2C5SY/SYEobYVOfRmJS0Zp6pHgJiuUh9Ggtuw5gFQxq0/kvg
         ktVpfgcqq8536I+h4ONwfjw2+dFqF6uFl9sn2FJByWPJ+3IQ2G+aqFaJWIfHCrKVspVP
         QXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=s/Co3U+KvyWu1RGc4pJxRwaNeN6h6h4KpO0wNIG2aaw=;
        b=RlWxG0hkJRg7BQzeizDbiG3OJsPvnZb/LEZWVbBIaAUoU45nijKqkbMaY0t0t+5cBi
         gaV1IQR8ohzApD3VJX0/Aw6JkbSYXsSfQgBZFWX0GNm/LcL00m2Uwj43XGQ1sb/0Ucea
         yaz/rr4Cc/vqRoBuwxGf35AmTgYxsxjoT/J4RpQQ4H4w9HG2YTBvraO5wuv18bo8ZSpj
         urA84TQLWECAgnUlxNqg3lHj79LK81Ls/yCrUTkqnNb9y9OHDTg/3eWcvh+E+WtAGqWC
         dAu+5XuXqtnXCcKzzklTlhZHmysPwJXyeEWP130xsk0S1jt1aAY0QoTojynbShZG4fkc
         XJ6g==
X-Gm-Message-State: APjAAAV04DQRrpwGWMFMPf4/arkiPOId7NkIf0q3z/iepAVSxirMzsxr
	BedfZFGVWUIz16M2TR9nJ6t+glND
X-Google-Smtp-Source: APXvYqxGGfD2cuV/Yn3d3MCgqQz4QfZZ2H5ZPEx63i0BpWMm6UfJ1wBPjWfIYJoMUWQq8M3b01hs2g==
X-Received: by 2002:aa7:8717:: with SMTP id b23mr43878655pfo.53.1582388695122;
        Sat, 22 Feb 2020 08:24:55 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f455:4f9:e4a2:b3f5])
        by smtp.gmail.com with ESMTPSA id q17sm6851209pfg.123.2020.02.22.08.24.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 08:24:54 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-isafw][PATCH 4/4] README.md: update to new maintainer
Date: Sat, 22 Feb 2020 08:24:49 -0800
Message-Id: <20200222162449.20014-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162449.20014-1-akuster808@gmail.com>
References: <20200222162449.20014-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-isafw/README.md | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/meta-security-isafw/README.md b/meta-security-isafw/README.md
index 16b2eb9..16041cb 100644
--- a/meta-security-isafw/README.md
+++ b/meta-security-isafw/README.md
@@ -42,7 +42,7 @@ any other layers needed. e.g.:
 ```python
 BBLAYERS ?= " \
   /OE/oe-core/meta \
-  /OE/meta-security-isafw \
+  /OE/meta-security/meta-security-isafw \
   "
 ```
  
@@ -75,8 +75,18 @@ please define ISAFW_REPORTDIR variable in your local.conf file.
 
 Patches
 -------
+end pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
-Please submit any patches via Github pull requests.
+When sending single patches, please using something like:
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security-isafw][PATCH'
 
-Maintainer: Elena Reshetova elena.reshetova@intel.com
+These values can be set as defaults for this repository:
 
+$ git config sendemail.to yocto@lists.yoctoproject.org
+$ git config format.subjectPrefix meta-security-isafw][PATCH
+
+Now you can just do 'git send-email origin/master' to send all local patches.
+
+For pull requests, please use create-pull-request and send-pull-request.
+
+Maintainers:    Armin Kuster <akuster808@gmail.com>
-- 
2.17.1

