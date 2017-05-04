Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC2EFE0095F; Thu,  4 May 2017 12:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	URI_TRY_3LD autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 URI_TRY_3LD URI: "Try it" URI, suspicious hostname
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8572E007EE
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 12:07:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2017 12:07:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,289,1491289200"; d="scan'208";a="1126519565"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2017 12:07:16 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  4 May 2017 14:08:26 -0500
Message-Id: <20170504190826.30621-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [qa-tools][PATCH] external/testopia: Correct 'testrun_list' function
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
X-List-Received-Date: Thu, 04 May 2017 19:07:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Correct function “testrun_list” to retrieve a list of of TestRun
dictionaries instead of TestCase dictionaries.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 external/testopia.py | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/external/testopia.py b/external/testopia.py
index d42538b..f2f2d45 100755
--- a/external/testopia.py
+++ b/external/testopia.py
@@ -161,7 +161,7 @@ class TestopiaXmlrpcError(Exception):
     def __str__(self):
         return "Error while executing cmd '%s' --> %s" \
                % ( self.verb + "(" + self.params + ")", self.wrappedError)
-    
+
 class Testopia(object):
 
     view_all=True # By default, a list returns at most 25 elements. We force here to see all.
@@ -176,7 +176,7 @@ class Testopia(object):
 
         For example, given config.txt containing:
           [testopia]
-          login: jdoe@mycompany.com', 
+          login: jdoe@mycompany.com',
           password: jdoepassword'
           url: https://myhost.mycompany.com/bugzilla/tr_xmlrpc.cgi
 
@@ -191,15 +191,15 @@ class Testopia(object):
         kwargs = dict([(key, cp.get('testopia', key)) \
                        for key in ['username', 'password', 'url']])
         return Testopia(**kwargs)
-    
+
     def __init__(self, username, password, url, sslverify=True):
         """Initialize the Testopia driver.
 
         'username' -- string, the account to log into Testopia such as jdoe@mycompany.com,
         'password' -- string, the password for the username,
-        'url' -- string, the URL of the XML-RPC interface 
+        'url' -- string, the URL of the XML-RPC interface
 
-        Example: t = Testopia('jdoe@mycompany.com', 
+        Example: t = Testopia('jdoe@mycompany.com',
                               'jdoepassword'
                               'https://myhost.mycompany.com/bugzilla/tr_xmlrpc.cgi')
         """
@@ -411,7 +411,7 @@ class Testopia(object):
             return eval(cmd)
         except xmlrpclib.Error, e:
             raise TestopiaXmlrpcError(verb, params, e)
-        
+
     ############################## Build #######################################
 
 
@@ -545,7 +545,7 @@ class Testopia(object):
                    )])
 
     def environment_check_by_name(self, name, product_id):
-        return self.do_command("Environment.check_environment", 
+        return self.do_command("Environment.check_environment",
                                               [self._string_noop(name),
                                                self._number_noop(product_id)])
 
@@ -1437,9 +1437,9 @@ class Testopia(object):
 
         Example: testrun_list(run_id=20, run_id_type='lessthan')
 
-        Result: A list of TestCase dictionaries
+        Result: A list of TestRun dictionaries
         """
-        return self.do_command("TestCase.list", [self._options_ne_dict(
+        return self.do_command("TestRun.list", [self._options_ne_dict(
                    self._number_option('run_id', run_id),
                    self._search_op('runid_type', run_id_type),
                    self._number_option('build_id', build_id),
@@ -1497,7 +1497,7 @@ class Testopia(object):
                    )])
 
 
-    def testrun_update(self, run_id, status_id,build_id=None, 
+    def testrun_update(self, run_id, status_id,build_id=None,
                    environment_id=None,
                    manager_id=None, plan_text_version=None, summary=None,
                    notes=None, product_version=None, stop_date=None):
@@ -1862,7 +1862,7 @@ class TestopiaUnitTest(unittest.TestCase):
 class LoginUnitTests(TestopiaUnitTest):
     def test_login(self):
         # Ensure that we logged in, and that we have our userId recorded:
-        self.assert_(self.testopia is not None)        
+        self.assert_(self.testopia is not None)
         self.assert_(self.testopia.userId>0)
 
     def test_bogus_call(self):
@@ -1877,7 +1877,7 @@ class BuildUnitTests(TestopiaUnitTest):
         self.assertEquals(buildDict['build_id'], buildId)
         self.assert_('product_id' in buildDict)
         # etc
-        
+
     """API entry points that aren't yet covered:
     def build_create(self, name, product_id, description=None, milestone=None,
                    isactive=None)
@@ -1892,7 +1892,7 @@ class BuildUnitTests(TestopiaUnitTest):
     """
     def build_lookup_name_by_id(self, id)
     """
-        
+
 class EnvironmentUnitTests(TestopiaUnitTest):
     def test_environment_get(self):
         envId = 1
@@ -1905,7 +1905,7 @@ class EnvironmentUnitTests(TestopiaUnitTest):
     def test_environment_list(self):
         envList = self.testopia.environment_list()
         self.assertEquals(type(envList), type([]))
-        envDict = envList[0] 
+        envDict = envList[0]
         self.assert_('environment_id' in envDict)
         self.assert_('product_id' in envDict)
         self.assert_('isactive' in envDict)
@@ -1951,7 +1951,7 @@ class ProductUnitTests(TestopiaUnitTest):
     def test_product_lookup_id_by_name(self):
         productId = self.testopia.product_lookup_id_by_name(self.testProductName)
         self.assert_is_int(productId)
-        
+
     def test_product_check_by_name(self):
         productDict = self.testopia.product_check_by_name(self.testProductName)
         self.assertEquals(productDict['name'], self.testProductName)
@@ -2089,7 +2089,7 @@ class TestRunUnitTests(TestopiaUnitTest):
     def testrun_lookup_environment_id_by_name(self, name):
     def testrun_lookup_environment_name_by_id(self, id):
         """
-        
+
 class TestCaseRunUnitTests(TestopiaUnitTest):
     """API entry points that aren't yet covered:
     def testcaserun_get(self, case_run_id):
@@ -2124,7 +2124,7 @@ class TestCaseRunUnitTests(TestopiaUnitTest):
 
 # Hook into pyunit's command-line handling, which will invoke the test
 # suite if run directly rather than imported; use -v for more verbose output
-# 
+#
 # You'll have to have a 'unittest.cfg' file containing config for whatever
 # Testopia instance you're talking to
 #
-- 
2.11.0


