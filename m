Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B7CE00443; Wed,  4 Jan 2017 11:44:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26745E0043B
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 11:44:34 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2017 11:44:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,317,1477983600"; d="scan'208";a="49546239"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by fmsmga005.fm.intel.com with ESMTP; 04 Jan 2017 11:44:34 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Jan 2017 13:47:19 -0600
Message-Id: <1483559240-7206-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: alexander.kanavin@intel.com
Subject: [[PATCH][RRS] 1/2] layerindex/tools/import_layer.py: Fix Openembedded VCS URL
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
X-List-Received-Date: Wed, 04 Jan 2017 19:44:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Since Openembedded cgit was upgrade so point to new url to reflect
the real URL.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 layerindex/tools/import_layer.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index b472d2a..5835467 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -28,9 +28,9 @@ def set_vcs_fields(layer, repoval):
     layer.vcs_url = repoval
     if repoval.startswith('git://git.openembedded.org/'):
         reponame = re.sub('^.*/', '', repoval)
-        layer.vcs_web_url = 'http://cgit.openembedded.org/cgit.cgi/' + reponame
-        layer.vcs_web_tree_base_url = 'http://cgit.openembedded.org/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
-        layer.vcs_web_file_base_url = 'http://cgit.openembedded.org/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
+        layer.vcs_web_url = 'http://cgit.openembedded.org/' + reponame
+        layer.vcs_web_tree_base_url = 'http://cgit.openembedded.org/' + reponame + '/tree/%path%?h=%branch%'
+        layer.vcs_web_file_base_url = 'http://cgit.openembedded.org/' + reponame + '/tree/%path%?h=%branch%'
     elif 'git.yoctoproject.org/' in repoval:
         reponame = re.sub('^.*/', '', repoval)
         layer.vcs_web_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame
-- 
2.1.4


