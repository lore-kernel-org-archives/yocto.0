Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83347E00DAE; Mon,  9 Jul 2018 20:18:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA228E00812
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 20:18:21 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jul 2018 20:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,332,1526367600"; d="scan'208";a="55661487"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.53])
	by orsmga008.jf.intel.com with ESMTP; 09 Jul 2018 20:18:18 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Tue, 10 Jul 2018 11:18:14 +0800
Message-Id: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder] master.cfg: Defaults autobuilder URL based on FQDN
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
X-List-Received-Date: Tue, 10 Jul 2018 03:18:22 -0000

This patch is to enable auto-assignments buildbot URL based on Hosts FQDN.
The socket module allows the retrieval on FQDN and constructs the entire
URL by default, this default settings can be overwritten in c['buildbotURL']
based on local administrator preferences.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 master.cfg | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/master.cfg b/master.cfg
index fca80d2..49ddeb4 100644
--- a/master.cfg
+++ b/master.cfg
@@ -4,6 +4,7 @@
 import os
 import imp
 import pkg_resources
+import socket
 
 from buildbot.plugins import *
 from buildbot.plugins import db
@@ -55,6 +56,7 @@ imp.reload(services)
 imp.reload(www)
 
 c = BuildmasterConfig = {}
+url = os.path.join('http://', socket.getfqdn() + ':' + str(config.web_port) + '/')
 
 # Disable usage reporting
 c['buildbotNetUsageData'] = None
@@ -76,6 +78,7 @@ c['www'] = www.www
 c['workers'] = workers.workers
 
 c['title'] = "Yocto Autobuilder"
-c['titleURL'] = "https://autobuilder.yoctoproject.org/main/"
+c['titleURL'] = url
 # visible location for internal web server
-c['buildbotURL'] = "https://autobuilder.yoctoproject.org/main/"
+# - Default c['buildbotURL'] = "https://autobuilder.yoctoproject.org/main/"
+c['buildbotURL'] = url
-- 
2.7.4


