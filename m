Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D0DE00DFB; Tue, 12 Nov 2019 00:32:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE2DE00D8E
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 00:32:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAC8WtPq007004
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 00:32:55 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Tue, 12 Nov 2019 00:32:54 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 12 Nov 2019 16:32:53 +0800
Message-ID: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
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
X-List-Received-Date: Tue, 12 Nov 2019 08:32:57 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Support to display local.conf and auto.conf on error report web.
Here is commit in oe-core, which add local.conf/auto.conf into error report
https://git.openembedded.org/openembedded-core/commit/?id=7adf9707c04d8ef6bcd8d8bda555687f705e6ee6

This commit is related to YOCTO #13252

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
 Post/models.py                  |  2 ++
 Post/parser.py                  |  2 ++
 Post/test.py                    |  2 ++
 templates/error-details.html    | 10 ++++++++++
 test-data/test-payload.json     |  4 +++-
 6 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 Post/0006_auto_20190917_0419.py

diff --git a/Post/0006_auto_20190917_0419.py b/Post/0006_auto_20190917_0419.py
new file mode 100644
index 0000000..827944e
--- /dev/null
+++ b/Post/0006_auto_20190917_0419.py
@@ -0,0 +1,24 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('Post', '0005_build_error_type'),
+    ]
+
+    operations = [
+        migrations.AddField(
+            model_name='build',
+            name='AUTO_CONF',
+            field=models.TextField(default=b'', max_length=5242880),
+        ),
+        migrations.AddField(
+            model_name='build',
+            name='LOCAL_CONF',
+            field=models.TextField(default=b'', max_length=5242880),
+        ),
+    ]
diff --git a/Post/models.py b/Post/models.py
index ddf2fc7..e9fd010 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -43,6 +43,8 @@ class Build(models.Model):
     LINK_BACK = models.TextField(max_length=300, blank=True, null=True)
     ERROR_TYPE = models.CharField(max_length=20, choices=ERROR_TYPE_CHOICES,
                                   default=ErrorType.RECIPE)
+    LOCAL_CONF = models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
+    AUTO_CONF = models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
 
     def save(self, *args, **kwargs):
         if self.ERROR_TYPE not in [e_type[0] for e_type in
diff --git a/Post/parser.py b/Post/parser.py
index 9639308..69d43c1 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -53,6 +53,8 @@ class Parser:
             b.EMAIL = str(jsondata['email'])
             b.LINK_BACK = jsondata.get("link_back", None)
             b.ERROR_TYPE = jsondata.get("error_type", ErrorType.RECIPE)
+            b.LOCAL_CONF = str(jsondata['local_conf'])
+            b.AUTO_CONF = str(jsondata['auto_conf'])
 
             # Extract the branch and commit
             g = re.match(r'(.*): (.*)', jsondata['branch_commit'])
diff --git a/Post/test.py b/Post/test.py
index 6dc7878..4fe236c 100755
--- a/Post/test.py
+++ b/Post/test.py
@@ -46,6 +46,8 @@ def compare_db_obj_with_payload(self, bf_object):
     self.assertEqual(bf_object.BUILD.NAME == str(payload['username']), True)
     self.assertEqual(bf_object.BUILD.EMAIL == str(payload['email']), True)
     self.assertEqual(bf_object.BUILD.LINK_BACK == payload.get("link_back", None), True)
+    self.assertEqual(bf_object.BUILD.LOCAL_CONF == payload.get("local_conf", None), True)
+    self.assertEqual(bf_object.BUILD.AUTO_CONF == payload.get("auto_conf", None), True)
 
     g = re.match(r'(.*): (.*)', payload['branch_commit'])
 
diff --git a/templates/error-details.html b/templates/error-details.html
index c30160d..c8fce05 100644
--- a/templates/error-details.html
+++ b/templates/error-details.html
@@ -81,6 +81,16 @@
           {% endwith %}
         </dd>
 
+        {% if detail.BUILD.LOCAL_CONF != "" %}
+        <dt></a>Local Conf:</dt>
+        <dd style="white-space: pre-wrap;">{{ detail.BUILD.LOCAL_CONF | safe }}</dd>
+        {% endif %}
+
+        {% if detail.BUILD.AUTO_CONF != "" %}
+        <dt></a>Auto Conf:</dt>
+        <dd style="white-space: pre-wrap;">{{ detail.BUILD.AUTO_CONF | safe }}</dd>
+        {% endif %}
+
       </dl>
       <div>
         <a class="btn btn-block" target="_blank" href="https://bugzilla.yoctoproject.org/enter_bug.cgi?classification=__all" >Open a bug</a>
diff --git a/test-data/test-payload.json b/test-data/test-payload.json
index 0428a16..fd21053 100644
--- a/test-data/test-payload.json
+++ b/test-data/test-payload.json
@@ -1,4 +1,5 @@
 {
+    "auto_conf": "",
     "branch_commit": "(master-test): 736b49449233c936e3099b314a58e91ad17f9774", 
     "build_sys": "x86_64-linux", 
     "component": "base-passwd", 
@@ -11,7 +12,8 @@
             "package": "base-passwd-3.5.29-r0", 
             "task": "do_install"
         }
-    ], 
+    ],
+    "local_conf": "",
     "machine": "qemux86", 
     "nativelsb": "Ubuntu-14.04", 
     "target_sys": "i586-poky-linux"
-- 
2.7.4


