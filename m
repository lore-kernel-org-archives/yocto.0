Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98BCCE00D41; Mon,  6 Nov 2017 11:01:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A824DE00D20
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 11:01:37 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 11:01:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,353,1505804400"; d="scan'208";a="146587774"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga004.jf.intel.com with ESMTP; 06 Nov 2017 11:01:37 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 11:01:44 -0800
Message-Id: <6191c7662e9428934ae5b90f7cf970a630d1dac3.1509994708.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1509994707.git.amanda.r.brindle@intel.com>
References: <cover.1509994707.git.amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v1 1/1] recipes.html: Require keyword for recipe search
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
X-List-Received-Date: Mon, 06 Nov 2017 19:01:38 -0000

Use JavaScript to check if the search box for recipe search is
empty before querying the database. This will prevent the "502
Bad Gateway" error that occurs when the query takes too long due
to the large list of recipes.

Add a browse button for the Machines and Distros pages.

Fixes [YOCTO #11930]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py                | 10 ++++++++--
 templates/layerindex/distros.html  |  3 ++-
 templates/layerindex/machines.html |  3 ++-
 templates/layerindex/recipes.html  | 17 ++++++++++++++++-
 4 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 3b22067..9b5d505 100644
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
diff --git a/templates/layerindex/distros.html b/templates/layerindex/distros.html
index 7085584..34b5419 100644
--- a/templates/layerindex/distros.html
+++ b/templates/layerindex/distros.html
@@ -34,7 +34,8 @@
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
index 2a9f947..d91228a 100644
--- a/templates/layerindex/machines.html
+++ b/templates/layerindex/machines.html
@@ -33,7 +33,8 @@
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
index 60a2667..ae69be6 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -32,13 +32,14 @@
 
                 <div class="row-fluid">
                     <div class="input-append">
-                        <form id="filter-form" action="{% url 'recipe_search' url_branch %}" method="get">
+                        <form id="filter-form" action="{% url 'recipe_search' url_branch %}" method="get" onsubmit="return validate()">
                             <input type="text" class="input-xxlarge" id="appendedInputButtons" placeholder="Search recipes" name="q" value="{{ search_keyword }}" />
                             <button class="btn" type="submit">search</button>
                         </form>
                     </div>
                 </div>
 
+                <div id="error"> </div>
 {% if recipe_list %}
                 <table class="table table-striped table-bordered recipestable">
                     <thead>
@@ -87,5 +88,19 @@
         $('.icon-hdd').tooltip({title:"Inherits image"});
         $('.label-inverse').tooltip();
     });
+
+    function validate(){
+        var x = document.getElementById("appendedInputButtons").value;
+        var error = document.getElementById("error");
+        error.style.display = "none";
+        if (x == ""){
+            error.innerHTML = "<error>Recipe search cannot be blank</error>";
+            $("error").addClass("control-group alert alert-error");
+            error.style.display = "block";
+            return false;
+        }
+    }
+
+
 </script>
 {% endblock %}
-- 
2.7.4


