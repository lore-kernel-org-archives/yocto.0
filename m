Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648AAC4332F
	for <webhook@archiver.kernel.org>; Fri,  2 Dec 2022 18:11:03 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.83228.1670004654061088395
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Dec 2022 10:10:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j2Z3tC6x;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id z20so7443843edc.13
        for <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 10:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lJQ/FkaQBEPC7H3txKP6SGAQAqNXLy++lbF/VGffhC4=;
        b=j2Z3tC6x/WsE+nelhGzDjgN6xeLW/vgTm3MXgH6XLDsEpRRZ3KfURIyfaelm2Admz8
         NnghOskQM0DQbkkqtE2ODwSP3zE4ROaTBtvHC2ckfdUZMM1LKrsYJ8n7cty5PXsDwawL
         0Yjk0n/rk5fMKDNis0tCYI2Z8+LW88YheeX2NdOxeYPfFHfVFQ77wZfca07LchqZrFYf
         1TuF2k52Xk9wczHHjQxpT5d2pIL9EWhdUUzM/Ahz/OCLJg8UyDqyJpZrHHWFhOU3oBDy
         8g8d54DzxXEpnMsAOe+Jbh3g2DVRE4JN0oDrr3kFuOMmX/r2GP/FN7YeYtRM0AsPZmB+
         +r8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lJQ/FkaQBEPC7H3txKP6SGAQAqNXLy++lbF/VGffhC4=;
        b=Gr65mcEANAsbULPKYxemiVExMMx0JUdJZ+6UWIlTZkGjLIOcwkOV/Se3HF5O8G9oCM
         sYRvCKTTrjggR9c6JIYU4vmtz4ZkFtgVORQh9HXeGcLwaSq1Ouh5Csw+EzpjcF9UxYvT
         rN0rfH1o/5RgZJpzEZEi2BJmyDR6yzi48upYNdYj149O9uLs6uJ3eh4KPEDks3DjtTUQ
         FOPazM+2qUv7HgHsmF4oIcKYB5wdpsBwszu+LAM/iMA94WQa1eESp6A+5L4OpTTgkV5s
         bG+QE1P/Jhz7y8TT99xOaXyiG1n8f7ZjWEYKB2MQHA5jP+5if1pSX+cGv3GODnGT+8gL
         x3SQ==
X-Gm-Message-State: ANoB5pkNwZBELST/aqP7dvT00eVmJVvIAvOl8SnJ4qJ/VaGjdtPZaEN2
	mLSgmumnODbx91eyWaRCEXJdULT9O7Q=
X-Google-Smtp-Source: AA0mqf4gt0DOkbgYy1fk7T8Tenlw6rWK70PwKV6sd5zqqzLJ7bUeeDdQqHedHDN+svp2AtaUeKaz9A==
X-Received: by 2002:aa7:c754:0:b0:46b:6096:a884 with SMTP id c20-20020aa7c754000000b0046b6096a884mr18726774eds.152.1670004652450;
        Fri, 02 Dec 2022 10:10:52 -0800 (PST)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id 19-20020a170906329300b007af75e6b6fesm3314841ejw.147.2022.12.02.10.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 10:10:52 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: add x86 (32 bit) ptest options
Date: Fri,  2 Dec 2022 19:10:46 +0100
Message-Id: <20221202181046.221367-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 18:11:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58718

This will be particularly useful for testing Y2038 issues,
as that is the only 32 bit target that can be run at native speed
on the AB cluster.

Whether a-full should get fast ptests or full ptests can be decided
after collecting AB execution times for both.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json               | 8 ++++++++
 scripts/publish-artefacts | 5 +++++
 2 files changed, 13 insertions(+)

diff --git a/config.json b/config.json
index 713afe5..4dbfb2b 100644
--- a/config.json
+++ b/config.json
@@ -485,6 +485,14 @@
             "MACHINE" : "qemux86",
             "TEMPLATE" : "altcfg-qemu"
         },
+        "qemux86-ptest" : {
+            "MACHINE" : "qemux86",
+            "TEMPLATE" : "ptest-qemu"
+        },
+        "qemux86-ptest-fast" : {
+            "MACHINE" : "qemux86",
+            "TEMPLATE" : "ptest-qemu-fast"
+        },
         "genericx86" : {
             "MACHINE" : "genericx86",
             "TEMPLATE" : "arch-hw",
diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 506f790..ed08278 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -181,6 +181,11 @@ case "$target" in
         sha256sums $TMPDIR/deploy/images/qemux86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86
         ;;
+    "qemux86-ptest")
+        mkdir -p $DEST/machines/qemu/qemux86
+        sha256sums $TMPDIR/deploy/images/qemux86
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86
+        ;;
     "genericx86")
         mkdir -p $DEST/machines/genericx86
         sha256sums $TMPDIR/deploy/images/genericx86
-- 
2.38.1


