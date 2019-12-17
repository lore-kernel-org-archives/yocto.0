Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web12.2802.1576558115399173800
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 20:48:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uk2QldgL;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id h14so4936482pfe.10
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2019 20:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gjMMYKOaWmGCCfQkwTlEqZBD5x4Nyimn5Mk2igP+RmY=;
        b=Uk2QldgLh2Uuk0VVBtsdQb+kwqvDIr6kbHCYWKD/I1tKwsY0cpK9f0KiDuCUQcPMyB
         KMpL+swkIimAPIN9Nc9+niWiyhhydvQcIm7+/JZO1j2bjYwidGj4rKFAorqod75DKjqZ
         CzVs6ErVXJRe8Sw6uNm/taRQt+1R5YPvCqtdktPaCRdMhjdWDoksGRrc+0uuBA5f+Zg8
         LaURil/RmRmo3GVuDosCHlhEJP6SiPwgcsFUmdK0C0Ib3DreUWhKjiYB9rSz+55zsniW
         gYYvrkRQxovb19HtDfm1MFF6IJARsbgGPJ2wJ+oR0J8o4yd6o3LcS1aGLRdO+CUjueO5
         AuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=gjMMYKOaWmGCCfQkwTlEqZBD5x4Nyimn5Mk2igP+RmY=;
        b=gNNIQnSSJlOeuFnOhI8MX5oSka5WBWle1gkszVKGyxWNRYilLdnN2X/PiZYFwVeQiO
         z2wVrEq2Pztkqe0V/m3gwZ8MgibAqzJSxM5dkvSPFU/d5ZkdtrBGI3yxJLmZPrM0LxVq
         UBAdKDjShR9LAew/YbGtCQKchC5nsWkZtQ67Ejen0iSVzEqVY8bedeGuupOAXu1yG1Qh
         XkM0TEKp5sawtD49Zi2Nbjs0GI5nCVmeg4OaS2t4udzXIMJljpFAvmADpZiQ7EHMq+8e
         BYIPskP1zDm/Lrg67HVlIk84aDrhPlGixBk+mlU7bl1xKECEWYt9SSpqiraR9SD3G2ed
         gtLQ==
X-Gm-Message-State: APjAAAXaQbB9JGQkoR5NBEauPJSytae6WdWNrdY3Kk0TfutyWjDy8fig
	rBDiesBRbIrSfa0o+Mb9zfucI4hCAjA=
X-Google-Smtp-Source: APXvYqxsl7ZVgET6gXaock7WAkd6l1AgHyMvw0wJ22B97Ps7lzepoWpz0Bio/La5d3z/AFZdyuceEw==
X-Received: by 2002:a63:6b8a:: with SMTP id g132mr22688199pgc.127.1576558114740;
        Mon, 16 Dec 2019 20:48:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 17sm25209378pfv.142.2019.12.16.20.48.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 20:48:34 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] lib/oeqa/runtime: suricata add tests
Date: Mon, 16 Dec 2019 20:48:31 -0800
Message-Id: <20191217044831.2080-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217044831.2080-1-akuster808@gmail.com>
References: <20191217044831.2080-1-akuster808@gmail.com>

drop the unit test as it should be run via ptest
add more tests for python3-suricata-update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/suricata.py | 63 ++++++++++++++++++++++++++----
 1 file changed, 56 insertions(+), 7 deletions(-)

diff --git a/lib/oeqa/runtime/cases/suricata.py b/lib/oeqa/runtime/cases/suricata.py
index 17fc8c5..7f052ec 100644
--- a/lib/oeqa/runtime/cases/suricata.py
+++ b/lib/oeqa/runtime/cases/suricata.py
@@ -1,6 +1,7 @@
 # Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
 #
 import re
+from tempfile import mkstemp
 
 from oeqa.runtime.case import OERuntimeTestCase
 from oeqa.core.decorator.depends import OETestDepends
@@ -9,6 +10,22 @@ from oeqa.runtime.decorator.package import OEHasPackage
 
 class SuricataTest(OERuntimeTestCase):
 
+    @classmethod
+    def setUpClass(cls):
+        cls.tmp_fd, cls.tmp_path = mkstemp()
+        with os.fdopen(cls.tmp_fd, 'w') as f:
+            # use google public dns
+            f.write("nameserver 8.8.8.8")
+            f.write(os.linesep)
+            f.write("nameserver 8.8.4.4")
+            f.write(os.linesep)
+            f.write("nameserver 127.0.0.1")
+            f.write(os.linesep)
+
+    @classmethod
+    def tearDownClass(cls):
+        os.remove(cls.tmp_path)
+
     @OEHasPackage(['suricata'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_suricata_help(self):
@@ -18,10 +35,42 @@ class SuricataTest(OERuntimeTestCase):
         self.assertEqual(status, 1, msg = msg)
 
     @OETestDepends(['suricata.SuricataTest.test_suricata_help'])
-    def test_suricata_unittest(self):
-        status, output = self.target.run('suricata -u')
-        match = re.search('FAILED: 0 ', output)
-        if not match:
-            msg = ('suricata unittest had an unexpected failure. '
-               'Status and output:%s and %s' % (status, output))
-            self.assertEqual(status, 0, msg = msg)
+    def test_ping_openinfosecfoundation_org(self):
+        dst = '/etc/resolv.conf'
+        self.tc.target.run('rm -f %s' % dst)
+        (status, output) = self.tc.target.copyTo(self.tmp_path, dst)
+        msg = 'File could not be copied. Output: %s' % output
+        self.assertEqual(status, 0, msg=msg)
+
+        status, output = self.target.run('ping -c 1 openinfosecfoundation.org')
+        msg = ('ping openinfosecfoundation.org failed: output is:\n%s' % output)
+        self.assertEqual(status, 0, msg = msg)
+
+    @OEHasPackage(['python3-suricata-update'])
+    @OETestDepends(['suricata.SuricataTest.test_ping_openinfosecfoundation_org'])
+    def test_suricata_update(self):
+        status, output = self.tc.target.run('suricata-update')
+        msg = ('suricata-update had an unexpected failure. '
+           'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['suricata.SuricataTest.test_suricata_update'])
+    def test_suricata_update_sources_list(self):
+        status, output = self.tc.target.run('suricata-update list-sources')
+        msg = ('suricata-update list-sources had an unexpected failure. '
+           'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['suricata.SuricataTest.test_suricata_update_sources_list'])
+    def test_suricata_update_sources(self):
+        status, output = self.tc.target.run('suricata-update update-sources')
+        msg = ('suricata-update update-sources had an unexpected failure. '
+           'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['suricata.SuricataTest.test_suricata_update_sources'])
+    def test_suricata_update_enable_source(self):
+        status, output = self.tc.target.run('suricata-update enable-source oisf/trafficid')
+        msg = ('suricata-update enable-source oisf/trafficid  had an unexpected failure. '
+           'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
-- 
2.17.1

