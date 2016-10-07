Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55236E00C6A; Fri,  7 Oct 2016 08:57:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC5BE00C56
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u97FvYdx011628
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 7 Oct 2016 08:57:34 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:33 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:19 -0400
Message-ID: <1475855841-30009-11-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 10/12] layerindexer: Add layer recommends support
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:39 -0000
Content-Type: text/plain

Parse layer.conf and add dependencies that are not required from
LAYERRECOMMENDS_<name>.  Update the layerindex/template to support
recommends.  Uses bitbake parsing code & checks versions.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/models.py             |  7 +++++++
 layerindex/tools/import_layer.py |  2 +-
 layerindex/update.py             |  1 +
 layerindex/update_layer.py       |  1 +
 layerindex/utils.py              |  9 +++++++--
 templates/layerindex/detail.html | 32 +++++++++++++++++++++-----------
 6 files changed, 38 insertions(+), 14 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index cbfb244..869d4a3 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -211,6 +211,12 @@ class LayerBranch(models.Model):
         return "%s: %s" % (self.layer.name, self.branch.name)
 
 
+    def get_required(self):
+        return self.dependencies_set.filter(required=True)
+
+    def get_recommends(self):
+        return self.dependencies_set.filter(required=False)
+
 class LayerMaintainer(models.Model):
     MAINTAINER_STATUS_CHOICES = (
         ('A', 'Active'),
@@ -232,6 +238,7 @@ class LayerMaintainer(models.Model):
 class LayerDependency(models.Model):
     layerbranch = models.ForeignKey(LayerBranch, related_name='dependencies_set')
     dependency = models.ForeignKey(LayerItem, related_name='dependents_set')
+    required = models.BooleanField(default=True)
 
     class Meta:
         verbose_name_plural = "Layer dependencies"
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 1daaeb2..377a0f0 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -382,7 +382,7 @@ def main():
                         layerconfparser.shutdown()
                     if config_data:
                         utils.add_dependencies(layerbranch, config_data, logger=logger)
-
+                        utils.add_recommends(layerbranch, config_data, logger=logger)
 
                 # Get some extra meta-information
                 readme_files = glob.glob(os.path.join(layerdir, 'README*'))
diff --git a/layerindex/update.py b/layerindex/update.py
index 8684d36..6f93099 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -235,6 +235,7 @@ def main():
                         continue
 
                     utils.add_dependencies(layerbranch, config_data, logger=logger)
+                    utils.add_recommends(layerbranch, config_data, logger=logger)
             finally:
                 layerconfparser.shutdown()
 
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 40d1f16..27d4ebe 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -283,6 +283,7 @@ def main():
                 layerconfparser.shutdown()
                 sys.exit(1)
             utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
+            utils.add_recommends(layerbranch, layer_config_data, logger=logger)
             utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
             layerbranch.save()
 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 170d202..484d3fe 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -62,9 +62,12 @@ def get_dependency_layer(depname, version_str=None, logger=None):
     return None
 
 def add_dependencies(layerbranch, config_data, logger=None):
-    _add_dependency("LAYERDEPENDS", 'dependency', layerbranch, config_data, logger)
+    _add_dependency("LAYERDEPENDS", 'dependency', layerbranch, config_data, logger=logger)
 
-def _add_dependency(var, name, layerbranch, config_data, logger=None):
+def add_recommends(layerbranch, config_data, logger=None):
+    _add_dependency("LAYERRECOMMENDS", 'recommends', layerbranch, config_data, logger=logger, required=False)
+
+def _add_dependency(var, name, layerbranch, config_data, logger=None, required=True):
     from layerindex.models import LayerBranch, LayerDependency
 
     layer_name = layerbranch.layer.name
@@ -97,6 +100,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None):
                 logger.error('Error getting %s %s for %s\n%s' %(name, dep. layer_name, str(vse)))
             continue
 
+        # No layer found.
         if not dep_layer:
             if logger:
                 logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
@@ -114,6 +118,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None):
         layerdep = LayerDependency()
         layerdep.layerbranch = layerbranch
         layerdep.dependency = dep_layer
+        layerdep.required = required
         layerdep.save()
 
 def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 4bd7ecf..9d3ee05 100644
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


