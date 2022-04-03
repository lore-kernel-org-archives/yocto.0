Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05C4C48BE8
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:43 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web08.25071.1649005693047108022
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 10:08:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GzS+Jb4K;
 spf=pass (domain: gmail.com, ip: 209.85.214.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id i11so6392630plr.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 10:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JlYww2x8VIvpaN2hdeDzztAGo02CO87WcLu5mepXLrw=;
        b=GzS+Jb4Ku+SeK4SJiz54KvBha4Zhv38OwZLc4aDbCT5QEjLVZThtRDN2njcVstCPNF
         5tpNu9/tf1s0qMlYoGvfqXQ/axOWOQtooF/i0nsZ6cEpxeYtwXw+2U7fkDr67rCAn8z0
         cJgW90DEeaRgSd8EYfTnc37x3R5aQl0EiQkoaHNx/GO7t9qb9Zzh3nWeza0n7WhhaNrw
         Xj7jGXBJSVcQVALGTQOdMqC1wZ+dgFTb/op/qE2FdPLsdUpHyiCbcdf/FCpmgtXaHoM2
         s4LA0NPganjoMBKu6OtLUzVymQHDTZX67L1r6mar05sahXJiVKiT07H0xxz0K+3yW1ow
         sF7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JlYww2x8VIvpaN2hdeDzztAGo02CO87WcLu5mepXLrw=;
        b=GWhNNadjeJw7tZFVGRD6cQ6Koj3tuIH1cOjIJGQqK5/8yqEd/28wx8ivn0mQEuO3Es
         CeSK4QP1vguXvkItkhkQuvU+lnvMNNihx6xIxCT6VMpvD67rJdbY/MbDL3aFD0rSpxiN
         4E0a2fEARSnYkEzDTuADOoUtpYoZX/Ia8V45+QjRCrQ+hYtsRQdOgFu+lFNgPMtBPSMU
         HNPCABB2mWd91iWNHApvywZJVAsRjy/NDlhv2vFJKwngX0KtCRy4RHF7iE8bxGVhbNfT
         IhdmymY7eV1oxp22IF+KzwmEBPON+sG5DiUGKV/c600GZ3rHOYWbap4WhvNOZ40h7gzG
         8PAQ==
X-Gm-Message-State: AOAM530Pv3aDyRgmm3Iqt9/Cof4otXD7pFhA6nImPU5knRZn/xGbfLQK
	gP3tLNB8r3ZG/yNX4eFPO0AO7Lhr1g0=
X-Google-Smtp-Source: 
 ABdhPJy6Q0y5PeifMkYCc8n4f3JoDws0MFBoSEamdXV/aW6h+iPbHeCFVYg/vXxEHLJPP6jUBF8SmQ==
X-Received: by 2002:a17:902:9001:b0:156:a567:2683 with SMTP id
 a1-20020a170902900100b00156a5672683mr1659399plp.164.1649005692081;
        Sun, 03 Apr 2022 10:08:12 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:d902:56b7:61b9:ac4])
        by smtp.gmail.com with ESMTPSA id
 s26-20020a62e71a000000b004fde8486500sm4409478pfh.126.2022.04.03.10.08.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 10:08:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] samhain: update to 4.4.7
Date: Sun,  3 Apr 2022 10:08:09 -0700
Message-Id: <20220403170809.853076-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56652

This fixes musl builds too.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/samhain/samhain.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index d64cddb..5c1d6f5 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,7 +3,7 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
-PV = "4.4.6"
+PV = "4.4.7"
 
 SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://${INITSCRIPT_NAME}.init \
@@ -21,7 +21,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-fix-initializer-element-is-not-constant.patch \
            "
 
-SRC_URI[sha256sum] = "0b511a184066759cd864f6d15fe941ed3fe60f0cdc886dab68daa191d567de24"
+SRC_URI[sha256sum] = "0aa978accb635000c2d9170f307bff8a95836f8ec01615a53dbd9c2af9564d44"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.25.1


