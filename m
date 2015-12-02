Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A9E9E00AE6; Tue,  1 Dec 2015 16:03:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D497E00ADF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 16:03:33 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2015 16:03:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="862589185"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by orsmga002.jf.intel.com with ESMTP; 01 Dec 2015 16:03:29 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 18:04:20 -0600
Message-Id: <1449014660-27116-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [[RRS]] rrs/recipes: Add support for persist search and filters.
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
X-List-Received-Date: Wed, 02 Dec 2015 00:03:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now when search something the URL is modified and you can
share the URL for access to the data.

[YOCTO #7809]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/views.py               | 11 +++++++++++
 templates/rrs/recipes.html | 35 +++++++++++++++++++++++++++++++++--
 2 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/rrs/views.py b/rrs/views.py
index 8cbbe49..957529c 100644
--- a/rrs/views.py
+++ b/rrs/views.py
@@ -253,6 +253,15 @@ class RecipeListView(ListView):
         else:
             self.maintainer_name = 'All'
 
+        if 'search' in self.request.GET.keys():
+            self.search = self.request.GET['search']
+
+            # only allow one type of filter search or upstream_status/maintainer
+            self.upstream_status = 'All'
+            self.maintainer_name = 'All'
+        else:
+            self.search = ''
+
         _check_url_params(self.upstream_status, self.maintainer_name)
 
         self.milestone_statistics = _get_milestone_statistics(milestone)
@@ -309,6 +318,8 @@ class RecipeListView(ListView):
             all_maintainers.append(rm['maintainer__name'])
         context['all_maintainers'] = all_maintainers
 
+        context['search'] = self.search
+
         return context
 
 def recipes_report(request, release_name, milestone_name):
diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index 3ec980b..be2a3a5 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -167,6 +167,16 @@ $(document).ready(function() {
     recipesTable = $('#recipestable')
     upstreamStatus = $("<div/>").html('{{ upstream_status }}').text()
     maintainer = $("<div/>").html('{{ maintainer_name }}').text()
+    search = '{{ search }}'
+
+    function updateQueryString(queryString) {
+        if (window.history.pushState) {
+            var newurl = window.location.protocol + "//" +
+                window.location.host + window.location.pathname +
+                queryString
+            window.history.pushState({path:newurl}, '', newurl);
+        }
+    }
 
     function updateRecipeCount() {
         $('#recipestable').show()
@@ -243,21 +253,38 @@ $(document).ready(function() {
 
         updateStatusSelected()
         updateMaintainerSelected()
+
+        queryString = ''
+        if (search != '') {
+            $.uiTableFilter(recipesTable, search);
+            queryString = '?search=' + search
+        } else {
+            if (upstreamStatus != 'All' && maintainer != 'All') {
+                queryString = '?upstream_status=' + upstreamStatus +
+                    '&maintainer_name=' + maintainer
+            } else if (upstreamStatus != 'All') {
+                queryString = '?upstream_status=' + upstreamStatus
+            } else if (maintainer != 'All') {
+                queryString = '?maintainer_name=' + maintainer
+            }
+        }
+        updateQueryString(queryString)
     }
 
     $("#form-search").submit(function( event ) {
         upstreamStatus = 'All' 
         maintainer = 'All'
-        search_text = $("#filter").val()
+        search = $("#filter").val()
         $("#clear-search-btn").show()
         applyFilters()
-        $.uiTableFilter(recipesTable, search_text);
         updateRecipeCount()
+
         event.preventDefault();
     });
 
     function clearSearch() {
         $("#filter").val('')
+        search = $("#filter").val()
         $("#clear-search-btn").hide()
         applyFilters()
         updateRecipeCount()
@@ -299,6 +326,10 @@ $(document).ready(function() {
     }); 
 {% endif %}
 
+    if (search != '') {
+        $("#filter").val(search)
+        $("#clear-search-btn").show()
+    }
     applyFilters()
     updateRecipeCount()
 });
-- 
2.1.4


