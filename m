Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CE6CCA481
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:49 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web08.9332.1655559880163913598
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ops4BW6+;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id d5so6033647plo.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XOpaL7AsylBCNXwjwYQdJ2FOVR8xNbSqelIlGWNfswo=;
        b=ops4BW6+d9YSslouNGGDqxs+dGtrHWeQTg6zCyMpCx1snOYkJVsCH65GOjm9fM7+L4
         2RBqJ0gMnTbXp49YAPd7ydYRELUS/tMMLQaWQDQEt+g20yCzDHTXGnz8MCBksNB56jF/
         BkgvSPQo/LdpjJePNgkuASp64KO/nLlcqOdDgA36mOACopa0yC78WMxuFleySwSG5MBg
         DVS1z85mkIhamL1BvWu4HV+IFbEjvGfR1D8Y1WdFOTGAD0q7LHPuL6T/I3liSe9wOdCq
         h1O6ZnlQkg9ks8vLVwxclwh/oKlNBU1va7U3nk07oD+T9VP6Did6ziwlZo4JI88lUieT
         tJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XOpaL7AsylBCNXwjwYQdJ2FOVR8xNbSqelIlGWNfswo=;
        b=ABPNmAAXAr29VXrC4jjylCbiDalhA10pjd+RJ8YC6jr6iKTwKPe8Y0aykV6Npz/71E
         wEWbCXbYInK1f06NCu8WDkxfOix03R+ZDeNKGWKPHJ58knEhvKlryhxCXRlqMiG1li7s
         tgLe2brznQyqiDCmiu4HVHDjJK2NmI7LlyO8k+V2icWkNggvzENSIpo1vgtNZ9d02yLR
         fe1nGGvDBs0ppzwcJnL+EM1oexdUi15NF91f27ZYevMXQU8MfLHOecWBH8P1dXZBGzwz
         rRufTUIRnd8KEvkb22e4uNq5eIgrKDtw1gFZPY5LiAq4LSTHzUlmsLJ8G9eBpsqWcDRs
         NaIA==
X-Gm-Message-State: AJIora/fXUdGsmPokreLjfFvPfISs8CvMLLr8G9nyAW7Wvash447DlOE
	l1QV6M33xyrxr6Fj9w6x5YRrEtYaDck=
X-Google-Smtp-Source: 
 AGRyM1sPtiTo7kWNVc711t8Q3FwJ1TDCPF0wPRGBH1D/b8hUWQ0/tH1eSUIGBaccM3JPrW/CNqwXVg==
X-Received: by 2002:a17:90b:3b88:b0:1e6:7aa2:4301 with SMTP id
 pc8-20020a17090b3b8800b001e67aa24301mr26857534pjb.118.1655559880720;
        Sat, 18 Jun 2022 06:44:40 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/9] oeqa: update smack runtime test
Date: Sat, 18 Jun 2022 06:44:29 -0700
Message-Id: <20220618134435.2370878-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57345

drop test_smack_mmap_enforced as is was skipped do to possible licensing issues

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/smack.py | 103 +++++---------------------------
 1 file changed, 15 insertions(+), 88 deletions(-)

diff --git a/lib/oeqa/runtime/cases/smack.py b/lib/oeqa/runtime/cases/smack.py
index b8255c7..6b87574 100644
--- a/lib/oeqa/runtime/cases/smack.py
+++ b/lib/oeqa/runtime/cases/smack.py
@@ -15,17 +15,16 @@ class SmackBasicTest(OERuntimeTestCase):
 
     @classmethod
     def setUpClass(cls):
-        cls.smack_path = ""
         cls.current_label  = ""
         cls.uid = 1000
