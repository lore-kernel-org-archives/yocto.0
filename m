Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A949EC4345F
	for <webhook@archiver.kernel.org>; Fri, 26 Apr 2024 09:49:04 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.9825.1714124934149526735
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Apr 2024 02:48:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N7Q5J1KM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51abf1a9332so2608406e87.3
        for <yocto@lists.yoctoproject.org>; Fri, 26 Apr 2024 02:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1714124932; x=1714729732; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=LhkurYZcb8qUx/8V86Eae6z5sR96Z+ZKDJX2MFV2ioY=;
        b=N7Q5J1KMX/dTTmlD013ZXK326uYPnt7Q/kjf/SOU3ZLLYNQaDsMtYSFOaSGXWurCit
         jfk52KhJdYbf7aCuRy1OV/AU69To4OIlP5pkmiB7BsAsKGp4+orqs1h4MyHTw2vim2l/
         Kv4WFk4+9XxElnsqZiaXhbIj/oHMLbNHVeT2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714124932; x=1714729732;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LhkurYZcb8qUx/8V86Eae6z5sR96Z+ZKDJX2MFV2ioY=;
        b=JYhBZDMIzYtiTIC45lf3sTWRrX6Q7oKFRO8dI0iqEzbAN0YkLfAT3TYM8q4YSpcy9k
         5wMbyGWjo9fK51SmEZ7WUfs2nxDHhRjA77lOc2tmz23YPmC15NQffsX5Hg/KJPMHy457
         ycuTHfc+mnq72nlJ9CR5VCqjcVlb9TyV/c5Kh3L3Kaud/NQ7VCcregbmLxv3/HZpXUh3
         ZRhDiF6SPb2ZxBta9t7BRMm4lZej9PuXojzZsObvgKkk314IIVW3nk0mOa4bQpMEMEuT
         2PiTbxXhUUz5lmvfgyxQAYOxd9WNvisIBs3XV/V7NevB/hou0woEWkjM41Zyju/NDuMb
         UMpg==
X-Gm-Message-State: AOJu0YwG+//K6Ahky373A9D9kBO2XTxczOcsrqISkauoplGy2kbjg6xi
	55UoKgisPPvnz8v+6o4Bc3CxYi4uGCgIxLMNMvC1gmsDsSzzLvQwIjdEA8ErQMLGAMRj41Vwdmu
	Imoo=
X-Google-Smtp-Source: AGHT+IHXtzssoNeOw8eTSACyaLVBnyuiAKlejwftjjGShyCGBzzR5bPHkFimuGsizmbGhhrco6hb/g==
X-Received: by 2002:a05:6512:3483:b0:518:a89f:bfa5 with SMTP id v3-20020a056512348300b00518a89fbfa5mr1143274lfr.30.1714124931502;
        Fri, 26 Apr 2024 02:48:51 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c2c3:166d:66c4:a177])
        by smtp.gmail.com with ESMTPSA id ay28-20020a05600c1e1c00b0041b4f563a17sm4898049wmb.39.2024.04.26.02.48.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 02:48:51 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] cve-generate-chartdata: Handle unexpected files in the stats directory
Date: Fri, 26 Apr 2024 10:48:50 +0100
Message-Id: <20240426094850.938727-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Apr 2024 09:49:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63004

A build of "stable/dunfell-nut" caused incorrect data to be added to the metrics
repo and resulted in script failures. Handle this situation better.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/cve-generate-chartdata | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/cve-generate-chartdata b/scripts/cve-generate-chartdata
index e187f8b..8b9df64 100755
--- a/scripts/cve-generate-chartdata
+++ b/scripts/cve-generate-chartdata
@@ -28,7 +28,11 @@ for branch in os.listdir(args.resultsdir):
     branchdir = os.path.join(args.resultsdir, branch)
     for f in os.listdir(branchdir):
         ts = f.split(".")[0]
-        rounded_ts = str(round_to_day(ts))
+        try:
+            rounded_ts = str(round_to_day(ts))
+        except ValueError:
+            # Couldn't parse a timestamp from filename
+            continue
         if rounded_ts not in counts:
             counts[rounded_ts] = {}
         if branch not in counts[rounded_ts]:
-- 
2.40.1


