Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.7458.1584498621354858793
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nw9AzMqg;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id x2so12673852pfn.9
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=extq4aS602qURGAVvzunAfTk7u+3b61vjvVtp6AExvU=;
        b=Nw9AzMqgScA1ytsQPXJwdvtndIXNX9DVbEUquFOtk0hQfuCK8wtwJCvJcWeZGCTWyo
         4pFtddfGIsvvG2k71zG5Hqf2PHXqcix1SqdPzMGOMtT9WsTItyJCFNvQwEcN7h0CjZzd
         v4cd1S79EqU6zfsIbsq4pffMls6MiG+9rhbeOSiNBxZQAvx0mHHxk+nVpQMciCfZ/Low
         QOeLx8TxsgPmjp6ZhemWAF1wFqT7YJU7q6opGB08PdXg+FWVKJdn3nqgs67V3XjUAp/Z
         Cx6c0ZAB4Yq46Nh5hGeja6syEt4XDfMvbvBe2IM2B8F9aSImyBlATZIfozBH2RpKr3wl
         hAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=extq4aS602qURGAVvzunAfTk7u+3b61vjvVtp6AExvU=;
        b=MsjrPA4OxGKp9xoHxc92dwJsTWTYGA94PdTm8dXM2KbGya3veviTa+WUTQkPm5PCG1
         FhTdfimvx4K7Hpr31YvAbCYGU9QStM+mjPxvDRizq4OBefSRFeo6N66XcA5qnrIgZkBT
         2+rYH4CViEtpvuJR9Ur1NC7uVmZP929WzeGn1qQTWBWpqPXCGSxeQe/GL+hJdp/zMwDg
         YtdRlrpCOgkhE6irYPm8B8C8Wk7idqW9TIaXbHUxhCsn4SS4gXoXgawhQBOe+fCjlW7Y
         Q9t7YfnbQb44teH9LQJlSSjQpTwghHOLPyR5/9fx0r6k356uYvwyhOg5yLQz0CculMnm
         c3bQ==
X-Gm-Message-State: ANhLgQ1ZpnE61xVhE//sq3FMEs4uNrW8zbAIUMWZLhjjqGPktiIHTcLP
	Nhn2EEOp3O2JfRarZjPZU99sY+qs
X-Google-Smtp-Source: ADFU+vu+qzArnV/iLnBnO5fjd7eFNdp0hwHYdOMSO4BSlgwk/sjUVdtVWWZbELoy+cRE1hhtAb8UfQ==
X-Received: by 2002:a63:a504:: with SMTP id n4mr2205366pgf.373.1584498620688;
        Tue, 17 Mar 2020 19:30:20 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:20 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/7] checksecurity: move to recipes-scanners
Date: Wed, 18 Mar 2020 02:30:13 +0000
Message-Id: <20200318023014.31723-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318023014.31723-1-akuster808@gmail.com>
References: <20200318023014.31723-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../checksecurity/checksecurity_2.0.15.bb                         | 0
 .../files/check-setuid-use-more-portable-find-args.patch          | 0
 .../checksecurity/files/setuid-log-folder.patch                   | 0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-scanners}/checksecurity/checksecurity_2.0.15.bb (100%)
 rename {recipes-security => recipes-scanners}/checksecurity/files/check-setuid-use-more-portable-find-args.patch (100%)
 rename {recipes-security => recipes-scanners}/checksecurity/files/setuid-log-folder.patch (100%)

diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
similarity index 100%
rename from recipes-security/checksecurity/checksecurity_2.0.15.bb
rename to recipes-scanners/checksecurity/checksecurity_2.0.15.bb
diff --git a/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch b/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
similarity index 100%
rename from recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch
rename to recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
diff --git a/recipes-security/checksecurity/files/setuid-log-folder.patch b/recipes-scanners/checksecurity/files/setuid-log-folder.patch
similarity index 100%
rename from recipes-security/checksecurity/files/setuid-log-folder.patch
rename to recipes-scanners/checksecurity/files/setuid-log-folder.patch
-- 
2.17.1

