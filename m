Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6EFC25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 07:22:04 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web10.1755.1698391317240439476
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 00:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gH3HLAPd;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-54041e33845so2576408a12.3
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 00:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698391315; x=1698996115; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3lhgfzePuhcA3aONsu4LtJY2V9RqopHqc6jN1BVb/Z8=;
        b=gH3HLAPdUHt+woB3o5eKEY00NbuSi0Z2OtZOnXX4HX8cZ88GlQYJGd22S6xniFOmKR
         gRNNogNiBtvBDLvp8mKjHZU6rnV4IIuR3/uyhRwnE1H4E46MG0WsUcOVyj6lLfe6Mwf2
         8lFm7q/W3rWA+X6KXWa92up1JR9FBRPrax0KGoHgaewjrKhzFItCNW3s7daL0DTlqhP/
         gdDG+ee3E+rBnCK8pTTOTkjgAa3enWJHabYNvPbOi+rUdVdAHv+5H4e/s3BE9/7yc+4T
         nbnVuN7c1bZ0/cC+vz94SktQeIqvBTOZdaGEVWcAf++Gd7xb4J6K0EScoeE2BVcA04T6
         +Ztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698391315; x=1698996115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3lhgfzePuhcA3aONsu4LtJY2V9RqopHqc6jN1BVb/Z8=;
        b=PMHePHSY7wo5+eZZRHyCpARTWWT4QPT/+RxwIIESIat/GW3zw+XElV3W29QZdC6WNO
         Ovy2JgbhFYZbqJ/0jLz868/reJKlRJpuIMYbJ7vKXVFQKZ+LPEIycY1xFebFEJAfa/eu
         46emej/rHDPCELli2Ou4hRhXDLdVhbZK76r4l7Ft5rbRqcq1V97vDao2BxufztbHT5UD
         sncbsU8n67r79/bsej+0/GHgK2Wt2qdJwOVfj2HcG5bMw3QBNWPNwxUTAsG+dGyvPdo3
         cZdD7PDdKFos6oCYPQbr+ihujKnrfymyyH8M0bVOg0jJdr97tyjGm3i/hlzKBhOIkPxw
         EXQQ==
X-Gm-Message-State: AOJu0YxE4j8tDOe+N5gsIIkqgImG2MGiOFhbeFpIcMET9SsdRaf9FtcR
	M4wkRdUevBBPzq2ZrsCWHcZG8mHe2uM=
X-Google-Smtp-Source: AGHT+IFhUj5C0309wxwiqwFWwnRipyN5/rnJNeWm7L0RPsUcXMk2aDrGrIeviR93FjRlHVrVqBQgQQ==
X-Received: by 2002:a17:907:7f1e:b0:9be:9e69:488c with SMTP id qf30-20020a1709077f1e00b009be9e69488cmr1751489ejc.59.1698391315331;
        Fri, 27 Oct 2023 00:21:55 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:d900:f58f:7d32:a721:fcdd])
        by smtp.gmail.com with ESMTPSA id re16-20020a170906d8d000b0099d45ed589csm729578ejb.125.2023.10.27.00.21.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 00:21:54 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: add a standalone builder for running yocto mirror tests
Date: Fri, 27 Oct 2023 09:21:47 +0200
Message-ID: <20231027072147.111314-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 07:22:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61498

Those tests are currently run as the last step in a-full/a-quick,
but it's useful to also trigger them separately, after perhaps
executing other builders that populate the mirrors (such as
qemux86-64 and such).

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/config.json b/config.json
index 9987514..918cf08 100644
--- a/config.json
+++ b/config.json
@@ -1433,6 +1433,14 @@
                 "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
             ]
         },
+        "yocto-mirror" : {
+            "MACHINE" : "qemux86-64",
+            "step1" : {
+                "shortname" : "Yocto Mirror Selftest",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a -t yocto-mirrors -j 15"],
+                "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
+            }
+        },
         "meta-oe-mirror" : {
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86-64",
-- 
2.41.0


