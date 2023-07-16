Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F29CC001DE
	for <webhook@archiver.kernel.org>; Sun, 16 Jul 2023 19:08:35 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web11.4084.1689534505370381522
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Jul 2023 12:08:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=jXsNczDg;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-cae0ad435b6so4064330276.0
        for <yocto@lists.yoctoproject.org>; Sun, 16 Jul 2023 12:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689534504; x=1692126504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=yxa5Nq6scYT2Z8FuQdjmIifdeFLE0g8bx1xmQPIFHHM=;
        b=jXsNczDgxaDtiej4OuptvGKk+jAOAQgR1sK5PtERwl+peHM59SXw2ECsO9SOVWRTOJ
         APOvRVDADrteUWLz9RkO1FVc7TLJLaDdGbKOh0oT42KU1ZRvG5cHSzC8RAMDV7aK99ld
         b3VB/Ap1sNTyZuc9D/dhOHYP/MJnKU4IuTJBMFAlvbqNInqplVSU2LKv9BJxWd0kAMYv
         ei7vl2VynVQV+QNK2Mo3eJfvank/KzX4Uuut4LFYVqnOd15VY1qc6pdK6qPiWpq2wnPG
         LTkse3dF9/cnwo0uEIWG+45vFOiLbAUcN1NrUv2VeQ2AQxdKWMMB5eX42VdDbQXBn+ui
         3gsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689534504; x=1692126504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yxa5Nq6scYT2Z8FuQdjmIifdeFLE0g8bx1xmQPIFHHM=;
        b=bDTKdoKdw0hr1D95JQIodOX/Pu90Qd1jbuw/fmVv46jomvSQfrhqPI/vynkBAfHj6i
         UyU+Enu64UR9KW/wutfiFhfKs+LEbgWfYkmTTL3660z93hSC+MVsZ8Mr89qLi13nkyqr
         5xp2Vqw5ED76au/WSL1hU7on8Hg+1vRwO6EJnu03vCoG1FUxICFTrHdjVson1jk+XDjW
         kkceRpgo4j5wd2ytVrmApw/ENCP2EdRqDuoAA3Le8dKFPssetZ2Ixgx3NtJRxuuXnVoW
         7c24HCbOpHKUKn6N6ypikJM8HN8TYXtHaS/B2slHLqfOc3M45B8ZafA/aXBma0o+tryT
         5LIw==
X-Gm-Message-State: ABy/qLZnVTCSaPcQtgB1Qc6jYjeLMxryrdlNkf3iZNVJuzXsjmPTl6wv
	1EL/htUcxNZMu8rlRKstyUYasknTVF0=
X-Google-Smtp-Source: APBJJlHUwz6YrqqR1RX2Chvknnm7JqQjD6OYMVZpdI6mG1pHVN99a7XlVDHzTxpqSozc/THC/trCNg==
X-Received: by 2002:a0d:eb4b:0:b0:577:150f:3efe with SMTP id u72-20020a0deb4b000000b00577150f3efemr10439489ywe.27.1689534504272;
        Sun, 16 Jul 2023 12:08:24 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:54fe:9eab:47f4:c789])
        by smtp.gmail.com with ESMTPSA id n131-20020a817289000000b005732b228a83sm3412745ywc.140.2023.07.16.12.08.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jul 2023 12:08:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] python3-yamlpath: Add new pkg
Date: Sun, 16 Jul 2023 15:08:20 -0400
Message-Id: <20230716190822.362553-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Jul 2023 19:08:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60583

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-devtools/python/python3-yamlpath_3.8.0.bb    | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-yamlpath_3.8.0.bb

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-yamlpath_3.8.0.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-yamlpath_3.8.0.bb
new file mode 100644
index 0000000..5d88951
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-yamlpath_3.8.0.bb
@@ -0,0 +1,9 @@
+DESCRIPTION="YAML Path and Command-Line Tools"
+LICENSE = "ISC"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5abda174c5040dd12ed2b225e3a096f0"
+
+SRC_URI[sha256sum] = "81d5b8baba60c255b519ccd31a691f9bc064223ff196709d41119bde81bba49e"
+
+PYPI_PACKAGE = "yamlpath"
+
+inherit pypi setuptools3
-- 
2.34.1


