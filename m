Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA8BAE00655; Tue,  7 Feb 2017 12:18:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB2FE00519
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 12:18:18 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 07 Feb 2017 12:18:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="62325632"
Received: from unknown (HELO jalamego-MOBL2.zpn.intel.com) ([10.219.128.137])
	by fmsmga005.fm.intel.com with ESMTP; 07 Feb 2017 12:18:18 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 Feb 2017 14:17:56 -0600
Message-Id: <1486498677-6355-2-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1486498677-6355-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1485819090-16001-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1486498677-6355-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v2 1/2] series.js: Get patch id and pass it to POST request
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
X-List-Received-Date: Tue, 07 Feb 2017 20:18:19 -0000

Patch forms in series view do not pass selected patch id
as request element during a POST call, so no status/bundle
updates can be performed from such view.

This change includes the selected patch id as a request
element and pass it to POST call through a hidden input field.

[YOCTO #10973]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/js/series.js | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/htdocs/js/series.js b/htdocs/js/series.js
index 4f4f477..bd75790 100644
--- a/htdocs/js/series.js
+++ b/htdocs/js/series.js
@@ -1,5 +1,5 @@
 $(document).ready(function(){
-    $('[data-toggle="tooltip"]').tooltip();
+    $('[data-toggle="tooltip"]').tooltip()
     revTab=document.getElementById('revs-list')
     coverView=document.getElementById('cover-letter-view'),
     patchView=document.getElementById('patch-view'),
@@ -34,10 +34,31 @@ $(document).ready(function(){
     })
 
     $('.patch-link').on('click', function(){
+        var pa=this.getAttribute("data-url")
+        var curr_rev=document.getElementById('revs-list').value
+        pa=pa.match(/\d+/)[0]
         coverView.style.display='none'
         patchView.style.display='block'
         patchView.innerHTML=
         '<p style="text-align:center;">Loading patch...</p>'
-        $("#patch-view").load(this.getAttribute("data-url") + " #patch-body")
+        $("#patch-view").load(
+            this.getAttribute("data-url") + " #patch-body", function() {
+                forms=document.forms
+                for (i=0; i<document.forms.length; i++){
+                    var n=(i + 1)
+                    var patch_field=document.createElement("input")
+                    patch_field.type="hidden"
+                    patch_field.name="patch"
+                    patch_field.value=pa
+                    var div=document.createElement("div")
+                    var this_form=document.forms.item(i)
+                    if (typeof this_form !== "undefined"){
+                        this_form.appendChild(div)
+                        div.appendChild(patch_field)
+                    }
+                }
+            }
+
+        )
     })
 })
-- 
1.9.1


