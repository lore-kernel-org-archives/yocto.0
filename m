Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DEE3E00CBA; Wed,  6 Sep 2017 18:25:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9659EE00BB7
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 18:25:32 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Sep 2017 18:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,356,1500966000"; d="scan'208";a="146355990"
Received: from ukant-mobl1.amr.corp.intel.com (HELO
	jalamego-mobl3.amr.corp.intel.com) ([10.254.71.150])
	by orsmga005.jf.intel.com with ESMTP; 06 Sep 2017 18:25:30 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Sep 2017 20:25:19 -0500
Message-Id: <1504747519-7717-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] htdocs/js/series.js: Style active tab in series data bar
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
X-List-Received-Date: Thu, 07 Sep 2017 01:25:33 -0000

There is no visual indication on which is the active tab
at the Series data bar, providing a poor UX.

This change adds the "active" styling to the Series data bar.

[YOCTO #11886]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/js/series.js | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/htdocs/js/series.js b/htdocs/js/series.js
index 857d288..ebfbbdf 100644
--- a/htdocs/js/series.js
+++ b/htdocs/js/series.js
@@ -9,6 +9,7 @@ $(document).ready(function(){
     testsView=document.getElementById('tests_results')
     covContent=document.getElementsByClassName('content')[0]
     covTab=document.getElementById('cover-letter-tab')
+    patchesTab=document.getElementById('patches-tab')
     var patches = new Array()
     if ($( patchesInput[0] ).value){
         patches=json_decode($( patchesInput[0] ).value, true)
@@ -21,17 +22,21 @@ $(document).ready(function(){
     revTab.style.padding='15px'
     patchView.style.display='none'
     if (covContent){
+        covTab.classList.add('active')
         coverView.style.display='block'
         patchList.style.display='none'
     }
     else{
         covTab.innerHTML = '<a href="#" data-toggle="tooltip" title="No cover letter is available for this series.">Cover letter N/A</a>'
+        patchesTab.classList.add('active')
         coverView.style.display='none'
         patchList.style.display='block'
     }
     seriesForms.style.display='none'
 
-    document.getElementById('cover-letter-tab').onclick=function(){
+    covTab.onclick=function(){
+        covTab.classList.add('active')
+        patchesTab.classList.remove('active')
         coverView.style.display='block'
         patchView.style.display='none'
         patchList.style.display='none'
@@ -41,7 +46,9 @@ $(document).ready(function(){
         }
     }
 
-    document.getElementById('patches-tab').onclick=function(){
+    patchesTab.onclick=function(){
+        covTab.classList.remove('active')
+        patchesTab.classList.add('active')
         coverView.style.display='none'
         patchList.style.display='block'
         patchView.style.display="none"
-- 
2.7.4


