Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6456BE00DEF; Sun, 20 Oct 2019 15:50:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BDBE00B93
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2019 15:50:21 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2019 15:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,320,1566889200"; d="scan'208";a="398487251"
Received: from tchoongs-mobl.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.244])
	by fmsmga006.fm.intel.com with ESMTP; 20 Oct 2019 15:50:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 Oct 2019 11:49:52 +1300
Message-Id: <03d1ac1bbd3fa7f5a7f8d85a01639c19d5e144c1.1571611698.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1571611698.git.paul.eggleton@linux.intel.com>
References: <cover.1571611698.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 3/3] Fix cgit commit URL setting
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
X-List-Received-Date: Sun, 20 Oct 2019 22:50:24 -0000
Content-Transfer-Encoding: 8bit

Typo, there has to be a ? in front of the id or otherwise we don't get
linked to the right commit. This would have affected recently added layers
with a cgit web frontend.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/layerindex/editlayer.html | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/templates/layerindex/editlayer.html b/templates/layerindex/editlayer.html
index dd95ea30..e21e649d 100644
--- a/templates/layerindex/editlayer.html
+++ b/templates/layerindex/editlayer.html
@@ -286,7 +286,7 @@
                     if (e) {
                         $('#id_vcs_web_tree_base_url').val(vcs_web_url + '/tree/%path%?h=%branch%')
                         $('#id_vcs_web_file_base_url').val(vcs_web_url + '/tree/%path%?h=%branch%')
-                        $('#id_vcs_web_commit_url').val(vcs_web_url + '/commit/id=%hash%')
+                        $('#id_vcs_web_commit_url').val(vcs_web_url + '/commit/?id=%hash%')
                     }
                 }
                 else if (type == 'gitweb') {
-- 
2.20.1


