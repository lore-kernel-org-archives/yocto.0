Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.6487.1599511857824085245
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eWMCQ+cC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id a65so15353268wme.5
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oK2Asn6DrR4JpumRE5QaQjZW0lvSOjuQpVytEZv7HS0=;
        b=eWMCQ+cCbnjiJ6y68GWQ2hdsxn9LH8pw8rhKbLGZzdc8Z0fB147W66C7ljMWfFy1in
         Hb9K8TP6e5MOBL9dOFEZUYURQ3X4VLOIlkXKKweeUteTIzUU/bb5Yn0wVQ7Qy7EL5twU
         jd6n48Z/0zYu2uKhLyj5xe2OzzXQC9EytRYGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oK2Asn6DrR4JpumRE5QaQjZW0lvSOjuQpVytEZv7HS0=;
        b=H+kk+tUpTJrTvidU2zGWROKig4qiEUJtd2VLDRWTIiGBcb/XjqKOqa0dLBoA2MoDwr
         NjZxKIkQRgy6S/dYYxu+/1GRMh/yN9/CWSWpO693hcL0orNLlFh+lE+BWe7yzvW+H457
         Qfixw1+sxwtVo2FZdeVxaD/5goTYGHfdCiLqNkBewQrDlkfUgWSjw5LMl3eUA1SycifM
         w+SFEBqb9239zLT+Cp9kf7T2PK5wVV3chSRyjdIe04j/vpDkgei762X4bWaupjJ9/zff
         d0onR2+z3OWx9gXQIZUycV7bWcT/2TBRkYWku5SL9QN6UBZ6eniH6dx6y2ud29xY2VH1
         Ydng==
X-Gm-Message-State: AOAM5305n+2nyPRqQORHJYuRAY6tAVSZsuKq8ELcR2JGfan9BRKV3GD9
	AvaGF5MyZ9QYQGboQHnmrYuA1bhR1RrHrA==
X-Google-Smtp-Source: ABdhPJySHUfrdVusaeksaNKbAez0UarZYYUdnUs+llpQYsP3g54TUuWER8AFhjcI4t7LJ1ZZW6MeFg==
X-Received: by 2002:a7b:c401:: with SMTP id k1mr1031283wmi.18.1599511855925;
        Mon, 07 Sep 2020 13:50:55 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:55 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][zeus 21/32] config.json: Use buildtools from 3.2 M1 to fix bugs in openssl reporting
Date: Mon,  7 Sep 2020 21:50:23 +0100
Message-Id: <20200907205034.1941516-22-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 385fdf2295d514d0b0883957a110825235f9647f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index df67545..516e050 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200430-14/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1+snapshot-20200617.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1

