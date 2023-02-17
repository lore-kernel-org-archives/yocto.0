Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EBBEC636D6
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 16:12:55 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.10437.1676650367682860142
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 08:12:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=mNApcpCf;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id q5-20020a17090a1b0500b00229ca6a4636so1974172pjq.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 08:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFDQnA8g4TKpdTuBjKVYBmd+io9iWZm/qPBKXXKMCLw=;
        b=mNApcpCfM917YmWLs+3Txhi1J2VaQIxqNLcgYYzRaGvJaTcZ8rM7Irdh3JptRp5uf0
         U5tMJzfb3qfw5VZtW7k9qr/15htnC1UUrNLhRa3c1LKWevlF75gpzuuA0UOd7juXAZW6
         lqY5cOHnX9afVU4k3ryYwPzTFKzpPfXqxCCW4jBMqIKJqIINvBBBbFl2lifSEzqt7Jeq
         0Y05rPhtf0ed0QQLIgWxXWZxtZpN9o3rzpevPMdL9w0vDgeNlHlblRZxAbRNayT5GGg5
         Zwwgh7XkADEzJvrdxEy3dj+Bg7loOIglAfOtKlLoo84GSsq1LwDIThvthSx/R/plC6jN
         pnog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFDQnA8g4TKpdTuBjKVYBmd+io9iWZm/qPBKXXKMCLw=;
        b=LpAgK+IKxNCAGvW2QZu16fMUUgNvpheR8w+wqMMXyQxIzzkJ40+FCGbwJbTjkBleaR
         JVCsl5w2ZNtj03Vd2RIQ/LW9bw8lixcM525AuIkMqNj3Iyv4ez4Os8xOsm4akREA42zs
         NzzzobJKiW9bZ87RGtWZQYNWb8xkS5WT2rkDxcCXRgdzaOdfS4hjynKtx1NgWOtWTeUN
         aBrTwE85JVsHDun+yER1ycxdW/GFwCGTPVh+QOTt6mgyoOJLdUo5MeE2FOg2YTsrq7Se
         rtZR0/6Z+d12MGkFzWh6m4fawms9VVHnmHXSvbPFHPWlEAktVsBCIdwmVrQAfk0eh22o
         YKCQ==
X-Gm-Message-State: AO0yUKXadsbxll2W4TuhK7UIH+QAwRzbENqe9wOU5wdAugqKGZcVlxcg
	OnQE9sLr00CjzT0VU0c1zVM9cQJCHI+1cSHAIWk=
X-Google-Smtp-Source: AK7set/gKGZN0zy/uUc5NnzIWZzTb4vWZ0j/1zhj861dHh411AkQYDXPGQIZ7gIUhKqGV0QO5gFtQA==
X-Received: by 2002:a05:6a20:1441:b0:c6:cef3:eb99 with SMTP id a1-20020a056a20144100b000c6cef3eb99mr1051167pzi.10.1676650366330;
        Fri, 17 Feb 2023 08:12:46 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id c2-20020aa78802000000b005a817973a81sm3252876pfo.43.2023.02.17.08.12.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 08:12:45 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell] config.py: add ubuntu2204 to workers_prev_releases for dunfell
Date: Fri, 17 Feb 2023 06:12:39 -1000
Message-Id: <35ddb3a81268a89a0e34fdb7b33a3e3b9f162090.1676650289.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1676650289.git.steve@sakoman.com>
References: <cover.1676650289.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 16:12:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59243

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index f6dde69..6ff6bb4 100644
--- a/config.py
+++ b/config.py
@@ -159,7 +159,7 @@ workers_prev_releases = {
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2204", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.34.1


