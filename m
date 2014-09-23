Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E6CDE00899; Tue, 23 Sep 2014 10:26:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 487C8E0087C
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:26:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2014 10:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="577676695"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga001.jf.intel.com with SMTP; 23 Sep 2014 10:11:28 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 10:14:00 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 10:13:46 -0700
Message-Id: <1411492434-340-5-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
References: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 05/13] yocto-autobuilder-setup: Fix quotes in worker-init setup
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
X-List-Received-Date: Tue, 23 Sep 2014 17:26:32 -0000

From: California Sullivan <california.l.sullivan@intel.com>

Mixed single and double quotes on accident. Fixed.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 yocto-autobuilder-setup | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/yocto-autobuilder-setup b/yocto-autobuilder-setup
index a74d033..a71bda0 100644
--- a/yocto-autobuilder-setup
+++ b/yocto-autobuilder-setup
@@ -154,8 +154,8 @@ if [ -n "${config_check:+x}" ]; then
     sed -i "s/<PASS>/$password/g" ${PWD}/yocto-worker/buildbot.tac
     echo ""
     echo " Updating worker-init script used for google cloud building. "
-    sed -i "s/<HOST_ADDR>/$HOST_ADDR/' ${PWD}/bin/worker-init
-    sed -i "s/<PASS>/$password/' ${PWD}/bin/worker-init
+    sed -i "s/<HOST_ADDR>/$HOST_ADDR/" ${PWD}/bin/worker-init
+    sed -i "s/<PASS>/$password/" ${PWD}/bin/worker-init
     echo ""
     echo " If you wish to use your own generated username and password please "
     echo " modify the above files as needed. Please see the README for more "
-- 
1.9.1


