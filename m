Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.39649.1628875353681642597
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 10:22:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=0GyhbJ5v;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.43, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f43.google.com with SMTP id nt11so16312072pjb.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 10:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=BS7QsYI2m6w0nIhXWYDu+IPo0eRnT5GRWtbhUiknPKw=;
        b=0GyhbJ5vJn/Hpa1/equxiMQ7R0KFoYS3i2Wsr9155u0WkTMBHnGxVOIJMtTOzGJAS/
         wv45dSCPbqDf4RST9ssKBQ83Y4f4GQcKCFOwZGmqovJ2jKMEVfycSxTNqFFmF8COJSSE
         Q2EmbJEID11BxH6qt/Q7rvtq0rO1FVya1Nxpyl8VR0lYvUg2yxHsaO+rmPovUtzUksEE
         xcPoEtRVDD3/GUQPiIlM6/ePCUU5GnvOiSAGFY1bO83VbophiaMni+aW7e3ApH3NyoyC
         plBbys7Qxwr6QHxXCsBPQaYEgh+P5TxBMHGBsBVhBQiaG9wKmw1V7HOV196dym9gLP2i
         kRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BS7QsYI2m6w0nIhXWYDu+IPo0eRnT5GRWtbhUiknPKw=;
        b=pGeZ9xH0va6kRpYCEqVbofeIPhqygQsSJ5DSiY2vg+GXpdUduBZ/KrBO2sI1c5Pw6k
         BWUj7vEterwzOFMXANLfLeBlZE3nHSgFU0zdCiKS3T9nBmY4Us523/jUYYI+gTQZyj0C
         NJBXRyxw72g5M+9lyZKS00jQ+X/c9mMXbAtWPLjPYfmqy/OZCo22HGyzrc5DPDzsg1vm
         Tz9pQhN6K0Bsoagca+rWsRWNInGNpKK8EvRbpV05EBSHLyng53vUGsrf9p6NN25lzk2F
         xC0GHBgvtAUSKRPN8p81R/lrGMCe9vJh8NLa46UDq3MCQt2YrlXTwmlul5iPoMWoZ1sV
         shuQ==
X-Gm-Message-State: AOAM532lewpN2HEvjINUBUu8+fPeZ40N7AfriWnaUbZVmbI2Ic0YN20q
	7+w7UAdTIVbQoYQJpxlxfi/XAxojSxm14u+u
X-Google-Smtp-Source: ABdhPJwCmMAx0JB+CBnuaLAiGuZq/TBfWc7Lttnf5VeE0/ljzwRP8Hr1WUSsiTokXw1U5GTokUqJ6w==
X-Received: by 2002:a17:90a:8909:: with SMTP id u9mr3607273pjn.9.1628875352382;
        Fri, 13 Aug 2021 10:22:32 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id pc6sm2035637pjb.29.2021.08.13.10.22.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 10:22:31 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] schedulers.py: add dunfell branchdefaults for meta-aws and meta-openembedded
Date: Fri, 13 Aug 2021 07:22:11 -1000
Message-Id: <1aed7040b9c5a07726a51935a2e485c4c337dab3.1628875051.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1628875051.git.steve@sakoman.com>
References: <cover.1628875051.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Both repos have been added to check-layer-nightly so we need to make
sure the dunfell branches of the repos are being used

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 schedulers.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/schedulers.py b/schedulers.py
index 8f6f343..a6e9fd6 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -70,9 +70,11 @@ branchdefaults = {
         'branch_poky': 'dunfell',
         'branch_bitbake': '1.46',
         'branch_meta-arm': 'dunfell',
+        'branch_meta-aws': 'dunfell',
         'branch_meta-gplv2': 'dunfell',
         'branch_meta-intel': 'dunfell',
         'branch_meta-mingw': 'dunfell',
+        'branch_meta-openembedded': 'dunfell',
         'branch_oecore': 'dunfell',
     },
     'zeus': {
-- 
2.25.1

