Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8449E00CB4; Wed,  6 Sep 2017 18:01:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5726BE00BB7
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 18:01:30 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Sep 2017 18:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,356,1500966000"; d="scan'208";a="126300862"
Received: from solsen-mobl4.amr.corp.intel.com (HELO
	jalamego-mobl3.amr.corp.intel.com) ([10.254.126.210])
	by orsmga004.jf.intel.com with ESMTP; 06 Sep 2017 18:01:29 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Sep 2017 20:01:24 -0500
Message-Id: <1504746084-5741-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] htdocs/js/series.js: Default to cover letter view only if one is available
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
X-List-Received-Date: Thu, 07 Sep 2017 01:01:31 -0000

Cover letter content section is displayed by default at the Series
view even if no cover letter is available, providing a poor UX.

This change makes the Cover letter content section to be displayed
by default if a cover letter is available, otherwise the Patches
list is to be displayed by default at the Series view and the Cover
letter tab will include a "N/A" legend and an informative tooltip
when hover over the mouse cursor.

[YOCTO #11887]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/js/series.js | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/htdocs/js/series.js b/htdocs/js/series.js
index e9516be..857d288 100644
--- a/htdocs/js/series.js
+++ b/htdocs/js/series.js
@@ -7,6 +7,8 @@ $(document).ready(function(){
     patchesInput=$( "input[name^='patches']" )
     seriesForms=document.getElementById('seriesForm')
     testsView=document.getElementById('tests_results')
+    covContent=document.getElementsByClassName('content')[0]
+    covTab=document.getElementById('cover-letter-tab')
     var patches = new Array()
     if ($( patchesInput[0] ).value){
         patches=json_decode($( patchesInput[0] ).value, true)
@@ -17,9 +19,16 @@ $(document).ready(function(){
     revTab.style.border='none'
     revTab.style.background='transparent'
     revTab.style.padding='15px'
-    coverView.style.display='block'
     patchView.style.display='none'
-    patchList.style.display='none'
+    if (covContent){
+        coverView.style.display='block'
+        patchList.style.display='none'
+    }
+    else{
+        covTab.innerHTML = '<a href="#" data-toggle="tooltip" title="No cover letter is available for this series.">Cover letter N/A</a>'
+        coverView.style.display='none'
+        patchList.style.display='block'
+    }
     seriesForms.style.display='none'
 
     document.getElementById('cover-letter-tab').onclick=function(){
-- 
2.7.4


