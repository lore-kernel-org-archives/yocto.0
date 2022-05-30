Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 047C9C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 22:04:23 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web11.42281.1653948254843978353
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 15:04:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZFJsWEf+;
 spf=pass (domain: gmail.com, ip: 209.85.215.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id x12so11102590pgj.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 15:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MH4HJwgskjdLoOcWGbiyb47FjdkDRTN1e7lWAhCSOL0=;
        b=ZFJsWEf+/ALdZkpQ7CdPU7HnXevvDb/s3/smsbcrxIr1Mlwjv7pPltD63YOMf1CByE
         mXPIpFO2IXZF/sli60JyWjwYWCtnjxVaN07dpzrGYhthC7c3PK6aRdVzIdMHjAQ1eTBh
         rDduCYRNh2fnDVv3c95JT3HqLRE/fmBZsy1LTz+y5ADo2TgnfNus2sQcVn7VcUHyzo/3
         p5++2URyB/PJeoEBYOOsHratuFsdeJ228SBzpgwsqGqf0zdXDiL+IUj7F2vxbCYe6fpe
         QklibkNmBY2ZndYFcTprJGCPlU2o+OuA0OQ+TUEPRQI09IG0OUbqoV0OjVuP61BDtkvz
         wpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MH4HJwgskjdLoOcWGbiyb47FjdkDRTN1e7lWAhCSOL0=;
        b=SBKp/SwAWbdMY73AC1JoZ/9BBQ13xklhocZyfFfip8j1jsGtTvvx1uTerQrpKnRppF
         DWwcksBmHAzZBWKgUyyOUX6ptfNxMlnTST7o2jM5V5qr0/wmeE0ogNt2DarNhvuSv5pL
         Nyia9C8qttny0zmBoyJzmPjhKMI4jxWIcDWpbHwENyCk4WeuzZ4OBNOUvRqBAptOFqK+
         RjgUU8Tj+bgkTPzKonsoH55U9c/h6ofUxWc96vDYVK+WaCZPLOWE41AK5c5GBtKxPwKg
         IhMztn0X3X38NmlLcW+B58BwtCqjzLjQ8ta4uFOcdiSVVkLwhM4GeD65CI5VkLkObAO7
         e/WA==
X-Gm-Message-State: AOAM533o7iqZAkQmJ9XPGeuXnoEfL4ysyFzy/1A78LvxbXhVAn828NXo
	2mn56nbOiF/KExBQA8sYhUsHZUg/3/A=
X-Google-Smtp-Source: 
 ABdhPJzwyzOUPQjXEO7ccXNXmdm/gVwpk1vxRvm8r3Og8XYi+3WvuW/3dNQ4yF9vilMppGgMplrFSA==
X-Received: by 2002:a63:2107:0:b0:3fb:ac79:50ed with SMTP id
 h7-20020a632107000000b003fbac7950edmr15393577pgh.105.1653948253983;
        Mon, 30 May 2022 15:04:13 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 x22-20020a170902b41600b001635a8f9dfdsm9679198plr.26.2022.05.30.15.04.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 15:04:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] oeqa/smack: consolidate classes
Date: Mon, 30 May 2022 15:02:08 -0700
Message-Id: <20220530220208.477287-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220530220208.477287-1-akuster808@gmail.com>
References: <20220530220208.477287-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 22:04:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57226

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/smack.py | 39 ---------------------------------
 1 file changed, 39 deletions(-)

diff --git a/lib/oeqa/runtime/cases/smack.py b/lib/oeqa/runtime/cases/smack.py
index 35e87ef..b8255c7 100644
--- a/lib/oeqa/runtime/cases/smack.py
+++ b/lib/oeqa/runtime/cases/smack.py
@@ -29,8 +29,6 @@ class SmackBasicTest(OERuntimeTestCase):
         status,output = self.target.run("cat /proc/self/attr/current")
         self.current_label = output.strip()
 
-class SmackAccessLabel(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_add_access_label(self):
         ''' Test if chsmack can correctly set a SMACK label '''
@@ -54,8 +52,6 @@ class SmackAccessLabel(SmackBasicTest):
                 "%s %s" %(LABEL,label_retrieved))
 
 
-class SmackExecLabel(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_add_exec_label(self):
         '''Test if chsmack can correctly set a SMACK Exec label'''
@@ -79,8 +75,6 @@ class SmackExecLabel(SmackBasicTest):
                 "%s %s" %(LABEL,label_retrieved))
 
 
-class SmackMmapLabel(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_add_mmap_label(self):
         '''Test if chsmack can correctly set a SMACK mmap label'''
@@ -104,8 +98,6 @@ class SmackMmapLabel(SmackBasicTest):
                 "%s %s" %(LABEL,label_retrieved))
 
 
-class SmackTransmutable(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_add_transmutable(self):
         '''Test if chsmack can correctly set a SMACK transmutable mode'''
@@ -128,8 +120,6 @@ class SmackTransmutable(SmackBasicTest):
                 "%s %s" %(LABEL,label_retrieved))
 
 
