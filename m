Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 379D5C636FB
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:14 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web12.28391.1650887681450473307
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 04:54:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Em+vdqR/;
 spf=pass (domain: gmail.com, ip: 209.85.218.46,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id u15so29034399ejf.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 04:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RzZSTyeZ/rUXNaa/jqsU0V1bPVDYAweohom8FUgV2x0=;
        b=Em+vdqR/nQu3bcovWro5GRUbneHZtEcu8z2x27vgnj06inwsieiA7xcU+wx8+4a74K
         IO3iKdMczZw0NYWA88m/j1Lb2Fxng8wA0pgcX1ifdTGEFqXXL2M/o/MSmL1NGnwsuHmW
         iiXKEBp83xpOL/ksGBTfK/0MMMNfC76bsD2lopdOuYUD1YCKQPVlUjcus4bJAqintYM1
         MFuWOfvHCQKUxCDtKCkirtRtWRYKsecgdUygayr3w6yvJcLNRMfmjXbPJ/UVSNOzS+xA
         Xg/6VuNqMPM/AD44l/B1aR/US80GM3qIUST+t1rDHoRmKhr5ws4XXvq3feY5PTfoUrRb
         6vMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RzZSTyeZ/rUXNaa/jqsU0V1bPVDYAweohom8FUgV2x0=;
        b=bcrDXWb0NvtyirALBv34E1V5e5NlTfroyGZMEF1fJqh+BtPGXLjzCoWrPZot2L/bdJ
         uHzWx9d8ddXykNhfCNDgp9zv82A2X9CEC+/CPnsVyQ5r5u7FJrvnpcU+y/cQjZBfsZTO
         6lKBy1D4BIhTjQtma65ob4NJoIpxXEeJ+dc8eMbtd1dzAI4yWt4XSlhLwxYs6SUJS5cJ
         b6v/hz42bl9tCbEzmJsTV51DDuWxxBjX5NwQoOLkyVWRjGzygOa+oPqCXW4X8/Q/pmG0
         FgLo9xysmscItnzWi7Ab9auB1Bxvg5FLiF5/Jo0g9UKRCVXgjBo3yF/5MevssBFEYEjl
         lgUw==
X-Gm-Message-State: AOAM5314E0RVlM9lv8qshkuOTgp6iutFkcx7TsV3V2mzRUfpStQZMyLI
	14ku9+0NNUxodCp2QRaK7W7GTAZD5dE=
X-Google-Smtp-Source: 
 ABdhPJwpYc1t5IJEcvJyP4qanKW3c2bm5K4PTtiJjTYdu582xUoJ0KaH4yYuxelx23i6OhISFOfSZA==
X-Received: by 2002:a17:907:7d8c:b0:6f2:476d:fde4 with SMTP id
 oz12-20020a1709077d8c00b006f2476dfde4mr14852690ejc.497.1650887679631;
        Mon, 25 Apr 2022 04:54:39 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 el14-20020a056402360e00b0042121aee887sm4273354edb.77.2022.04.25.04.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 04:54:38 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: test only command line
 images with x32
Date: Mon, 25 Apr 2022 13:54:26 +0200
Message-Id: <20220425115426.1144204-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56880

There has been a persistent stream of graphical failures on x32,
and there is doubt about whether x32 is at all used by anyone
nowadays - let's reduce the scope of x32 QA, and perhaps
later drop it altogether.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 8893695..b571f25 100644
--- a/config.json
+++ b/config.json
@@ -529,11 +529,11 @@
                 "baselib = \"${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) or 'INVALID'), True) or 'lib'}\""
             ],
             "step1" : {
-                "BBTARGETS" : "core-image-minimal core-image-sato",
+                "BBTARGETS" : "core-image-minimal core-image-full-cmdline",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage"
             },
             "step2" : {
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "SANITYTARGETS" : "core-image-full-cmdline:do_testimage",
                 "extravars" : [
                     "TEST_SUITES:append = ' x32lib'"
                 ]
-- 
2.35.1


