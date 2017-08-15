Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EFAFE00D32; Tue, 15 Aug 2017 14:53:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 990B3E00D2E
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 14:53:07 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Aug 2017 14:53:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,379,1498546800"; d="scan'208";a="1004040016"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga003.jf.intel.com with ESMTP; 15 Aug 2017 14:53:06 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Aug 2017 14:53:06 -0700
Message-Id: <1502833986-2237-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /bin/checkvnc
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
X-List-Received-Date: Tue, 15 Aug 2017 21:53:08 -0000

[Yocto #11897]

The checkvnc script uses deprecated netstat command for finding vnc sessions.
This breaks on Centos, and will break on other OS as it is removed in the
future.

Drop the dependency on netstat and instead grep /proc/net/tcp for
active sessions on 5901 port.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/checkvnc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/checkvnc b/bin/checkvnc
index d934dfa..11e03bb 100755
--- a/bin/checkvnc
+++ b/bin/checkvnc
@@ -2,7 +2,7 @@
 #
 # check if vnc server is running, and if not, cleanup and restart
 #
-netstat -tnl | grep :5901 > /dev/null
+grep ':170D' /proc/net/tcp > /dev/null
 if [ $? != 0 ]; then
     echo "Xvnc not running, attempting restart"
     vncserver -kill :1
-- 
2.7.0


