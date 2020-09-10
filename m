Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.22154.1599744665219906599
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N+FBBBKr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id g4so6728844wrs.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iCg1vkAf3wTBCxWLh50ok3Cihkl3VnVN9gu2yOzlVXQ=;
        b=N+FBBBKr6utibmaxYBEk9ITEsLYycJxsoUmjKYe0xwi5O/S48SMQzxAz3Vvj1gWIP/
         E3g7CUY1e2T/+LrXE5751wxBrF343bjjcAzm4Pl41RpUCTW6psZfozEQaMYSFI82OQug
         ABo4fC0BOQe9gopz1tQBQssgGeyWeqVXPdmDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iCg1vkAf3wTBCxWLh50ok3Cihkl3VnVN9gu2yOzlVXQ=;
        b=UJl9E85RZlFN6iY22Von2CkR1mrKNIS2QNsk/F+V+J+OrfAT7+5DcDJIAJwTpmguO/
         PyhBa8KRa7PAdWrhRTMTq5k5gT4LAMDtAiMcF907B4c/xMYOOaZ11leU9mmoqT6w/sew
         m9SSrz6nhysujUZrVhR2ydzh8e2piBGHDQdnlYhQxJ4yHTfIC/O7G6z0P9pJNwvfF/ws
         VqSXv/+ZhJAFZB27VlOau63B65PkDmNNuwGEgyBupG5hQTOj3Y71ReA3SA7VVt5FZN0Y
         YczYOAF215RudRkRxZDC2QqbRicjXAUejixW7RnVoAMqSYCTtwxzBAB05i7mQSpy+jXj
         +K6g==
X-Gm-Message-State: AOAM530NLvbTdtZ2YP0ry0NQ8OmnnBRMRu3EYm6KdP84KQE6u1HEaluG
	qgUBe2wRKkSlfxfKfGkHNB3Mehg5kyd9cA==
X-Google-Smtp-Source: ABdhPJxKQzZFi0oyxj9NrdlFjJhvvba4ZH8zDbbna0HjHjcHGpvql4ACwQ4BfCGqUP//LCa1XroaIg==
X-Received: by 2002:a05:6000:1184:: with SMTP id g4mr9095033wrx.20.1599744663506;
        Thu, 10 Sep 2020 06:31:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:03 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][thud 26/40] scripts/utils.py: Fix confusing naming of getcomparisonbranch() return value
Date: Thu, 10 Sep 2020 14:30:21 +0100
Message-Id: <20200910133035.2044355-26-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Steve Sakoman <steve@sakoman.com>

This code was copy/pasted but in this case the variables should
be called "compare", not base.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index 68652d9..5542fe2 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -358,9 +358,9 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
     if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_FORKPUSH", ourconfig):
         base = getconfig("BUILD_HISTORY_FORKPUSH", ourconfig)[reponame + ":" + branchname]
         if base:
-            baserepo, basebranch = base.split(":")
-            print("Comparing to %s\n" % (basebranch))
-            return branchname, basebranch
+            comparerepo, comparebranch = base.split(":")
+            print("Comparing to %s\n" % (comparebranch))
+            return branchname, comparebranch
     if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_DIRECTPUSH", ourconfig):
         return branchname, None
     return None, None
-- 
2.25.1

