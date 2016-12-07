Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CD7DE00D30; Wed,  7 Dec 2016 05:22:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D34E00D35
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:21:59 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 07 Dec 2016 05:21:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,310,1477983600"; d="scan'208";a="795284438"
Received: from heimdall.fi.intel.com ([10.237.68.151])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Dec 2016 05:21:58 -0800
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Dec 2016 15:22:56 +0200
Message-Id: <4945190005750757e428922731b6b29585d0bd06.1481116465.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <c26fc4ba4dab33f08414cb373a20f1ead517fd8a.1481116465.git.jussi.kukkonen@intel.com>
References: <c26fc4ba4dab33f08414cb373a20f1ead517fd8a.1481116465.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1481116465.git.jussi.kukkonen@intel.com>
References: <cover.1481116465.git.jussi.kukkonen@intel.com>
Subject: [matchbox-wm][PATCH 2/3] matchbox-remote: Fix execvp() argument
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
X-List-Received-Date: Wed, 07 Dec 2016 13:22:02 -0000

The second argument is a NULL-terminated array.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/matchbox-remote.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/src/matchbox-remote.c b/src/matchbox-remote.c
index 9f62523..e6cc076 100644
--- a/src/matchbox-remote.c
+++ b/src/matchbox-remote.c
@@ -143,11 +143,13 @@ mbcommand(int cmd_id, char *data) {
        /* Check if desktop is running */
        if (!XGetSelectionOwner(dpy, desktop_manager_atom))
 	 {
+	   char *exec_args[] = { NULL };
+
 	   fprintf(stderr, "Desktop not running, exiting...\n");
 	   switch (fork())
 	     {
 	     case 0:
-	       execvp ("mbdesktop", NULL);
+	       execvp ("mbdesktop", exec_args);
 	       break;
 	     case -1:
 	       fprintf(stderr, "failed to exec mbdesktop");
-- 
2.11.0


