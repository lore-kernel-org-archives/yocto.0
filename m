Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF88FC433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Oct 2021 22:28:00 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.1142.1635460079334584971
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Oct 2021 15:27:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=xbP4da5x;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.171,
 mailfrom: steve@sakoman.com)
Received: by mail-pl1-f171.google.com with SMTP id p18so2155344plf.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Oct 2021 15:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pElOlqnJlhBZpZq2bHd83sGSveNmaQv2NVI4yTWF7Qw=;
        b=xbP4da5xIYEixBbv1nctAiRtqSTcGQ/j1MhgMLK6TaqLtCRPWQIxdc7CAYO4o/rgPo
         R116hVpFqBQpJSJxapNM2p4GjJDwyEZIGX7uROMRqbV4ZjRgA4RjTfq3DzvLKhVLWSyc
         2PmF0V7+ZPGo0bHwxJtQLdrXKOeAQYVV9bEARjnwVm5Vc+UdTVTGxM7KTF9AE1DBpH7u
         HfKV5iotQsL11e7TfnJ+MtQo/oIvVsv/ngeDwIZTIYb8TasVAhEtKlJkV/hxlIXqO/Di
         LEf5fUQQASjEh1iJDB6FXgJn5k4HsEUYSFAN7mGrLkj3D9TIfEMetRbIAt2e3RIK9wGM
         rwxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pElOlqnJlhBZpZq2bHd83sGSveNmaQv2NVI4yTWF7Qw=;
        b=t3qWQT8WMpoKgJVwgs5aSW7UsswFTha9YHcY7E6Qa4XpM76uQqCsReu7hQ73jzjqm1
         DMcF/PeKfrSXMx5O+e5edIwFIy/1wjIrglvsTfdAtbnySxbWH/Fw6J54/b/mbNO5T+H5
         d2H8KbvygYSUX9yAP8aQ+/kP2q3khXuY6s8csLVRQI2rcqcjvlOKu8abVaIj/E/75W1Q
         qW2HcaiYMZcGNSb7U+MietY9Q0USg6YjXv8vBW5hnfXlhzcJQhbziClRKAetOw4pyJPf
         oyj88MCDUnw/vWvlKrdx2fDUWNxoIfX50tY9GdBFs1H8dUE3mo3fRT83MlO03jz0lLsC
         eDUQ==
X-Gm-Message-State: AOAM532q/cYmokEpsJCXOq35E7wg5OeAaxs3xHEcpHBzRy0RY2uDLrVU
	/30yatTemK6RHwZgsqzhUE7hmVPRssFfDjUei8M=
X-Google-Smtp-Source: 
 ABdhPJwRbHrsn+PMYxGZKAv4I+dsmVLHXMfNPHlcXTlVQkT5v/Cn4MZK401u9jT0YoHaLKwhrVqajA==
X-Received: by 2002:a17:90a:a88e:: with SMTP id
 h14mr15725867pjq.41.1635460077973;
        Thu, 28 Oct 2021 15:27:57 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id
 v14sm4450024pff.199.2021.10.28.15.27.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 15:27:57 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell 1/1] config.py: debian 11 should have
 been enabled in dunfell, not warrior, fix it
Date: Thu, 28 Oct 2021 12:27:42 -1000
Message-Id: 
 <e14f3e66773b760131e2e9790a820009111a5030.1635459935.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1635459935.git.steve@sakoman.com>
References: <cover.1635459935.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Oct 2021 22:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55182

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index 3874f04..58418a7 100644
--- a/config.py
+++ b/config.py
@@ -149,9 +149,9 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 workers_prev_releases = {
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-    "warrior" : ("centos7", "debian8", "debian9", "debian10", "debian11", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
+    "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "sumo" : ("centos7", "debian8", "debian9", "fedora28", "ubuntu1604", "ubuntu1804", "perf-")
 }
-- 
2.25.1


