Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B413DC4708E
	for <webhook@archiver.kernel.org>; Fri,  2 Dec 2022 02:50:28 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.65515.1669949421051170192
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 18:50:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=tfmGbFhi;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.172, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f172.google.com with SMTP id 124so3734388pfy.0
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 18:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lxq40CO32+HQ2k8On7Xnogdj6txNiNJEgoTVf0a41pk=;
        b=tfmGbFhi1cG5TJ1qMSDF4iHSS2o58DMFdXKBJ9mgoKSa1ZaCWP77Ijy6+Q4dboYZSZ
         QEWCDySfzr5PUoEZRaMsHQ4NzuUdIY7Lq8Lt5DNDziipOcE2dz/WnyoIJusSvZoHWCHe
         4yKLEAJpTYCjIdzEx8DhCjkaHb/H49d0srBjG7Qd0ZVM9LhdENKjeKXri/H6M56cl/zJ
         fxYVfKo2kWUWqqeRgLACbH9PJhbm7DrZFeHG7lTwUK1scDmi7AXdf6wjaAFHURC5VmD5
         uuzLN3Eb3rr5r6AgG+mHzd83RPIuy1KA7HQuPe482vu/cBc4QBFdJGYkDh1QYVs+XzAP
         st/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxq40CO32+HQ2k8On7Xnogdj6txNiNJEgoTVf0a41pk=;
        b=KRyiIC5fK64TYrndYD8BgqspssC//h+LSCs1IjmASQaFXHU0UFpdkImGvVMuB/QWb4
         MVAn7zJMp0V/OLJxkCDzmj2U5brM70cVivEysuYPHGkyKUk6PiJyQVM/L58ClmrLs8/Z
         dC1/bnAp3hSWd5z9z/BKTCCnwR0ejxJOGA9t4TTmALJBJPUHnbLq8WV//BCVJtesJubM
         KYykXqtzWn4ypVByKeiGNvZI/mR08ZSCk3vQPDvof/LdrAa8PrCff2PvoWq3wm2YPsGW
         T7m/JdOsEuHwNVZrMxhpwamSS9COmwxaXuQXx2f7feLY6gwLMMlYvsGjPOtQAe7TCvkl
         blbQ==
X-Gm-Message-State: ANoB5pkhJhujcHCA9lK0MEFALds/z2c9ljzVpdBiPgVoz5H2GZlO213X
	SsRV1AxsZcEe1cih27dVx5YCz2BHMIG2I4R08pD1gw==
X-Google-Smtp-Source: AA0mqf5pRum8QCpibmS+V8KYEElg10Bh64FZyKLKguU0R9nT+eDd4W9rc1kpwlBlXyPx3RqPNEX4+Q==
X-Received: by 2002:a63:560f:0:b0:476:ed2a:621a with SMTP id k15-20020a63560f000000b00476ed2a621amr43411490pgb.557.1669949419309;
        Thu, 01 Dec 2022 18:50:19 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id a10-20020a1709027e4a00b0018913417ba2sm4321932pln.130.2022.12.01.18.50.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 18:50:18 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH V2] config.py: add fedora36 to workers_prev_releases for kirkstone
Date: Thu,  1 Dec 2022 16:50:14 -1000
Message-Id: <b9cdeda85e2e4414e973648df52e97fc91122fd6.1669949277.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1669949277.git.steve@sakoman.com>
References: <cover.1669949277.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 02:50:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58714

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index de9356a..bf7126e 100644
--- a/config.py
+++ b/config.py
@@ -153,7 +153,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 # Worker filtering for older releases
 workers_prev_releases = {
     "langdale" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
-    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
+    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.25.1


