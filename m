Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C94F7E00D45; Tue,  7 May 2019 12:04:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D114FE00D45
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 12:04:54 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id j26so8776338pgl.5
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 12:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=YxL4urLoZax/eKzPqCXft2Af4INMe0o6RigsVrErjAM=;
	b=FTt9PHyvDoPXImFMf4Ov4LQuRbNeFJihTig0M+ikpa//GYoS5t/rUSx2YAkdYGckX4
	bhwiMKwewJvgQO6h/Js+bQeS9bdIeZSxlYtf0+xTCkXQoNaPkUlA+j9HebJKNOPlJoWE
	GcKLgBbMFa3QU8064Arn+HuVf9g4jj6Axu3ODQ7XoclgVUb9oIutiNJ6xaEqKboQWcAG
	WAtV5y41h/9WmFW/UtqJ85hPiC0RomZlF7ktqoAEkD4FKbPHzLdjfyXmwdyiAn6wCdbG
	0LzLI6vQvizYkmR7Jc9w2WJ8lA5jV8SvlMw1tFtX3S2eHNV/5ck1o4aJPI7i7faVROpQ
	SDxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=YxL4urLoZax/eKzPqCXft2Af4INMe0o6RigsVrErjAM=;
	b=ZFyT8XdyGjfTEw/dTE2HSriQLGgTPuMRe1Yy0uVkRaxR+UaRD8N4+mkk4coH5LD5Pc
	KdhzBgQqw8FogHgOg7id43bTBxs6qKjJxkhdszPTT0XfY2L7EMP/tFEP/qoH3jk3W0qx
	KKaRrYPvHjDEgzI06sd9AbPiaeouuigXW/e1LfgKJUVqzgYHZJcKa5UCUkZO+mcZv8di
	+62vj3zYJF1A7cIUsOfpINpm7jxYGrhFmyoPwpJ3wuuckz8Mm+0elGO3y2Qm9LAwQxiM
	1eBLA5mO1/yLXH84cNSuzgLGhqCdXMx1hXdwBxuthj33N9im2BBi29MtFRgSAhW23l8N
	I4+Q==
X-Gm-Message-State: APjAAAWiznAFqDEkiPxUPDw3r9wgeW25WZ9HgTxbaB1v8u7yqJk3UTkt
	K4GjiPkfeZC/1p/oJs8FXfeEmTOp
X-Google-Smtp-Source: APXvYqwv1BBwz1rTjg1J2bYF7tlZH6TUOftvbFT+W3L0EPwnnE+L/qqTuEYHFtymVzXUHkRyapTKPQ==
X-Received: by 2002:a63:f212:: with SMTP id v18mr38852439pgh.231.1557255893237;
	Tue, 07 May 2019 12:04:53 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x30sm1395161pgl.76.2019.05.07.12.04.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 May 2019 12:04:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2019 12:04:50 -0700
Message-Id: <20190507190450.19229-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507190450.19229-1-akuster808@gmail.com>
References: <20190507190450.19229-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] smack-test: add smack tests from meta-intel-iot-security
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
X-List-Received-Date: Tue, 07 May 2019 19:04:58 -0000

ported over smack tests

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/smack.py               | 529 ++++++++++++++++++
 recipes-mac/smack/mmap-smack-test/mmap.c      |   7 +
 recipes-mac/smack/mmap-smack-test_1.0.bb      |  16 +
 recipes-mac/smack/smack-test/notroot.py       |  33 ++
 .../smack-test/smack_test_file_access.sh      |  54 ++
 .../test_privileged_change_self_label.sh      |  18 +
 .../smack/smack-test/test_smack_onlycap.sh    |  27 +
 recipes-mac/smack/smack-test_1.0.bb           |  21 +
 recipes-mac/smack/tcp-smack-test/tcp_client.c | 111 ++++
 recipes-mac/smack/tcp-smack-test/tcp_server.c | 118 ++++
 .../tcp-smack-test/test_smack_tcp_sockets.sh  | 108 ++++
 recipes-mac/smack/tcp-smack-test_1.0.bb       |  24 +
 .../udp-smack-test/test_smack_udp_sockets.sh  | 107 ++++
 recipes-mac/smack/udp-smack-test/udp_client.c |  75 +++
 recipes-mac/smack/udp-smack-test/udp_server.c |  93 +++
 recipes-mac/smack/udp-smack-test_1.0.bb       |  23 +
 16 files changed, 1364 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/smack.py
 create mode 100644 recipes-mac/smack/mmap-smack-test/mmap.c
 create mode 100644 recipes-mac/smack/mmap-smack-test_1.0.bb
 create mode 100644 recipes-mac/smack/smack-test/notroot.py
 create mode 100644 recipes-mac/smack/smack-test/smack_test_file_access.sh
 create mode 100644 recipes-mac/smack/smack-test/test_privileged_change_self_label.sh
 create mode 100644 recipes-mac/smack/smack-test/test_smack_onlycap.sh
 create mode 100644 recipes-mac/smack/smack-test_1.0.bb
 create mode 100644 recipes-mac/smack/tcp-smack-test/tcp_client.c
 create mode 100644 recipes-mac/smack/tcp-smack-test/tcp_server.c
 create mode 100644 recipes-mac/smack/tcp-smack-test/test_smack_tcp_sockets.sh
 create mode 100644 recipes-mac/smack/tcp-smack-test_1.0.bb
 create mode 100644 recipes-mac/smack/udp-smack-test/test_smack_udp_sockets.sh
 create mode 100644 recipes-mac/smack/udp-smack-test/udp_client.c
 create mode 100644 recipes-mac/smack/udp-smack-test/udp_server.c
 create mode 100644 recipes-mac/smack/udp-smack-test_1.0.bb

