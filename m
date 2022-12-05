Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5630C4332F
	for <webhook@archiver.kernel.org>; Mon,  5 Dec 2022 08:41:43 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.10691.1670229694837174707
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Dec 2022 00:41:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ylq/aM4E;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id c17so6183222edj.13
        for <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 00:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dm6trrGhY7+q9NT5mU0lg0MA2n1tftTZTIfo+dUo3q8=;
        b=Ylq/aM4EQg9HUf/SEppUF11bfuocWfZsFvydpXfHpbuSMBZ/YEtZJoIrfmDyCnPwpY
         xlV19ahhiqLkigjasUi5V/gupdQQuzNF8TXtb4Kh+BZsqGrvB+NCKnxtieoXpTWDIs+y
         b/lopqMZOZKIyCseW1BlLk7eT/e9TYPwLzill47ydq0nUmVvSIWQLnvZg3EKpFYO/cdz
         2nRPPgy7F3uoamobcptLxThgdzcoUe8WX30pYlVR0imNTydHyyKCJ4pthFKouNe6rCPU
         f7Mgu5lNTvcqnKFCgHHBze00TedI9cCL6VjDpYaZuiELc0UI6+V4tYBc5ktdxKHw6RnC
         KEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dm6trrGhY7+q9NT5mU0lg0MA2n1tftTZTIfo+dUo3q8=;
        b=A18+vJ5gJASnod4oaulcmfP6ZEih9qnzgMBWfr5Zt9omxVsW939YT2isUPQYjzOTw6
         vghK/rYBT60H81yuYT6HqIfpcthzJhYkrGuRx91tZHOn0WHCh89IhncfoUsTitar5h+l
         XRKBwFVT2FMulX3vXqMKcLMdfT/isGvZrFkLP57hXKcc8YM10GLYAlSHlfQ3wneeCi+R
         Ut3AM5I+zpYCAAr9Li7/Ha6QvvsK6KLwrAORN4g1T99Ll3nXS9wXACuzRuwfHAFOcnAb
         IZSdvg1LJCZRO2qPN2TW9Vjip+oWQGPWfLoIND08DVQe7dE0cYK/YaIxEk70pB1Os2Hz
         /ufg==
X-Gm-Message-State: ANoB5pmonsiAjw4DnSGmrujy0B3UZFMF+5fNPUQ6rG2TEGflND/i+OvS
	DW7Tg/x0GJ25gawcpNIklcih5aFCoHY=
X-Google-Smtp-Source: AA0mqf6MjaqGNcRdX+YorfCTvIdmuqHJHfKMPoUFs9BkZaqAhNyOYhWKfeSLPH9P1jvNTXaYMSK0nw==
X-Received: by 2002:a05:6402:1f08:b0:461:d21a:c0f3 with SMTP id b8-20020a0564021f0800b00461d21ac0f3mr41868434edb.71.1670229693124;
        Mon, 05 Dec 2022 00:41:33 -0800 (PST)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id d7-20020a170906304700b0079800b8173asm6001957ejd.158.2022.12.05.00.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 00:41:32 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH] config.py: add x86 (32 bit) ptests to builders_others
Date: Mon,  5 Dec 2022 09:41:27 +0100
Message-Id: <20221205084127.364066-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 08:41:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58724

Once those are confirmed to not fail, and their execution times on the
AB are known, they can be added to standard test sets.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index de9356a..3767c9f 100644
--- a/config.py
+++ b/config.py
@@ -117,6 +117,7 @@ builders_others = [
     "oe-selftest-arm",
     "metrics",
     "qemuriscv32", "qemuriscv64", "qemuriscv64-ptest", "qemuppc64",
+    "qemux86-ptest", "qemux86-ptest-fast",
     "auh"
 ]
 
-- 
2.38.1


