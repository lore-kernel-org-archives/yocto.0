Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.730.1600278316949659176
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2020 10:45:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gbnfkvpe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.171, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f171.google.com with SMTP id l126so4414321pfd.5
        for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2020 10:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vU+5JwSylKw5wFW2yq1XbUDSp4DzGhIbTECK2YuTeZc=;
        b=gbnfkvpevYOuqDB8UZHoYeC58+Q1MKCA3PqKHBFtCztrlaQECAIiErvKk/PHIrOKKb
         +X2rjkb+yXxu41egQjLFu7+ISZQ618kDRE2l7HBJmttj8y6t7Cac2ogaLVoK8fAdXLkp
         5TdNePLCmovr8Ajp3yRLfbYxZFe6c+0I5uztc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vU+5JwSylKw5wFW2yq1XbUDSp4DzGhIbTECK2YuTeZc=;
        b=SLWsSnXcgvfFn9c5gDgNFa4J0BdRitsGxwDvCODKzGozQ7V6KdraBFroTvKLakW7Kp
         FNgc50KBJCQVafRwMFYdT15ivTkyj3Ew2OKfjSloDD0F1J46Nh6J8BWWAQ+fvp0vUg3y
         fs/YSk4+Ct7hjECQySBOQaVE4c9UOAYioLB0u/DlDPOJBv3BI3NveoUzwhyo83v/Uhvr
         VXhW7iB4AB+zOWCdi8gs/VWqSqYGtMEiN6r1BEeNDBYNwlHVpeJFyXIDm5pyh5CwftFj
         EcS4wq/iKqw4pUE1Y+BLm5cp4eXM+J9KSMerOUPSPC7HbZhFyAivesYrKWAYidPXsZAI
         s/8Q==
X-Gm-Message-State: AOAM531JGJQp0LaPoYZlc6iUV68ZhoIlfz1ktxwBMbqiIOk8IuD1LQ5l
	Cjv40pfXn4kQvi9PFFhVVR675S+TeatD/A==
X-Google-Smtp-Source: ABdhPJzp/+mDqUaZcLxE0wCiObeKOKkWwxwGN0J1JKUdXX8jkqb/dVYM+d0CIaqRPhmgGnBI3D7RdA==
X-Received: by 2002:a63:e00a:: with SMTP id e10mr19880749pgh.423.1600278316229;
        Wed, 16 Sep 2020 10:45:16 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.yoctoproject.org (c-67-160-163-132.hsd1.or.comcast.net. [67.160.163.132])
        by smtp.gmail.com with ESMTPSA id j144sm18124781pfd.106.2020.09.16.10.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 10:45:15 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] janitor: Add the systemd unit file used on the autobuilder
Date: Wed, 16 Sep 2020 10:44:13 -0700
Message-Id: <20200916174413.297497-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 janitor/ab-janitor.service | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 janitor/ab-janitor.service

diff --git a/janitor/ab-janitor.service b/janitor/ab-janitor.service
new file mode 100644
index 0000000..5e834af
--- /dev/null
+++ b/janitor/ab-janitor.service
@@ -0,0 +1,14 @@
+# /etc/systemd/system/ab-janitor.service
+[Unit]
+Description=Autobuilder Janitor Service
+After=network-online.target
+Wants=network-online.target
+
+[Service]
+User=pokybuild
+WorkingDirectory=/home/pokybuild
+Type=simple
+ExecStart=/usr/bin/python3 /home/pokybuild/yocto-autobuilder-helper/janitor/ab-janitor
+
+[Install]
+WantedBy=multi-user.target
-- 
2.26.2

