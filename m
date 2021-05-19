Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.12474.1621435347376380467
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 07:42:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=D5+zAjC+;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.176, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f176.google.com with SMTP id y32so9591622pga.11
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 07:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=f2frMM2RGKuQPVBJCchiy5af/sH+XTAddgNvM+zkCNE=;
        b=D5+zAjC+EXAiMuBNYOw5TSqWHiZuVlZMm6D3IknZ8c7giQUubHKKIQ4Zf0FJE/4A7w
         bsqkJT8+by222/6bXsDQpYtgIPq5gw1/z6kTzNUjk/yhIcx3OkCIb235Y2dFJAG+CsTY
         yeXq4zwqqKq48rrF9D5a7mkckzjuPIILVSbtMQXc6g7vjECSVbJpGJa6ft/lAgoBHUCC
         h9KMARm6kpGAkdtqF5fcECK5raiDK1gY30WugGitnHYCopZ+ADitImMRK9ZXWmzUy72+
         28rcD3GLr6KPok/qseUaoUFY5nX/gW0kpYk7l30I5KM5gSxZNr9hXxeoZYT460V3ZVuS
         aJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f2frMM2RGKuQPVBJCchiy5af/sH+XTAddgNvM+zkCNE=;
        b=lZreUPDabMMHLdP9EqGNKHdPbn+pJdNTG3kbXNVOyzkY7eLeIfcahmqbvBoogdOn2/
         DSbqtFHxmz09Ne6R9B+bsjO2G5LsoWI7X0zwREn8WpKpkwXObLpAFXOGuW1qfDYVWT14
         ydjnvQZdNgk84FstLGRFDe7+naPuwHARUqnDJP+swrcbTcjZ8SDYX4WtjQH3Ahzp6pkf
         sx7nLeCAobITzzIGs4RYg7E7byFx2TgwPrxg1RrFPhfn7w/LMkf+mkK4v9HSnNa+vJ1c
         J6i8uSYatKl/ZG9QqmfcXKVannbrvoYFeB+ttR5RQF/i9QwRKdIM8PKqeEA+/ZEXAG1b
         rvVQ==
X-Gm-Message-State: AOAM531kk3CalEJpjhUXg1sTleQf4V0LXdi3maRjIanDjtFg3TWAnc8B
	p/tSGD28bQ1sy5eInLpcB8qSsVjqG+DZ8Ba4kog=
X-Google-Smtp-Source: ABdhPJy+TRSoE96OZgArrkIms+TfVdpCrBJFTtfvth2YbLnlGtaPlsQZwM1xnJLEEQmJHwd1uQDA6w==
X-Received: by 2002:a62:ee09:0:b029:211:1113:2e7c with SMTP id e9-20020a62ee090000b029021111132e7cmr11213576pfi.49.1621435346079;
        Wed, 19 May 2021 07:42:26 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id 84sm15121154pgh.87.2021.05.19.07.42.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:42:25 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell] config.py: enable fedora33 workers for dunfell
Date: Wed, 19 May 2021 04:42:05 -1000
Message-Id: <a1a0e6ab2a4c2ffba8777ebbd99bd6e35062eb04.1621435241.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621435241.git.steve@sakoman.com>
References: <cover.1621435241.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 520de47..2565bd7 100644
--- a/config.py
+++ b/config.py
@@ -150,7 +150,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 workers_prev_releases = {
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.25.1

