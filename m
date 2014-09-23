Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64752E00890; Tue, 23 Sep 2014 10:20:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C976E0086F
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:20:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Sep 2014 10:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="607285920"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga002.jf.intel.com with SMTP; 23 Sep 2014 10:11:33 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 10:14:05 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 10:13:50 -0700
Message-Id: <1411492434-340-9-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
References: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 09/13] ProvisionGoogleVM.py: Fix metadata's input name.
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
X-List-Received-Date: Tue, 23 Sep 2014 17:20:40 -0000

From: California Sullivan <california.l.sullivan@intel.com>

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
index cd35759..e7f488f 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
@@ -65,7 +65,7 @@ class ProvisionGoogleVM(ShellCommand):
             if self.startupscript is not None and self.startupscript != "":
                 self.command += " --metadata-from-file startup-script="+YOCTO_ABBASE+"/bin/"+self.startupscript
                 if self.metadata is not None and self.metadata != "":
-                    self.command += " --metadata " + self.scriptargs
+                    self.command += " --metadata " + self.metadata
             self.command += " 1> /dev/null";
 
             # Timeout needs to be passed to LoggingBuildStep as a kwarg
-- 
1.9.1


