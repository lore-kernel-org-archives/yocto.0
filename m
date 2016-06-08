Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB32BE00D47; Wed,  8 Jun 2016 06:21:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BAD3E00D38
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:20 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824134170"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:06 +1200
Message-Id: <44c661352cc1b9b638a9c880b1ff2e6e0519503c.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 13/15] Preemptive auto_now fix for Django 1.8
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:53 -0000

Django 1.8 does not allow DateFields that have both auto_now and default
set - since they are mutually exclusive; if you have auto_now you don't
need a default.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/models.py | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index 3a5796d..0ed90a4 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -38,7 +38,7 @@ class Branch(models.Model):
     updates_enabled = models.BooleanField('Enable updates', default=True, help_text='Enable automatically updating layer metadata for this branch via the update script')
     update_environment = models.ForeignKey(PythonEnvironment, blank=True, null=True, on_delete=models.SET_NULL)
 
-    updated = models.DateTimeField(auto_now = True, default = datetime.now)
+    updated = models.DateTimeField(auto_now=True)
 
     class Meta:
         verbose_name_plural = "Branches"
@@ -73,7 +73,7 @@ class LayerItem(models.Model):
     index_preference = models.IntegerField('Preference', default=0, help_text='Number used to find preferred recipes in recipe search results (higher number is greater preference)')
     classic = models.BooleanField('Classic', default=False, help_text='Is this OE-Classic?')
 
-    updated = models.DateTimeField(auto_now = True)
+    updated = models.DateTimeField(auto_now=True)
 
     class Meta:
         verbose_name = "Layer"
@@ -136,7 +136,7 @@ class LayerBranch(models.Model):
     vcs_last_commit = models.DateTimeField('Last commit date', blank=True, null=True)
     actual_branch = models.CharField('Actual Branch', max_length=80, blank=True, help_text='Name of the actual branch in the repository matching the core branch')
 
-    updated = models.DateTimeField(auto_now = True)
+    updated = models.DateTimeField(auto_now=True)
 
     class Meta:
         verbose_name_plural = "Layer branches"
@@ -261,7 +261,7 @@ class Recipe(models.Model):
     provides = models.CharField(max_length=2048, blank=True)
     bbclassextend = models.CharField(max_length=100, blank=True)
     inherits = models.CharField(max_length=255, blank=True)
-    updated = models.DateTimeField(auto_now = True)
+    updated = models.DateTimeField(auto_now=True)
     blacklisted = models.CharField(max_length=255, blank=True)
 
     def vcs_web_url(self):
@@ -352,7 +352,7 @@ class Machine(models.Model):
     name = models.CharField(max_length=255)
     description = models.CharField(max_length=255)
 
-    updated = models.DateTimeField(auto_now = True)
+    updated = models.DateTimeField(auto_now=True)
 
     def vcs_web_url(self):
         url = self.layerbranch.file_url(os.path.join('conf/machine/%s.conf' % self.name))
-- 
2.5.5


