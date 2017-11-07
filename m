Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9404E00D36; Tue,  7 Nov 2017 14:31:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFBACE00CC2
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 14:31:32 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Nov 2017 14:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,361,1505804400"; d="scan'208";a="170688501"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 07 Nov 2017 14:31:31 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 Nov 2017 14:31:38 -0800
Message-Id: <15d371573edecbc27254c3eb62c074c48f57be84.1510093646.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1510093646.git.amanda.r.brindle@intel.com>
References: <cover.1510093646.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v3 1/1] recipes.html: Require keyword for recipe search
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
X-List-Received-Date: Tue, 07 Nov 2017 22:31:33 -0000

Use JavaScript to check if the search box for recipe search is
empty before querying the database. This will prevent the "502
Bad Gateway" error that occurs when the query takes too long due
to the large list of recipes. Since there are so many recipes
spread across the layers in the OE index, there's no point in
allowing a user to search without a keyword in order to browse
the list; it simply isn't digestible as a whole.

Add a browse button for the Machines, Classes, and Distros pages.

Fixes [YOCTO #11930]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py                | 15 ++++++++++++---
 templates/layerindex/classes.html  |  3 ++-
 templates/layerindex/distros.html  |  3 ++-
 templates/layerindex/machines.html |  3 ++-
 templates/layerindex/recipes.html  | 27 +++++++++++++++++++++------
 5 files changed, 39 insertions(+), 12 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 03d47f2..414c770 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -656,7 +656,10 @@ class MachineSearchView(ListView):
 
     def get_queryset(self):
         _check_url_branch(self.kwargs)
-        query_string = self.request.GET.get('q', '')
+        if self.request.GET.get('search', ''):
+            query_string = self.request.GET.get('q', '')
+        else:
+            query_string = ""
         init_qs = Machine.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
         if query_string.strip():
             entry_query = simplesearch.get_query(query_string, ['name', 'description'])
@@ -705,7 +708,10 @@ class DistroSearchView(ListView):
 
     def get_queryset(self):
         _check_url_branch(self.kwargs)
-        query_string = self.request.GET.get('q', '')
+        if self.request.GET.get('search', ''):
+            query_string = self.request.GET.get('q', '')
+        else:
+            query_string = ""
         init_qs = Distro.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
         if query_string.strip():
             entry_query = simplesearch.get_query(query_string, ['name', 'description'])
@@ -730,7 +736,10 @@ class ClassSearchView(ListView):
 
     def get_queryset(self):
         _check_url_branch(self.kwargs)
-        query_string = self.request.GET.get('q', '')
+        if self.request.GET.get('search', ''):
+            query_string = self.request.GET.get('q', '')
+        else:
+            query_string = ""
         init_qs = BBClass.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
         if query_string.strip():
             entry_query = simplesearch.get_query(query_string, ['name'])
diff --git a/templates/layerindex/classes.html b/templates/layerindex/classes.html
index 34ac5aa..574cdb8 100644
--- a/templates/layerindex/classes.html
+++ b/templates/layerindex/classes.html
@@ -35,7 +35,8 @@
                     <div class="input-append">
                         <form id="filter-form" action="{% url 'class_search' url_branch %}" method="get">
                             <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search classes" name="q" value="{{ search_keyword }}" />
-                            <button class="btn" type="submit">search</button>
+                            <button class="btn" type="submit" name="search" value="1">search</button>
+                            <button class="btn" type="submit" name="browse" value="1">browse</button>
                         </form>
                     </div>
                 </div>
diff --git a/templates/layerindex/distros.html b/templates/layerindex/distros.html
index 5b6995a..3266bf6 100644
--- a/templates/layerindex/distros.html
+++ b/templates/layerindex/distros.html
@@ -35,7 +35,8 @@
                     <div class="input-append">
                         <form id="filter-form" action="{% url 'distro_search' url_branch %}" method="get">
                             <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search distros" name="q" value="{{ search_keyword }}" />
-                            <button class="btn" type="submit">search</button>
+                            <button class="btn" type="submit" name="search" value="1">search</button>
+                            <button class="btn" type="submit" name="browse" value="1">browse</button>
                         </form>
                     </div>
                 </div>
diff --git a/templates/layerindex/machines.html b/templates/layerindex/machines.html
index c0c6f33..e963376 100644
--- a/templates/layerindex/machines.html
+++ b/templates/layerindex/machines.html
@@ -34,7 +34,8 @@
                     <div class="input-append">
                         <form id="filter-form" action="{% url 'machine_search' url_branch %}" method="get">
                             <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search machines" name="q" value="{{ search_keyword }}" />
-                            <button class="btn" type="submit">search</button>
+                            <button class="btn" type="submit" name="search" value="1">search</button>
+                            <button class="btn" type="submit" name="browse" value="1">browse</button>
                         </form>
                     </div>
                 </div>
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index 1322750..5ff92ab 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -32,14 +32,20 @@
 
 
                 <div class="row-fluid">
-                    <div class="input-append">
-                        <form id="filter-form" action="{% url 'recipe_search' url_branch %}" method="get">
-                            <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search recipes" name="q" value="{{ search_keyword }}" />
-                            <button class="btn" type="submit">search</button>
-                        </form>
-                    </div>
+                    <form id="filter-form" action="{% url 'recipe_search' url_branch %}" method="get" onsubmit="return validate()">
+                        <div class="control-group"  id="searchfield">
+                            <div class="controls">
+                                <div class="input-append">
+                                    <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search recipes" name="q" value="{{ search_keyword }}" />
+                                    <button class="btn" type="submit">search</button>
+                                </div>
+                                <span class="help-inline" id="errortext"></span>
+                            </div>
+                        </div>
+                    </form>
                 </div>
 
+                <div id="error"> </div>
 {% if recipe_list %}
                 <table class="table table-striped table-bordered recipestable">
                     <thead>
@@ -88,5 +94,14 @@
         $('.icon-hdd').tooltip({title:"Inherits image"});
         $('.label-inverse').tooltip();
     });
+
+    function validate(){
+        if (!$("#appendedInputButtons").val()){
+            $("#errortext").html("<p>Please specify search text</p>");
+            $("#searchfield").addClass("error");
+            return false;
+        }
+    }
+
 </script>
 {% endblock %}
-- 
2.7.4


