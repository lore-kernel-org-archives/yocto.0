Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.20821.1599740777971253205
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XYSgjSsc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id l9so5598329wme.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iCg1vkAf3wTBCxWLh50ok3Cihkl3VnVN9gu2yOzlVXQ=;
        b=XYSgjSscIXBm69s4wzaUy48c9oUs94CJbnqqB8PmOS6Epro7mjf47HlSTd/2x6cFcR
         Qj5/DkbQ67hC2uYQAgSaWxna1AFDh/envr/pDrMZDdFEqnRZe5KSz9ipnxgUnsbcnZEi
         LyX1QLSlG8fR3BgHwgUZ3TW04UUd3gsVA7L3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iCg1vkAf3wTBCxWLh50ok3Cihkl3VnVN9gu2yOzlVXQ=;
        b=FThmDkpzre0XZohQrfxMv53zNv1yRSVVG9bm2HTfZkXxSPccckdMiVJi4FjL7kvokU
         AK5jZbYJ23ym13Rv/uvCjP/ShImrvjSTR+eCH+CpWFM1IUf92dM0d5aMurOITGJTHT4P
         5GBLctMtMNnunHpS8BzMwbchPAYgM12rNTX/B6qxu4lGSoMx3SmTX7b3BbiarGPGjzOo
         +JbP5mAuTZTM8uWMmbkoCQOO7b8lc8J+j5sfnLnS7NVHTNdNJMVXqrQSTnFfPUPjUwNy
         fPugW5Akbtmqx+ITcD/v2Pi5696v7Z88jAY+Gnf14ySkmbGqGrYPvSu/Lx4F0R0uTFiJ
         8NyA==
X-Gm-Message-State: AOAM531rWmju1dGP+6/vaeqsmM1SZKortC3bknLxkat4qRZZ3a1pi8G9
	OjBsxsdNn8385qjCReQDSKEoYS1bWA/g+A==
X-Google-Smtp-Source: ABdhPJzoN9vrhlcQwpAC+CJuenuVrKZ08aNjIBAMFOoZ2ZgtT9ldDajBZdM/MlH5BpUU4/TTcWMoXw==
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr8848546wmi.105.1599740776291;
        Thu, 10 Sep 2020 05:26:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:15 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][warrior 24/41] scripts/utils.py: Fix confusing naming of getcomparisonbranch() return value
Date: Thu, 10 Sep 2020 13:25:36 +0100
Message-Id: <20200910122553.2040430-24-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

