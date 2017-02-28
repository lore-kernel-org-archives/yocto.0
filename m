Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40AF8E00998; Tue, 28 Feb 2017 15:07:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4551E008D0
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 15:07:46 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2017 15:07:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,222,1484035200"; d="scan'208";a="1116798718"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.117])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2017 15:07:46 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Feb 2017 17:07:32 -0600
Message-Id: <1488323254-21800-2-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488323254-21800-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1488323254-21800-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 1/3] series.js: support shift-select range
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
X-List-Received-Date: Tue, 28 Feb 2017 23:07:48 -0000

Selecting multiple patches in a range at the series view must be
performed on one-by-one basis, providing apoor user-experience.

This change allows to select patches in a range by clicking the
first patch, then shift-clicking the last patch in the desired range.

[YOCTO #10819]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/js/series.js | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/htdocs/js/series.js b/htdocs/js/series.js
index c4bbb0e..6571b0e 100644
--- a/htdocs/js/series.js
+++ b/htdocs/js/series.js
@@ -82,6 +82,37 @@ $(document).ready(function(){
         })
     })
 
+    var lastChecked = null
+    var $chkboxes = $( "input[name^='patch_id']" )
+
+    $chkboxes.click(function(e){
+        if(!lastChecked) {
+            lastChecked = this;
+            return;
+        }
+
+        if(e.shiftKey) {
+            var start = $chkboxes.index(this);
+            var end = $chkboxes.index(lastChecked);
+            var min_val = Math.min(start,end)
+            var max_val = Math.max(start,end)+1
+
+            $chkboxes.slice(min_val, max_val).prop('checked', lastChecked.checked);
+            for (i=min_val; i<max_val; ++i){
+                p_id=$chkboxes[i].getAttribute("name")
+                p_id=p_id.match(/\d+/)[0]
+                if (lastChecked.checked){
+                    insert_patchId(p_id)
+                }
+                else{
+                   remove_patchId(p_id)
+                }
+            }
+        }
+
+        lastChecked = this;
+    })
+
     $( "input[name^='patch_id']" ).change(function(){
         patchView.style.display="none"
         uncheck_allSel()
-- 
1.9.1


