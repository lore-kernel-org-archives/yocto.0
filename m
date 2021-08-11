Received: from esa11.hc324-48.eu.iphmx.com (esa11.hc324-48.eu.iphmx.com [207.54.69.30])
 by mx.groups.io with SMTP id smtpd.web10.19137.1628754518304453815
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 00:48:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=TZ0PZYLj;
 spf=pass (domain: bmw.de, ip: 207.54.69.30, mailfrom: prvs=8519e1404=maximilian.blenk@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1628754518; x=1660290518;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=BjQp48lHn3mxzRWh8aPTAS7/kFkyO1MVLV8sWHGYFEw=;
  b=TZ0PZYLj9BTMXqQGxYrGdOcAyFJPwa5LuZLgDxN1MPyWAZj1oD13/hkf
   EpkKCswHzdH40jzURg/5OZE+iAdP7EvxCThC7HZxvSgtcg59hg6K86ILf
   6PtdOkJNTyW92spZDTJVVIAInZSztP1sOZSUnoLTTjtarN9lEBxWwY+BV
   o=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa11.hc324-48.eu.iphmx.com with ESMTP/TLS; 12 Aug 2021 09:48:34 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw4.muc with ESMTP/TLS;
 12 Aug 2021 09:48:34 +0200
Received: from smucm23m.bmwgroup.net (HELO smucm23m.europe.bmw.corp) ([160.46.167.14])
 by esabb1.muc with ESMTP/TLS; 12 Aug 2021 09:48:34 +0200
Received: from manjaro.bmw-carit.intra (192.168.221.39) by smucm23m.europe.bmw.corp
 (160.46.167.14) with Microsoft SMTP Server (TLS;
 Thu, 12 Aug 2021 09:48:33 +0200
From: "Maximilian Blenk" <Maximilian.Blenk@bmw.de>
To: <yocto@lists.yoctoproject.org>
CC: Maximilian Blenk <Maximilian.Blenk@bmw.de>
Subject: [PATCH 2/2] image-with-hardened-binaries: Add selftest
Date: Thu, 12 Aug 2021 00:36:21 +0200
Message-ID: <20210811223620.1575212-2-Maximilian.Blenk@bmw.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210811223620.1575212-1-Maximilian.Blenk@bmw.de>
References: <20210811223620.1575212-1-Maximilian.Blenk@bmw.de>
MIME-Version: 1.0
Return-Path: Maximilian.Blenk@bmw.de
X-ClientProxiedBy: smucm24m.europe.bmw.corp (160.46.167.19) To
 smucm23m.europe.bmw.corp (160.46.167.14)
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

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

