Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 755D8C4332F
	for <webhook@archiver.kernel.org>; Tue, 13 Dec 2022 15:41:18 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.77035.1670946069091430921
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Dec 2022 07:41:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YTagtXQq;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id qk9so37505828ejc.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 07:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RI0Wf18KmT4opXxRp9EA5TOCN3RjuAvYNpm0bTcYa7U=;
        b=YTagtXQqk58kkibWeryo9ydOspxqyYnZXgttnEPcGXlLrZb2T9uR1UfKu9jEDONpSh
         xqmYLKiOJNB+twRayO/pqNoZhJxEtVhaUgABhan9MNkdmHNN7TuTI3y+/TBJxeKI7xfk
         jl0YVMyL0sMfRAGyY/Bc9i+ES8Dx060RjI606njuVgGM6Utc1F6CEQQSx03sfLlAksVM
         akR+J+7ZmZacP9B25frJQy3ErSPr5BwPMHwx1RkBRrly1GyduQtXjl7T5CDeZL+/OJ7C
         vTMIOeJf6S2/jN4hq/Xua+xYyCSwXygAMDvG7J/bqFRIZ4hbLJO/DM2RuDbFU+cGb6c9
         2AMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RI0Wf18KmT4opXxRp9EA5TOCN3RjuAvYNpm0bTcYa7U=;
        b=6eeqK7Rf5PH+LqaQLFHhflkMmC+hfdD123HYL9CaKM2J1uHIMsstIfi2a4gQYFZm/c
         UsXmpwfftUoFrdgLuYZJ6uhlpirpJjsEprJJyezEEmoKfj3b7cEz1zbmAsbXKdTrAcyI
         GwjeUa1reiIbMaXNX1wWzlJY7X9UeOg4qr70qTessQDCF5aIwbXeec2V/xxhZEYtYJ8N
         6w7vWT0vmZRCyuRakxfogqVM+20qTl0mFCkqfcxVbXa232renLmLSoy4S1z+O2TrSqjI
         18WD6TQhc681rHylRm7l1Gg3y7NZFVMUBZr7l5ZpRsTz2rffebX8xCssjrJk6RiZG0mG
         al+g==
X-Gm-Message-State: ANoB5pkIEr6pPimU/vxyv0DyaGOKYke+tna8MNBZuvhvIAs/hNq0alCt
	NTaIwMLJhgAsQT5mNGCEjtcb3uZ+pI0=
X-Google-Smtp-Source: AA0mqf557GDskWL3cBRRliedLreiFE91JlfzDVI3S4AQRRe7jnwsmOmbeQp9UAUrUpL88+2uHP5tGQ==
X-Received: by 2002:a17:906:7695:b0:7c1:18b1:fd93 with SMTP id o21-20020a170906769500b007c118b1fd93mr18114403ejm.44.1670946067197;
        Tue, 13 Dec 2022 07:41:07 -0800 (PST)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id gg9-20020a170906e28900b0078db5bddd9csm4685623ejb.22.2022.12.13.07.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 07:41:06 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH 2/2] config.py: include 32 bit qemux86-ptest (full) into a-full
Date: Tue, 13 Dec 2022 16:40:56 +0100
Message-Id: <20221213154056.370033-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213154056.370033-1-alex.kanavin@gmail.com>
References: <20221213154056.370033-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 15:41:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58785

The manually triggered test result is here:
https://autobuilder.yoctoproject.org/typhoon/#/builders/141/builds/1

The execution time is similar to the 64 bit x86 full ptest, as valgrind has been excluded
from the 32 bit set, so I believe we can afford to run this in the standard
matrix for master-next tests.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/config.py b/config.py
index e638099..711dd98 100644
--- a/config.py
+++ b/config.py
@@ -88,7 +88,7 @@ trigger_builders_wait_quick = trigger_builders_wait_shared + [
 trigger_builders_wait_full = trigger_builders_wait_shared + [
     "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "oe-selftest-centos",
-    "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-ltp", 
+    "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-ltp", "qemux86-ptest",
     "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt"
 ]
 
@@ -117,7 +117,6 @@ builders_others = [
     "oe-selftest-arm",
     "metrics",
     "qemuriscv32", "qemuriscv64", "qemuriscv64-ptest", "qemuppc64",
-    "qemux86-ptest",
     "auh"
 ]
 
-- 
2.38.1


