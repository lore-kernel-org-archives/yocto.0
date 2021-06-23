Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.922.1624473680173596125
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 11:41:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=yhLv6Re3;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.44, mailfrom: steve@sakoman.com)
Received: by mail-ot1-f44.google.com with SMTP id 6-20020a9d07860000b02903e83bf8f8fcso2901659oto.12
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 11:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=k372guEiBoqK6eLZ+c6RrYZY63AGgbdQMftdkp2/Ya0=;
        b=yhLv6Re3cnmz1qiYXh5FN1cK6UzOPx4YnDl01OCspSblcs/xavGvpnc2pKe25XZcEa
         +iDx6Bio85qRmtGA3GfovflwD7SDTkWgtdbchaZirbwz6EMp9P9DNr5ofUpFak0qxPyY
         jfFp4Dy+EvBEv4vfi9t9eS1D6Ia6k9I75i+SYzGQEJWbTUcbE6i4+RwXrwnz3QAh3DJ5
         AJFRS7tAZcZZvTX8ZzVHWfRguNvgX4xnxVCEa8awELtrfE3nzlgfIV9RakogK8sIO2NX
         iusmWjI/8ozDiPkI5apQ9KNeUfEMm0deEHGq9YmU3S+7j/pORr4DcrGfVCMe3KQ+RZUg
         6hzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k372guEiBoqK6eLZ+c6RrYZY63AGgbdQMftdkp2/Ya0=;
        b=gmx7qotJUMza01PMwmZFO+Z09cVn8Jgk+k0R5anUTfoVLGrEQFxVi1fwYlEbHKd/Es
         6+GednWwpbUN6qVtYU5kPI9wZk0os63pNeYPHfDJB9uWpEUj3WO7ckGLPl93eEjreg8s
         zVJZ6X2PrTcE1g/THIGhzKcKatVlBUuUcmtRIjgGM91jpMtbFLPGbiNlpHZ0AztFwtEg
         pexbTsn9PN+MDq9opBjh28cgpetFiEIw/wb0tM9/EynQy8694EDz6MJcBSd4NB1LeAc6
         bBvjW0f9lZRHR8Har1gh5FOq7EVPZq7h3GJrNix5+djASwjg6UQ80pYx4qre+bQA9ktp
         cl0w==
X-Gm-Message-State: AOAM531fLo7WDqn+gb6IW8bS95OGHRAp66nKx4KBQ8b+yNk/vaoT1APx
	xhKSzSnQOBFGGfIoJcv1p6bsYSnHuyGgUlupZR0=
X-Google-Smtp-Source: ABdhPJxVhVrWV6WcQPJ34DUDr06NC8DkrUTvTGseefHkZH8YyrKfUdZE0W5BHj7WHjn3U8tV9xtBeA==
X-Received: by 2002:a9d:624a:: with SMTP id i10mr1227081otk.9.1624473678788;
        Wed, 23 Jun 2021 11:41:18 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id 33sm144670otr.78.2021.06.23.11.41.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 11:41:18 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell] config.py: enable opensuse152 workers for dunfell
Date: Wed, 23 Jun 2021 08:40:29 -1000
Message-Id: <14647f78d8b6fbc58be115fedc6f3372385eda51.1624472199.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1624472199.git.steve@sakoman.com>
References: <cover.1624472199.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 2565bd7..03ccfba 100644
--- a/config.py
+++ b/config.py
@@ -150,7 +150,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 workers_prev_releases = {
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.25.1

