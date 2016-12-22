Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C683E00E00; Thu, 22 Dec 2016 12:56:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890CEE0073D
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 12:56:16 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP; 22 Dec 2016 12:56:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,390,1477983600"; d="scan'208";a="46190836"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga006.fm.intel.com with ESMTP; 22 Dec 2016 12:56:15 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 3EAFE6A4080;
	Thu, 22 Dec 2016 12:55:25 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Dec 2016 22:55:54 +0200
Message-Id: <1482440154-13598-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Cc: Ed Bartosh <eduard.bartosh@intel.com>
Subject: [patchtest][PATCH] patchtestdata: convert paths to absolute paths
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
X-List-Received-Date: Thu, 22 Dec 2016 20:56:17 -0000

From: Ed Bartosh <eduard.bartosh@intel.com>

Some tests fail if relative paths are provided to patchtest.
Converting --repo-dir and --start-dir arguments to abosolute
paths should make paths absolute, which is what patchset
code currently assumes.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 patchtestdata.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/patchtestdata.py b/patchtestdata.py
index 2254ccb..ec7fa1f 100644
--- a/patchtestdata.py
+++ b/patchtestdata.py
@@ -68,6 +68,7 @@ class PatchTestArgs(object):
 
         parser.add_argument('--repo-dir', '-r',
                             dest='repodir',
+                            type=os.path.abspath,
                             default=os.getcwd(),
                             help="Name of the repository where patch is merged")
 
@@ -79,6 +80,7 @@ class PatchTestArgs(object):
         startdir = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'tests')
         parser.add_argument('--start-dir', '-s',
                             dest='startdir',
+                            type=os.path.abspath,
                             default=startdir,
                             help="Directory to start discover")
 
-- 
2.1.4


