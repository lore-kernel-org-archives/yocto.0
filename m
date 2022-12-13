Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 772E1C4167B
	for <webhook@archiver.kernel.org>; Tue, 13 Dec 2022 15:41:18 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.77033.1670946068038985389
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Dec 2022 07:41:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qB72v+YK;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id n20so37515287ejh.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 07:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uX2GfkQoGLhrTUMmiz/9dmTlyb7Xwpuy6USx4Mj8etQ=;
        b=qB72v+YKZE6zKuOuaNS1sXdVRjfBZZ6U/W+1sTFYdhpBdcaOtt1DuN9rmyXNjV35mh
         e3D05SbstDdZyP3jO9pkoDv3sPjtV/oxM7e25lftuTparzc+2JhXLPzSdYS8Bk/FeOtv
         viQaiVU6yCkaQk1YDCz2NHDItFGvCTm91khqMj/sBWlN5DPITPwRpZG7oiq2gbUqNCHz
         SSYrGi1xz+c3ib9qwqUdiYqby7O/Cu4y7bIPKPZqiNDsUpr8uyXOrciCRaZrKSnISMiw
         V3XCJaN4LjewwuveYKdFGuES44HnfTf96pVj7ze8YHXi5Tq/hzgaCutUlICAyzEU0ysw
         p8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uX2GfkQoGLhrTUMmiz/9dmTlyb7Xwpuy6USx4Mj8etQ=;
        b=OXro36Yna6XGkrjaaXyN8BoWuCjnAKk1VUhnleH/RRoJf5CdjLnLSTGjUHhHUnSKq1
         slj5ykMwvQ68d8BRbySzbY8fxH6fcuSZDNOXjr4Pf58tuAcMXZx/Nl52sAOrHoqO6cwl
         JZqMNWXyfkKqrV7s9JbNt6ilfvO3am2VJSjmw8jjc9AjRnD8OoWpU3qbQgBzyJW5yIOU
         gxvenHepiQQeKmjOpIcgvLZ0/6GCBKvcpgKGO76b0fg07ZzTZpdlITpu5ztSKLro8Rbb
         CRQowvlHkPklGNlEc6RNfuVv610VtbpCmOYdJqbB63rm4y6rasNtw86rRoQqO+vOQFzi
         u2dg==
X-Gm-Message-State: ANoB5pllu69ZF9Iv3NWZ4Rv/+qzox3bdM2EMv6ZJmlp7XjuIhvCmUK3z
	2WDkyaSxzyHHIlCf+D9YdkLSGC6Wufw=
X-Google-Smtp-Source: AA0mqf67jYpYNeCD/5GP6M/JFCrqohYjaGc2MaNGd5Nn1vYbB4S+hJsL4+Ue6fG2ZCMmH95f1QuXIw==
X-Received: by 2002:a17:906:6b06:b0:7bc:2ad:fd2 with SMTP id q6-20020a1709066b0600b007bc02ad0fd2mr16736719ejr.17.1670946066403;
        Tue, 13 Dec 2022 07:41:06 -0800 (PST)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id gg9-20020a170906e28900b0078db5bddd9csm4685623ejb.22.2022.12.13.07.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 07:41:05 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH 1/2] config.py: include qemux86-ptest-fast (32 bit) in a-quick
Date: Tue, 13 Dec 2022 16:40:55 +0100
Message-Id: <20221213154056.370033-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 15:41:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58784

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index 3c67351..e638099 100644
--- a/config.py
+++ b/config.py
@@ -82,7 +82,7 @@ trigger_builders_wait_shared = [
 ]
 
 trigger_builders_wait_quick = trigger_builders_wait_shared + [
-    "oe-selftest", "qemux86-64-ptest-fast", "qemuarm64-ptest-fast"
+    "oe-selftest", "qemux86-64-ptest-fast", "qemuarm64-ptest-fast", "qemux86-ptest-fast"
 ]
 
 trigger_builders_wait_full = trigger_builders_wait_shared + [
@@ -117,7 +117,7 @@ builders_others = [
     "oe-selftest-arm",
     "metrics",
     "qemuriscv32", "qemuriscv64", "qemuriscv64-ptest", "qemuppc64",
-    "qemux86-ptest", "qemux86-ptest-fast",
+    "qemux86-ptest",
     "auh"
 ]
 
-- 
2.38.1


