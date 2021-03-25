Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web08.1390.1616632799902894203
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=1OESlURN;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.179, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f179.google.com with SMTP id e33so67343pgm.13
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+wLBPeubiXGuuka3OqL0KFkE5XTmNOzNA51xIS3mXl4=;
        b=1OESlURN2RyNQFtLwwxHQksOnZTsRQ41hwlFvpH/G0sI/7sxtGa4/oeFbqzTW8eEEE
         PKQv1iFY48yHMjssXDtv6dGtexd1qw9YC2gQ//qW6xtCanSsWxL2z2liY9FfNJK3++lA
         3RdqGdulQy7Wq1DUz/TsOEsUVky87WW1SC6KRG7ATK27b1ykGhUb9twFRgEYx4v7vwan
         DVAYTfc2Lm1Y7leppjv4Spt/g6tBtgvKdJGbBB3JP/YBbhnBoFTSddcTlUx3PX6ETL20
         vTkbd8vhSnErvmZgfL1VXchs8tW9aFB5Ho0XOQZwl0EFbvPCpairUqYZacvSqhjx+6mN
         RHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+wLBPeubiXGuuka3OqL0KFkE5XTmNOzNA51xIS3mXl4=;
        b=c6xgKGKoKODdMd7D9bkpiHuWkhnZkdLxh/bg7zKrfhr1E/5QVNVBlVLlmeTaZEnAak
         TlXIMcfWuenYAMwyheq4vTNZ9NP4g8yIt3OLs8FrvUBbv89fPjrBoUjNR3ZMo/eQmpox
         7raJjYK8gRMhYf73yuEvut+3rZYWDwGPMaj8R4oAT327NySFUM+PFGu0FAd+1mKs8Ozw
         9CPYCF39gb8L7xiaWZZ7OKOmSxITXthwoASyUHEhV+C2QWfpgVA9n2GbCTiTKCDJ6/M1
         mdSPTo2jBIB39hgFrWnQGtRIOKfToPjv1GYs5m7qgB3qJl/pJeerooW3VEuQi4zXtaFo
         ZKxw==
X-Gm-Message-State: AOAM533ou31SJ+4aWTN1tFjps8dKTTCZ8r6zQcqBwIHHS2qogfdT1Iak
	DLaMj1m18rMogz7jV1VAJ9myqi9T9ZkDYva9
X-Google-Smtp-Source: ABdhPJw8zAxclaOf/dyM1cesOZmNPpInPM2pBpUoBBF8hfdrqBxZYktum3p2+XrQdzSkjPrfumXmzw==
X-Received: by 2002:a17:902:ead2:b029:e5:ba7a:a232 with SMTP id p18-20020a170902ead2b02900e5ba7aa232mr6371489pld.19.1616632799019;
        Wed, 24 Mar 2021 17:39:59 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.39.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:39:58 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 02/23] scripts/generate-testresult-index: Update after 'posttrigger' renaming broke the index generation
Date: Wed, 24 Mar 2021 14:39:11 -1000
Message-Id: <383ab66f729da3f0a34fef22fa359265226acd7d.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 6d6c45cbda5fb19c40a532b1f5c9fad39a354df6)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/generate-testresult-index.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 827395e..d372f30 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -83,9 +83,9 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     reldir = "./" + build + "/testresults/"
     btype = "other"
     files = os.listdir(buildpath)
-    if os.path.exists(buildpath + "/a-full"):
+    if os.path.exists(buildpath + "/a-full-posttrigger"):
         btype = "full"
-    elif os.path.exists(buildpath + "/a-quick"):
+    elif os.path.exists(buildpath + "/a-quick-posttrigger"):
         btype = "quick"
     elif len(files) == 1:
         btype = files[0]
-- 
2.25.1

