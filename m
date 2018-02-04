Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6EF9E00E36; Sun,  4 Feb 2018 13:52:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9863E005BB
	for <yocto@yoctoproject.org>; Sun,  4 Feb 2018 13:52:43 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Feb 2018 13:52:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,461,1511856000"; d="scan'208";a="27240288"
Received: from bchew-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.66.233])
	by fmsmga004.fm.intel.com with ESMTP; 04 Feb 2018 13:52:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  5 Feb 2018 10:52:04 +1300
Message-Id: <20180204215204.19189-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
Subject: [layerindex-web][PATCH] Handle __isnull in API query filtering
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
X-List-Received-Date: Sun, 04 Feb 2018 21:52:44 -0000

If you query on a boolean field you can use the string "False" to match
False in the database; however if you try the same with __isnull then
the query will match every record which is obviously undesirable. If
__isnull is being used, then convert the value to a boolean so that the
query works properly.

An example of this type of query:

  http://127.0.0.1:8000/layerindex/api/layerBranches/?filter=yp_compatible_version__isnull:false

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/querysethelper.py | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/layerindex/querysethelper.py b/layerindex/querysethelper.py
index b4d30c2..4e7cac5 100644
--- a/layerindex/querysethelper.py
+++ b/layerindex/querysethelper.py
@@ -28,16 +28,16 @@ VALUE_SEPARATOR = "!"
 DESCENDING = "-"
 
 def __get_q_for_val(name, value):
-    if "OR" in value:
-        return functools.reduce(operator.or_, map(lambda x: __get_q_for_val(name, x), [ x for x in value.split("OR") ]))
-    if "AND" in value:
-        return functools.reduce(operator.and_, map(lambda x: __get_q_for_val(name, x), [ x for x in value.split("AND") ]))
-    if value.startswith("NOT"):
-        kwargs = { name : value.strip("NOT") }
-        return ~Q(**kwargs)
-    else:
-        kwargs = { name : value }
-        return Q(**kwargs)
+    if isinstance(value, str):
+        if "OR" in value:
+            return functools.reduce(operator.or_, map(lambda x: __get_q_for_val(name, x), [ x for x in value.split("OR") ]))
+        if "AND" in value:
+            return functools.reduce(operator.and_, map(lambda x: __get_q_for_val(name, x), [ x for x in value.split("AND") ]))
+        if value.startswith("NOT"):
+            kwargs = { name : value.strip("NOT") }
+            return ~Q(**kwargs)
+    kwargs = { name : value }
+    return Q(**kwargs)
 
 def _get_filtering_query(filter_string):
 
@@ -46,6 +46,10 @@ def _get_filtering_query(filter_string):
     values = search_terms[1].split(VALUE_SEPARATOR)
 
     querydict = dict(zip(keys, values))
+    for key in keys:
+        if key.endswith('__isnull'):
+            querydict[key] = (querydict[key].lower() == 'true')
+
     return functools.reduce(operator.and_, map(lambda x: __get_q_for_val(x, querydict[x]), [k for k in querydict]))
 
 # we check that the input comes in a valid form that we can recognize
-- 
2.9.5


