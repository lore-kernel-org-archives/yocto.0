Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A578E00826; Mon, 27 Feb 2017 17:25:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3FDFE004D2
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 17:25:55 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Feb 2017 17:25:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,216,1484035200"; d="scan'208";a="938780762"
Received: from skhalsa-mobl1.amr.corp.intel.com (HELO
	jalamego-MOBL2.amr.corp.intel.com) ([10.254.178.181])
	by orsmga003.jf.intel.com with ESMTP; 27 Feb 2017 17:25:55 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 19:25:35 -0600
Message-Id: <1488245135-7709-4-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 3/3] series.js: add patch-selection-checkbox control functions
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
X-List-Received-Date: Tue, 28 Feb 2017 01:25:57 -0000

This change adds control functions for individual and multiple
selection checkboxes.

[YOCTO #10822]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/js/series.js | 145 ++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 125 insertions(+), 20 deletions(-)

diff --git a/htdocs/js/series.js b/htdocs/js/series.js
index bd75790..c4bbb0e 100644
--- a/htdocs/js/series.js
+++ b/htdocs/js/series.js
@@ -1,27 +1,47 @@
 $(document).ready(function(){
     $('[data-toggle="tooltip"]').tooltip()
     revTab=document.getElementById('revs-list')
-    coverView=document.getElementById('cover-letter-view'),
-    patchView=document.getElementById('patch-view'),
+    coverView=document.getElementById('cover-letter-view')
+    patchView=document.getElementById('patch-view')
     patchList=document.getElementById('patches-list')
-
+    patchesInput=$( "input[name^='patches']" )
+    seriesForms=document.getElementById('seriesForm')
+    var patches = new Array()
+    if ($( patchesInput[0] ).value){
+        patches=json_decode($( patchesInput[0] ).value, true)
+    }
+    else{
+        patches=[]
+    }
     revTab.style.border='none'
     revTab.style.background='transparent'
     revTab.style.padding='15px'
     coverView.style.display='block'
     patchView.style.display='none'
     patchList.style.display='none'
+    seriesForms.style.display='none'
 
     document.getElementById('cover-letter-tab').onclick=function(){
         coverView.style.display='block'
         patchView.style.display='none'
         patchList.style.display='none'
+        patches=[]
+        for (i=0; i<patchesInput.length; ++i){
+            $( patchesInput[i] ).prop('value', JSON.stringify(patches))
+        }
     }
 
     document.getElementById('patches-tab').onclick=function(){
         coverView.style.display='none'
         patchList.style.display='block'
         patchView.style.display="none"
+        patches=[]
+        for (i=0; i<patchesInput.length; ++i){
+            $( patchesInput[i] ).prop('value', "")
+        }
+        uncheck_allSel()
+        uncheck_allInput()
+        seriesForms.style.display='none'
     }
 
     $('#revs-list').on('change', function(e){
@@ -31,34 +51,119 @@ $(document).ready(function(){
         jQuery('.tab-content div#'+this.value+'.tab-pane.fade').
         addClass(' in active')
         patchView.style.display='none'
+        uncheck_allSel()
+        uncheck_allInput()
+        patches=[]
+        for (i=0; i<patchesInput.length; ++i){
+            $( patchesInput[i] ).prop('value', "")
+        }
+        seriesForms.style.display='none'
     })
 
     $('.patch-link').on('click', function(){
         var pa=this.getAttribute("data-url")
-        var curr_rev=document.getElementById('revs-list').value
         pa=pa.match(/\d+/)[0]
         coverView.style.display='none'
+        patchList.style.display='none'
         patchView.style.display='block'
         patchView.innerHTML=
         '<p style="text-align:center;">Loading patch...</p>'
-        $("#patch-view").load(
-            this.getAttribute("data-url") + " #patch-body", function() {
-                forms=document.forms
-                for (i=0; i<document.forms.length; i++){
-                    var n=(i + 1)
-                    var patch_field=document.createElement("input")
-                    patch_field.type="hidden"
-                    patch_field.name="patch"
-                    patch_field.value=pa
-                    var div=document.createElement("div")
-                    var this_form=document.forms.item(i)
-                    if (typeof this_form !== "undefined"){
-                        this_form.appendChild(div)
-                        div.appendChild(patch_field)
-                    }
+        uncheck_allInput()
+        uncheck_allSel()
+        patches=[]
+        for (i=0; i<patchesInput.length; ++i){
+            $( patchesInput[i] ).prop('value', "")
+        }
+        seriesForms.style.display='none'
+        $("#patch-view").load(this.getAttribute("data-url") + " #patch-body", 
+                              function(){
+            $( '#patch-view form' ).append(
+                    '<input type="hidden" name="patches" value="['+pa+']"/>')
+        })
+    })
+
+    $( "input[name^='patch_id']" ).change(function(){
+        patchView.style.display="none"
+        uncheck_allSel()
+        var p_id=$(this).attr('name').replace('patch_id:', '')
+        if ($(this).prop('checked')){
+            insert_patchId(p_id)
+            for (i=0; i<patchesInput.length; ++i){
+                $( patchesInput[i] ).prop('value', JSON.stringify(patches))
+            }
+            seriesForms.style.display='block'
+        }
+        else{
+            remove_patchId(p_id)
+            if (patches==""){
+                for (i=0; i<patchesInput.length; ++i){
+                    $( patchesInput[i] ).prop('value', "")
+                }
+                seriesForms.style.display='none'
+            }
+            else{
+                for (i=0; i<patchesInput.length; ++i){
+                    $( patchesInput[i] ).prop('value', JSON.stringify(patches))
                 }
             }
+        }
+    })
+
 
-        )
+    $( "input[name$='sel-all']" ).change(function(){
+        rev=this.getAttribute("name")
+        rev=rev.match(/\d+/)[0]
+        uncheck_allInput()
+        patches=[]
+        boxes=$( "input[name^='patch_id']" )
+        if ( $(this).prop('checked') ){
+            for (i=0; i<boxes.length; ++i){
+                if (boxes[i].getAttribute("data-rev")==rev){
+                    p_id=boxes[i].getAttribute("name")
+                    p_id=p_id.match(/\d+/)[0]
+                    $(boxes[i]).prop('checked', true)
+                    insert_patchId(p_id)
+                }
+                seriesForms.style.display='block'
+            }
+            for (i=0; i<patchesInput.length; ++i){
+                $( patchesInput[i] ).prop('value', JSON.stringify(patches))
+            }
+        }
+        else{
+            seriesForms.style.display='none'
+            for (i=0; i<patchesInput.length; ++i){
+                $( patchesInput[i] ).prop('value', "")
+            }
+        }
     })
+
+    function insert_patchId(id){
+        if (!patches.includes(id)){
+            patches.push(id)
+        }
+    }
+
+    function remove_patchId(id){
+        if (patches.includes(id)){
+            index=patches.indexOf(id)
+            patches.splice(index, 1)
+       }
+    }
+
+    function uncheck_allInput(){
+        boxes=$( "input[name^='patch_id']" )
+        for (i=0; i<boxes.length; ++i){
+            $(boxes[i]).prop("checked", false)
+        }
+    }
+
+    function uncheck_allSel(){
+        sels=$( "input[name$='sel-all']" )
+        for (i=0; i<sels.length; ++i){
+            $(sels[i]).prop("checked", false)
+        }
+
+    }
+
 })
-- 
2.7.4