-class SmackChangeSelfLabelPrivilege(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_privileged_change_self_label(self):
         '''Test if privileged process (with CAP_MAC_ADMIN privilege)
@@ -145,8 +135,6 @@ class SmackChangeSelfLabelPrivilege(SmackBasicTest):
         self.assertIn("PRIVILEGED", output,
                     "Privilege process did not change label.Output: %s" %output)
 
-class SmackChangeSelfLabelUnprivilege(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_unprivileged_change_self_label(self):
         '''Test if unprivileged process (without CAP_MAC_ADMIN privilege)
@@ -163,8 +151,6 @@ class SmackChangeSelfLabelUnprivilege(SmackBasicTest):
             "Unprivileged process should not be able to change its label")
 
 
-class SmackChangeFileLabelPrivilege(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_unprivileged_change_file_label(self):
         '''Test if unprivileged process cannot change file labels'''
@@ -183,8 +169,6 @@ class SmackChangeFileLabelPrivilege(SmackBasicTest):
         self.target.run("rm %s" % filename)
         self.assertEqual( status, 0, "Unprivileged process changed label for %s" %filename)
 
-class SmackLoadRule(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_load_smack_rule(self):
         '''Test if new smack access rules can be loaded'''
@@ -211,8 +195,6 @@ class SmackLoadRule(SmackBasicTest):
         self.target.run('echo -n "%s" > %s/load' %(clean, self.smack_path))
 
 
-class SmackOnlycap(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_onlycap(self):
         '''Test if smack onlycap label can be set
@@ -223,7 +205,6 @@ class SmackOnlycap(SmackBasicTest):
         status, output = self.target.run("sh /usr/sbin/test_smack_onlycap.sh")
         self.assertEqual(status, 0, output)
 
-class SmackNetlabel(SmackBasicTest):
 
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_netlabel(self):
@@ -246,7 +227,6 @@ class SmackNetlabel(SmackBasicTest):
             test_label, output,
             "Did not find expected label in output: %s" %output)
 
-class SmackCipso(SmackBasicTest):
 
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_cipso(self):
@@ -287,7 +267,6 @@ class SmackCipso(SmackBasicTest):
         self.assertEqual(status, 0, "Cipso rule C was not set")
         self.assertIn("/17,33", output, "Rule C was not set correctly")
 
-class SmackDirect(SmackBasicTest):
 
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_direct(self):
@@ -308,8 +287,6 @@ class SmackDirect(SmackBasicTest):
             "Smack direct label does not match.")
 
 
-class SmackAmbient(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_ambient(self):
         test_ambient = "test_ambient"
@@ -330,8 +307,6 @@ class SmackAmbient(SmackBasicTest):
             "Ambient label does not match")
 
 
-class SmackloadBinary(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smackload(self):
         '''Test if smackload command works'''
@@ -345,8 +320,6 @@ class SmackloadBinary(SmackBasicTest):
         self.assertEqual(status, 0, "Smackload rule was loaded correctly")
 
 
-class SmackcipsoBinary(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smackcipso(self):
         '''Test if smackcipso command works'''
@@ -362,8 +335,6 @@ class SmackcipsoBinary(SmackBasicTest):
         self.assertIn( "2/2", output, "Rule was not set correctly. Got: %s" %output)
 
 
-class SmackEnforceFileAccess(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_enforce_file_access(self):
         '''Test if smack file access is enforced (rwx)
@@ -375,8 +346,6 @@ class SmackEnforceFileAccess(SmackBasicTest):
         self.assertEqual(status, 0, output)
 
 
-class SmackEnforceMmap(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_mmap_enforced(self):
         '''Test if smack mmap access is enforced'''
@@ -449,8 +418,6 @@ class SmackEnforceMmap(SmackBasicTest):
             "Output: %s" %output)
 
 
-class SmackEnforceTransmutable(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_transmute_dir(self):
         '''Test if smack transmute attribute works
@@ -473,8 +440,6 @@ class SmackEnforceTransmutable(SmackBasicTest):
             "Did not get expected label. Output: %s" % output)
 
 
-class SmackTcpSockets(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_tcp_sockets(self):
         '''Test if smack is enforced on tcp sockets
@@ -485,8 +450,6 @@ class SmackTcpSockets(SmackBasicTest):
         self.assertEqual(status, 0, output)
 
 
-class SmackUdpSockets(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_udp_sockets(self):
         '''Test if smack is enforced on udp sockets
@@ -497,8 +460,6 @@ class SmackUdpSockets(SmackBasicTest):
         self.assertEqual(status, 0, output)
 
 
-class SmackFileLabels(SmackBasicTest):
-
     @OETestDepends(['smack.SmackBasicTest.test_smack_basic'])
     def test_smack_labels(self):
         '''Check for correct Smack labels.'''
-- 
2.25.1


