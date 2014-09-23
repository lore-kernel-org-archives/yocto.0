Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6FEE00890; Tue, 23 Sep 2014 10:26:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39050E00875
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:26:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2014 10:05:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="577676739"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga001.jf.intel.com with SMTP; 23 Sep 2014 10:11:31 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 10:14:03 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 10:13:49 -0700
Message-Id: <1411492434-340-8-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
References: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 08/13] ProvisionGoogleVM.py: startup script now looks in bin directory of autobuilder.
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
X-List-Received-Date: Tue, 23 Sep 2014 17:26:31 -0000

From: California Sullivan <california.l.sullivan@intel.com>

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 .../site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py          | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
index fb667dd..cd35759 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
@@ -10,6 +10,7 @@ __maintainer__ = "Elizabeth Flanagan"
 __email__ = "elizabeth.flanagan@intel.com"
 '''
 
+from autobuilder.config import *
 from buildbot.steps.shell import ShellCommand
 
 class ProvisionGoogleVM(ShellCommand):
@@ -62,7 +63,7 @@ class ProvisionGoogleVM(ShellCommand):
             if self.network is not None and self.network != "":
                 self.command += " --network " + self.network
             if self.startupscript is not None and self.startupscript != "":
-                self.command += " --metadata-from-file startup-script=" + self.startupscript
+                self.command += " --metadata-from-file startup-script="+YOCTO_ABBASE+"/bin/"+self.startupscript
                 if self.metadata is not None and self.metadata != "":
                     self.command += " --metadata " + self.scriptargs
             self.command += " 1> /dev/null";
-- 
1.9.1


