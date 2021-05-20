Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.9848.1621523424797759981
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 08:10:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=FHOSCqG7;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id ot16so7353600pjb.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 08:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=foz1ip0fOaq76LybLwaChD8A8zzIV4bZDLEAy50r2Ig=;
        b=FHOSCqG7RilcuemocpDNCy9teQKxSB/MP+UygolUjs/uXJWzMjF/eguTojlfjBRXs5
         gXRX+Wfs6btTkdbtt34fEpEBFhxgdfmxPAGJMVoGeZCgIT7vee/E5F2tdr86eO8W5Aw6
         T1JKRTM7PUTUxyHfTPZPYkVUxiiDauvggLxh0c7G+e4hUia9eySQGQ9nIs+8VNjchQ5X
         elkusTls0KUXb8zBU8Lanfo0HB2B5L3Pw6QZfhU+WISpl3tRFve59IXSidHoWw9s2LXS
         EBj8Op5ytGKXZks2JGQPWQF+0s+dzmU/0HvX50rPtyevNTd2adOmN9l/AHCFC2uaHBAh
         AURQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=foz1ip0fOaq76LybLwaChD8A8zzIV4bZDLEAy50r2Ig=;
        b=P1wZkyQfa9JafRNZOqpBDfPXFi8QIugxzpZh7/T9/B/jR7Rha16yT6L8/dLwNx2sC/
         3g/skkvOE6Mk3c8UQQaaf5QB0ovOCoEJgliBiiS4Igix2sF9jrHpbJXvAdCaUVIhhLSs
         c7H8S4ZPySqMIXT1MP6CQ+s2JGkQFfrpqrWQKqi5tOa64TwuCL5WHz+acvUBQe6i/2us
         X+7iWnQwlkXMY6h4yj1egJeQGgGbxKVXCg309rcIPPPBrdp8wMqwbIJIhBEre/9kI/RG
         8P62k7u5gVizZ4Z3fq3weWupJF7r9z3nDlbbUqWTWt1/lIqzKWFnVFDP1SWafWZx6aei
         x0vQ==
X-Gm-Message-State: AOAM532HKjwpZ24Xd+OCjLupxNJeQDUjcD0iIH+jn9lfRrwTP7GyBPnu
	oJ0LkQTP862XsVAmIYJddP8JEAl7j+9c6QkxQyw=
X-Google-Smtp-Source: ABdhPJzo0hSJ8RUeljwrHv6F47LS37STvGBpLAI4yhkETOX6rrnpr1KtnamNbzq/wPvrMqUDP2Qwrg==
X-Received: by 2002:a17:90a:cc4:: with SMTP id 4mr5235866pjt.17.1621523423785;
        Thu, 20 May 2021 08:10:23 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id s8sm2233835pfe.112.2021.05.20.08.10.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 08:10:23 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: Set XZ limits to more reasonable values on autobuilder
Date: Thu, 20 May 2021 05:10:10 -1000
Message-Id: <191756a8baa00544456dad699852f0c408ff5cdd.1621523339.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621523339.git.steve@sakoman.com>
References: <cover.1621523339.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

The autobuilders have 128GB memory, we don't want them using 50% which is
the default, 5% should be enough. Also limit the number of threads down
from 48 to something reasonable. This may be partly causing some of our
performance issues?

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 19b4e74b3960174238acc79fd112f55706bc7385)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/config.json b/config.json
index e77a8fe..b62035b 100644
--- a/config.json
+++ b/config.json
@@ -44,6 +44,8 @@
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
             "PARALLEL_MAKE = '-j 16'",
+            "XZ_MEMLIMIT = '5%'",
+            "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
             "BB_TASK_NICE_LEVEL_task-testimage = '0'",
             "BB_TASK_IONICE_LEVEL = '2.7'",
-- 
2.25.1

