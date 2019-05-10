Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74C18E00D6B; Thu,  9 May 2019 20:10:00 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2565AE00AD5
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 20:09:59 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id z3so2248345pgp.8
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 20:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=TZpUqVY2rizuWltntCPb44rlemrDt28Dm5ctNpfTpZE=;
	b=lHxlGj5TNhclI1TJNnlhNO1GJePJjKuHf/uA6+apBlCaGsxI0l7dj6RDCMYq9mf3FH
	Blk6r+SJq4tc20WYaYyzBhoPP54hWA8BtRkKODPfi2MOWNqci51VZMBATwT92LGM3CFk
	qQCNECCFr3BtIcTULW/j+1kBCNyinHfXeNZvJrqKZ08L07gQMHTGPlNito5rYGWd0Fr5
	++D+PArmij0dqo3r01qfkZqpIrh0yojbi+CLa0kX89b1f9ivfxre+rFr+FAwYUF+hqZ2
	Owy72N2hy7qkQHNN5H18/AGnFUT1d/HGrY944GHj85n9yv0ohON75KIcYflN29sLuPX3
	er6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=TZpUqVY2rizuWltntCPb44rlemrDt28Dm5ctNpfTpZE=;
	b=G9DpGrMZgvTVypGalhQyoOKtF4FxL9SHtvjekPE7yGwZ/YWa7LIrMrJfgCXbGPJxbr
	vhW9hC03InbRsThlVUUOovvi9Z6isOw+2XbfYEuZrFtT9/BPWxypAkDRhaU2eMxczR5f
	14KHeygcjgkpdpmksD3v9qKNWTfuRxBDOtUPkpbZrnyPB1idBWCBbpMna3YZ2exULT4P
	4JXOlyGPfgyhU4UvBbuRsrsVon9pznzriOUqSa24MiFRIr3EmJ39TsuOQtgLhf4rLFwq
	82vMxRrXfZGrpmq0KDEoFsGVjtk4i+60cRKLovOy7AFGjKbeSOgrghzRu5xCMTxkJgA9
	LeuA==
X-Gm-Message-State: APjAAAX/OF5dJGVWGzaYL7t5rOYdK/zov8YM5cUIAjQmPqJhiO8uPzc6
	vVGGKldwjFJSyMpx0hblAUJDvJoz
X-Google-Smtp-Source: APXvYqw6UTu3gIMjfINOR3dPATIBZ+3I3F7+oiT100Zr5DN94sJrfEBK2ZAhYI92qEoL1RUfTEMQcQ==
X-Received: by 2002:aa7:8046:: with SMTP id y6mr10774346pfm.251.1557457799049; 
	Thu, 09 May 2019 20:09:59 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	z66sm5180456pfz.83.2019.05.09.20.09.57 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 May 2019 20:09:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2019 20:09:56 -0700
Message-Id: <20190510030957.26040-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] oe-selftest: add running cve checker
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
X-List-Received-Date: Fri, 10 May 2019 03:10:00 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/selftest/cases/cvechecker.py | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 lib/oeqa/selftest/cases/cvechecker.py

diff --git a/lib/oeqa/selftest/cases/cvechecker.py b/lib/oeqa/selftest/cases/cvechecker.py
new file mode 100644
index 0000000..23ca7d2
--- /dev/null
+++ b/lib/oeqa/selftest/cases/cvechecker.py
@@ -0,0 +1,27 @@
+import os
+import re
+
+from oeqa.selftest.case import OESelftestTestCase
+from oeqa.utils.commands import bitbake, get_bb_var
+
+class CveCheckerTests(OESelftestTestCase):
+    def test_cve_checker(self):
+        image = "core-image-sato"
+
+        deploy_dir = get_bb_var("DEPLOY_DIR_IMAGE")
+        image_link_name = get_bb_var('IMAGE_LINK_NAME', image)
+
+        manifest_link = os.path.join(deploy_dir, "%s.cve" % image_link_name)
+
+        self.logger.info('CVE_CHECK_MANIFEST = "%s"' % manifest_link)
+        if (not 'cve-check' in get_bb_var('INHERIT')):
+            add_cve_check_config = 'INHERIT += "cve-check"'
+            self.append_config(add_cve_check_config)
+        self.append_config('CVE_CHECK_MANIFEST = "%s"' % manifest_link)
+        result = bitbake("-k -c cve_check %s" % image, ignore_status=True)
+        if (not 'cve-check' in get_bb_var('INHERIT')):
+            self.remove_config(add_cve_check_config)
+
+        isfile = os.path.isfile(manifest_link)
+        self.assertEqual(True, isfile, 'Failed to create cve data file : %s' % manifest_link)
+
-- 
2.17.1


