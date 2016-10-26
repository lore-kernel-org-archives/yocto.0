Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D33D6E00CEA; Tue, 25 Oct 2016 19:42:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E72CDE00CD8
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 19:42:33 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP; 25 Oct 2016 19:42:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,548,1473145200"; d="scan'208";a="777729548"
Received: from sloi-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.176])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2016 19:42:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2016 15:41:56 +1300
Message-Id: <1477449716-24619-3-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1477449716-24619-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1477449716-24619-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] recipedetail: don't show homepage as link if not URL
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
X-List-Received-Date: Wed, 26 Oct 2016 02:42:34 -0000

Sometimes people put values that aren't URLs into the HOMEPAGE variable.
If that's the case, then we should not turn that value into a link which
will be invalid.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/models.py                   | 6 ++++++
 templates/layerindex/recipedetail.html | 8 +++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index 869d4a3..746fad4 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -292,6 +292,12 @@ class Recipe(models.Model):
         else:
             return self.filename.split('_')[0]
 
+    def homepage_url_only(self):
+        if '://' in self.homepage:
+            return self.homepage
+        else:
+            return None
+
     def __str__(self):
         return os.path.join(self.filepath, self.filename)
 
diff --git a/templates/layerindex/recipedetail.html b/templates/layerindex/recipedetail.html
index c0199a1..5b83886 100644
--- a/templates/layerindex/recipedetail.html
+++ b/templates/layerindex/recipedetail.html
@@ -72,7 +72,13 @@
                         </tr>
                         <tr>
                             <th>Homepage</th>
-                            <td>{% if recipe.homepage %}<a href="{{ recipe.homepage }}">{{ recipe.homepage }}</a>{% endif %}</td>
+                            <td>
+                                {% if recipe.homepage_url_only %}
+                                    <a href="{{ recipe.homepage }}">{{ recipe.homepage }}</a>
+                                {% elif recipe.homepage %}
+                                    {{ recipe.homepage }}
+                                {% endif %}
+                            </td>
                         </tr>
                         {% if recipe.bugtracker %}
                         <tr>
-- 
2.5.5


