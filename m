Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 220BFCEE348
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 20:33:04 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.27546.1728505978029702201
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 13:32:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eXAxMBWx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d495d217bso46134f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 13:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728505976; x=1729110776; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0E0EryyVQDtaqGhb11GqhZW9GNY4p5KkzwBJZz9k2+Q=;
        b=eXAxMBWx4MTLpFDJQH2+GxolcRjeY0vJP1zIFd5jEoskimp4EUiS3Bk9sH9ys/4qTS
         QdhetsJGWrglmQuK3iFPjVYdf8flPPZqZHMjvkcApQ0SWFap/q6Q3s4M5nxIndQqKxtd
         FCU/2mJ5rVWfBgZW2L/pJjaiwxSZId9FleMlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728505976; x=1729110776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0E0EryyVQDtaqGhb11GqhZW9GNY4p5KkzwBJZz9k2+Q=;
        b=uSWkWL2ELD96FTqg3/EPjhdBf5Ni+D7IDwJxig5iMBbZyLz32Pw2em5Q1eBKmZ832p
         nthLtO2M1TPqDzNhvfb+BQPFSEmdGqUj59CZjSDV9sWIIbcTHO00KJrLhenn1H1fDhXl
         rvbc/dzpqXexymzLbblAlecu813FY3NCYGUUafRAv1h1ZP+10/V8kgIAahCHTUeL8EKz
         A1tnqulyMFneaiExl2B8XWWl1llDMmZ0DTJwhUECHTvlOs3xwiJKF1aEcmBz3UJmb51Q
         Ub7ZIdmP5BVykNMXFz2am4SN4ksQWMFpkD79hReNY2CtearOt7Rd+DOnycFriuSUuyrI
         nMpQ==
X-Gm-Message-State: AOJu0Yzttdav6WbE0VkrMbN+dApyo1dOMjKx7UyYuR/HeKyzENKyitjS
	VTceoxZfPn/maPLGtuB5w474WwKewWhbYFgm0y6x7/5LOAJP9vx0iqf7WMtiIkHDdOf7PD+yuMc
	2
X-Google-Smtp-Source: AGHT+IHnVc6+peREzb89EQf6HBnx151pHInBerKRdaOU2uFiIATNn4nuul79sHYY/ez1g9CtR/6M6g==
X-Received: by 2002:adf:ed02:0:b0:37c:cf65:6b10 with SMTP id ffacd0b85a97d-37d3aa40144mr2967372f8f.18.1728505976217;
        Wed, 09 Oct 2024 13:32:56 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fb33:4e5d:4941:5018])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d454ec93fsm1536981f8f.97.2024.10.09.13.32.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 13:32:55 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 4/4] config.json: Use BASE_SHAREDIR in index job command
Date: Wed,  9 Oct 2024 21:32:51 +0100
Message-ID: <20241009203251.470776-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
References: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 20:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63992

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 6c9b04e..6881452 100644
--- a/config.json
+++ b/config.json
@@ -1340,11 +1340,11 @@
         "indexing" : {
             "step1" : {
                 "shortname" : "Generate non-release index",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/generate-testresult-index.py /srv/autobuilder/autobuilder.yocto.io/pub/non-release/"]
+                "EXTRACMDS" : ["${SCRIPTSDIR}/generate-testresult-index.py ${BASE_SHAREDDIR}/pub/non-release/"]
             },
             "step2" : {
                 "shortname" : "Extract ptest logs",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/generate-ptest-logs.py /srv/autobuilder/autobuilder.yocto.io/pub/non-release/"]
+                "EXTRACMDS" : ["${SCRIPTSDIR}/generate-ptest-logs.py ${BASE_SHAREDDIR}/pub/non-release/"]
             }
         },
         "meta-mingw" : {

