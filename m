Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B72BE00AAB; Tue,  2 Aug 2016 13:54:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78C65E00A6D
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 13:54:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2016 13:54:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,462,1464678000"; d="scan'208";a="1028575772"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.146])
	by orsmga002.jf.intel.com with ESMTP; 02 Aug 2016 13:54:14 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2016 13:54:10 -0700
Message-Id: <1470171250-25181-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] UploadToasterEventlog.py: show better message when step is skipped
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
X-List-Received-Date: Tue, 02 Aug 2016 20:54:15 -0000

When the UploadToasterEventlog is skipped it shows the unfriendly message
"'echo 'Skipping ...' in the AB status box. Set the description field so
it displays a better message.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../site-packages/autobuilder/buildsteps/UploadToasterEventlog.py        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py b/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
index 0fbb899..4230996 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
@@ -41,6 +41,7 @@ class UploadToasterEventlog(ShellCommand):
 
         if int(self.layerversion_core) < 5 or self.create_eventlog == "False":
             self.command = "echo 'Skipping Step.'"
+            self.description = ["Uploading toaster data skipped"]
         else:
             if os.environ.get('TOASTER_UPLOAD_URL') is not None:
                 self.filepath = os.path.join(os.path.join(
-- 
2.5.5


