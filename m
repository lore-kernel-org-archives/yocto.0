Return-Path: <brgl@bgdev.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23C46C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 09:05:28 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.24315.1644397526404524168
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 01:05:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bgdev-pl.20210112.gappssmtp.com header.s=20210112
 header.b=CAk20GDz;
 spf=none, err=SPF record not found (domain: bgdev.pl, ip: 209.85.128.42,
 mailfrom: brgl@bgdev.pl)
Received: by mail-wm1-f42.google.com with SMTP id
 j5-20020a05600c1c0500b0034d2e956aadso1031852wms.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 01:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qkl8QXoLxfsn18avqwQTG0dFaDXtVSJqZbS/U3kBqrY=;
        b=CAk20GDznzb5psgDkmMH5VthSe4SM+vnmQTGdMj8lNICspRIKzIKAz8Q0E2KBW8js/
         cj5JB2FTTKFwzhAP0GoLSjVIGtMp+DIH5nJ9RAxiabpdC9LHoVdWAXxdoMtWTz9eIuI/
         6LgQ2xHoDTkdrNXIHwOliE+zUIGWNLpUiN3TNrkZWjYAOckc/Ao3BrNSm4Mv5AnO0dQB
         oItNDPtDGkKHWMJo14GcxHiCmReQuGssEicKAx5nHTpAU+64chm3ggv0hZmVfIIopDxO
         D76I4viQUbdlHUmBtUkCiqsftn8J+B9rBYiYu2O8dmrZaMwIZOvyHhvE7lA2QL0MEPnZ
         4qQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qkl8QXoLxfsn18avqwQTG0dFaDXtVSJqZbS/U3kBqrY=;
        b=XK9FBYVzVTTYnLAscle0szcAwG42g/nPQyuaZaZamsh/FHp+f2qG00nqF9L1olPHYm
         KAtfXfSvhIDCuXttX+sJYqUX2DVJJeQLOcXjaDeyAktzjmU0PWDRqeWJp5TbZJi8JKW4
         1m5GJp7mvOYctyy+4jFDsXqHUYrA7EqcvEqtgx5qwoMyDiRpJuQ896an1FzzKdYuQWUn
         vCIun0l+AEDWQN4gKGw+Ft8lauA8gmDNPYGETKkW1ljhMqqbcC9OjQbvO8NVkBYg3lUc
         10f+8l1SoV1BZfZkGRfNucwzDRZvHWV7LqlIoxd9phTHM0jjYvgZqBNfmk/1HER66PY/
         9qlA==
X-Gm-Message-State: AOAM530paSpp8GstSeWa4BfVTVHNFFil9Mpg+zLens7+XhibPCi1R6U3
	Kzmu16yjaeoILB5f9UW1GTCUR/A1jmrFEg==
X-Google-Smtp-Source: 
 ABdhPJxDA2IqD4UQUS2+iuV9npLE8b3W5dC/XOsTZrQjGWHtqrcQS3TppQI/wr85FlXrrh5tqIySBQ==
X-Received: by 2002:a7b:cf05:: with SMTP id l5mr1123065wmg.37.1644397524692;
        Wed, 09 Feb 2022 01:05:24 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:334:ac00:7d50:ff5:f5c1:e225])
        by smtp.gmail.com with ESMTPSA id
 t18sm15886449wri.34.2022.02.09.01.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 01:05:24 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: yocto@lists.yoctoproject.org
Cc: Naveen Saini <naveen.kumar.saini@intel.com>,
	=?UTF-8?q?Eil=C3=ADs=20N=C3=AD=20Fhlannag=C3=A1in?=
 <elizabeth.flanagan@huawei.com>,
	Bartosz Golaszewski <bartosz.golaszewski@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-image: unify the image generation for
 tests and samples
Date: Wed,  9 Feb 2022 10:05:10 +0100
Message-Id: <20220209090510.851933-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 09:05:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56114

From: Bartosz Golaszewski <bartosz.golaszewski@huawei.com>

Reuse the same code that generates zephyr samples for building tests.
This allows us to generate .bin files in all cases.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@huawei.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-image.inc        | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
index c77692d..2d4c6ff 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -1,17 +1,10 @@
-require zephyr-kernel-src.inc
-require zephyr-kernel-common.inc
-
+require zephyr-sample.inc
 inherit testimage
-inherit deploy
 
 QEMU_BIN_PATH = "${STAGING_BINDIR_NATIVE}"
 
 ZEPHYR_BASE = "${S}"
 OECMAKE_SOURCEPATH = "${S}/${ZEPHYR_SRC_DIR}"
 
-do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${ZEPHYR_IMAGENAME}
-}
-
 addtask deploy after do_compile
 do_install[noexec] = "1"
-- 
2.30.1


