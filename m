Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web09.56179.1629301295377276053
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 08:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=F9tkYcHH;
 spf=pass (domain: googlemail.com, ip: 209.85.128.45, mailfrom: blenkmax@googlemail.com)
Received: by mail-wm1-f45.google.com with SMTP id g138so1901553wmg.4
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 08:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BjQp48lHn3mxzRWh8aPTAS7/kFkyO1MVLV8sWHGYFEw=;
        b=F9tkYcHH/ZgEeX/f7IBc6CKzZLcoS0KIleKwVelO2n1Z08OweetAaZDuBNLOLatpFU
         /CZWXN5QSjBwkQtKw5OlWd+5yaMHvnIhUzP1VayfwQ7R0foElnNQks28xFPfk9YThWWE
         EHxEIUerRbgol37ummDxjscaQ37rmVzZ/w6ennVtd7mAnogvaK7QBgfLdNgLi2ZX5r8m
         CndO2rFpcJv4zITAg3BISYPeEoKHiKOsVVfv7EoZsYO6dU8qfETMJWFN+L99pfQEsi2U
         nQ5sDfs44ZFus5OQWcLm3vD4K3NOmKBnUwKw7gK0fjGRXpr+W5JKo/agBFagoLFu0d6c
         sdFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BjQp48lHn3mxzRWh8aPTAS7/kFkyO1MVLV8sWHGYFEw=;
        b=sJzIUDT6abGjFKBWZgiQfm1mNzIO7a1DkW+Z56YvDEsmzx1ymIc/SPgV9m0v+N7fHo
         /YcTLXhvV2rGzWJbTnVdSmddekU1HFUEIdLNZeb+HEXIyeWxdEsXbSBJ9f6L/Uv1e16U
         rf4IOlfbcSbQSjVdj1hW13BJt9k2Dc1H/CP+yg5iwbIJXHwyldkkq5o7hjlU+xSmEKED
         Zo6FUzC8q/l/9OJZmHTEnlQ9qgYMedfLSs2b3MrtceIwVbg5mpCu03/qlMBi60Yt8TPD
         CEusbjqtPGt0XWqh+uQpHgMsKuQZQYPcmx3ff20Bo0kllojff/9yg9MePtlr2t0+2v3W
         JPvA==
X-Gm-Message-State: AOAM532odfb8//6QLOoip21skK0xqeyJ/i+gk1urymgZLOTf0mdADRY/
	MiEEZz062UBzJuRPSyYxHs8RrTxL/C9N7w==
X-Google-Smtp-Source: ABdhPJzyS279B+/Iu+jqWC9G+6yT6cWgQ6R/JxLeFhFguDWyOUKoOOwo0mCHmOBy9g841zoSCCOZqA==
X-Received: by 2002:a05:600c:21d7:: with SMTP id x23mr9089580wmj.10.1629301294026;
        Wed, 18 Aug 2021 08:41:34 -0700 (PDT)
Return-Path: <blenkmax@googlemail.com>
Received: from manjaro.bmw-carit.intra ([212.118.206.70])
        by smtp.gmail.com with ESMTPSA id l38sm5125222wmp.15.2021.08.18.08.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 08:41:33 -0700 (PDT)
From: "Maximilian Blenk" <blenkmax@googlemail.com>
X-Google-Original-From: Maximilian Blenk <Maximilian.Blenk@bmw.de>
To: yocto@lists.yoctoproject.org
Cc: Maximilian Blenk <Maximilian.Blenk@bmw.de>
Subject: [meta-security][PATCH 2/2] image-with-hardened-binaries: Add selftest
Date: Wed, 18 Aug 2021 17:42:19 +0200
Message-Id: <20210818154219.3439969-2-Maximilian.Blenk@bmw.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210818154219.3439969-1-Maximilian.Blenk@bmw.de>
References: <20210818154219.3439969-1-Maximilian.Blenk@bmw.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add selftest that executes binary analysis on small rootfs

Signed-off-by: Maximilian Blenk <Maximilian.Blenk@bmw.de>
---
 .../cases/hardened_binaries_checker.py        | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 lib/oeqa/selftest/cases/hardened_binaries_checker.py

diff --git a/lib/oeqa/selftest/cases/hardened_binaries_checker.py b/lib/oeqa/selftest/cases/hardened_binaries_checker.py
new file mode 100644
index 0000000..6385757
--- /dev/null
+++ b/lib/oeqa/selftest/cases/hardened_binaries_checker.py
@@ -0,0 +1,42 @@
+import os
+import re
+
+from oeqa.selftest.case import OESelftestTestCase
+from oeqa.utils.commands import bitbake, get_bb_var
+
+class HardenTests(OESelftestTestCase):
+    def test_hardened_binaries(self):
+
+        self.write_recipeinc('emptytest', """
+SUMMARY = "A small image just capable of allowing a device to boot."
+
+IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"
+
+CORE_IMAGE_EXTRA_INSTALL ?= ""
+
+LICENSE = "MIT"
+
+inherit image
+
+IMAGE_ROOTFS_SIZE ?= "8192"
+
+inherit image-with-hardened-binaries
+
+HARDENED_BINARIES_CONFIG_FILE = "${WORKDIR}/check-config.toml"
+
+do_write_config_file() {
+    echo "[rpath]\nenabled = true\nwhitelist = []\n" > "${WORKDIR}/check-config.toml"
+    echo "[runpath]\nenabled = true\nwhitelist = []\n" >> "${WORKDIR}/check-config.toml"
+    echo "[relro]\nenabled = true\nwhitelist = []\n" >> "${WORKDIR}/check-config.toml"
+    echo "[pie]\nenabled = true\nwhitelist = []\n" >> "${WORKDIR}/check-config.toml"
+    echo "[nx]\nenabled = true\nwhitelist = []\n" >> "${WORKDIR}/check-config.toml"
+}
+
+addtask do_write_config_file before do_image_qa
+
+        """)
+
+        result = bitbake("-c image_qa emptytest", ignore_status=True)
+        if result.status != 0:
+            self.logger.warn(result.output)
+            raise self.failureException("build failed, something went wrong...")
-- 
2.31.1

