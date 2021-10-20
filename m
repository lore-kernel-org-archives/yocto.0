Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAF7CC433EF
	for <webhook@archiver.kernel.org>; Wed, 20 Oct 2021 15:57:08 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web11.10126.1634745428522595261
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:57:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=t8L1CVmx;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.178,
 mailfrom: steve@sakoman.com)
Received: by mail-pg1-f178.google.com with SMTP id e65so20504044pgc.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=DvsDNgVBCSjCxz5lD4444W5Xf1MzvIDmUyTFMqvyuYc=;
        b=t8L1CVmxzwPwtSIrM36qZCE/0U3/5BluSKz2Wa1rpNlRnYWdd113S7HoHJ1XcByWuW
         ui+kiThLSORi8eCGEl4hhiDrsSDTQWlxUJZh2EBFxkI4dCOkC5T8OP4S5OIHfyQSvJ0T
         TVcyWykFeAp4tTxumRBkBNtXNAR3myqpFVWpm606P2Yq5EbpDdJJ6FVr4mXqbgLOlcUb
         MxztKppEWX03IFsLeZIcD3eeehO262wrJxZdAgPc6+D9cqP/gE7pwuItnEgOviFe1yHZ
         XwOOWsDXVqDfbnoQBeBHjafx6E+aK/66AuafVIykUHEGrDfHAS5W2jQH8BSKPpGG+2/G
         gaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DvsDNgVBCSjCxz5lD4444W5Xf1MzvIDmUyTFMqvyuYc=;
        b=Vo5QVgiZAFw3IoRhd9hKoKAlGlD2MZ4jpadR8bmSBfxfy6pRyj9lPg3zo7yaZ9rKRG
         mhQEQW67qvjmiIOLzmo1lZnBSJBaYM9bQUzzvz87XdVrRry7AF3gTDm5anjRrE5uqdBt
         N43crjbsQ1y/Zo1VBGk2M2UjqrH5NgVFI/8ZYtix7V3079a/aApwbNCAq7sB2LFrGqSf
         6y/Jtb2s/WxmcEsRk8gG/ulKs2fiJ3Ay+GG7qi2V6VHNlMJbtQGAIdjb1eG6xeQoy8Zx
         TEKa3YSJhQKqwlKCTD3OjBngYLXBpixAaSmpDmTnd5njrXF+mtIkO1t3x0AioyP5yPpb
         Ugig==
X-Gm-Message-State: AOAM532TVlmZ8GedBpdS8Kq6/uBj5yuvPMpURWjUkQqSxTkx8WnLhk8u
	WA+hTn6AMSzYakQGkF1iW4YJ6UQ0HvmXem7ndvs=
X-Google-Smtp-Source: 
 ABdhPJzx5YN1SMSnvfbTwdoZVyEGIo1bZpyZPQsIvHf6UQCw3nuCvlnZ1SYgEEUTa2zIMkhmCJkvHw==
X-Received: by 2002:a63:4606:: with SMTP id t6mr78298pga.388.1634745427242;
        Wed, 20 Oct 2021 08:57:07 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id
 z126sm2664951pgz.55.2021.10.20.08.57.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:57:06 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell 2/2] config.py: enable debian11 workers
 for dunfell
Date: Wed, 20 Oct 2021 05:56:49 -1000
Message-Id: 
 <060bda52d37e769d9d3ca672e0e95e029c5380d7.1634745310.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634745310.git.steve@sakoman.com>
References: <cover.1634745310.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Oct 2021 15:57:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55109

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 8792132..3874f04 100644
--- a/config.py
+++ b/config.py
@@ -151,7 +151,7 @@ workers_prev_releases = {
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-    "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
+    "warrior" : ("centos7", "debian8", "debian9", "debian10", "debian11", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "sumo" : ("centos7", "debian8", "debian9", "fedora28", "ubuntu1604", "ubuntu1804", "perf-")
 }
-- 
2.25.1


