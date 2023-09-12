Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A9B1CA0ECA
	for <webhook@archiver.kernel.org>; Tue, 12 Sep 2023 11:29:37 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.22503.1694518174657432387
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Sep 2023 04:29:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=rjGUIuS0;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-58fb8963617so54797517b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Sep 2023 04:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694518173; x=1695122973; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=2rH8ZDZqffVyDQPUg6kYm3qlyRoP3u0r/32kV5wxtVY=;
        b=rjGUIuS0Yl+KxUiMnkxNV6ecScbcuGgTW4uUzLowEPrLByV40vyChjPW+dIfmrO/rk
         /nyiOh+0aphgVq/P7okfNzZtsmvBJ5Lec0odalwFjHKFo7X0YbAhAQYGPnVLHS3SH4ai
         zYc+133EYcRzPqwCixp8XWnpPQHyVAtNpNEwKaaxUrOhiiigxApxOSX4PzUnd5i9YsDS
         teruTvTAURPh4f908eq6E4CKHGFV7kxCjfPwzdWYCv8o6tpEEYhGKD7l6FmTO6NdHrMm
         8/x7/gMEBUFUJkoAx/exUyC1VA1VnxW5WJQh7zgWBThZBbaDKyJzw3IkBOHMChz1SxCM
         cz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694518173; x=1695122973;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2rH8ZDZqffVyDQPUg6kYm3qlyRoP3u0r/32kV5wxtVY=;
        b=JfuL0t3BlpLwxia9qaCkpPEQMzqLWrPVL8hlspZI17EBRfdXsHe57Yrl8j8eJeR/xs
         PWG0kkAz7wC1xV6B+MiBc4mV+Ar7m1ZMI7sjo522kv5gJi/e/XikrNluChxcAjkwVBFD
         cd8TmTv2INkUgS+QfkSpxZElEB9Ed+U3gGgS0kxLEukqA1yk23Jzwsz/EHAjn3GMU2dy
         OipH4uFGIBelSnczWOcs8vLFrnFC/pHU76zYmsVzLCRLkytYGiT/6IYVJgHnbmqcAV0i
         73ebUmOeiUMWVhXr/2zPUXUd7P/qHdTDg+b7lBVPzvcXVdBlelFhe50kxZE/hzLAfX15
         Y8Hg==
X-Gm-Message-State: AOJu0YwePFqUoM2ItgokWhXLxlFyMjkb7hUvr0c1b+nuQ6M+nsO9Lgnt
	xh1B4xi44C1JvJKMjBb0wcw6ubLi+aM=
X-Google-Smtp-Source: AGHT+IG/j/iE5ZEXb6DdKu2SAsOgDy+b+Jedrx2PC1xA/FdOq5Ls9e3o9Tq7Ocyt8+4GAp0uBDfLAw==
X-Received: by 2002:a81:4915:0:b0:57a:8ecb:11ad with SMTP id w21-20020a814915000000b0057a8ecb11admr12961972ywa.43.1694518173180;
        Tue, 12 Sep 2023 04:29:33 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:5a5e:9a69:c5c0:e466])
        by smtp.gmail.com with ESMTPSA id h128-20020a0df786000000b005773ca61111sm2501276ywf.42.2023.09.12.04.29.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 04:29:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: fix build issue.
Date: Tue, 12 Sep 2023 07:29:32 -0400
Message-Id: <20230912112932.1201425-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Sep 2023 11:29:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60981

If you want to try to generate the lock file without accessing the network, remove the --frozen flag and use --offline instead.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_6.0.11.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/suricata/suricata_6.0.11.bb b/recipes-ids/suricata/suricata_6.0.11.bb
index 914278e..e9e4a0f 100644
--- a/recipes-ids/suricata/suricata_6.0.11.bb
+++ b/recipes-ids/suricata/suricata_6.0.11.bb
@@ -30,7 +30,8 @@ EXTRA_OECONF += " --disable-debug \
     "
 
 CARGO_SRC_DIR = "rust"
-#CARGO_LOCK_SRC_DIR = "${S}/rust"
+CARGO_BUILD_FLAGS:remove = "--frozen"
+CARGO_BUILD_FLAGS:append = " --offline"
 
 B = "${S}"
 
-- 
2.34.1


