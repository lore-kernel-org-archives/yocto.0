Received: from esa4.hc324-48.eu.iphmx.com (esa4.hc324-48.eu.iphmx.com [207.54.71.48])
 by mx.groups.io with SMTP id smtpd.web12.36413.1628860628548411823
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 06:17:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=AuuA8Wvv;
 spf=pass (domain: bmw.de, ip: 207.54.71.48, mailfrom: prvs=852038645=maximilian.blenk@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1628860631; x=1660396631;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=BjQp48lHn3mxzRWh8aPTAS7/kFkyO1MVLV8sWHGYFEw=;
  b=AuuA8WvvY6x0fKLh2bUWstKdDis6kQNxQKZ5W6HF/vFZqXnoObMkPdn0
   PDZ/LPGsF4QulnU4ikYReTTsqvph4eYItWp1SExIq2m6NAqkqWijFyxlA
   Hi5LpxUG2y2UF+KlSLPbQOcT1YlBFlAQGWajja0IUMPBi0M6nUeAtPLgT
   g=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa4.hc324-48.eu.iphmx.com with ESMTP/TLS; 13 Aug 2021 15:17:06 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw3.muc with ESMTP/TLS;
 13 Aug 2021 15:17:06 +0200
Received: from smucm23m.bmwgroup.net (HELO smucm23m.europe.bmw.corp) ([160.46.167.14])
 by esabb4.muc with ESMTP/TLS; 13 Aug 2021 15:17:06 +0200
Received: from manjaro.bmw-carit.intra (192.168.221.40) by smucm23m.europe.bmw.corp
 (160.46.167.14) with Microsoft SMTP Server (TLS;
 Fri, 13 Aug 2021 15:17:06 +0200
From: "Maximilian Blenk" <Maximilian.Blenk@bmw.de>
To: <yocto@lists.yoctoproject.org>
CC: Maximilian Blenk <Maximilian.Blenk@bmw.de>
Subject: [meta-security][PATCH 2/2] image-with-hardened-binaries: Add selftest
Date: Fri, 13 Aug 2021 15:18:01 +0200
Message-ID: <20210813131801.1258469-2-Maximilian.Blenk@bmw.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210813131801.1258469-1-Maximilian.Blenk@bmw.de>
References: <20210813131801.1258469-1-Maximilian.Blenk@bmw.de>
MIME-Version: 1.0
Return-Path: Maximilian.Blenk@bmw.de
X-ClientProxiedBy: smucm30M.europe.bmw.corp (160.46.167.49) To
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