diff --git a/lib/oeqa/runtime/cases/smack.py b/lib/oeqa/runtime/cases/smack.py
new file mode 100644
index 0000000..35e87ef
--- /dev/null
+++ b/lib/oeqa/runtime/cases/smack.py
@@ -0,0 +1,529 @@
+import unittest
+import re
+import os
+import string
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+from oeqa.core.decorator.data import skipIfNotFeature
+
+MAX_LABEL_LEN = 255
+LABEL = "a" * MAX_LABEL_LEN
+
+class SmackBasicTest(OERuntimeTestCase):
+    ''' base smack test '''
+
+    @classmethod
+    def setUpClass(cls):
+        cls.smack_path = ""
+        cls.current_label  = ""
+        cls.uid = 1000
+
+    @skipIfNotFeature('smack',
+        'Test requires smack to be in DISTRO_FEATURES')
+    @OEHasPackage(['smack-test'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_smack_basic(self):
+        status, output = self.target.run("grep smack /proc/mounts | awk '{print $2}'")
+        self.smack_path = output
+        status,output = self.target.run("cat /proc/self/attr/current")
+        self.current_label = output.strip()
+
+class SmackAccessLabel(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_add_access_label(self):
+        ''' Test if chsmack can correctly set a SMACK label '''
+        filename = "/tmp/test_access_label"
+        self.target.run("touch %s" %filename)
+        status, output = self.target.run("chsmack -a %s %s" %(LABEL, filename))
+        self.assertEqual(
+            status, 0,
+            "Cannot set smack access label. "
+            "Status and output: %d %s" %(status, output))
+        status, output = self.target.run("chsmack %s" %filename)
+        self.target.run("rm %s" %filename)
+        m = re.search('(?<=access=")\S+(?=")', output)
+        if m is None:
+            self.fail("Did not find access attribute")
+        else:
+            label_retrieved = m .group(0)
+            self.assertEqual(
+                LABEL, label_retrieved,
+                "label not set correctly. expected and gotten: "
+                "%s %s" %(LABEL,label_retrieved))
+
+
+class SmackExecLabel(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_add_exec_label(self):
+        '''Test if chsmack can correctly set a SMACK Exec label'''
+        filename = "/tmp/test_exec_label"
+        self.target.run("touch %s" %filename)
+        status, output = self.target.run("chsmack -e %s %s" %(LABEL, filename))
+        self.assertEqual(
+            status, 0,
+            "Cannot set smack exec label. "
+            "Status and output: %d %s" %(status, output))
+        status, output = self.target.run("chsmack %s" %filename)
+        self.target.run("rm %s" %filename)
+        m= re.search('(?<=execute=")\S+(?=")', output)
+        if m is None:
+            self.fail("Did not find execute attribute")
+        else:
+            label_retrieved = m.group(0)
+            self.assertEqual(
+                LABEL, label_retrieved,
+                "label not set correctly. expected and gotten: " +
+                "%s %s" %(LABEL,label_retrieved))
+
+
+class SmackMmapLabel(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_add_mmap_label(self):
+        '''Test if chsmack can correctly set a SMACK mmap label'''
+        filename = "/tmp/test_exec_label"
+        self.target.run("touch %s" %filename)
+        status, output = self.target.run("chsmack -m %s %s" %(LABEL, filename))
+        self.assertEqual(
+            status, 0,
+            "Cannot set smack mmap label. "
+            "Status and output: %d %s" %(status, output))
+        status, output = self.target.run("chsmack %s" %filename)
+        self.target.run("rm %s" %filename)
+        m = re.search('(?<=mmap=")\S+(?=")', output)
+        if m is None:
+            self.fail("Did not find mmap attribute")
+        else:
+            label_retrieved = m.group(0)
+            self.assertEqual(
+                LABEL, label_retrieved,
+                "label not set correctly. expected and gotten: " +
+                "%s %s" %(LABEL,label_retrieved))
+
+
+class SmackTransmutable(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_add_transmutable(self):
+        '''Test if chsmack can correctly set a SMACK transmutable mode'''
+
+        directory = "~/test_transmutable"
+        self.target.run("mkdir -p %s" %directory)
+        status, output = self.target.run("chsmack -t %s" %directory)
+        self.assertEqual(status, 0, "Cannot set smack transmutable. "
+                        "Status and output: %d %s" %(status, output))
+        status, output = self.target.run("chsmack %s" %directory)
+        self.target.run("rmdir %s" %directory)
+        m = re.search('(?<=transmute=")\S+(?=")', output)
+        if m is None:
+            self.fail("Did not find transmute attribute")
+        else:
+            label_retrieved = m.group(0)
+            self.assertEqual(
+                "TRUE", label_retrieved,
+                "label not set correctly. expected and gotten: " +
+                "%s %s" %(LABEL,label_retrieved))
+
+
+class SmackChangeSelfLabelPrivilege(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_privileged_change_self_label(self):
+        '''Test if privileged process (with CAP_MAC_ADMIN privilege)
+        can change its label.
+        '''
+
+        labelf = "/proc/self/attr/current"
+        command = "/bin/sh -c 'echo PRIVILEGED >%s; cat %s'" %(labelf, labelf)
+
+        status, output = self.target.run(
+            "notroot.py 0 %s %s" %(self.current_label, command))
+
+        self.assertIn("PRIVILEGED", output,
+                    "Privilege process did not change label.Output: %s" %output)
+
+class SmackChangeSelfLabelUnprivilege(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_unprivileged_change_self_label(self):
+        '''Test if unprivileged process (without CAP_MAC_ADMIN privilege)
+        cannot change its label'''
+
+        command = "/bin/sh -c 'echo %s >/proc/self/attr/current'" %LABEL
+        status, output = self.target.run(
+            "notroot.py %d %s %s"
+            %(self.uid, self.current_label, command) +
+            " 2>&1 | grep 'Operation not permitted'" )
+
+        self.assertEqual(
+            status, 0,
+            "Unprivileged process should not be able to change its label")
+
+
+class SmackChangeFileLabelPrivilege(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_unprivileged_change_file_label(self):
+        '''Test if unprivileged process cannot change file labels'''
+
+        status, chsmack = self.target.run("which chsmack")
+        status, touch = self.target.run("which touch")
+        filename = "/tmp/test_unprivileged_change_file_label"
+
+        self.target.run("touch %s" % filename)
+        self.target.run("notroot.py %d %s" %(self.uid, self.current_label))
+        status, output = self.target.run(
+            "notroot.py " +
+            "%d unprivileged %s -a %s %s 2>&1 " %(self.uid, chsmack, LABEL, filename) +
+            "| grep 'Operation not permitted'"  )
+
+        self.target.run("rm %s" % filename)
+        self.assertEqual( status, 0, "Unprivileged process changed label for %s" %filename)
+
+class SmackLoadRule(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_load_smack_rule(self):
+        '''Test if new smack access rules can be loaded'''
+
+        # old 23 character format requires special spaces formatting
+        #      12345678901234567890123456789012345678901234567890123
+        ruleA="TheOne                  TheOther                rwxat"
+        ruleB="TheOne                  TheOther                r----"
+        clean="TheOne                  TheOther                -----"
+        modeA = "rwxat"
+        modeB = "r"
+
+        status, output = self.target.run('echo -n "%s" > %s/load' %(ruleA, self.smack_path))
+        status, output = self.target.run( 'cat %s/load | grep "^TheOne" | grep " TheOther "' %self.smack_path)
+        self.assertEqual(status, 0, "Rule A was not added")
+        mode = list(filter(bool, output.split(" ")))[2].strip()
+        self.assertEqual( mode, modeA, "Mode A was not set correctly; mode: %s" %mode)
+
+        status, output = self.target.run( 'echo -n "%s" > %s/load' %(ruleB, self.smack_path))
+        status, output = self.target.run( 'cat %s/load | grep "^TheOne" | grep " TheOther "' %self.smack_path)
+        mode = list(filter(bool, output.split(" ")))[2].strip()
+        self.assertEqual( mode, modeB, "Mode B was not set correctly; mode: %s" %mode)
+
+        self.target.run('echo -n "%s" > %s/load' %(clean, self.smack_path))
+
+
+class SmackOnlycap(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_onlycap(self):
+        '''Test if smack onlycap label can be set
+
+        test needs to change the running label of the current process,
+        so whole test takes places on image
+        '''
+        status, output = self.target.run("sh /usr/sbin/test_smack_onlycap.sh")
+        self.assertEqual(status, 0, output)
+
+class SmackNetlabel(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_netlabel(self):
+
+        test_label="191.191.191.191 TheOne"
+        expected_label="191.191.191.191/32 TheOne"
+
+        status, output = self.target.run( "echo -n '%s' > %s/netlabel" %(test_label, self.smack_path))
+        self.assertEqual( status, 0, "Netlabel /32 could not be set. Output: %s" %output)
+
+        status, output = self.target.run("cat %s/netlabel" %self.smack_path)
+        self.assertIn( expected_label, output, "Did not find expected label in output: %s" %output)
+
+        test_label="253.253.253.0/24 TheOther"
+        status, output = self.target.run( "echo -n '%s' > %s/netlabel" %(test_label, self.smack_path))
+        self.assertEqual( status, 0, "Netlabel /24 could not be set. Output: %s" %output)
+
+        status, output = self.target.run("cat %s/netlabel" %self.smack_path)
+        self.assertIn(
+            test_label, output,
+            "Did not find expected label in output: %s" %output)
+
+class SmackCipso(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_cipso(self):
+        '''Test if smack cipso rules can be set'''
+        #      12345678901234567890123456789012345678901234567890123456
+        ruleA="TheOneA                 2   0   "
+        ruleB="TheOneB                 3   1   55  "
+        ruleC="TheOneC                 4   2   17  33  "
+
+        status, output = self.target.run(
+            "echo -n '%s' > %s/cipso" %(ruleA, self.smack_path))
+        self.assertEqual(status, 0,
+            "Could not set cipso label A. Ouput: %s" %output)
+
+        status, output = self.target.run(
+            "cat %s/cipso | grep '^TheOneA'" %self.smack_path)
+        self.assertEqual(status, 0, "Cipso rule A was not set")
+        self.assertIn(" 2", output, "Rule A was not set correctly")
+
+        status, output = self.target.run(
+            "echo -n '%s' > %s/cipso" %(ruleB, self.smack_path))
+        self.assertEqual(status, 0,
+            "Could not set cipso label B. Ouput: %s" %output)
+
+        status, output = self.target.run(
+            "cat %s/cipso | grep '^TheOneB'" %self.smack_path)
+        self.assertEqual(status, 0, "Cipso rule B was not set")
+        self.assertIn("/55", output, "Rule B was not set correctly")
+
+        status, output = self.target.run(
+            "echo -n '%s' > %s/cipso" %(ruleC, self.smack_path))
+        self.assertEqual(
+            status, 0,
+            "Could not set cipso label C. Ouput: %s" %output)
+
+        status, output = self.target.run(
+            "cat %s/cipso | grep '^TheOneC'" %self.smack_path)
+        self.assertEqual(status, 0, "Cipso rule C was not set")
+        self.assertIn("/17,33", output, "Rule C was not set correctly")
+
+class SmackDirect(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_direct(self):
+        status, initial_direct = self.target.run(
+            "cat %s/direct" %self.smack_path)
+
+        test_direct="17"
+        status, output = self.target.run(
+            "echo '%s' > %s/direct" %(test_direct, self.smack_path))
+        self.assertEqual(status, 0 ,
+            "Could not set smack direct. Output: %s" %output)
+        status, new_direct = self.target.run("cat %s/direct" %self.smack_path)
+        # initial label before checking
+        status, output = self.target.run(
+            "echo '%s' > %s/direct" %(initial_direct, self.smack_path))
+        self.assertEqual(
+            test_direct, new_direct.strip(),
+            "Smack direct label does not match.")
+
+
+class SmackAmbient(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_ambient(self):
+        test_ambient = "test_ambient"
+        status, initial_ambient = self.target.run("cat %s/ambient" %self.smack_path)
+        status, output = self.target.run(
+            "echo '%s' > %s/ambient" %(test_ambient, self.smack_path))
+        self.assertEqual(status, 0,
+            "Could not set smack ambient. Output: %s" %output)
+
+        status, output = self.target.run("cat %s/ambient" %self.smack_path)
+        # Filter '\x00', which is sometimes added to the ambient label
+        new_ambient = ''.join(filter(lambda x: x in string.printable, output))
+        initial_ambient = ''.join(filter(lambda x: x in string.printable, initial_ambient))
+        status, output = self.target.run(
+            "echo '%s' > %s/ambient" %(initial_ambient, self.smack_path))
+        self.assertEqual(
+            test_ambient, new_ambient.strip(),
+            "Ambient label does not match")
+
+
+class SmackloadBinary(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smackload(self):
+        '''Test if smackload command works'''
+        rule="testobject testsubject rwx"
+
+        status, output = self.target.run("echo -n '%s' > /tmp/rules" %rule)
+        status, output = self.target.run("smackload /tmp/rules")
+        self.assertEqual( status, 0, "Smackload failed to load rule. Output: %s" %output)
+
+        status, output = self.target.run( "cat %s/load | grep '%s'" %(self.smack_path, rule))
+        self.assertEqual(status, 0, "Smackload rule was loaded correctly")
+
+
+class SmackcipsoBinary(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smackcipso(self):
+        '''Test if smackcipso command works'''
+        #     12345678901234567890123456789012345678901234567890123456
+        rule="cipsolabel                  2   2   "
+
+        status, output = self.target.run("echo '%s' | smackcipso" %rule)
+        self.assertEqual( status, 0, "Smackcipso failed to load rule. Output: %s" %output)
+
+        status, output = self.target.run(
+            "cat %s/cipso | grep 'cipsolabel'" %self.smack_path)
+        self.assertEqual(status, 0, "smackcipso rule was loaded correctly")
+        self.assertIn( "2/2", output, "Rule was not set correctly. Got: %s" %output)
+
+
+class SmackEnforceFileAccess(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_enforce_file_access(self):
+        '''Test if smack file access is enforced (rwx)
+
+        test needs to change the running label of the current process,
+        so whole test takes places on image
+        '''
+        status, output = self.target.run("sh /usr/sbin/smack_test_file_access.sh")
+        self.assertEqual(status, 0, output)
+
+
+class SmackEnforceMmap(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_mmap_enforced(self):
+        '''Test if smack mmap access is enforced'''
+        raise unittest.SkipTest("Depends on mmap_test, which was removed from the layer while investigating its license.")
+
+        #      12345678901234567890123456789012345678901234567890123456
+        delr1="mmap_label              mmap_test_label1        -----"
+        delr2="mmap_label              mmap_test_label2        -----"
+        delr3="mmap_file_label         mmap_test_label1        -----"
+        delr4="mmap_file_label         mmap_test_label2        -----"
+
+        RuleA="mmap_label              mmap_test_label1        rw---"
+        RuleB="mmap_label              mmap_test_label2        r--at"
+        RuleC="mmap_file_label         mmap_test_label1        rw---"
+        RuleD="mmap_file_label         mmap_test_label2        rwxat"
+
+        mmap_label="mmap_label"
+        file_label="mmap_file_label"
+        test_file = "/usr/sbin/smack_test_mmap"
+        mmap_exe = "/tmp/mmap_test"
+        status, echo = self.target.run("which echo")
+        status, output = self.target.run(
+            "notroot.py %d %s %s 'test' > %s" \
+            %(self.uid, self.current_label, echo, test_file))
+        status, output = self.target.run("ls %s" %test_file)
+        self.assertEqual(status, 0, "Could not create mmap test file")
+        self.target.run("chsmack -m %s %s" %(file_label, test_file))
+        self.target.run("chsmack -e %s %s" %(mmap_label, mmap_exe))
+
+        # test with no rules with mmap label or exec label as subject
+        # access should be granted
+        self.target.run('echo -n "%s" > %s/load' %(delr1, self.smack_path))
+        self.target.run('echo -n "%s" > %s/load' %(delr2, self.smack_path))
+        self.target.run('echo -n "%s" > %s/load' %(delr3, self.smack_path))
+        self.target.run('echo -n "%s" > %s/load' %(delr4, self.smack_path))
+        status, output = self.target.run("%s %s 0 2" % (mmap_exe, test_file))
+        self.assertEqual(
+            status, 0,
+            "Should have mmap access without rules. Output: %s" %output)
+
+        # add rules that do not match access required
+        self.target.run('echo -n "%s" > %s/load' %(RuleA, self.smack_path))
+        self.target.run('echo -n "%s" > %s/load' %(RuleB, self.smack_path))
+        status, output = self.target.run("%s %s 0 2" % (mmap_exe, test_file))
+        self.assertNotEqual(
+            status, 0,
+            "Should not have mmap access with unmatching rules. " +
+            "Output: %s" %output)
+        self.assertIn(
+            "Permission denied", output,
+            "Mmap access should be denied with unmatching rules")
+
+        # add rule to match only partially (one way)
+        self.target.run('echo -n "%s" > %s/load' %(RuleC, self.smack_path))
+        status, output = self.target.run("%s %s 0 2" %(mmap_exe, test_file))
+        self.assertNotEqual(
+            status, 0,
+            "Should not have mmap access with partial matching rules. " +
+            "Output: %s" %output)
+        self.assertIn(
+            "Permission denied", output,
+            "Mmap access should be denied with partial matching rules")
+
+        # add rule to match fully
+        self.target.run('echo -n "%s" > %s/load' %(RuleD, self.smack_path))
+        status, output = self.target.run("%s %s 0 2" %(mmap_exe, test_file))
+        self.assertEqual(
+            status, 0,
+            "Should have mmap access with full matching rules." +
+            "Output: %s" %output)
+
+
+class SmackEnforceTransmutable(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_transmute_dir(self):
+        '''Test if smack transmute attribute works
+
+        test needs to change the running label of the current process,
+        so whole test takes places on image
+        '''
+        test_dir = "/tmp/smack_transmute_dir"
+        label="transmute_label"
+        status, initial_label = self.target.run("cat /proc/self/attr/current")
+
+        self.target.run("mkdir -p %s" % test_dir)
+        self.target.run("chsmack -a %s %s" % (label, test_dir))
+        self.target.run("chsmack -t %s" % test_dir)
+        self.target.run("echo -n '%s %s rwxat' | smackload" %(initial_label, label) )
+
+        self.target.run("touch %s/test" % test_dir)
+        status, output = self.target.run("chsmack %s/test" % test_dir)
+        self.assertIn( 'access="%s"' %label, output,
+            "Did not get expected label. Output: %s" % output)
+
+
+class SmackTcpSockets(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_tcp_sockets(self):
+        '''Test if smack is enforced on tcp sockets
+
+        whole test takes places on image, depends on tcp_server/tcp_client'''
+
+        status, output = self.target.run("sh /usr/sbin/test_smack_tcp_sockets.sh")
+        self.assertEqual(status, 0, output)
+
+
+class SmackUdpSockets(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_udp_sockets(self):
+        '''Test if smack is enforced on udp sockets
+
+        whole test takes places on image, depends on udp_server/udp_client'''
+
+        status, output = self.target.run("sh /usr/sbin/test_smack_udp_sockets.sh")
+        self.assertEqual(status, 0, output)
+
+
+class SmackFileLabels(SmackBasicTest):
+
+    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
+    def test_smack_labels(self):
+        '''Check for correct Smack labels.'''
+        expected = '''
+/tmp/ access="*"
+/etc/ access="System::Shared" transmute="TRUE"
+/etc/passwd access="System::Shared"
+/etc/terminfo access="System::Shared" transmute="TRUE"
+/etc/skel/ access="System::Shared" transmute="TRUE"
+/etc/skel/.profile access="System::Shared"
+/var/log/ access="System::Log" transmute="TRUE"
+/var/tmp/ access="*"
+'''
+        files = ' '.join([x.split()[0] for x in expected.split('\n') if x])
+        files_wildcard = ' '.join([x + '/*' for x in files.split()])
+        # Auxiliary information.
+        status, output = self.target.run(
+            'set -x; mount; ls -l -d %s; find %s | xargs ls -d -l; find %s | xargs chsmack' % (
+                ' '.join([x.rstrip('/') for x in files.split()]), files, files
+            )
+        )
+        msg = "File status:\n" + output
+        status, output = self.target.run('chsmack %s' % files)
+        self.assertEqual(
+            status, 0, msg="status and output: %s and %s\n%s" % (status,output, msg))
+        self.longMessage = True
+        self.maxDiff = None
+        self.assertEqual(output.strip().split('\n'), expected.strip().split('\n'), msg=msg)
diff --git a/recipes-mac/smack/mmap-smack-test/mmap.c b/recipes-mac/smack/mmap-smack-test/mmap.c
new file mode 100644
index 0000000..f358d27
--- /dev/null
+++ b/recipes-mac/smack/mmap-smack-test/mmap.c
@@ -0,0 +1,7 @@
+#include <stdio.h>
+
+int main(int argc, char **argv)
+{
+    printf("Original test program removed while investigating its license.\n");
+    return 1;
+}
diff --git a/recipes-mac/smack/mmap-smack-test_1.0.bb b/recipes-mac/smack/mmap-smack-test_1.0.bb
new file mode 100644
index 0000000..9d11509
--- /dev/null
+++ b/recipes-mac/smack/mmap-smack-test_1.0.bb
@@ -0,0 +1,16 @@
+SUMMARY = "Mmap binary used to test smack mmap attribute"
+DESCRIPTION = "Mmap binary used to test smack mmap attribute"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+
+SRC_URI = "file://mmap.c" 
+
+S = "${WORKDIR}"
+do_compile() {
+    ${CC} mmap.c ${LDFLAGS} -o mmap_test
+}
+
+do_install() {
+    install -d ${D}${bindir}
+    install -m 0755 mmap_test ${D}${bindir}
+}
diff --git a/recipes-mac/smack/smack-test/notroot.py b/recipes-mac/smack/smack-test/notroot.py
new file mode 100644
index 0000000..f0eb0b5
--- /dev/null
+++ b/recipes-mac/smack/smack-test/notroot.py
@@ -0,0 +1,33 @@
+#!/usr/bin/env python
+#
+# Script used for running executables with custom labels, as well as custom uid/gid
+# Process label is changed by writing to /proc/self/attr/curent
+#
+# Script expects user id and group id to exist, and be the same.
+#
+# From adduser manual: 
+# """By  default,  each  user  in Debian GNU/Linux is given a corresponding group 
+# with the same name. """
+#
+# Usage: root@desk:~# python notroot.py <uid> <label> <full_path_to_executable> [arguments ..]
+# eg: python notroot.py 1000 User::Label /bin/ping -c 3 192.168.1.1
+#
+# Author: Alexandru Cornea <alexandru.cornea@intel.com>
+import os
+import sys
+
+try:
+	uid = int(sys.argv[1])
+	sys.argv.pop(1)
+	label = sys.argv[1]
+	sys.argv.pop(1)
+	open("/proc/self/attr/current", "w").write(label)
+	path=sys.argv[1]
+	sys.argv.pop(0)
+	os.setgid(uid)
+	os.setuid(uid)	
+	os.execv(path,sys.argv)
+
+except Exception,e:
+	print e.message
+	sys.exit(1)
diff --git a/recipes-mac/smack/smack-test/smack_test_file_access.sh b/recipes-mac/smack/smack-test/smack_test_file_access.sh
new file mode 100644
index 0000000..5a0ce84
--- /dev/null
+++ b/recipes-mac/smack/smack-test/smack_test_file_access.sh
@@ -0,0 +1,54 @@
+#!/bin/sh
+
+SMACK_PATH=`grep smack /proc/mounts | awk '{print $2}' `
+RC=0
+TMP="/tmp"
+test_file=$TMP/smack_test_access_file
+CAT=`which cat`
+ECHO=`which echo`
+uid=1000
+initial_label=`cat /proc/self/attr/current`
+python $TMP/notroot.py $uid "TheOther" $ECHO 'TEST' > $test_file
+chsmack -a "TheOther" $test_file
+
+#        12345678901234567890123456789012345678901234567890123456
+delrule="TheOne                  TheOther                -----"
+rule_ro="TheOne                  TheOther                r----"
+
+# Remove pre-existent rules for "TheOne TheOther <access>"
+echo -n "$delrule" > $SMACK_PATH/load
+python $TMP/notroot.py $uid "TheOne" $CAT $test_file 2>&1 1>/dev/null | grep -q "Permission denied" || RC=$?
+if [ $RC -ne 0 ]; then
+	echo "Process with different label than the test file and no read access on it can read it"
+	exit $RC
+fi
+
+# adding read access
+echo -n "$rule_ro" > $SMACK_PATH/load
+python $TMP/notroot.py $uid "TheOne" $CAT $test_file | grep -q "TEST" || RC=$?
+if [ $RC -ne 0 ]; then
+	echo "Process with different label than the test file but with read access on it cannot read it"
+	exit $RC
+fi
+
+# Remove pre-existent rules for "TheOne TheOther <access>"
+echo -n "$delrule" > $SMACK_PATH/load
+# changing label of test file to *
+# according to SMACK documentation, read access on a * object is always permitted
+chsmack -a '*' $test_file
+python $TMP/notroot.py $uid "TheOne" $CAT $test_file | grep -q "TEST" || RC=$?
+if [ $RC -ne 0 ]; then
+	echo  "Process cannot read file with * label"
+	exit $RC
+fi
+
+# changing subject label to *
+# according to SMACK documentation, every access requested by a star labeled subject is rejected
+TOUCH=`which touch`
+python $TMP/notroot.py $uid '*' $TOUCH $TMP/test_file_2
+ls -la $TMP/test_file_2 2>&1 | grep -q 'No such file or directory' || RC=$?
+if [ $RC -ne 0 ];then
+	echo "Process with label '*' should not have any access"
+	exit $RC
+fi
+exit 0
diff --git a/recipes-mac/smack/smack-test/test_privileged_change_self_label.sh b/recipes-mac/smack/smack-test/test_privileged_change_self_label.sh
new file mode 100644
index 0000000..26d9e9d
--- /dev/null
+++ b/recipes-mac/smack/smack-test/test_privileged_change_self_label.sh
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+initial_label=`cat /proc/self/attr/current 2>/dev/null`
+modified_label="test_label"
+
+echo "$modified_label" >/proc/self/attr/current 2>/dev/null
+
+new_label=`cat /proc/self/attr/current 2>/dev/null`
+
+if [ "$new_label" != "$modified_label" ]; then
+	# restore proper label
+	echo $initial_label >/proc/self/attr/current
+	echo "Privileged process could not change its label"
+	exit 1
+fi
+
+echo "$initial_label" >/proc/self/attr/current 2>/dev/null
+exit 0
\ No newline at end of file
diff --git a/recipes-mac/smack/smack-test/test_smack_onlycap.sh b/recipes-mac/smack/smack-test/test_smack_onlycap.sh
new file mode 100644
index 0000000..1c4a93a
--- /dev/null
+++ b/recipes-mac/smack/smack-test/test_smack_onlycap.sh
@@ -0,0 +1,27 @@
+#!/bin/sh
+RC=0
+SMACK_PATH=`grep smack /proc/mounts | awk '{print $2}'`
+test_label="test_label"
+onlycap_initial=`cat $SMACK_PATH/onlycap`		
+smack_initial=`cat /proc/self/attr/current`
+
+# need to set out label to be the same as onlycap, otherwise we lose our smack privileges
+# even if we are root
+echo "$test_label" > /proc/self/attr/current
+
+echo "$test_label" > $SMACK_PATH/onlycap || RC=$?
+if [ $RC -ne 0 ]; then
+	echo "Onlycap label could not be set"
+	return $RC
+fi
+
+if [ `cat $SMACK_PATH/onlycap` != "$test_label" ]; then
+	echo "Onlycap label was not set correctly."
+	return 1
+fi
+
+# resetting original onlycap label
+echo "$onlycap_initial" > $SMACK_PATH/onlycap 2>/dev/null
+
+# resetting our initial's process label
+echo "$smack_initial" > /proc/self/attr/current
diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
new file mode 100644
index 0000000..7cf8f2e
--- /dev/null
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -0,0 +1,21 @@
+SUMMARY = "Smack test scripts"
+DESCRIPTION = "Smack scripts"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+
+SRC_URI = " \
+           file://notroot.py \
+           file://smack_test_file_access.sh \
+           file://test_privileged_change_self_label.sh \
+           file://test_smack_onlycap.sh \
+" 
+
+S = "${WORKDIR}"
+
+do_install() {
+    install -d ${D}${sbindir}
+    install -m 0755 notroot.py ${D}${sbindir}
+    install -m 0755 *.sh ${D}${sbindir}
+}
+
+RDEPENDS_${PN} = "smack python mmap-smack-test tcp-smack-test udp-smack-test"
diff --git a/recipes-mac/smack/tcp-smack-test/tcp_client.c b/recipes-mac/smack/tcp-smack-test/tcp_client.c
new file mode 100644
index 0000000..185f973
--- /dev/null
+++ b/recipes-mac/smack/tcp-smack-test/tcp_client.c
@@ -0,0 +1,111 @@
+// (C) Copyright 2015 Intel Corporation
+//
+// Permission is hereby granted, free of charge, to any person obtaining a copy
+// of this software and associated documentation files (the "Software"), to deal
+// in the Software without restriction, including without limitation the rights
+// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+// copies of the Software, and to permit persons to whom the Software is
+// furnished to do so, subject to the following conditions:
+//
+// The above copyright notice and this permission notice shall be included in
+// all copies or substantial portions of the Software.
+//
+// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+// THE SOFTWARE.
+#include <stdio.h>
+#include <sys/socket.h>
+#include <sys/types.h>
+#include <errno.h>
+#include <netinet/in.h>
+#include <unistd.h>
+#include <netdb.h>
+#include <string.h>
+#include <sys/xattr.h>
+
+int main(int argc, char* argv[])
+{
+
+	int sock;
+	char message[255] = "hello";
+	struct sockaddr_in server_addr;
+	char* label_in;
+	char* label_out;
+	char* attr_out = "security.SMACK64IPOUT";
+	char* attr_in = "security.SMACK64IPIN";
+	char out[256];
+	int port;
+
+	struct timeval timeout;
+	timeout.tv_sec = 15;
+	timeout.tv_usec = 0;
+
+	struct hostent*  host = gethostbyname("localhost");
+
+	if (argc != 4)
+	{
+		perror("Client: Arguments missing, please provide socket labels");
+		return 2;
+	}
+
+	port = atoi(argv[1]);
+	label_in = argv[2];
+	label_out = argv[3];
+
+	if((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
+	{
+		perror("Client: Socket failure");
+		return 2;
+	}
+
+
+	if(fsetxattr(sock, attr_out, label_out, strlen(label_out), 0) < 0)
+	{
+		perror("Client: Unable to set attribute SMACK64IPOUT");
+		return 2;
+	}
+
+	if(fsetxattr(sock, attr_in, label_in, strlen(label_in), 0) < 0)
+	{
+		perror("Client: Unable to set attribute SMACK64IPIN");
+		return 2;
+	}
+
+	server_addr.sin_family = AF_INET;
+	server_addr.sin_port = htons(port);
+	bcopy((char*) host->h_addr, (char*) &server_addr.sin_addr.s_addr,host->h_length);
+	bzero(&(server_addr.sin_zero),8);
+	
+	if(setsockopt(sock, SOL_SOCKET, SO_SNDTIMEO, &timeout, sizeof(timeout)) < 0)
+	{
+		perror("Client: Set timeout failed\n");
+		return 2;
+	}
+	
+	if (connect(sock, (struct sockaddr *)&server_addr,sizeof(struct sockaddr)) == -1)
+	{
+    		perror("Client: Connection failure");
+			close(sock);
+        	return 1;
+	}
+
+
+	if(write(sock, message, strlen(message)) < 0)
+	{
+		perror("Client: Error sending data\n");
+		close(sock);
+		return 1;
+	}
+	close(sock);
+	return 0;
+}
+
+
+
+
+
+
diff --git a/recipes-mac/smack/tcp-smack-test/tcp_server.c b/recipes-mac/smack/tcp-smack-test/tcp_server.c
new file mode 100644
index 0000000..9285dc6
--- /dev/null
+++ b/recipes-mac/smack/tcp-smack-test/tcp_server.c
@@ -0,0 +1,118 @@
+// (C) Copyright 2015 Intel Corporation
+//
+// Permission is hereby granted, free of charge, to any person obtaining a copy
+// of this software and associated documentation files (the "Software"), to deal
+// in the Software without restriction, including without limitation the rights
+// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+// copies of the Software, and to permit persons to whom the Software is
+// furnished to do so, subject to the following conditions:
+//
+// The above copyright notice and this permission notice shall be included in
+// all copies or substantial portions of the Software.
+//
+// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+// THE SOFTWARE.
+#include <stdio.h>
+#include <sys/socket.h>
+#include <sys/types.h>
+#include <errno.h>
+#include <netinet/in.h>
+#include <unistd.h>
+#include <string.h>
+
+int main(int argc, char* argv[])
+{
+
+	int sock;
+	int clientsock;
+	char message[255];
+	socklen_t client_length;
+	struct sockaddr_in server_addr, client_addr;
+	char* label_in;
+	char* attr_in = "security.SMACK64IPIN";
+	int port;
+
+	struct timeval timeout;
+	timeout.tv_sec = 15;
+	timeout.tv_usec = 0;
+
+	if (argc != 3)
+	{
+		perror("Server: Argument missing please provide port and label for SMACK64IPIN");
+		return 2;
+	}
+	
+	port = atoi(argv[1]);
+	label_in = argv[2];
+	bzero(message,255);
+
+	
+	if((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
+	{
+		perror("Server: Socket failure");
+		return 2;
+	}
+	
+	
+	if(fsetxattr(sock, attr_in, label_in, strlen(label_in),0) < 0)
+	{
+		perror("Server: Unable to set attribute ipin 2");
+		return 2;
+	}
+
+	server_addr.sin_family = AF_INET;         
+	server_addr.sin_port = htons(port);     
+	server_addr.sin_addr.s_addr = INADDR_ANY; 
+ 	bzero(&(server_addr.sin_zero),8); 
+
+	if(setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout)) < 0)
+	{
+		perror("Server: Set timeout failed\n");
+		return 2;
+	}
+
+	if(bind(sock, (struct sockaddr*) &server_addr, sizeof(server_addr)) < 0)
+	{
+		perror("Server: Bind failure ");
+		return 2;
+	}
+
+	listen(sock, 1);
+	client_length = sizeof(client_addr);
+
+	clientsock = accept(sock,(struct sockaddr*) &client_addr, &client_length);
+
+	if (clientsock < 0)
+	{
+		perror("Server: Connection failed");
+		close(sock);
+		return 1;
+	}
+	
+
+	if(fsetxattr(clientsock, "security.SMACK64IPIN", label_in, strlen(label_in),0) < 0)
+	{
+		perror(" Server: Unable to set attribute ipin 2");
+		close(sock);
+		return 2;
+	}
+
+	if(read(clientsock, message, 254) < 0)
+	{
+		perror("Server: Error when reading from socket");
+		close(clientsock);
+		close(sock);
+		return 1;
+	}
+
+
+	close(clientsock);
+	close(sock);
+
+	return 0;
+}
diff --git a/recipes-mac/smack/tcp-smack-test/test_smack_tcp_sockets.sh b/recipes-mac/smack/tcp-smack-test/test_smack_tcp_sockets.sh
new file mode 100644
index 0000000..ed18f23
--- /dev/null
+++ b/recipes-mac/smack/tcp-smack-test/test_smack_tcp_sockets.sh
@@ -0,0 +1,108 @@
+#!/bin/sh
+RC=0
+test_file=/tmp/smack_socket_tcp
+SMACK_PATH=`grep smack /proc/mounts | awk '{print $2}' `
+# make sure no access is granted
+#        12345678901234567890123456789012345678901234567890123456
+echo -n "label1                  label2                  -----" > $SMACK_PATH/load
+
+tcp_server=`which tcp_server`
+if [ -z $tcp_server ]; then
+	if [ -f "/tmp/tcp_server" ]; then
+		tcp_server="/tmp/tcp_server"
+	else
+		echo "tcp_server binary not found"
+		exit 1
+	fi
+fi
+tcp_client=`which tcp_client`
+if [ -z $tcp_client ]; then
+	if [ -f "/tmp/tcp_client" ]; then
+		tcp_client="/tmp/tcp_client"
+	else
+		echo "tcp_client binary not found"
+		exit 1
+	fi
+fi
+
+# checking access for sockets with different labels
+$tcp_server 50016 label1 &>/dev/null &
+server_pid=$!
+sleep 2
+$tcp_client 50016 label2 label1 &>/dev/null &
+client_pid=$!
+
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+
+if [ $server_rv -eq 0 -o $client_rv -eq 0 ]; then
+	echo "Sockets with different labels should not communicate on tcp"
+	exit 1
+fi
+
+# granting access between different labels
+#        12345678901234567890123456789012345678901234567890123456
+echo -n "label1                  label2                  rw---" > $SMACK_PATH/load
+# checking access for sockets with different labels, but having a rule granting rw
+$tcp_server 50017 label1 2>$test_file &
+server_pid=$!
+sleep 1
+$tcp_client 50017 label2 label1 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -ne 0 -o $client_rv -ne 0 ]; then
+	echo "Sockets with different labels, but having rw access, should communicate on tcp"
+	exit 1
+fi
+
+# checking access for sockets with the same label
+$tcp_server 50018 label1 2>$test_file &
+server_pid=$!
+sleep 1
+$tcp_client 50018 label1 label1  2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -ne 0 -o $client_rv -ne 0 ]; then
+	echo "Sockets with same labels should communicate on tcp"
+	exit 1
+fi
+
+# checking access on socket labeled star (*)
+# should always be permitted
+$tcp_server 50019 \* 2>$test_file &
+server_pid=$!
+sleep 1
+$tcp_client 50019 label1 label1 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -ne 0 -o $client_rv -ne 0 ]; then
+	echo "Should have access on tcp socket labeled star (*)"
+	exit 1
+fi
+
+# checking access from socket labeled star (*)
+# all access from subject star should be denied
+$tcp_server 50020 label1 2>$test_file &
+server_pid=$!
+sleep 1
+$tcp_client 50020 label1 \* 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -eq 0 -o  $client_rv -eq 0 ]; then
+	echo "Socket labeled star should not have access to any tcp socket"
+	exit 1
+fi
diff --git a/recipes-mac/smack/tcp-smack-test_1.0.bb b/recipes-mac/smack/tcp-smack-test_1.0.bb
new file mode 100644
index 0000000..d2b3f6b
--- /dev/null
+++ b/recipes-mac/smack/tcp-smack-test_1.0.bb
@@ -0,0 +1,24 @@
+SUMMARY = "Binary used to test smack tcp sockets"
+DESCRIPTION = "Server and client binaries used to test smack attributes on TCP sockets"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+
+SRC_URI = "file://tcp_server.c \
+           file://tcp_client.c \
+           file://test_smack_tcp_sockets.sh \
+" 
+
+S = "${WORKDIR}"
+
+do_compile() {
+    ${CC} tcp_client.c ${LDFLAGS} -o tcp_client
+    ${CC} tcp_server.c ${LDFLAGS} -o tcp_server
+}
+
+do_install() {
+    install -d ${D}${bindir}
+    install -d ${D}${sbindir}
+    install -m 0755 tcp_server ${D}${bindir}
+    install -m 0755 tcp_client ${D}${bindir}
+    install -m 0755 test_smack_tcp_sockets.sh ${D}${sbindir}
+}
diff --git a/recipes-mac/smack/udp-smack-test/test_smack_udp_sockets.sh b/recipes-mac/smack/udp-smack-test/test_smack_udp_sockets.sh
new file mode 100644
index 0000000..419ab9f
--- /dev/null
+++ b/recipes-mac/smack/udp-smack-test/test_smack_udp_sockets.sh
@@ -0,0 +1,107 @@
+#!/bin/sh
+RC=0
+test_file="/tmp/smack_socket_udp"
+SMACK_PATH=`grep smack /proc/mounts | awk '{print $2}' `
+
+udp_server=`which udp_server`
+if [ -z $udp_server ]; then
+	if [ -f "/tmp/udp_server" ]; then
+		udp_server="/tmp/udp_server"
+	else
+		echo "udp_server binary not found"
+		exit 1
+	fi
+fi
+udp_client=`which udp_client`
+if [ -z $udp_client ]; then
+	if [ -f "/tmp/udp_client" ]; then
+		udp_client="/tmp/udp_client"
+	else
+		echo "udp_client binary not found"
+		exit 1
+	fi
+fi
+
+# make sure no access is granted
+#        12345678901234567890123456789012345678901234567890123456
+echo -n "label1                  label2                  -----" > $SMACK_PATH/load
+
+# checking access for sockets with different labels
+$udp_server 50021 label2 2>$test_file &
+server_pid=$!
+sleep 1
+$udp_client 50021 label1 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -eq 0 ]; then
+	echo "Sockets with different labels should not communicate on udp"
+	exit 1
+fi
+
+# granting access between different labels
+#        12345678901234567890123456789012345678901234567890123456
+echo -n "label1                  label2                  rw---" > $SMACK_PATH/load
+# checking access for sockets with different labels, but having a rule granting rw
+$udp_server 50022 label2 2>$test_file &
+server_pid=$!
+sleep 1
+$udp_client 50022 label1 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -ne 0 -o $client_rv -ne 0 ]; then
+	echo "Sockets with different labels, but having rw access, should communicate on udp"
+	exit 1
+fi
+
+# checking access for sockets with the same label
+$udp_server 50023 label1 &
+server_pid=$!
+sleep 1
+$udp_client 50023 label1 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -ne 0 -o $client_rv -ne 0 ]; then
+	echo "Sockets with same labels should communicate on udp"
+	exit 1
+fi
+
+# checking access on socket labeled star (*)
+# should always be permitted
+$udp_server 50024 \* 2>$test_file &
+server_pid=$!
+sleep 1
+$udp_client 50024 label1 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -ne 0 -o $client_rv -ne 0 ]; then
+	echo "Should have access on udp socket labeled star (*)"
+	exit 1
+fi
+
+# checking access from socket labeled star (*)
+# all access from subject star should be denied
+$udp_server 50025 label1 2>$test_file &
+server_pid=$!
+sleep 1
+$udp_client 50025 \* 2>$test_file &
+client_pid=$!
+wait $server_pid
+server_rv=$?
+wait $client_pid
+client_rv=$?
+if [ $server_rv -eq 0 ]; then
+	echo "Socket labeled star should not have access to any udp socket"
+	exit 1
+fi
diff --git a/recipes-mac/smack/udp-smack-test/udp_client.c b/recipes-mac/smack/udp-smack-test/udp_client.c
new file mode 100644
index 0000000..4d3afbe
--- /dev/null
+++ b/recipes-mac/smack/udp-smack-test/udp_client.c
@@ -0,0 +1,75 @@
+// (C) Copyright 2015 Intel Corporation
+//
+// Permission is hereby granted, free of charge, to any person obtaining a copy
+// of this software and associated documentation files (the "Software"), to deal
+// in the Software without restriction, including without limitation the rights
+// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+// copies of the Software, and to permit persons to whom the Software is
+// furnished to do so, subject to the following conditions:
+//
+// The above copyright notice and this permission notice shall be included in
+// all copies or substantial portions of the Software.
+//
+// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+// THE SOFTWARE.
+#include <sys/socket.h>
+#include <stdio.h>
+#include <netinet/in.h>
+#include <netdb.h>
+#include <string.h>
+
+int main(int argc, char* argv[])
+{
+	char* message = "hello";
+	int sock, ret;
+	struct sockaddr_in server_addr;
+	struct hostent*  host = gethostbyname("localhost");
+	char* label;
+	char* attr = "security.SMACK64IPOUT";
+	int port;
+	if (argc != 3)
+	{
+		perror("Client: Argument missing, please provide port and  label for SMACK64IPOUT");
+		return 2;
+	}
+
+	port = atoi(argv[1]);
+	label = argv[2];
+	sock = socket(AF_INET, SOCK_DGRAM,0);
+	if(sock < 0)
+	{
+		perror("Client: Socket failure");
+		return 2;
+	}
+	
+
+	if(fsetxattr(sock, attr, label, strlen(label),0) < 0)
+	{
+		perror("Client: Unable to set attribute ");
+		return 2;
+	}
+
+
+	server_addr.sin_family = AF_INET;
+	server_addr.sin_port = htons(port);
+	bcopy((char*) host->h_addr, (char*) &server_addr.sin_addr.s_addr,host->h_length);
+	bzero(&(server_addr.sin_zero),8);
+	
+	ret = sendto(sock, message, strlen(message),0,(const struct sockaddr*)&server_addr,
+			sizeof(struct sockaddr_in));
+
+	close(sock);
+	if(ret < 0)
+	{
+		perror("Client: Error sending message\n");
+		return 1;
+	}
+	
+	return 0;
+}
+
diff --git a/recipes-mac/smack/udp-smack-test/udp_server.c b/recipes-mac/smack/udp-smack-test/udp_server.c
new file mode 100644
index 0000000..cbab71e
--- /dev/null
+++ b/recipes-mac/smack/udp-smack-test/udp_server.c
@@ -0,0 +1,93 @@
+// (C) Copyright 2015 Intel Corporation
+//
+// Permission is hereby granted, free of charge, to any person obtaining a copy
+// of this software and associated documentation files (the "Software"), to deal
+// in the Software without restriction, including without limitation the rights
+// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+// copies of the Software, and to permit persons to whom the Software is
+// furnished to do so, subject to the following conditions:
+//
+// The above copyright notice and this permission notice shall be included in
+// all copies or substantial portions of the Software.
+//
+// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+// THE SOFTWARE.
+#include <sys/socket.h>
+#include <stdio.h>
+#include <netinet/in.h>
+#include <netdb.h>
+#include <string.h>
+
+int main(int argc, char* argv[])
+{
+	int sock,ret;
+	struct sockaddr_in server_addr, client_addr;
+	socklen_t len;
+	char message[5];
+	char* label;
+	char* attr = "security.SMACK64IPIN";
+	int port;
+
+	if(argc != 3)
+	{
+		perror("Server: Argument missing, please provide port and label for SMACK64IPIN");
+		return 2;
+	}
+	
+	port = atoi(argv[1]);
+	label = argv[2];
+
+	struct timeval timeout;
+	timeout.tv_sec = 15;
+	timeout.tv_usec = 0;
+
+	sock = socket(AF_INET,SOCK_DGRAM,0);
+	if(sock < 0)
+	{
+		perror("Server: Socket error");
+		return 2;
+	}
+	
+
+	if(fsetxattr(sock, attr, label, strlen(label), 0) < 0)
+	{
+		perror("Server: Unable to set attribute ");
+		return 2;
+	}
+
+	server_addr.sin_family = AF_INET;         
+	server_addr.sin_port = htons(port);     
+	server_addr.sin_addr.s_addr = INADDR_ANY; 
+	bzero(&(server_addr.sin_zero),8); 
+	
+
+	if(setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout)) < 0)
+	{
+		perror("Server: Set timeout failed\n");
+		return 2;
+	}
+
+	if(bind(sock, (struct sockaddr*) &server_addr, sizeof(server_addr)) < 0)
+	{
+		perror("Server: Bind failure");
+		return 2;
+	}
+
+	len = sizeof(client_addr);
+	ret = recvfrom(sock, message, sizeof(message), 0, (struct sockaddr*)&client_addr,
+					&len);
+	close(sock);
+	if(ret < 0)
+	{
+		perror("Server: Error receiving");
+		return 1;
+
+	}
+	return 0;
+}
+
diff --git a/recipes-mac/smack/udp-smack-test_1.0.bb b/recipes-mac/smack/udp-smack-test_1.0.bb
new file mode 100644
index 0000000..9193f89
--- /dev/null
+++ b/recipes-mac/smack/udp-smack-test_1.0.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Binary used to test smack udp sockets"
+DESCRIPTION = "Server and client binaries used to test smack attributes on UDP sockets"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+
+SRC_URI = "file://udp_server.c \
+           file://udp_client.c \
+           file://test_smack_udp_sockets.sh \
+" 
+
+S = "${WORKDIR}"
+do_compile() {
+    ${CC} udp_client.c ${LDFLAGS} -o udp_client
+    ${CC} udp_server.c ${LDFLAGS} -o udp_server
+}
+
+do_install() {
+    install -d ${D}${bindir}
+    install -d ${D}${sbindir}
+    install -m 0755 udp_server ${D}${bindir}
+    install -m 0755 udp_client ${D}${bindir}
+    install -m 0755 test_smack_udp_sockets.sh ${D}${sbindir}
+}
-- 
2.17.1


