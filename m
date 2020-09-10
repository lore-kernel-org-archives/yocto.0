Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.20834.1599740793302978021
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Id4cYvUx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id b79so5592002wmb.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=idEoqnZu1PNSduL1l1G4tL9aSSEWEDr9VcmIgSZ8lyE=;
        b=Id4cYvUxUMdX8O2UxDLSyePii5nL631yD7V3mp5Klji7+T/P8lkZJw8MCXjmKbxuUF
         MjsqyETzs/mSjKX25lUY4bbWJefzOTQmKOLYz4KKxj5o4cnYIl+9sfg6vzLOW89ngTLZ
         YxL8L4d9QS4eqDDsxh+iwxwmgoUv6jVyb9ZMA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=idEoqnZu1PNSduL1l1G4tL9aSSEWEDr9VcmIgSZ8lyE=;
        b=BOuVXgbu5X6jK1Kszvgboonl5zCvETF5SQeTHEbeVWVKkBfqyZxUFpmGyjubUKcsyH
         zopEQVQQufnpzRalo1iXHzDnGphrrfr2nwsafbmS1kHjd6BjhGP6KJBkVCgAO1SmBHe7
         lYOZrqWm2lHuu0HgeVND+yPdplzILkwyuKEl4dIdUFPSpguPaGtVhsWbZ5YmlacD83cH
         jAIzc+CJK/YugBtgrxUxy1uRV1BwEgRVH8zwBxTGkNN5iZ6e9rVk8Yg1bw2rObonA9Gy
         EtURR1VU8uvdDa9nUiz4TaF9PUDATzZkdv7vdFHzuJqmibULO7tg9gNsKPQvr7FaEV7g
         4uKQ==
X-Gm-Message-State: AOAM533AFcYWOytIDUXGa9MuMDWlIDKu/WRGahMVHnHdhEMuYvGmTX1S
	zWmgiqiISb3ZQ8cmMqg5QxqnenlVosNfOw==
X-Google-Smtp-Source: ABdhPJw71t0F1wv2rIjdtUpEb4FTUltcNavgy/DUK3F86lrAuh69iJkz12dkIc44sWpr2MLmpJJwxQ==
X-Received: by 2002:a1c:80cd:: with SMTP id b196mr8337541wmd.104.1599740791573;
        Thu, 10 Sep 2020 05:26:31 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:31 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 39/41] config.json: Build buildtools-extended-tarball for x86_64 and aarch64
Date: Thu, 10 Sep 2020 13:25:51 +0100
Message-Id: <20200910122553.2040430-39-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index fbf262b..c0cf55b 100644
--- a/config.json
+++ b/config.json
@@ -524,7 +524,7 @@
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "buildtools-tarball uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             },
             "step2" : {
                 "SDKMACHINE" : "i686",
@@ -532,7 +532,7 @@
             },
             "step3" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             }
         },
         "build-appliance" : {
-- 
2.25.1

