Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A873E0086D; Mon,  1 Jun 2015 16:04:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 393EAE0027F
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 16:04:33 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 01 Jun 2015 16:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,535,1427785200"; d="scan'208";a="580299895"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.4.168])
	by orsmga003.jf.intel.com with ESMTP; 01 Jun 2015 16:04:32 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Jun 2015 18:05:51 -0500
Message-Id: <1433199951-8464-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com,
	Alex Franco <alejandro.franco@linux.intel.com>,
	belen.barros.pena@linux.intel.com
Subject: [PATCH][layerindex-web] Add support for inherit field in recipes
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
X-List-Received-Date: Mon, 01 Jun 2015 23:04:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Alex Franco <alejandro.franco@linux.intel.com>

Modified: models.py, update.py, recipes.html, detail.html,
recipedetail.html, additional.css

To identify image recipes and provide inheritance data for recipes, an
inherits field was added to the recipe model, and then populated using
refactored data from __inherit_cache. Finally the field was also added
to Toaster templates, along with style changes proposed in attachment.

[YOCTO #7575]

Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 layerindex/models.py                   |  1 +
 layerindex/static/css/additional.css   | 11 ++++++++++-
 layerindex/update.py                   |  2 ++
 templates/layerindex/detail.html       |  4 +++-
 templates/layerindex/recipedetail.html |  4 ++++
 templates/layerindex/recipes.html      |  4 +++-
 6 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index dd291a3..d56565f 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -242,6 +242,7 @@ class Recipe(models.Model):
     bugtracker = models.URLField(blank=True)
     provides = models.CharField(max_length=255, blank=True)
     bbclassextend = models.CharField(max_length=100, blank=True)
+    inherits = models.CharField(max_length=255, blank=True)
 
     updated = models.DateTimeField(auto_now = True)
 
diff --git a/layerindex/static/css/additional.css b/layerindex/static/css/additional.css
index 0703257..0d74db3 100644
--- a/layerindex/static/css/additional.css
+++ b/layerindex/static/css/additional.css
@@ -198,4 +198,13 @@ padding: 8px;
 
 .buttonblock-btn {
     margin-left: 8px;
-}
\ No newline at end of file
+}
+
+.icon-hdd {
+   margin-left: 2px;
+}
+
+.icon-hdd:hover {
+   cursor: pointer;
+}
+
diff --git a/layerindex/update.py b/layerindex/update.py
index a56507b..24e7960 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -65,6 +65,8 @@ def update_recipe_file(data, path, recipe, layerdir_start, repodir):
         recipe.bugtracker = envdata.getVar("BUGTRACKER", True) or ""
         recipe.provides = envdata.getVar("PROVIDES", True) or ""
         recipe.bbclassextend = envdata.getVar("BBCLASSEXTEND", True) or ""
+        rlist = envdata.getVar("__inherit_cache", True) or []
+        recipe.inherits = ' '.join(sorted([(split_recipe_fn(r)[0]) for r in rlist])) or ""
         recipe.save()
 
         # Get file dependencies within this layer
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index e013e4c..c9439b3 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -198,7 +198,7 @@
                         <tbody>
                             {% for recipe in layerbranch.sorted_recipes %}
                                 <tr>
-                                    <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a></td>
+                                    <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits %}<i class="icon-hdd"></i>{% endif %}</td>
                                     <td>{{ recipe.pv }}</td>
                                     <td class="span8">{{ recipe.short_desc }}</td>
                                 </tr>
@@ -321,6 +321,8 @@
                     e.preventDefault();
                     $(this).tab('show');
                 })
+
+                $('.icon-hdd').tooltip({title:"Inherits image"});
             });
         });
     </script>
diff --git a/templates/layerindex/recipedetail.html b/templates/layerindex/recipedetail.html
index 658694e..cde8e50 100644
--- a/templates/layerindex/recipedetail.html
+++ b/templates/layerindex/recipedetail.html
@@ -83,6 +83,10 @@
                             <th>Layer</th>
                             <td><a href="{% url layer_item recipe.layerbranch.branch.name recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a> ({{ recipe.layerbranch.branch.name}} branch)</td>
                         </tr>
+                        <tr>
+                            <th>Inherits</th>
+                            <td>{{ recipe.inherits }}</td>
+                        </tr>
                     </tbody>
                 </table>
 
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index 6777ed2..f1a7834 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -52,7 +52,7 @@
                     <tbody>
                         {% for recipe in recipe_list %}
                             <tr {% if recipe.preferred_count > 0 %}class="muted"{% endif %}>
-                                <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a></td>
+                                <td><a href="{% url recipe recipe.id %}">{{ recipe.name }}</a>{% if 'image' in recipe.inherits %}<i class="icon-hdd"></i>{% endif %}</td>
                                 <td>{{ recipe.pv }}</td>
                                 <td>{{ recipe.short_desc }}</td>
                                 <td><a href="{% url layer_item url_branch recipe.layerbranch.layer.name %}">{{ recipe.layerbranch.layer.name }}</a></td>
@@ -82,6 +82,8 @@
         firstfield = $("#filter-form input:text").first()
         if( ! firstfield.val() )
             firstfield.focus()
+
+        $('.icon-hdd').tooltip({title:"Inherits image"});
     });
 </script>
 {% endblock %}
-- 
1.9.1


