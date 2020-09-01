Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web12.248.1598978545253048125
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 09:42:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BTnQzuGG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.215.171, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pg1-f171.google.com with SMTP id 67so957641pgd.12
        for <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2020 09:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SzW1sol31oYq++85HFLLWjjvqNd+5e0Uh5DndRdh9V0=;
        b=BTnQzuGG2qYDiKSDjUy5g+5JuyIW+iArdwhg+qCobrUU6SdyWxE7E0sW33KsRvlJ3G
         7oTs3LD8RWF+uz4GXDVgvIGThZVqwu4wSF/h7TkMEI4aja3KSfc7id2cUYkS/n/YuPFP
         2zhPkbPM++S9S4B+mY2mjzF97k9mO+UIs4w4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SzW1sol31oYq++85HFLLWjjvqNd+5e0Uh5DndRdh9V0=;
        b=OKu8tYRmqyBlavnBg0yjMQ01wTGHv5+f6dv60xUv6gNJwiRc/Nb/KKSRznSQ68Ck85
         XYk9HygeM8+XMilbjtPCnubUIXGdF0mNLrenjB1pRTKnz6dvA+nT3JpeqNwQe5eyJsoX
         4NTe4ghLfRMeinTMeoV8XGEAfx+HcIvhdSjOCiNcVvXiQIdy8locoGqYdf6BZzcnFNnN
         UVdvtjq0ieTzmFhT25hV4zYvgGiGIODVonR3dpZvBGwZ/xgM5rkb4Shkx+Z4iwnB7YbM
         JiOEq+I2zwKm/0H084XM/4LfIvlVU8PHeJRdHKQfp7FwQaeVNjNsb2/tpHsicO1Wj1iq
         OY2g==
X-Gm-Message-State: AOAM533tLIwovxGU0Bmz3MveE6y6cOjIs3Bn210SqasnVc6ptN/zCkOH
	U8cRbuPgpuMyONh2gQ1vo2wCkADS4xBZBA==
X-Google-Smtp-Source: ABdhPJxnhS/n+G03U4RIXG2nTVFJ48zhCXhpUeyErWPq5KRdIEALlx3SAUTitmwBV77bJLvG1XSe/Q==
X-Received: by 2002:a63:1252:: with SMTP id 18mr2298253pgs.246.1598978544315;
        Tue, 01 Sep 2020 09:42:24 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.yoctoproject.org (c-67-160-163-132.hsd1.or.comcast.net. [67.160.163.132])
        by smtp.gmail.com with ESMTPSA id gk19sm4226013pjb.2.2020.09.01.09.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 09:42:23 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] scripts/send-qa-email: Update to dedicated push capable domain
Date: Tue,  1 Sep 2020 09:42:18 -0700
Message-Id: <20200901164218.527341-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/send-qa-email | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index abc17e2..f38c876 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -70,10 +70,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
         elif basebranch:
             cloneopts = ["--branch", basebranch]
         try:
-            subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
+            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
         except subprocess.CalledProcessError:
             print("No comparision branch found, falling back to master")
-            subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
+            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
 
         # If the base comparision branch isn't present regression comparision won't work
         # at least until we can tell the tool to ignore internal branch information
-- 
2.26.2

