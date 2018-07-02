Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0575FE00DFE; Mon,  2 Jul 2018 16:00:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAEAE00D3D
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 16:00:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 16:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,300,1526367600"; d="scan'208";a="52165180"
Received: from nmunfye-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.227])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2018 16:00:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 10:58:49 +1200
Message-Id: <2774b95ad7f971714498b5d35885225af873da03.1530569567.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1530569567.git.paul.eggleton@linux.intel.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 5/7] update: ignore recommends when ordering layers
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
X-List-Received-Date: Mon, 02 Jul 2018 23:00:56 -0000

We don't actually need to consider recommended layers when preparing the
order - just the depends. If we do then we can get into circular
dependency situation e.g. currently with meta-intel and meta-intel-qat
where meta-intel recommends meta-intel-qat and meta-intel-qat depends on
meta-intel. (Likely the latter dependency is erroneous since the content
of meta-intel-qat doesn't appear to depend on meta-intel, but there
could be other scenarios where it is legitimate).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 06c61a79..a4b96e24 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -399,7 +399,7 @@ def main():
                     deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
                     recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
 
-                    deps_dict = utils.explode_dep_versions2(bitbakepath, deps + ' ' + recs)
+                    deps_dict = utils.explode_dep_versions2(bitbakepath, deps)
                     if len(deps_dict) == 0:
                         # No depends, add it firstly
                         layerquery_sorted.append(layer)
-- 
2.17.1


