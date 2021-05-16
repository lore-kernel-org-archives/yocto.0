Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web09.4393.1621160372966162477
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 03:19:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XOaHbFC+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id z17so3358260wrq.7
        for <yocto@lists.yoctoproject.org>; Sun, 16 May 2021 03:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zhpBMUUswla4PGXz4bWhySWbQS60hDuDwch1BDuuJsg=;
        b=XOaHbFC+vuiBCRY9PwlHdkJFcuZsbwTUMevGvDMEKcD/nv00ufALNkiHKP3X9muTwf
         KAl2FItObJlZVoZCEsmLLh0h0scEix0obu2LWYu6L/HrtgE1X1KxqZTK0iMR5HkCM3/y
         4BbHlpRrc2lZv58CuF+APBWdlNT8jw8qwIy/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zhpBMUUswla4PGXz4bWhySWbQS60hDuDwch1BDuuJsg=;
        b=fZ1WJx3QZP2+PLQ8vlgurYjtNGpuaC5GpVCbzPx0i5NwL8PTXhdeLtnOrB8gPK254+
         XAMW5U5l83fuuwCDC9r2pQYdVC7meKN2dXGPBKv49ltTwZcCJulFCUmopwnJoj2fnQxk
         KlIA+5z7hKnUfN747Y+AtMTB2rx4X1x41uRYGptOg+UuRpCB3kEJbOW4hUmM+36l214F
         b6jgD98udqQ4DeYKZnthXc6mQkld0wHiZ+BAF8dKQV+gu4jdOpCMypEDXrHpBYqurJxX
         4C501KDQi5sGscb/v7fC6ji1wOtpVQcQFucG3eMo/MSnsptpvHzOq/UM5soqz8JGO81Z
         4sWA==
X-Gm-Message-State: AOAM530x2NG5nXaZkK9U5PR5mSuhNpckYpe7R3bxJ8/E5kvdGe3Cc5+0
	RxmPXPKEjIjW2tWh8pgX46ofSb9kWTMHbA==
X-Google-Smtp-Source: ABdhPJy2fkUPhzEGoyhLgu7oS2TawzY/Cu3/KdxN1oHx4IKIgAowzqYUcc5mQceIr0e2IpLUsVkZMQ==
X-Received: by 2002:a05:6000:192:: with SMTP id p18mr25818393wrx.252.1621160371281;
        Sun, 16 May 2021 03:19:31 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:22d7:8af4:80b5:c062])
        by smtp.gmail.com with ESMTPSA id t204sm5423066wmg.38.2021.05.16.03.19.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 03:19:31 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Set XZ limits to more reasonable values on autobuilder
Date: Sun, 16 May 2021 11:19:30 +0100
Message-Id: <20210516101930.2388139-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilders have 128GB memory, we don't want them using 50% which is
the default, 5% should be enough. Also limit the number of threads down
from 48 to something reasonable. This may be partly causing some of our
performance issues?

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/config.json b/config.json
index 6533dab..cf62815 100644
--- a/config.json
+++ b/config.json
@@ -45,6 +45,8 @@
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
             "PARALLEL_MAKE = '-j 16'",
+            "XZ_MEMLIMIT = '5%'",
+            "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
             "BB_TASK_NICE_LEVEL_task-testimage = '0'",
             "BB_TASK_IONICE_LEVEL = '2.7'",
-- 
2.30.2

