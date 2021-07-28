Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web09.2669.1627464651380494149
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jul 2021 02:30:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfH7F5CP;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: koansoftware@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id nb11so3540900ejc.4
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jul 2021 02:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HCyREfB6KbydR1gmussVn1OBJjI4rYhAsOorQtZHmok=;
        b=EfH7F5CPNjOXQc//aBZnOWlSF5JMH4qNzLgJbM3RcWdnneHIp20cVLrwIG7gLP7Ha4
         Mtt3DbwrN33hI7el1mBHl54qzqvqIm214Ged27anGaf/mulBd3bt41MGGvao8dal9vvj
         8UdfnM6Og1PvPxbZV3Uh942CIIXW0v34JKpukUASszgz5TjQ3L+Llrbbfo5mRzUaT8YA
         sdGS0MGFshMgnTKFwfEOlQ46T1R7zf8Bjw4uBgGrJtDYy6wSzBaG77If7GV653q184oB
         V4ej+4TqEVrbHbv6aLkIzAk/HJvCrYhdFJoPS55oAK6/KIWajveGAdK0MxNew7pfn5uB
         fbaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HCyREfB6KbydR1gmussVn1OBJjI4rYhAsOorQtZHmok=;
        b=FAm8E5UP8rcizqZuEYWL86k+iSw3Kz/0s+bMwilyBPbgLEXIoOqrie8l1dwTW+pEF5
         tisnXaMecdfj31MGf+JSH/eRqk+Nk4RoRaG7HY3ZK/HOsAKmHToCoZpUGO5g1mVok83A
         woFyQF4MtSNdGcCX0Lmiux4hAOruiKgCCz7f7tHtUARup9Yw0byaw08b/4w+ygcDdEwL
         FO27EYpTps9ozsmyXJOFKF2ykj8gjnyoH06HHWT1gnz9qm12bufETMwfhBmSzSAsWn3J
         KNKWZtR0GYPBrvxNK4Gypr2V5AQAy977B2+kkgrMfk7Va92HUxCjx13x/68vfZKq0drG
         u62A==
X-Gm-Message-State: AOAM532dvDIynBBLimISs5iv7Od+fNvKu7ecwEG9Q9gABjBxrCNr6s90
	0mKxDxX1yocfaKZ9j6W7TaB5xzdJOmIzkA==
X-Google-Smtp-Source: ABdhPJwvsOobumR2y8R25OdKw20FC9PZTVFAP9gR77QAJhWQnPRWbARv8dUdTrsTeV0yLaTiqnFjaQ==
X-Received: by 2002:a17:906:888e:: with SMTP id ak14mr9047393ejc.134.1627464649534;
        Wed, 28 Jul 2021 02:30:49 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from amonra.localdomain (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.gmail.com with ESMTPSA id p18sm2345765edu.8.2021.07.28.02.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 02:30:48 -0700 (PDT)
From: "Marco Cavallini" <koansoftware@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Marco Cavallini <m.cavallini@koansoftware.com>,
	Marco Cavallini <koansoftware@gmail.com>
Subject: [meta-spdxscanner][PATCH] MAINTAINERS: Updated the email address where send patches
Date: Wed, 28 Jul 2021 11:30:38 +0200
Message-Id: <20210728093038.8720-1-koansoftware@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Marco Cavallini <m.cavallini@koansoftware.com>

Signed-off-by: Marco Cavallini <koansoftware@gmail.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 23761bf..ec34c24 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1,7 +1,7 @@
 This file contains a list of maintainers for the meta-spdxscanner layer.
 
 Please submit any patches against meta-spdxscanner to the Yocto Project 
-mailing list (yocto@yoctoproject.org) with'[meta-spdxscanner]' in the 
+mailing list (yocto@lists.yoctoproject.org) with'[meta-spdxscanner]' in the 
 subject.
 
 You may also contact the maintainers directly.
-- 
2.17.1

