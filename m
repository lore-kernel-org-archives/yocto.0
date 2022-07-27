Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 209CDC19F28
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 14:55:11 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web09.20779.1658933705198688547
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 07:55:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Yltxy5Tt;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id p5so10709138edi.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 07:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DOHfWgcOhH28+cDtEzWjUrRkW8xqiOrH+MNLSGJJza4=;
        b=Yltxy5TtMxH1m6f+9svi+coKxGqn7IGEHgw88sp22nJQWwMxg4QTFBd/x9opKOd0SO
         CFzpUQ9Mz01I5R9dkpWJw73MIqGGSrgMRd430SA4f7PIVXt9YYS8OMPpV5Ug+UwEFNz/
         aheCXyv7M/5KKqz68UkmqTPMH+gVocnHaMrizbNI2ed8tDvEc7X9J+yPvP+/W/U2+L0B
         pxlXZwa0woMca2Y6yunBmtoSOJI4TD7RdcxORSp0NWhtB7wruHA0tlJw+gj47FIRE74l
         jDd+gvvGxnib3SxDHap4TeFhujH/rh3wZNiosP/tUceDFaNNRxHLQ3QgPGF9w5zqS8B/
         Qv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DOHfWgcOhH28+cDtEzWjUrRkW8xqiOrH+MNLSGJJza4=;
        b=5aZfxBdP+YvXTw19mUWIzVNfnDxva02QHT7KsV74sSjcAUWamKOC5RLIHynjz7Z+nW
         h+EE3GMFV7JAMhlR8k/WtS4fjI8Cw4eb2ZyCfQLgq0EPK8ihRkLrMmNG0WIRDPomEn10
         yiSO64UD2pWLnOjenqqWUevxuTzcBIi/bpbhUIRYpzKpddQlsJAC56Wi3Tw6IP8JeAc/
         dyBBkULBRujH/2HG+KBAKRWxvbxgu+3tqAwrNTeLwONVvyyfmeZWMZ8NVwzq7A9CnKHa
         anDmfKQf4JRtLpAJW2bQx7J4m26KqXbaDOiJxJOqp/pIMtBT0b8avsoaJFfZwlZ1ZcNB
         XOBw==
X-Gm-Message-State: AJIora9Rq95DdHTvpHB8Gx2DHGjpsLbs1eV/EX9CDAnW5SGypKXiQjaT
	SF3tIqc9hDl3m41LEQUCmSfdnZc6Ses=
X-Google-Smtp-Source: 
 AGRyM1sTPznUZmvMHX3SKMvLuT3uiIj8ctDtA4pFZw0xFvJGS2zhfBa1YLSp8drdk2ZM/mcpaEd87w==
X-Received: by 2002:a05:6402:4255:b0:43c:3af9:9653 with SMTP id
 g21-20020a056402425500b0043c3af99653mr10796581edb.222.1658933703368;
        Wed, 27 Jul 2022 07:55:03 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 y3-20020aa7ccc3000000b0043577da51f1sm10395052edt.81.2022.07.27.07.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 07:55:02 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: test only command line
 images with x32
Date: Wed, 27 Jul 2022 16:54:52 +0200
Message-Id: <20220727145452.161590-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 14:55:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57653

There has been a persistent stream of graphical failures on x32,
and there is doubt about whether x32 is at all used by anyone
nowadays - let's reduce the scope of x32 QA, and perhaps
later drop it altogether.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 5f37e77..68d98a8 100644
--- a/config.json
+++ b/config.json
@@ -558,11 +558,11 @@
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
2.37.1


