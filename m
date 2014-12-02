Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74611E008D9; Tue,  2 Dec 2014 10:34:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F417DE008C1
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 10:34:30 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 02 Dec 2014 10:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,502,1413270000"; d="scan'208";a="647050295"
Received: from unknown (HELO localhost.jf.intel.com) ([10.7.198.57])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2014 10:34:30 -0800
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue,  2 Dec 2014 10:31:40 -0500
Message-Id: <1417534303-20323-4-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
References: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 4/7] yocto-autobuilder-setup: Add worker init script setup
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
X-List-Received-Date: Tue, 02 Dec 2014 18:34:34 -0000

From: California Sullivan <california.l.sullivan@intel.com>

The password and address fields in the worker init script need to
be set up.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 yocto-autobuilder-setup | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/yocto-autobuilder-setup b/yocto-autobuilder-setup
index aee71ce..615deb4 100644
--- a/yocto-autobuilder-setup
+++ b/yocto-autobuilder-setup
@@ -60,6 +60,7 @@ export OPTIMIZED_GIT_CLONE=False
 export OGIT_TRASH_DIR=/tmp/yocto-autobuilder/git/trash
 export OGIT_TRASH_CRON_TIME="0 0 * * *"
 export OGIT_TRASH_NICE_LEVEL="19"
+HOST_ADDR=$(hostname -I)
 
 ##########################
 #
@@ -153,6 +154,10 @@ if [ -n "${config_check:+x}" ]; then
     sed -i "s/<USER>/$username/g" ${PWD}/yocto-worker/buildbot.tac
     sed -i "s/<PASS>/$password/g" ${PWD}/yocto-worker/buildbot.tac
     echo ""
+    echo " Updating worker-init script used for google cloud building. "
+    sed -i "s/<HOST_ADDR>/$HOST_ADDR/" ${PWD}/bin/worker-init
+    sed -i "s/<PASS>/$password/" ${PWD}/bin/worker-init
+    echo ""
     echo " If you wish to use your own generated username and password please "
     echo " modify the above files as needed. Please see the README for more "
     echo " information. "
-- 
1.9.3


