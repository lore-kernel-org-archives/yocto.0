Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web12.6481.1599511850008204056
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cg3WhOuR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id l9so15219787wme.3
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iCg1vkAf3wTBCxWLh50ok3Cihkl3VnVN9gu2yOzlVXQ=;
        b=cg3WhOuR9EsD/om3rMAYcXH+LDPP1nlWJA6HRHh6l9PMuKQ0hAVqrBz3nu6cEt7T6q
         yB/+/EmjTcGEVckAw/mV3nrBoh/0d6O8Dx3SICPvoxi3GSyKk2N4YjCOpyd47FjVyWaY
         RV0rUgWAs0DvVGEO4r0IahHE+PphRK+2mXwBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iCg1vkAf3wTBCxWLh50ok3Cihkl3VnVN9gu2yOzlVXQ=;
        b=YIe4lIFPSYZh03POPPG6So+ngr0RaAUgNlvw3V94pdg7KNJ/0YLfyrup8kOcPGs528
         fgFh7qUIavk1WFedhkwZgc3ld0i7H2+jKZ51Nz3tX+JiPBTHLBQsceMnepG0qdGQYv3V
         qpSij9a+DG9V+5Fy8QcfbiYcjTdup+D/Jvtu0nxbdDdn6JrErWsIT94e7M5l3DMT4SSJ
         syO6qh+LuHSsvqRJyGPj/+RWX08Tt1oPYuoTvqQ0o/pCYp+UCo/4I+qgiAAr2TlTF8XQ
         Jvdm4UQRMV5UCt9T2ZpadCQNu5lhMnzjnbYXHpNZ4jPNYImscuq5FCoXCpY3Yw1jFXpg
         sG0w==
X-Gm-Message-State: AOAM531i6q/TA6G8k9G3PAEh8d31+BK/bv4R8NvMO//UNMCVt0oZBIbx
	xZz6OCUlEilrOlynPxdopxijUQBfAFxBpw==
X-Google-Smtp-Source: ABdhPJy7FC7nBkubKAVdeIpVpEvu9ANfsoABMOI3N+DWcwOJd4KLW4HFgt2adI3xV/TpMa3F9VqlCg==
X-Received: by 2002:a7b:c847:: with SMTP id c7mr1023889wml.149.1599511848286;
        Mon, 07 Sep 2020 13:50:48 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:47 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][zeus 14/32] scripts/utils.py: Fix confusing naming of getcomparisonbranch() return value
Date: Mon,  7 Sep 2020 21:50:16 +0100
Message-Id: <20200907205034.1941516-15-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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

