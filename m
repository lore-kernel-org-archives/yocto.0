Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
 by mx.groups.io with SMTP id smtpd.web11.1399.1600731116886149153
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 16:31:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=Fcl76Bs2;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.68, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f68.google.com with SMTP id p15so8477826qvk.5
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 16:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=javfQlLDfYq9OisTsRWhGlp7GxSrRyUe7IWech7RvrI=;
        b=Fcl76Bs2a+9B/0T0nCpGAIB9WHq2MfB0aYwG/HkjLKoTxpsWLDUzDE5o4GxViPCYNK
         6Za+IOlyYlr7PCKityMBsAIQ2QJhUEdWFenOeNKDF3cujlCoWKrT3St0CxhNOkjaHI/i
         oXauWFzM2kIhmW+KUq5tSe8P2d7xefbAwwxPowBBU0/Vk2eIZzQwO6qsbQkzEfKohI8T
         H6hF+TANGzMZSk0Wm72db79o0ICHjSTauvFcvf5hQLrBb6nEcHQdulu/RI1WTpvkzj09
         9UA+OHl0j+t9Scr3BHb7oDvchRBwd6MlATAv7cAyc9YIdwRY97F0vD++8qZjI9btphNI
         BNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=javfQlLDfYq9OisTsRWhGlp7GxSrRyUe7IWech7RvrI=;
        b=GLINBiVYNmmj1pVtL69NMZo8+Pwvfsjds1R1Pj/Cqz2owwHfk77m2fF6YQZvCxiG2+
         eVH4ZlUnadse9i5mbjCkeOh4ttK4pdLTFcB9bTn+ESo6rmYVz1hFzKJXsjWe2hWZW5En
         W3E6h7lZgwvTA4oadhL7v87tfAFaMdYskjNjFnVc38M02bF4pznZhEHt5/dJoHYM00ra
         yJwcZk3kXhfJeY+hgjhx20DJH8WtLU0Z0zU84Wx5sIK3qc8d9JTaGBK1PZNit/hgbNKN
         lDOy8C5scT77e0361sLoG5Z+8CTwQeCWY+JO5cd4e1lL9DUEjBZ8DAdkPUx85VDY/X32
         LW0g==
X-Gm-Message-State: AOAM533JAOwsjFIwohUz7M+Vmi/FZuKAfiyibRl5tebistXZI3Pokb9M
	C0WStecRV2oKT2oLXjI7NznY5YsTVvl7U9Lb
X-Google-Smtp-Source: ABdhPJzncE001lO84LSI9yYklj5WMoVrNwsomOiF0MKkca+LgunPwjbahyNMg94uGPdSLphYME0Krg==
X-Received: by 2002:a0c:a612:: with SMTP id s18mr2808672qva.37.1600731115819;
        Mon, 21 Sep 2020 16:31:55 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id 145sm10566232qkf.18.2020.09.21.16.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 16:31:55 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Subject: [meta-zephyr][PATCH] zephyr-kernel: Add python dependencies
Date: Mon, 21 Sep 2020 19:31:53 -0400
Message-Id: <20200921233153.24840-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Zephyr refuses to compile due to missing python dependencies.

Signed-off-by: Jon Mason <jon.mason@arm.com>
Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index d7147d5b7b86..7e569edb694c 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -2,6 +2,7 @@
 
 ZEPHYR_INHERIT_CLASSES += "zephyr cmake"
 inherit ${ZEPHYR_INHERIT_CLASSES}
+inherit python3native
 
 # There shouldn't be a manifest for zephyr kernels since there is no root
 # filesystem.
@@ -20,6 +21,7 @@ export ZEPHYR_BASE="${S}"
 # We always need a toolchain to cross-compile.
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} gperf-native"
+DEPENDS += " python3-pyelftools-native python3-pyyaml-native"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
 DEPENDS_append_qemuall = " qemu-native qemu-helper-native"
-- 
2.20.1

