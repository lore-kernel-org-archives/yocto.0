Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F358C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 22:43:45 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.3164.1683672218296791699
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 15:43:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=VSS2aDt9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.50, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-24dea6d5ce8so6152958a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 15:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683672217; x=1686264217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o/8gkfyidNA3GafmetBtF9zDl4FY9bplSWKFo9iGHqo=;
        b=VSS2aDt9VwU7b4DnjG2lW+bSWHgs936k6WH5jqtaP+ovKR2DyiP/4i0xZMrABe6+MY
         i/dTJPHwb2PUh7GED/VH+TqKBwTSnEVg4lvt5X3DdrzNV8BepK9+cMo/tl3WRecBNZ56
         E3IlEd2mcdfIBR5q1HSbts5ZSbGIaU8T+d7N8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683672217; x=1686264217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/8gkfyidNA3GafmetBtF9zDl4FY9bplSWKFo9iGHqo=;
        b=bCWJ7DntRZF3D6Q7KprtlzSv/ty9WEnnp9RJ3+z4CQdFNXKjwzFHVvEsNapYu5X49O
         ahI+xiJsDO6EsOMWc0Xgnix2A5dAceRTgtE9lDeNIHZf2VonxNe+DZDBeD5rG+M5NSdg
         MpMjFdUvPnjUrYjH17N2hAaEm33rxmLvxS/PmJpcgYYeKRpDtqqNRnsFk2P6KDbaNz4C
         zBsfZVGkMH/iGaZbLGBWka2sEzkF0/L3QpXTuwUn/ZfKTsOK9a/hXCPOW9YJdRBoVlJi
         2waGuCZ2aWXzZOBJNGB1W0FOfrtNpOTKjWucTWP914/UPBVhS+6IONj7dmSUZ1kY9pF6
         HccQ==
X-Gm-Message-State: AC+VfDwId4jMYzBrD/wJvWPlyV7Q2oyH6xhqORU8Y5GswKfP3+y870Ar
	iltvX7XwCOKslk5CoKIYvUwPQBfNlOUyKe50tO8=
X-Google-Smtp-Source: ACHHUZ5vOigwODshTMceNzTXPQBY+IKaaEvnC473x/0lD0N9Ww7NNqpw/NnOIZDkI8KTZT9zO92G4w==
X-Received: by 2002:a17:90a:9483:b0:24d:f3f5:4d2e with SMTP id s3-20020a17090a948300b0024df3f54d2emr15735002pjo.10.1683672216717;
        Tue, 09 May 2023 15:43:36 -0700 (PDT)
Received: from hd-yct-laptop.hsd1.or.comcast.net ([2601:1c0:ca00:9700::687b])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090a898800b0024e268985b1sm14072718pjn.9.2023.05.09.15.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 15:43:35 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] scripts/publish-artefacts: remove all reference to deprecated edgerouter
Date: Tue,  9 May 2023 15:43:05 -0700
Message-Id: <20230509224305.19767-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 22:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59957

edgerouter is no longer part of meta-yocto so we removed it from the
autobuilder configuration as well.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.json               |  8 --------
 scripts/publish-artefacts | 12 +-----------
 2 files changed, 1 insertion(+), 19 deletions(-)

diff --git a/config.json b/config.json
index cd56fa5..aaf9077 100644
--- a/config.json
+++ b/config.json
@@ -459,14 +459,6 @@
             "MACHINE" : "qemumips",
             "TEMPLATE" : "altcfg-qemu"
         },
-        "edgerouter" : {
-            "MACHINE" : "edgerouter",
-            "TEMPLATE" : "arch-hw"
-        },
-        "edgerouter-alt" : {
-            "MACHINE" : "edgerouter",
-            "TEMPLATE" : "altcfg-hw"
-        },
         "qemumips64" : {
             "MACHINE" : "qemumips64",
             "TEMPLATE" : "arch-qemu"
diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index ed08278..aeb3f88 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -22,7 +22,7 @@ sha256sums(){
 TMPDIR=$WORKDIR/tmp
 
 case "$target" in
-    "qemuarm"|"qemuarm64"|"qemumips64"|"qemumips"|"qemuppc"|"qemux86"|"qemux86-64"|"edgerouter"|"genericx86"|"genericx86-64"|"beaglebone")
+    "qemuarm"|"qemuarm64"|"qemumips64"|"qemumips"|"qemuppc"|"qemux86"|"qemux86-64"|"genericx86"|"genericx86-64"|"beaglebone")
         mkdir -p $DEST/toolchain/i686
         mkdir -p $DEST/toolchain/x86_64
         sha256sums $TMPDIR/deploy/sdk
@@ -100,21 +100,11 @@ case "$target" in
         sha256sums $TMPDIR/deploy/images/qemumips
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemumips/*qemumips* $DEST/machines/qemu/qemumips
         ;;
-    "edgerouter")
-        mkdir -p $DEST/machines/edgerouter
-        sha256sums $TMPDIR/deploy/images/edgerouter
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/edgerouter/*edgerouter* $DEST/machines/edgerouter
-        ;;
     "qemumips-alt")
         mkdir -p $DEST/machines/qemu/qemumips-alt
         sha256sums $TMPDIR/deploy/images/qemumips
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemumips/*qemumips* $DEST/machines/qemu/qemumips-alt
         ;;
-    "edgerouter-alt")
-        mkdir -p $DEST/machines/edgerouter-alt
-        sha256sums $TMPDIR/deploy/images/edgerouter
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/edgerouter/*edgerouter* $DEST/machines/edgerouter-alt
-        ;;
     "qemuppc")
         mkdir -p $DEST/machines/qemu/qemuppc
         sha256sums $TMPDIR/deploy/images/qemuppc
-- 
2.40.1


