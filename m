Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 044E6C46CD2
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 08:02:15 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.13737.1706601733745844496
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 00:02:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KRYfpSNj;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55ef0465507so2589711a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 00:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706601732; x=1707206532; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R2PlarsqAmgZmbX65U5MByhcizIjewRKcHYbn0E+FAg=;
        b=KRYfpSNjC7k/GF5H8Z2+wHKx+Opg4lHpLKW6zIJhBH7Ze2aEhVTqK+7GfGlJCZy8Oq
         /M+IMK/Wjaol8/+z0xaO6UPEqbwuEyUMjGDlJG7w1Sg5lu7kw7SuGDrS0r8R6nAWKSKg
         rUbatNGn3cCN6NVIvuxKKGzZpViKaLRtGN5BOuVlIEvGSrX4kbYRsIfjkFSiSTAjtUcV
         M9vNQhbhq8b+lFyvK3BOsOHy/HYHp4Miklp7Cv2O2Xe1M4sVr2QfTgSqpuhNVmmt9mWx
         wNxwPrm2f56o6JjDLrnSWpqrQFozB3wqftSLOHDSm6qxCGDz4DulXdrNSy/FBXALyFqX
         2few==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706601732; x=1707206532;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R2PlarsqAmgZmbX65U5MByhcizIjewRKcHYbn0E+FAg=;
        b=TaJ412wmAtOq5zrE85P8nHZiW1/xzsvyJY/rDa1N3s+cJ+uDPManSDt8wNSE62n6j8
         7ml2mIE7JwcYC6TzvnkaaHuaLf5f5WWD4eSbQN+VcZip0KAY/jyibWgZsxEC0sW2T9nZ
         HWnF+yLHKhroQ+ET4O5/5kyMo1v/G4eWyfMhgYpYOobMqqvfVyA31FZ7vEKUDTBfF4HW
         OBxmrXpol19UZbPOymGX1w0SFAKOhmsbjO9GjAlopzHze/FTO84PVaakO2g7uXP5Ez8o
         gOc4hfeC32Xcy/WFwJAtzcARrRa29Nu5jPAgnypyCwILO4vsmpkDwNnXGcdwwulmDVW/
         JYyA==
X-Gm-Message-State: AOJu0Yw+EUXaed9o593agVjUuLymDNtwAnyoU4/gHBqfSK/U/fqaDBbJ
	gwlzJzQolIdyLWXbimSXrxmWHWbigatFqQLEHKO8y50tMIHERKKn4hHjfa0g
X-Google-Smtp-Source: AGHT+IF+f+oTpahaRdn4dpMfxKlbIOJdp2lpHIO+oMPZ2ekPLySKtp1S8t/UA5D0Js94mcUHy48Fsw==
X-Received: by 2002:a17:906:b7da:b0:a35:f5ad:2246 with SMTP id fy26-20020a170906b7da00b00a35f5ad2246mr1946280ejb.20.1706601731833;
        Tue, 30 Jan 2024 00:02:11 -0800 (PST)
Received: from fedora.fritz.box ([2a02:2454:299:c100:b25:37c3:ea9f:574c])
        by smtp.gmail.com with ESMTPSA id cu7-20020a170906ba8700b00a3527389447sm4128969ejd.142.2024.01.30.00.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 00:02:11 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: run CDN population tasks with --runall build
Date: Tue, 30 Jan 2024 09:02:05 +0100
Message-ID: <20240130080205.30323-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 08:02:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62331

There was a report of missing go-cross:populate_sysroot here:
https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6504/steps/23/logs/stdio

The builds that are expected to create the object (or take it from cache) are:
https://autobuilder.yoctoproject.org/typhoon/#/builders/42/builds/8481/steps/12/logs/stdio
https://autobuilder.yoctoproject.org/typhoon/#/builders/76/builds/8457/steps/25/logs/stdio
and neither mentioned that task anywhere, instead going directly to go-helloworld's rpm.

This means that go-cross can be neither taken from cache not written into it in
a-full, and we need '--runall build' to ensure it's not skipped over.

I also took the opportunity to match up the target image names with what the CDN
test actually checks.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/config.json b/config.json
index ad18226..5e24c7e 100644
--- a/config.json
+++ b/config.json
@@ -969,12 +969,14 @@
             },
             "step5" : {
                 "shortname" : "x86 rpm (for CDN)",
+                "BBTARGETS" : "--runall build core-image-full-cmdline core-image-sato-sdk core-image-minimal",
                 "MACHINE" : "qemux86-64",
                 "PACKAGE_CLASSES" : "package_rpm",
                 "SANITYTARGETS" : ""
             },
             "step6" : {
                 "shortname" : "arm rpm (for CDN)",
+                "BBTARGETS" : "--runall build core-image-full-cmdline core-image-sato-sdk core-image-minimal",
                 "MACHINE" : "qemuarm64",
                 "PACKAGE_CLASSES" : "package_rpm",
                 "SANITYTARGETS" : ""
-- 
2.43.0


