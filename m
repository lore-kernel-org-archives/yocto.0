Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AD3ECFC288
	for <webhook@archiver.kernel.org>; Tue, 15 Oct 2024 11:05:00 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.10638.1728990286970126102
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Oct 2024 04:04:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z/OPXIio;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d462c91a9so3335249f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 15 Oct 2024 04:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728990285; x=1729595085; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=PEoh/gA9/3gmrK1vaL68bpUzep/SttQFKPPqKvHqWts=;
        b=Z/OPXIio5/80g0R9Uqysv6EdiA/LacOziP5X7vjQab+d0ta8VpN8IzUMKohmDNqs5z
         BkHT/1XQNlqte5xWwlR92mcRi7TqTV+BTMAp60WmwYX6OHFSrDBZJ66yeF/kwRt6HT3L
         mW0/Xa/ngbvgD306HjVj07DvBv8eW14tQvDrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728990285; x=1729595085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PEoh/gA9/3gmrK1vaL68bpUzep/SttQFKPPqKvHqWts=;
        b=WFCbKG290cxyJI/WvME4DNP/4R3DUS/om0UYg0IpKjiTsQHHixKThgSwIv4b3LvEez
         egiYAHNTlo87GtbB2zLki52P3tnKE1CbMBL+jEVNkvA9G2RIyWRT6+UD4cs703djEPFD
         LP+2ANFfzVVQWUJ3Ct1ePQcQaW2G6KU7AV1UjPmBjr0YIptyeQw9mqg02n2mZdw+QZuI
         TaXblLKX33Rnvj+fqZNPeZPb8Or/Ou55dleS1baDl2YuRl0gDqAESTWWAkdKpnG6b0uL
         NVHQr/XVUDCHP37fvJS+DPWyfCzLjGijHkaZtDjL+Lc7CGyQCAF3H7PxFGvu7IosK2aM
         SLig==
X-Gm-Message-State: AOJu0YzWSLhz4bYDPDJ0yHBb0G91WamlGm0s9yYeGMvnmGjGyGi0aBZR
	zQG5XZXhuGFquRqhRR9Q5fjS73p79h7VW0fRg3AdWEue19Aw32j4axYrcbs8ZcT1VupqgC3r5y4
	l
X-Google-Smtp-Source: AGHT+IHCn9fxWW9UNr8m++xl6EzTyFD6Zz0mGZ7+QOFTxiMjYsfLFQtjeUVLAozbN66yltMzswyXbA==
X-Received: by 2002:a5d:6109:0:b0:37d:3999:7b4 with SMTP id ffacd0b85a97d-37d5519cbb6mr9134423f8f.17.1728990284962;
        Tue, 15 Oct 2024 04:04:44 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:28fa:e6b1:dce2:85c9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fc42160sm1270112f8f.112.2024.10.15.04.04.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 04:04:44 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] ab-janitor: Avoid spamming the logs when files are really new
Date: Tue, 15 Oct 2024 12:04:43 +0100
Message-ID: <20241015110443.1686071-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Oct 2024 11:05:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64025

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 janitor/ab-janitor | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/janitor/ab-janitor b/janitor/ab-janitor
index 659817e..bb58390 100755
--- a/janitor/ab-janitor
+++ b/janitor/ab-janitor
@@ -54,8 +54,8 @@ def trash_processor(trashdir):
                 time.sleep(120*60) # 30 minutes
         except Exception as e:
             print("Exception %s in trash cleaner" % str(e))
-            time.sleep(60) # 1 minute timeout to prevent crazy looping
             pass
+        time.sleep(60) # 1 minute timeout to prevent crazy looping (particularly in age is only)
     return
 
 def mirror_processor(mirrordir):

