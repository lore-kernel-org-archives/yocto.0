Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75379E00D3F; Fri, 29 Mar 2019 17:15:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AD0CE00CED
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 17:15:12 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id y6so1759304plt.1
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 17:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=fesggSLEH9uNVDbrJt5kaThH2813xSp2JLFyGM3t3bM=;
	b=i6uX+hQWhjNohQbPnlbWAKXqR2pRlDQ9LnVvxF2apdElrEQIlDBnqtpdo/EQzNMJCu
	OfEDWOb7KWYsDVoVhsYoipgqdjHpFwKlNdEU3fKjcVg6I2k+RGh3rqXEjV3+lG17unty
	fThSLKRhuypoUVkLRyU9QcxwghfC3HTITh9NhqRkjDhdALi8b9vEwH6Kh1OpukBKVdDx
	dlIefkImomXfihqt495bgDqINVdWaZamDQNVw0u+H/qSb/UeNo7Heb/dL9iaocJYbjYp
	Gs9dxZOnxco3OQFUCY7SMpSE4EFqvMTOF2qVjbe3oXiYRnQudrZ2RZwkOIVo67LJDwmE
	i9lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=fesggSLEH9uNVDbrJt5kaThH2813xSp2JLFyGM3t3bM=;
	b=O1FR8Phyvsy0rY4q53OpuBTW96m9IG+lMAs6omaKgUrGbn4cwYBpaCwaZeR2kgWbq1
	GaFxSWJS1Bg7+beFPYXhr2987vb4ZrgEKeD81SE9TVvNBsL0Valm7ljwCe42+0ncsN1q
	qCZ5+Ga+9DXIlDCuSs+8ZA62Hye0fVmZAEfqt94X47Z7AVrVgu0DyGbT8h/k5iMZp1od
	U211P6mPmXvgZviGlq2zlCwLte+GkgZt3rHZP1UBxmXsHpKH1zT0qb2ddaih2t/3R/Sq
	bGtA9ha78gqEdyWaFpK0UgYw6g3S49kENqgm6KTfyMo9edMeugnDf/e5wWXROU0GIUlz
	Umow==
X-Gm-Message-State: APjAAAVic6woadYE3nP6jwHYSsQ+3JauZvbINJ1QwlCY7sYwCx/5XD6S
	X4GJm7tT5xUrZ8VtVqVCWZCyaamC
X-Google-Smtp-Source: APXvYqy1A1YXbLIi/UU9Fqi6NhTA307o1yWwbuscrVDFm7QR9MoBtgxgwYBiYqj3OU9rotixUj+fBg==
X-Received: by 2002:a17:902:f01:: with SMTP id 1mr51063415ply.41.1553904912355;
	Fri, 29 Mar 2019 17:15:12 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	20sm4515648pfn.131.2019.03.29.17.15.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 17:15:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 17:15:10 -0700
Message-Id: <20190330001510.9937-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] suricata: add runtime testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Mar 2019 00:15:13 -0000

Today there are no failures so set the trigger to zero.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/suricata.py | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/suricata.py

diff --git a/lib/oeqa/runtime/cases/suricata.py b/lib/oeqa/runtime/cases/suricata.py
new file mode 100644
index 0000000..b6df214
--- /dev/null
+++ b/lib/oeqa/runtime/cases/suricata.py
@@ -0,0 +1,27 @@
+# Copyright (C) 2019 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+
+class SuricataTest(OERuntimeTestCase):
+
+    @OEHasPackage(['suricata'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_suricata_help(self):
+        status, output = self.target.run('suricata --help')
+        msg = ('suricata command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 1, msg = msg)
+
+    @OETestDepends(['suricata.SuricataTest.test_suricata_help'])
+    def test_suricata_unittest(self):
+        status, output = self.target.run('suricata -u')
+        match = re.search('FAILED 0 ', output)
+        if match:
+            msg = ('suricata unittest had an unexpected failure. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
-- 
2.17.1


