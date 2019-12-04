Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web10.5697.1575472517492992080
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 07:15:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TteTVob+;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id i11so8323783ioi.12
        for <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2019 07:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=opjK/jrlxJuo/iwzKco5iJAWpLN8HZo5cpFGAdVm9jQ=;
        b=TteTVob+zjfbSnulmGAAdoIQL/uTS3oPCyk/CNXKKskU7S1ZUUt8+gMRS6NVZp9i+O
         CVzk0itlOgDcF0fq8lJwsDeZmEjNFp9lsVt0HXogwVCfsbA/J3m7Zf7wamYqBkRLLgj1
         tW0+qIlR2WJN3ZxtDYmycKmD9Mf8w0s7IoB8V8+nG+wfN5kkHI+DfWD4zPhfAAd72TXS
         q5y8PYBq7PZWkSvQgkoK1HUmjYkZ0f7zwiD3/p8cbIepl55ZZQ/2LDxochKZ/6NMfQjU
         3+Tiegudv8fo9HJ6unqNUC4roF+91/Vjw32gtOpmBYfTHeh0FGC3Jfzat03gaPeMSEsp
         8sRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=opjK/jrlxJuo/iwzKco5iJAWpLN8HZo5cpFGAdVm9jQ=;
        b=tfwrRtD/o2umPgFPQLWTJDYdf66u9OiRCHlZC26/XeQTqYvNNN074/hikxwOSewevQ
         fox73pLdttpfkZCJu6pZum6hIXst/Jl2duC1+gDMvOB5wYPDQ0BME2LSZqmd9FN65rqD
         6qWG9WIoj5ebc77Um94T0zy0utKA7FzHTsjmebrpbilO22ilV9vJykP3OkpEO3AeGqAW
         /LoDLkonU3OSq5OJS0fpstcX0ksTiqpmyGRzxUgHcJpsa/begIFU2/uqTYQhYDgEoWl/
         bvHSsg48dAwrxgPAsMEDFZHhiIe4RbZsxgA7NnFu2H3Cgm16fB7rzfM2ECLlLWN4Yqhf
         SYvQ==
X-Gm-Message-State: APjAAAWd213kAxSZQ/NFrRGJrIJM3JOJMkyWXJ9J9NdyaVmPLnUqAKGv
	p9a9rI7WwzF8aoBeKt8E7f6yS+9xexo=
X-Google-Smtp-Source: APXvYqyv5e8mvi9/0614lAccxMEsbEK2gyklU3jthziAiN0d5kOi5Sf67OSzjMwoE6z7FrSckemxNg==
X-Received: by 2002:a6b:f60e:: with SMTP id n14mr2377339ioh.147.1575472516092;
        Wed, 04 Dec 2019 07:15:16 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id u25sm1527585iob.86.2019.12.04.07.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2019 07:15:12 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] mesa: Enable panfrost for rk3288 SOC
Date: Wed,  4 Dec 2019 09:15:05 -0600
Message-Id: <20191204151505.2289576-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Configures mesa to build in the panfrost and render-only KMS driver
when building for the rk3288 SOC. The panfrost kernel module is already
compiled as a module by default for armv7.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-graphics/mesa/mesa_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..7fa978d
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+PACKAGECONFIG_append_rk3288 = " kmsro panfrost"
-- 
2.23.0

