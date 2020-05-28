Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.16109.1590683921256415402
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 09:38:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YNuexOvi;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.53, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f53.google.com with SMTP id q24so3344228pjd.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 09:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=W3zJSWuV4IlpNrq26ZUEt38ba/tOVkBoShd/OWLqX9k=;
        b=YNuexOvivhVf998jPRCiOv/oxjkFpmy9c06fnj7f1qhuws/ACrHz8uWFYfvGk5y/C1
         PGuUo/eiKle9r7EDRcX99Sxl3DAOvgZMhmVL5KwysM+5tJs+WOIGaiCC4zOVYFLu6kNz
         paXzAw50LFYuJ1TKVp+yWINMAIh059TOmWO7ol/GjCZojtzgrjd7XzDPP2S1QScDTXvj
         svjqBLet7hP7sOy1oTnetCG5M81IcW5fW8UvPc6DhkvgNwXnpqOW+oYQcqc19DzvcCav
         jzzw9v2IyIJhZFj/mLVQjKcAGGPfy0x0KIIZFsA6e8/imqZh9BCvnFWzjvLA4CFii7lp
         +NJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=W3zJSWuV4IlpNrq26ZUEt38ba/tOVkBoShd/OWLqX9k=;
        b=idhICt+jW9rOk4a+vv3/bN5psUe8J4KYWZH5yNytDHaDHYQqG78LSj42woGw//pP3z
         f+p2HL2Mmsey7BcyINGFSAQbHGZIAn3nNCBhieXVAE4pg0GsdhSmFGqclB0EZCx3GGqj
         gHiOrIoioZp1OiVtFryUDXdLqqeVufJis7Sr0JXeKA/VOz5dFrveK//c82b1F536CssQ
         NP1GVkZWY7f0aEYNHaGwrjd+MBl9HlnQ+8s5DQBt2/bt4gTfcjEzegfgB4PPtSLdL1Vx
         PG7832GTCHIWkklyitF1osVEraH2yahQupifPmaF1C7ySVwco847zAT8Ndq2xsGV34TZ
         hxBw==
X-Gm-Message-State: AOAM5330/01BOuzTKBRlIBHT/dHwv4cu0H5FQXFIcYac920+PojDz9EF
	dZuo4RaXSzP5ENllQQ5YYiNftC9aDoA=
X-Google-Smtp-Source: ABdhPJxneFzFJlJF1DcerqFbMAzcBYV8/YzvbXbERKm9/+rqNY0Li5CDzAt+w+Zcd2iTcm1W5PEGWw==
X-Received: by 2002:a17:902:bf47:: with SMTP id u7mr4271109pls.159.1590683920118;
        Thu, 28 May 2020 09:38:40 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id p30sm4686008pgn.58.2020.05.28.09.38.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 09:38:39 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][master][dunfell] config.py: Add Ubuntu 20.04 workers
Date: Thu, 28 May 2020 06:38:17 -1000
Message-Id: <80ff86721308148003bc33e461a1c10cd66ba0ec.1590683801.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1590683801.git.steve@sakoman.com>
References: <cover.1590683801.git.steve@sakoman.com>

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index ab0f825..8133a29 100644
--- a/config.py
+++ b/config.py
@@ -101,7 +101,7 @@ publish_dest = "/srv/autobuilder/autobuilder.yoctoproject.org/pub"
 web_port = 8010
 
 # List of workers in the cluster
-workers_ubuntu = ["ubuntu1904-ty-1", "ubuntu1804-ty-1", "ubuntu1804-ty-2", "ubuntu1804-ty-3", "ubuntu1604-ty-1"]
+workers_ubuntu = ["ubuntu2004-ty-1", "ubuntu2004-ty-2", "ubuntu1804-ty-1", "ubuntu1804-ty-2", "ubuntu1804-ty-3", "ubuntu1604-ty-1"]
 workers_centos = ["centos7-ty-1", "centos7-ty-2", "centos7-ty-3", "centos7-ty-4", "centos8-ty-1", "centos8-ty-2"]
 workers_fedora = ["fedora29-ty-1", "fedora30-ty-1", "fedora30-ty-2"]
 workers_debian = ["debian8-ty-1", "debian9-ty-2", "debian10-ty-1", "debian10-ty-2", "debian10-ty-3"]
@@ -121,7 +121,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
-    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
+    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.17.1

