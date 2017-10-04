Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1EFAE00D53; Tue,  3 Oct 2017 17:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C559E00D51
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 17:51:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 03 Oct 2017 17:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,475,1500966000"; 
	d="scan'208,217";a="142395719"
Received: from kmsim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.147])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2017 17:51:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Oct 2017 13:51:03 +1300
Message-Id: <20171004005103.24756-3-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20171004005103.24756-1-paul.eggleton@linux.intel.com>
References: <20171004005103.24756-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] Show note if layer branch hasn't been indexed
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
X-List-Received-Date: Wed, 04 Oct 2017 00:51:48 -0000

For newly added layers it may not be immediately obvious that you have
to wait for it to be indexed (since the update script is usually run on
a scheduled basis). If the layer branch hasn't been indexed, add a note
mentioning this.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/layerindex/detail.html | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 144d5e8..0747421 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -167,6 +167,11 @@
             </div>  <!-- end of row-fluid -->
         </div> <!-- end of container-fluid -->
 
+        {% if not layerbranch.vcs_last_commit %}
+        <div class="alert alert-info">
+            <b>Note:</b> The content of this layer on branch {{ url_branch }} has not yet been indexed. Indexing should take place within a few hours.
+        </div>
+        {% endif %}
 
         <ul class="nav nav-tabs" id="layertabbar">
             {% if layerbranch.recipe_set.count > 0 %}
-- 
2.9.5


