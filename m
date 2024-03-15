Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED0BC54E67
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 23:25:30 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.7312.1710545128879263115
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 16:25:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=cX1w6w1t;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33ec8aac149so1245229f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 16:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1710545126; x=1711149926; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abeu+glX8TqMnHrAsFJY1cJk32Mu8jxM+Mr3edQDPs4=;
        b=cX1w6w1tuSMqXVevtpTiAoqPsVy42I5il+yTNlvCiH8z6TKV/BHgOgdyR7BqRG89AZ
         VUewPAU8H1UBa/8EpbJCM8JdUt4uqoDYT7LL9oz4rP13B+scz9SxU3iSVP/J3bIS5LlC
         IROBj1HgGxDCdoJTXMauU0SzX5BqBrT3XGwZ0FEW4rpP7MQq/gSpTv7udyiKZUMd9Ec7
         yaJ6EjfuGRQjVcu4WFB0sj0Qji0+R1jK6cejl1JVcTelRbYCr2LmTzsPE+VOpkkA1ka/
         bFCl7ToD+cbBMb2LUduHzu7qqEe8H19LIO8J3ozqYazJMIQOw0DHiaXlDHJM8ej65Lso
         WRdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710545126; x=1711149926;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abeu+glX8TqMnHrAsFJY1cJk32Mu8jxM+Mr3edQDPs4=;
        b=Nko5pQ1bc9+uWCghQluYUuowTab/RG3bI+R9PfzK4S7n/ooX4dM9W4HfADo3ZyIXxA
         FONAEq91f0L86bC8YgmQs5MZ/I8Tn8Asaxcj3ZWmESLJBbwH0v4QXIsilOCfoP8Yx8Bf
         PNXGr3w7sRcK+hd6zCloY6palgHiUuvzQ4RB8IV/rtj5O+YdDkFheMQiFFZzGrQoGbIm
         gr9mSuo7liTJtTIBzdDEcOeq8h5XrQ95qq3jfGAPot6L43GjFkjTKj2l/VnJ1uPe9VJd
         OqDk8L+KHh5jG0nLkfV6JUixXLMZj31XsLe4aGFUNlSP0bNG9OUYmg8mVXG6rN4kgwnC
         qZgA==
X-Gm-Message-State: AOJu0Yz+nXC7HVTMQN8LU68Qs86SB6/QC2cRkGt7Vt158dcctxGVPKUz
	AbVktjGpMUuJhFIgasA1n849Rx051AbxK3m33unksv0zitBAKjmWWG5Ylj2K1q4IOeNJn8UxFQZ
	lrp4=
X-Google-Smtp-Source: AGHT+IGYNI6odoiS2wwjh8Y21eYWgKitg9yax9VTSHRGyZvCpvtxC0fmwWC9/vu7qhcxNgbHPzFGYw==
X-Received: by 2002:a05:6000:a90:b0:33e:75fb:b913 with SMTP id dh16-20020a0560000a9000b0033e75fbb913mr4180399wrb.14.1710545126256;
        Fri, 15 Mar 2024 16:25:26 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id z18-20020adfec92000000b0033e7de97214sm4150834wrn.40.2024.03.15.16.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 16:25:26 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH 2/2] config.json: metrics: Add new metrics-charts builder
Date: Sat, 16 Mar 2024 00:25:05 +0100
Message-Id: <20240315232505.2251266-2-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240315232505.2251266-1-yoann.congal@smile.fr>
References: <20240315232505.2251266-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 23:25:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62770

This builder generates global chart data from individual branch metrics.
By splitting it out of metrics we can simplify metrics and schedule it
more freely.

This builder should be scheduled after metrics has been run for every
branch.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/config.json b/config.json
index 763121a..5b63313 100644
--- a/config.json
+++ b/config.json
@@ -1332,6 +1332,23 @@
                 "EXTRACMDS": [ "${SCRIPTSDIR}/run-abint ${HELPERRESULTSDIR}/../../abint/"]
             }
         },
+        "metrics-charts" : {
+            "NEEDREPOS" : ["poky", "meta-openembedded"],
+            "step1" : {
+                "shortname" : "Fetching metrics repositories",
+                "EXTRAPLAINCMDS" : [
+                    "git clone ssh://git@push.yoctoproject.org/yocto-metrics && git clone ssh://git@push.yoctoproject.org/yocto-metrics-meta-oe"
+                ]
+            },
+            "step2" : {
+                "shortname" : "CVE charts for meta",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecharts --metrics ../yocto-metrics --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
+            },
+            "step3" : {
+                "shortname" : "CVE charts for meta-oe",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecharts --metrics ../yocto-metrics-meta-oe --results ${HELPERRESULTSDIR}/../../patchmetrics-meta-oe --push"]
+            }
+        },
         "meta-mingw" : {
             "NEEDREPOS" : ["poky", "meta-mingw"],
             "MACHINE" : "qemux86-64",
-- 
2.39.2


