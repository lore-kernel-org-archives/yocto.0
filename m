Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5812E00D17; Tue,  5 Mar 2019 00:35:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0434E00BCC
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 00:35:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x258YAZe004388
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 5 Mar 2019 00:34:26 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.439.0; Tue, 5 Mar 2019 00:34:11 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Mar 2019 16:53:22 +0800
Message-ID: <1551776002-130748-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Cc: michael.g.wood@intel.com
Subject: [error-report-web][PATCH] Post/views.py: Fix for python3
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
X-List-Received-Date: Tue, 05 Mar 2019 08:35:05 -0000
Content-Type: text/plain

Now it works for python 2 and 3.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 Post/views.py | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 7f2cffb..2f8e4ae 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -13,9 +13,9 @@ from django.shortcuts import HttpResponse, render
 from django.views.decorators.csrf import csrf_exempt
 from django.shortcuts import redirect
 from Post.models import BuildFailure, Build, ErrorType
-from parser import Parser
+from .parser import Parser
 from django.conf import settings
-from createStatistics import Statistics
+from .createStatistics import Statistics
 from django.core.paginator import Paginator, EmptyPage
 from django.core.exceptions import FieldError, ObjectDoesNotExist
 from django.http import JsonResponse
@@ -55,20 +55,23 @@ def addData(request, return_json=False):
             # Backward compatibility with send-error-report < 0.3
             # The json is url encoded so we need to undo this here.
             data = request.body[len('data='):]
-            data = urllib.unquote_plus(data)
+            data = urllib.parse.unquote_plus(data)
+
+        data = data.decode('utf-8')
 
         p = Parser(data)
         result = p.parse(request)
+        print(result)
 
         if return_json:
             response = JsonResponse(result)
         else:
-            if not result.has_key('error'):
+            if 'error' not in result:
               response = HttpResponse("Your entry can be found here: "+result['build_url'])
             else:
               response = HttpResponse(result['error'])
 
-        if result.has_key('error'):
+        if 'error' in result:
             response.status_code=500
     else:
         if return_json:
@@ -123,7 +126,7 @@ def search(request, mode=results_mode.LATEST, **kwargs):
 
     items = BuildFailure.objects.all()
 
-    if request.GET.has_key("limit"):
+    if "limit" in request.GET:
         try:
             n_limit = int(request.GET['limit'])
             if n_limit > 0:
@@ -200,14 +203,14 @@ def search(request, mode=results_mode.LATEST, **kwargs):
       ],
     }
 
-    if request.GET.has_key("filter") and request.GET.has_key("type"):
+    if "filter" in request.GET and "type" in request.GET:
         items = apply_filter(context, items, request.GET['type'], request.GET['filter'])
     if mode == results_mode.SPECIAL_SUBMITTER and hasattr(settings,"SPECIAL_SUBMITTER"):
         #Special submitter mode see settings.py to enable
         name = settings.SPECIAL_SUBMITTER['name']
         items = items.filter(BUILD__NAME__istartswith=name)
 
-    elif mode == results_mode.SEARCH and request.GET.has_key("query"):
+    elif mode == results_mode.SEARCH and "query" in request.GET:
         query = request.GET["query"]
 
         items = items.filter(
-- 
2.7.4