+        status, output = cls.tc.target.run("grep smack /proc/mounts | awk '{print $2}'")
+        cls.smack_path = output
 
     @skipIfNotFeature('smack',
         'Test requires smack to be in DISTRO_FEATURES')
     @OEHasPackage(['smack-test'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_smack_basic(self):
-        status, output = self.target.run("grep smack /proc/mounts | awk '{print $2}'")
-        self.smack_path = output
         status,output = self.target.run("cat /proc/self/attr/current")
         self.current_label = output.strip()
 
@@ -41,11 +40,11 @@ class SmackBasicTest(OERuntimeTestCase):
             "Status and output: %d %s" %(status, output))
         status, output = self.target.run("chsmack %s" %filename)
         self.target.run("rm %s" %filename)
-        m = re.search('(?<=access=")\S+(?=")', output)
+        m = re.search('(access=")\S+(?=")', output)
         if m is None:
             self.fail("Did not find access attribute")
         else:
-            label_retrieved = m .group(0)
+            label_retrieved = re.split("access=\"", output)[1][:-1]
             self.assertEqual(
                 LABEL, label_retrieved,
                 "label not set correctly. expected and gotten: "
@@ -64,11 +63,11 @@ class SmackBasicTest(OERuntimeTestCase):
             "Status and output: %d %s" %(status, output))
         status, output = self.target.run("chsmack %s" %filename)
         self.target.run("rm %s" %filename)
-        m= re.search('(?<=execute=")\S+(?=")', output)
+        m= re.search('(execute=")\S+(?=")', output)
         if m is None:
             self.fail("Did not find execute attribute")
         else:
-            label_retrieved = m.group(0)
+            label_retrieved = re.split("execute=\"", output)[1][:-1]
             self.assertEqual(
                 LABEL, label_retrieved,
                 "label not set correctly. expected and gotten: " +
@@ -87,11 +86,11 @@ class SmackBasicTest(OERuntimeTestCase):
             "Status and output: %d %s" %(status, output))
         status, output = self.target.run("chsmack %s" %filename)
         self.target.run("rm %s" %filename)
-        m = re.search('(?<=mmap=")\S+(?=")', output)
+        m = re.search('(mmap=")\S+(?=")', output)
         if m is None:
             self.fail("Did not find mmap attribute")
         else:
-            label_retrieved = m.group(0)
+            label_retrieved = re.split("mmap=\"", output)[1][:-1]
             self.assertEqual(
                 LABEL, label_retrieved,
                 "label not set correctly. expected and gotten: " +
@@ -109,11 +108,11 @@ class SmackBasicTest(OERuntimeTestCase):
                         "Status and output: %d %s" %(status, output))
         status, output = self.target.run("chsmack %s" %directory)
         self.target.run("rmdir %s" %directory)
-        m = re.search('(?<=transmute=")\S+(?=")', output)
+        m = re.search('(transmute=")\S+(?=")', output)
         if m is None:
             self.fail("Did not find transmute attribute")
         else:
-            label_retrieved = m.group(0)
+            label_retrieved = re.split("transmute=\"", output)[1][:-1]
             self.assertEqual(
                 "TRUE", label_retrieved,
                 "label not set correctly. expected and gotten: " +
@@ -127,10 +126,10 @@ class SmackBasicTest(OERuntimeTestCase):
         '''
 
         labelf = "/proc/self/attr/current"
-        command = "/bin/sh -c 'echo PRIVILEGED >%s; cat %s'" %(labelf, labelf)
+        command = "/bin/sh -c 'echo PRIVILEGED >%s'; cat %s" %(labelf, labelf)
 
         status, output = self.target.run(
-            "notroot.py 0 %s %s" %(self.current_label, command))
+            "/usr/sbin/notroot.py 0 %s %s" %(self.current_label, command))
 
         self.assertIn("PRIVILEGED", output,
                     "Privilege process did not change label.Output: %s" %output)
@@ -142,7 +141,7 @@ class SmackBasicTest(OERuntimeTestCase):
 
         command = "/bin/sh -c 'echo %s >/proc/self/attr/current'" %LABEL
         status, output = self.target.run(
-            "notroot.py %d %s %s"
+            "/usr/sbin/notroot.py %d %s %s"
             %(self.uid, self.current_label, command) +
             " 2>&1 | grep 'Operation not permitted'" )
 
@@ -160,9 +159,9 @@ class SmackBasicTest(OERuntimeTestCase):
         filename = "/tmp/test_unprivileged_change_file_label"
 
         self.target.run("touch %s" % filename)
-        self.target.run("notroot.py %d %s" %(self.uid, self.current_label))
+        self.target.run("/usr/sbin/notroot.py %d %s" %(self.uid, self.current_label))
         status, output = self.target.run(
-            "notroot.py " +
+            "/usr/sbin/notroot.py " +
             "%d unprivileged %s -a %s %s 2>&1 " %(self.uid, chsmack, LABEL, filename) +
             "| grep 'Operation not permitted'"  )
 
@@ -346,78 +345,6 @@ class SmackBasicTest(OERuntimeTestCase):
         self.assertEqual(status, 0, output)
 
 
-    @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
-    def test_smack_mmap_enforced(self):
-        '''Test if smack mmap access is enforced'''
-        raise unittest.SkipTest("Depends on mmap_test, which was removed from the layer while investigating its license.")
-
-        #      12345678901234567890123456789012345678901234567890123456
-        delr1="mmap_label              mmap_test_label1        -----"
-        delr2="mmap_label              mmap_test_label2        -----"
-        delr3="mmap_file_label         mmap_test_label1        -----"
-        delr4="mmap_file_label         mmap_test_label2        -----"
-
-        RuleA="mmap_label              mmap_test_label1        rw---"
-        RuleB="mmap_label              mmap_test_label2        r--at"
-        RuleC="mmap_file_label         mmap_test_label1        rw---"
-        RuleD="mmap_file_label         mmap_test_label2        rwxat"
-
-        mmap_label="mmap_label"
-        file_label="mmap_file_label"
-        test_file = "/usr/sbin/smack_test_mmap"
-        mmap_exe = "/tmp/mmap_test"
-        status, echo = self.target.run("which echo")
-        status, output = self.target.run(
-            "notroot.py %d %s %s 'test' > %s" \
-            %(self.uid, self.current_label, echo, test_file))
-        status, output = self.target.run("ls %s" %test_file)
-        self.assertEqual(status, 0, "Could not create mmap test file")
-        self.target.run("chsmack -m %s %s" %(file_label, test_file))
-        self.target.run("chsmack -e %s %s" %(mmap_label, mmap_exe))
-
-        # test with no rules with mmap label or exec label as subject
-        # access should be granted
-        self.target.run('echo -n "%s" > %s/load' %(delr1, self.smack_path))
-        self.target.run('echo -n "%s" > %s/load' %(delr2, self.smack_path))
-        self.target.run('echo -n "%s" > %s/load' %(delr3, self.smack_path))
-        self.target.run('echo -n "%s" > %s/load' %(delr4, self.smack_path))
-        status, output = self.target.run("%s %s 0 2" % (mmap_exe, test_file))
-        self.assertEqual(
-            status, 0,
-            "Should have mmap access without rules. Output: %s" %output)
-
-        # add rules that do not match access required
-        self.target.run('echo -n "%s" > %s/load' %(RuleA, self.smack_path))
-        self.target.run('echo -n "%s" > %s/load' %(RuleB, self.smack_path))
-        status, output = self.target.run("%s %s 0 2" % (mmap_exe, test_file))
-        self.assertNotEqual(
-            status, 0,
-            "Should not have mmap access with unmatching rules. " +
-            "Output: %s" %output)
-        self.assertIn(
-            "Permission denied", output,
-            "Mmap access should be denied with unmatching rules")
-
-        # add rule to match only partially (one way)
-        self.target.run('echo -n "%s" > %s/load' %(RuleC, self.smack_path))
-        status, output = self.target.run("%s %s 0 2" %(mmap_exe, test_file))
-        self.assertNotEqual(
-            status, 0,
-            "Should not have mmap access with partial matching rules. " +
-            "Output: %s" %output)
-        self.assertIn(
-            "Permission denied", output,
-            "Mmap access should be denied with partial matching rules")
-
-        # add rule to match fully
-        self.target.run('echo -n "%s" > %s/load' %(RuleD, self.smack_path))
-        status, output = self.target.run("%s %s 0 2" %(mmap_exe, test_file))
-        self.assertEqual(
-            status, 0,
-            "Should have mmap access with full matching rules." +
-            "Output: %s" %output)
-
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_transmute_dir(self):
         '''Test if smack transmute attribute works
-- 
2.25.1


