Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B451C77B73
	for <webhook@archiver.kernel.org>; Sun,  4 Jun 2023 16:13:43 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.19929.1685895221593135403
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jun 2023 09:13:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=Sln5vZmh;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.173, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-54290603887so1338741a12.1
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jun 2023 09:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1685895220; x=1688487220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k4hq3xlfMZbXqQi4hYzV9WZPkm/a9s0ajLQMFboqr60=;
        b=Sln5vZmhKF9UZ+Y6rZl5OELPbIc4x0SuIlom9Z55uROIvj9zsOaHV89Has7zUpGgDj
         n/0nj65YmuRFNGkG8DgAwhFYTKs6i+ooms9Mmg4Him9sKaWgd5nq/YE1+YjsLBVAvU2F
         EU5t4KPsLInTlcTBX9YqR5reR5FWB/s7q2q+SuJ7H1POQniua2k5Gh9vS7Vmj5/B/cyD
         KXgXOtf/agiTqnYZnyTSRPOGwB9C0dfzwCcbQVXMl4/WSYXvVvRV7+ckuLYcc9sh0gTr
         6lT4OOSMIJ7ATuj62Ih+LtTlb4UVfG0j2m59ByIjobWDGoxpajr57F4/7/PwrULxDM35
         Lkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685895220; x=1688487220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k4hq3xlfMZbXqQi4hYzV9WZPkm/a9s0ajLQMFboqr60=;
        b=iZTMZYyrFK2bOOHILcO2Ze0JSOoS3NzwEwOK+PhTf6lFEl8VzQyV09rqw093x0cEqm
         S631D4zL7Q03gRcvxffuxvG6g7ENnVGCZzpDS6EgxWe3EmK9Jo20l3zPW0PzjeOyK4dw
         KBISGC2k1+/DasRKCQygKJzYOkN6BLcUsiAljbpewiak3W3KuT1h1mjSxf2s56llna7d
         10ef7GhPcTHoIgMeehz4ndZfNE8zRsRzdkWQlqhwRaxgsU5NufyhcXtcJ5G+d8eq40kP
         2YgXt2fLxW0ZkHvBpYq2eavoj05BOadaZWMMiHAoTXMZdjVZwwhOowvfe4cj6ubiQ666
         OKiQ==
X-Gm-Message-State: AC+VfDz9mVgC9w/+LmuTnKrq9c7E/UoDVAGAtaagOZPEmKlKqPJ+z6Ee
	zVawxlyrJa96LxSp/fYC1zkSGocDBVioocMW2Hg=
X-Google-Smtp-Source: ACHHUZ7rhRoiuWJR9yvu9FegIpGeO1LnlpZtd7PSu9ZUt+GLRmyOike/2Slk7pMZKbae3WDeXj0RSg==
X-Received: by 2002:a17:902:e807:b0:1a9:8ba4:d0d3 with SMTP id u7-20020a170902e80700b001a98ba4d0d3mr3153833plg.8.1685895219927;
        Sun, 04 Jun 2023 09:13:39 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id f3-20020a170902ce8300b001ac7af58b66sm4842681plg.224.2023.06.04.09.13.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 09:13:39 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] config.py: add fedora37 to workers_prev_releases for kirkstone
Date: Sun,  4 Jun 2023 06:13:32 -1000
Message-Id: <0ddd18b48ac652c8ff43c4677d9013096b5f687e.1685895118.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1685895118.git.steve@sakoman.com>
References: <cover.1685895118.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 04 Jun 2023 16:13:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60176

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index aef76d0..898e861 100644
--- a/config.py
+++ b/config.py
@@ -155,7 +155,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 # Worker filtering for older releases
 workers_prev_releases = {
     "langdale" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
-    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
+    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.34.1


