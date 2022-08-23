Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D51FC3F6B0
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 17:11:47 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com
 [217.140.106.54])
 by mx.groups.io with SMTP id smtpd.web11.555.1661274705090978472
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 10:11:46 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.106.54, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com
 (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 27NHDqQ3004030;
	Tue, 23 Aug 2022 18:13:52 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-parsec][PATCH] parsec-service: Update oeqa tests
Date: Tue, 23 Aug 2022 18:11:38 +0100
Message-Id: <20220823171138.3191897-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 17:11:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57889

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 meta-parsec/README.md                         |   3 +-
 meta-parsec/lib/oeqa/runtime/cases/parsec.py  | 100 +++++++++++++++---
 .../parsec-service/parsec-service_1.0.0.bb    |   5 +-
 3 files changed, 92 insertions(+), 16 deletions(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index f720cd2..99935bc 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -99,6 +99,7 @@ The tests are run against:
 - all providers pre-configured in the Parsec config file included in the image.
 - PKCS11 and TPM providers with software backends if softhsm and
   swtpm packages included in the image.
+- TS Provider if Parsec is built with it included.
 
 Meta-parsec also contains a recipe for `security-parsec-image` image with Parsec,
 softhsm and swtpm included.
@@ -214,7 +215,7 @@ systemctl start parsec
   The IBM Software TPM service can be used for manual testing of the provider by
 including it into your test image:
 
-    IMAGE_INSTALL:append = " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
+    IMAGE_INSTALL:append = " swtpm tpm2-tools libtss2 libtss2-tcti-mssim"
 
 Inside the running VM:
 - Stop Parsec
diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
index 11e5572..6be84ba 100644
--- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -12,12 +12,8 @@ from oeqa.core.decorator.data import skipIfNotFeature
 class ParsecTest(OERuntimeTestCase):
     @classmethod
     def setUpClass(cls):
-        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.toml_file = '/etc/parsec/config.toml'
-
-    @classmethod
-    def tearDownClass(cls):
-        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
+        cls.tc.target.run('cp -p %s %s-original' % (cls.toml_file, cls.toml_file))
 
     def setUp(self):
         super(ParsecTest, self).setUp()
@@ -40,6 +36,11 @@ class ParsecTest(OERuntimeTestCase):
         status, output = self.target.run('cat %s-%s >>%s' % (self.toml_file, provider, self.toml_file))
         os.remove(tmp_path)
 
+    def restore_parsec_config(self):
+        """ Restore original Parsec config """
+        self.target.run('cp -p %s-original %s' % (self.toml_file, self.toml_file))
+        self.target.run(self.parsec_reload)
+
     def check_parsec_providers(self, provider=None, prov_id=None):
         """ Get Parsec providers list and check for one if defined """
 
@@ -58,6 +59,23 @@ class ParsecTest(OERuntimeTestCase):
         status, output = self.target.run('parsec-cli-tests.sh %s' % ("-%d" % prov_id if prov_id else ""))
         self.assertEqual(status, 0, msg='Parsec CLI tests failed.\n %s' % output)
 
+    def check_packageconfig(self, prov):
+        """ Check that the require provider is included in Parsec """
+        if prov not in self.tc.td['PACKAGECONFIG:pn-parsec-service']:
+            self.skipTest('%s provider is not included in Parsec. Parsec PACKAGECONFIG: "%s"' % \
+                          (prov, self.tc.td['PACKAGECONFIG:pn-parsec-service']))
+
+    def check_packages(self, prov, packages):
+        """ Check for the required packages for Parsec providers software backends """
+        if isinstance(packages, str):
+            need_pkgs = set([packages,])
+        else:
+            need_pkgs = set(packages)
+
+        if not self.tc.image_packages.issuperset(need_pkgs):
+            self.skipTest('%s provider is not configured and packages "%s" are not included into the image' % \
+                          (prov, need_pkgs))
+
     @OEHasPackage(['parsec-service'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_all_providers(self):
@@ -84,7 +102,9 @@ class ParsecTest(OERuntimeTestCase):
                 'mkdir /tmp/myvtpm',
                 'swtpm socket -d --tpmstate dir=/tmp/myvtpm --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init',
                 'tpm2_startup -c -T "swtpm:port=2321"',
+                'chown -R parsec /tmp/myvtpm',
                 self.parsec_reload,
+                'sleep 5',
                ]
 
         for cmd in cmds:
@@ -92,16 +112,30 @@ class ParsecTest(OERuntimeTestCase):
             self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
 
     @OEHasPackage(['parsec-service'])
-    @OEHasPackage(['swtpm'])
     @skipIfNotFeature('tpm2','Test parsec_tpm_provider requires tpm2 to be in DISTRO_FEATURES')
-    @OETestDepends(['ssh.SSHTest.test_ssh', 'parsec.ParsecTest.test_all_providers'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_tpm_provider(self):
         """ Configure and test Parsec TPM provider with swtpm as a backend """
 
+        self.check_packageconfig("TPM")
+
+        reconfigure = False
         prov_id = 3
-        self.configure_tpm_provider()
-        self.check_parsec_providers("TPM", prov_id)
+        try:
+            # Chech if the provider is already configured
+            self.check_parsec_providers("TPM", prov_id)
+        except:
+            # Try to test the provider with a software backend
+            self.check_packages("TPM", ['swtpm', 'tpm2-tools'])
+            reconfigure = True
+            self.configure_tpm_provider()
+            self.check_parsec_providers("TPM", prov_id)
+
         self.run_cli_tests(prov_id)
+        self.restore_parsec_config()
+
+        if reconfigure:
+            self.target.run('swtpm_ioctl -s --tcp :2322')
 
     def configure_pkcs11_provider(self):
         """ Create Parsec PKCS11 provider configuration """
@@ -132,12 +166,52 @@ class ParsecTest(OERuntimeTestCase):
         self.assertEqual(status, 0, msg='Failed to reload Parsec.\n%s' % output)
 
     @OEHasPackage(['parsec-service'])
-    @OEHasPackage(['softhsm'])
-    @OETestDepends(['ssh.SSHTest.test_ssh', 'parsec.ParsecTest.test_all_providers'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_pkcs11_provider(self):
         """ Configure and test Parsec PKCS11 provider with softhsm as a backend """
 
+        self.check_packageconfig("PKCS11")
         prov_id = 2
-        self.configure_pkcs11_provider()
-        self.check_parsec_providers("PKCS #11", prov_id)
+        try:
+            # Chech if the provider is already configured
+            self.check_parsec_providers("PKCS #11", prov_id)
+        except:
+            # Try to test the provider with a software backend
+            self.check_packages("PKCS11", 'softhsm')
+            self.configure_pkcs11_provider()
+            self.check_parsec_providers("PKCS #11", prov_id)
+
+        self.run_cli_tests(prov_id)
+        self.restore_parsec_config()
+
+    def configure_TS_provider(self):
+        """ Create Trusted Services provider configuration """
+
+        cfg = [
+                '',
+                '[[provider]]',
+                'name = "trusted-service-provider"',
+                'provider_type = "TrustedService"',
+                'key_info_manager = "sqlite-manager"',
+              ]
+        self.copy_subconfig(cfg, "TS")
+
+        status, output = self.target.run(self.parsec_reload)
+        self.assertEqual(status, 0, msg='Failed to reload Parsec.\n%s' % output)
+
+    @OEHasPackage(['parsec-service'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_TS_provider(self):
+        """ Configure and test Parsec PKCS11 provider with softhsm as a backend """
+
+        self.check_packageconfig("TS")
+        prov_id = 4
+        try:
+            # Chech if the provider is already configured
+            self.check_parsec_providers("Trusted Service", prov_id)
+        except:
+            self.configure_TS_provider()
+            self.check_parsec_providers("Trusted Service", prov_id)
+
         self.run_cli_tests(prov_id)
+        self.restore_parsec_config()
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
index 2a25178..931abee 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
@@ -69,9 +69,10 @@ do_install () {
 
 inherit useradd
 USERADD_PACKAGES = "${PN}"
-USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
 GROUPADD_PARAM:${PN} = "-r parsec"
-GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('PACKAGECONFIG_CONFARGS', 'tpm-provider', '-a parsec -g tss', '', d)}"
+USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
+GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('PACKAGECONFIG_CONFARGS', 'tpm-provider', '-a parsec -g tss ;', '', d)}"
+GROUPMEMS_PARAM:${PN} += "${@bb.utils.contains('PACKAGECONFIG_CONFARGS', 'trusted-service-provider', '-a parsec -g teeclnt', '', d)}"
 
 FILES:${PN} += " \
     ${sysconfdir}/parsec/config.toml \
-- 
2.25.1


