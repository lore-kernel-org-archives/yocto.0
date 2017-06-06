Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CB82E00BC1; Tue,  6 Jun 2017 08:46:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D132BE00A94
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 08:46:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jun 2017 08:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,306,1493708400"; d="scan'208";a="96200650"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.117])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2017 08:46:48 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Jun 2017 10:46:47 -0500
Message-Id: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: monserratx.sedeno.bustos@intel.com
Subject: [yocto-autobuilder][PATCHv2 1/5] buildsteps/BuildImages: Setproperty BUILDIMAGES
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
X-List-Received-Date: Tue, 06 Jun 2017 15:46:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In certain situations is need to know what images was built for
example the DAFT executes flashing over certain image.

[YOCTO #10604]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 30f7a18..7262fd3 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -146,6 +146,9 @@ class BuildImages(BitbakeShellCommand):
                 if self.minnowExists is None or self.minnowExists == "True":
                     self.command = ". ./oe-init-build-env; bitbake " + bitbakeflags + self.images
                     self.description = ["Building " + str(self.images)]
+        
+        self.setProperty("BUILDIMAGES", self.images)
+
         ShellCommand.start(self)
 
     def describe(self, done=False):
-- 
2.1.4


