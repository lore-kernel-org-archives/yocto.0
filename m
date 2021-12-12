Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3262C433EF
	for <webhook@archiver.kernel.org>; Sun, 12 Dec 2021 18:59:40 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.1651.1639335579994407255
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Dec 2021 10:59:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=etD5a0Zu;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id x15so46408716edv.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 12 Dec 2021 10:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OpUlPv7TbLQyr3lbqMVa23OL2v7LkOUUcukkT4xKG64=;
        b=etD5a0Zu1Z5vDkwtuv2NGNaRDN7Z1vfc7qeHgFYA6RK6ueHDBnkAXBmp+8y4JurS1J
         XA5PLVDpf4lmYssIkZ3oLwqX2K/iE6wCzv+UuhD65RUhuoZASL+tct/o/lh0CN7aAbzi
         kbiFKPmZ6YNRzi3Olrj/bkKh+6a7ZJL01PJDiYcra9b4W8UJ9QBhnzoyWCrjzgYGjhVt
         dl87bn024xQNYOtwZdGPV2r/pUak2h2MPDEknWV5oct9aKs1KgUhd3+nUuMTcVoKioLG
         RH7eSlzY0spElUoofVCKdAmxiNKNTKuBLfJ/j5LfBs5g3F2+lHZtf5XWowox1ETFLUqi
         aDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OpUlPv7TbLQyr3lbqMVa23OL2v7LkOUUcukkT4xKG64=;
        b=OfzdbKBVrLI3uNVUv0giah5xAwKNs0gZiZm7ZdkglV/l1VJPjQga10DIRT04RbHwcU
         CwqlV1OTEJFjYwKXVsk2OygXsEWqIl0lmEMADKt5k666V2z2VCrjkj1JldDxTtaAZtHG
         ybEWKuglKujQV7WHVAn9EbqkohVNYyBJd4i/0yVics8FHChtzzi2dCODoz+mhIvHRHG4
         s8uZQ+0uAIK+bLzbUojwnc5QWvh5k6hZtRwcPNXlqDAI/YqkxwbilEb2hF0a/uL8Uq2X
         nztxXO4NCVbZcf1EAZqzKq48Hl8w41sep47LrIs6zf0G5oNJ93hE87sX8JbW7UgET4TW
         2Uww==
X-Gm-Message-State: AOAM53199CD1SxzjbkYcHeZfUkZ9oPupELoLBp5WbkM0jngkCmUhhlIe
	iJumj78MOVaFopADPEYBtPzSKAGZMW7wBg==
X-Google-Smtp-Source: 
 ABdhPJzNED2a0iWJ3jASQ2dmweVCcoQFCHIpX3YTQiZdOB0s+thUdpFUql+2utKRrcEcUXWSl7S90Q==
X-Received: by 2002:a17:906:9b82:: with SMTP id
 dd2mr31504932ejc.406.1639335578275;
        Sun, 12 Dec 2021 10:59:38 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 bm22sm5113545edb.48.2021.12.12.10.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 10:59:37 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] run-auh: do not clean up build
 directory
Date: Sun, 12 Dec 2021 19:59:28 +0100
Message-Id: <20211212185928.40937-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Dec 2021 18:59:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55554

This is done regularly by the overall AB maintenance tooling, and erasing
build artifacts makes it difficult to find out what went wrong
when it does.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/run-auh | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/run-auh b/scripts/run-auh
index 7a9ab70..656bedd 100755
--- a/scripts/run-auh
+++ b/scripts/run-auh
@@ -24,9 +24,4 @@ git checkout -B tmp-auh-upgrades origin/master
 source $poky_dir/oe-init-build-env $build_dir
 $auh_dir/upgrade-helper.py -e all
 
-# clean up to avoid the disk filling up
-rm -rf $build_dir/tmp/
-rm -rf $build_dir/workspace/sources/*
-find $sstate_dir -atime +10 -delete
-
 popd
-- 
2.33.1


