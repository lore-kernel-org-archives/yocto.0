Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49FEBC41513
	for <webhook@archiver.kernel.org>; Sat, 13 Jul 2024 20:17:44 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web10.4481.1720901862268617134
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jul 2024 13:17:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=be+ipgj6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.174, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3d9234b77dfso1604213b6e.0
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 13:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720901860; x=1721506660; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NX3rcgTzXGskVC0xY4uc7iHvifSH0ec4q89mDYIY+9g=;
        b=be+ipgj6NijXY3BPj42ULOAol+S6FsZDuCschWAlLNxwyFyZPbNe0Vfy2EBT6OffgB
         jjhF61cZJgmqU4apkprc6tA4cbmjP7Jd/uEcJAnXCoSLS+ti17aoB65zmc1FfbfpqcVu
         GIgo9bSZcG41e9QYMTxRrfp44BTHz4WTUsv/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720901860; x=1721506660;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NX3rcgTzXGskVC0xY4uc7iHvifSH0ec4q89mDYIY+9g=;
        b=XlstIGxr03W2VgibtHbgUYzEol32p2rsbKBXSMYTMm5nqucuv1n0oxHLm3EpQCePJ5
         g65DZR/HZStb+nuw7WGeUs+ImPWFCVQkX5sWQXDWWaQ3F0fdb9zCuufl8PQtiB4Gx1Du
         XTYTxyu/nXw9ZG0btyrj6zxYTOofToWKe3q1OV9FGelR1FXS+Q1T18uYB85SpF2dGeak
         X+qivC8FSWNqS2RUisEPR43wyCIk6Hc2VtFtAqpmUN6VpPj1gpZSzORsJXzEPaJre4Ke
         D+8PXioqZ+U5HpmU3nYgOmFl3vEsNcj+osLEF+2c+0rt6k6HzP7ZxKLe4ovFKowEscNe
         iPQg==
X-Gm-Message-State: AOJu0YywmyCjbpBIXY171wrzMWrp++j6T4qqeIwa0WuJCnJRNx5Uj9fO
	kr8mi2fcQMeGimVA7pdwC/LBPkdatx2jKCcOWqRe7yAJDkoSuSUcbgq15tdtUvwdlkj2BAnWI5j
	y
X-Google-Smtp-Source: AGHT+IHsiDqTmoMrEufqrHSwPdyRMpyWrhMUmlQGpS1P521MEtFb/j6EKvwNMy/K0WSqRVg0z3I2kA==
X-Received: by 2002:a05:6808:1306:b0:3d9:324a:3db with SMTP id 5614622812f47-3d93bdd181bmr18326530b6e.6.1720901859985;
        Sat, 13 Jul 2024 13:17:39 -0700 (PDT)
Received: from hd-yct-laptop.pdx.yoctoproject.org (97-115-81-219.ptld.qwest.net. [97.115.81.219])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bc28835sm13836035ad.148.2024.07.13.13.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 13:17:38 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org,
	yocto-patches@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [yocto-autobuilder-helper][PATCH] scripts/release-parser: Update release generator for 5.1
Date: Sat, 13 Jul 2024 13:16:39 -0700
Message-ID: <20240713201638.390039-2-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 20:17:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63488

Comment out future stable branch for easy updating.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/release-parser.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/scripts/release-parser.py b/scripts/release-parser.py
index 7ae3c0b..0463667 100755
--- a/scripts/release-parser.py
+++ b/scripts/release-parser.py
@@ -84,8 +84,10 @@ def get_git_tags():
             status = "LTS until Apr. 2024"
         if branch == "yocto-4.0":
             status = "LTS until Apr. 2026"
-        if branch == "yocto-4.3":
-            status = "Stable Release"
+        if branch == "yocto-5.0":
+            status = "LTS until Apr. 2028"
+#        if branch == "yocto-5.1":
+#            status = "Stable Release"
 
         # Create a dictionary for the tag
         tag_dict = {
@@ -108,10 +110,10 @@ tags = sorted(get_git_tags(), key=lambda x: x["original_release_date"], reverse=
 
 tags.append(
     {
-        "series_version": "5.0",
+        "series_version": "5.1",
         "original_release_date": "",
         "latest_release_date": "",
-        "release_codename": "Scarthgap",
+        "release_codename": "Styhead",
         "latest_tag": "",
         "status": "Active Development",
         "download": "",
-- 
2.45.2


