Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED8B6E00828; Mon, 26 Sep 2016 11:25:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26AC7E007E8
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:25:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8QIPuWZ004536
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Sep 2016 11:25:56 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:56 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:37 -0400
Message-ID: <1474914338-26310-10-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 09/10] layerindexer: Add layer recommends support
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
X-List-Received-Date: Mon, 26 Sep 2016 18:25:59 -0000
Content-Type: text/plain

Parse layer.conf and add dependencies that are not required from
LAYERRECOMMENDS_<name>.  Update the layerindex/template to support
recommends.  Uses bitbake parsing code & checks versions.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/models.py             |  4 ++++
 layerindex/tools/import_layer.py |  2 +-
 layerindex/update.py             |  1 +
 layerindex/utils.py              | 10 +++++++++-
 templates/layerindex/detail.html | 32 +++++++++++++++++++++-----------
 5 files changed, 36 insertions(+), 13 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index dcccb1f..7286462 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -214,6 +214,10 @@ class LayerBranch(models.Model):
     def get_required(self):
         return self.dependencies_set.filter(required=True)
 
+    def get_recommends(self):
+        return self.dependencies_set.filter(required=False)
+
+
 class LayerMaintainer(models.Model):
     MAINTAINER_STATUS_CHOICES = (
         ('A', 'Active'),
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 21dd802..33b7085 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -384,7 +384,7 @@ def main():
                         layerdep.dependency = core_layer
                         layerdep.save()
                     utils.add_dependencies(layerbranch, config_data, logger=logger)
-
+                    utils.add_recommends(layerbranch, config_data, logger=logger)
 
                 # Get some extra meta-information
                 readme_files = glob.glob(os.path.join(layerdir, 'README*'))
diff --git a/layerindex/update.py b/layerindex/update.py
index e15caf6..39af03c 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -216,6 +216,7 @@ def main():
 
                 config_data = layerconfparser.parse_layer(repodir)
                 utils.add_dependencies(layerbranch, config_data, logger=logger)
+                utils.add_recommends(layerbranch, config_data, logger=logger)
 
         layerconfparser.shutdown()
 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 2b49d64..a5cd2f6 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -64,16 +64,23 @@ def get_dependency_layer(depname, version_str=None, logger=None):
 def add_dependencies(layerbranch, config_data, logger=None):
     _add_dependency("LAYERDEPENDS", 'dependency', layerbranch, config_data, logger)
 
+def add_recommends(layerbranch, config_data, logger=None):
+    _add_dependency("LAYERRECOMMENDS", 'recommends', layerbranch, config_data, logger)
+
 def _add_dependency(var, name, layerbranch, config_data, logger=None):
     from layerindex.models import LayerBranch, LayerDependency
 
     layer_name = layerbranch.layer.name
     var_name = layer_name
 
+    if layerbranch.collection:
+        var_name = layerbranch.collection
+
+
     dep_list = config_data.getVar("%s_%s" % (var, var_name), True)
 
     if not dep_list:
-         return
+        return
 
     try:
         dep_dict = bb.utils.explode_dep_versions2(dep_list)
@@ -93,6 +100,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None):
                 logger.error('Error getting %s %s for %s\n%s' %(name, dep. layer_name, str(vse)))
             continue
 
+        # No layer found.
         if not dep_layer:
             if logger:
                 logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index f83b1f2..e3967c5 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -139,17 +139,27 @@
 
                 <div class="span4 pull-right description">
                     {% if layerbranch.dependencies_set.count > 0 %}
-                         <div class="well dependency-well">
-                            <h3>Dependencies </h3>
-                            <p>The {{ layeritem.name }} layer depends upon:</p>
-                            <ul>
-                                {% for dep in layerbranch.dependencies_set.all %}
-                                    <li><a href="{% url 'layer_item' url_branch dep.dependency.name %}">{{ dep.dependency.name }}</a></li>
-                                {% endfor %}
-                            </ul>
-                         </div> <!-- end of well -->
-                    {% endif %}
-
+                        <div class="well dependency-well">
+                            {% if layerbranch.get_required.count > 0 %}
+                                <h3>Dependencies </h3>
+                                <p>The {{ layeritem.name }} layer depends upon:</p>
+                                <ul>
+                                    {% for dep in layerbranch.get_required %}
+                                        <li><a href="{% url 'layer_item' url_branch dep.dependency.name %}">{{ dep.dependency.name }}</a></li>
+                                    {% endfor %}
+                                </ul>
+                            {% endif %} <!-- end of layerbranch.get_required.count -->
+                            {% if layerbranch.get_recommends.count > 0 %}
+                                <h3>Recommends </h3>
+                                <p>The {{ layeritem.name }} layer recommends:</p>
+                                <ul>
+                                    {% for rec in layerbranch.get_recommends %}
+                                        <li><a href="{% url 'layer_item' url_branch rec.dependency.name %}">{{ rec.dependency.name }}</a></li>
+                                    {% endfor %}
+                                </ul>
+                            {% endif %} <!-- end of layerbranch.get_recommends.count -->
+                        </div> <!-- end of well -->
+                    {% endif %} <!-- end of layerbranch.dependencies_set.count -->
                 </div> <!-- end of span4 -->
             </div>  <!-- end of row-fluid -->
         </div> <!-- end of container-fluid -->
-- 
1.9.1


