Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F65FC433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 22:36:45 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web08.1623.1652395002100162302
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 15:36:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=vyYsjiMX;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id y41so6053997pfw.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 15:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+kv/iVJ3e9H261I39j4gXbGKNcU4PfMaAS6PdcGLSUM=;
        b=vyYsjiMXeDxU4QjGxLjG09DS+bfhyOnPiexM8vt11rifJFxrhQBD+j6EqH25pqNg79
         tFyvIaRTAK1ZKdq4Hxghjik6YFmOrTeqiUKCDkHxtlWXs/TFyDoGslvDF1mPQJZD85mi
         2ORhNyAdxN4qvsftJky7HsnpmLzFhWW/Er/8OokYXiFZihkvQ6xzwA4fGeXIv2p9csEc
         jRjmj0cKvmnF3wV0ifA7qhCCN5RKriZ4ueGXHUyMswqAXaCjXc31IHh9roEWC6yYi5iN
         XHmJAE95a0t0iBFPDus8MagpXqHf1kqA3UUUklDaNiHonlkG3aBFNUL/7Is6pkJ+mLFV
         EXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+kv/iVJ3e9H261I39j4gXbGKNcU4PfMaAS6PdcGLSUM=;
        b=hepgPkCTO05O1by0HxoJxeuHMCb6EJuDQiM+idCR2BTryb8aKasXIF6Sto+VFnKEhA
         DDWKnO1vxnz+UtAvm1dsTS0zvRAnEsxl8teygbDo0S0aJghs5XoKmPTDfogpPOlpyPDq
         IdoXtmWN5U/Yt+5HIQI9cdqGLysQfArM+82XtcaZ8QYOYoqnMynUkKwratNumR2Sm/9q
         bTAkkO5xUVtFo6+wQeaN+TItSV2DkaPWW6BDnjEEglrf66I6id8Kjg1WcapQkJX4FXn3
         RAE6aDJM83MKX94Dd8w4epryjJjSAGzec+3Qv5+YiQsALuJYM51uS9INZMJR+w+O4QjX
         C8QA==
X-Gm-Message-State: AOAM533jgJkLsLuIaOdZwmcG9caK8QZxiyx6Ohw4oCgMOXigxKb8IoH+
	TNaUu97/P9duJR9w0DgHF5ayraZcM4cASXsM
X-Google-Smtp-Source: 
 ABdhPJxgXJaHe9xcBvuMx1XNwVVRyJqK2ZillGyr6wqT0DmgiGlpqxXjqiAFdJjkXYrEfx4/4DJ8XA==
X-Received: by 2002:a63:a18:0:b0:3c6:12b1:a8d0 with SMTP id
 24-20020a630a18000000b003c612b1a8d0mr1423189pgk.534.1652395000583;
        Thu, 12 May 2022 15:36:40 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 v23-20020a63f217000000b003c14af5061esm210819pgh.54.2022.05.12.15.36.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 15:36:39 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: add missing
 configuration for meta-virt Xen for qemux86-64 test
Date: Thu, 12 May 2022 12:36:30 -1000
Message-Id: 
 <df92e0d888432379d395fc9ae980a1d5387357c1.1652394896.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1652394896.git.steve@sakoman.com>
References: <cover.1652394896.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 22:36:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57086

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 6cceaa4..fe65440 100644
--- a/config.json
+++ b/config.json
@@ -825,7 +825,12 @@
             "step1" : {
                 "shortname": "Xen for qemux86-64",
                 "MACHINE": "qemux86-64",
-                "BBTARGETS" : "xen-image-minimal"
+                "BBTARGETS" : "xen-image-minimal",
+                "extravars" : [
+                    "require conf/multilib.conf",
+                    "MULTILIBS = 'multilib:lib32'",
+                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'"
+                ]
             },
             "step2" : {
                 "shortname": "Xen for qemuarm64",
-- 
2.25.1


