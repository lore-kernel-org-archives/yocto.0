Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4868E00F18; Mon, 12 Sep 2016 06:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68E5E00F14
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 06:47:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 12 Sep 2016 06:47:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,322,1470726000"; d="scan'208";a="1028749464"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.10.196])
	by orsmga001.jf.intel.com with ESMTP; 12 Sep 2016 06:47:13 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Sep 2016 14:47:06 +0100
Message-Id: <1473688026-27506-1-git-send-email-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto-autobuilder][PATCH] checkvnc: use netstat to detect running vncserver
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
X-List-Received-Date: Mon, 12 Sep 2016 13:47:19 -0000

Using `pidof Xvnc` isn't sufficient because on debian-based distros
the vncserver script will start Xtightvnc.

Instead switch back to using netstat for the VNC tcp socket to
detect a running vncserver.

[YOCTO #10257]

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 bin/checkvnc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/checkvnc b/bin/checkvnc
index 728031f..d934dfa 100755
--- a/bin/checkvnc
+++ b/bin/checkvnc
@@ -2,7 +2,7 @@
 #
 # check if vnc server is running, and if not, cleanup and restart
 #
-pid=$(pidof Xvnc)
+netstat -tnl | grep :5901 > /dev/null
 if [ $? != 0 ]; then
     echo "Xvnc not running, attempting restart"
     vncserver -kill :1
-- 
2.7.4


