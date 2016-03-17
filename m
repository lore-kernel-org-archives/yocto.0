Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34A9EE00C38; Thu, 17 Mar 2016 13:44:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B63FE00C2B
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 13:44:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 17 Mar 2016 13:44:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,351,1455004800"; d="scan'208";a="913337037"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.48])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2016 13:44:03 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Mar 2016 14:44:23 -0600
Message-Id: <1458247463-9670-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: srifenbark@gmail.com
Subject: [PATCH][yocto-docs] distrodata: Add documentation about usage distrodata/checkpkg.
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
X-List-Received-Date: Thu, 17 Mar 2016 20:44:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #7894]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 documentation/ref-manual/ref-classes.xml | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 9625894..ab6d3d3 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -728,6 +728,25 @@
      INHERIT+= "distrodata"
         </literallayout>
     </para>
+
+    <para>
+	Two tasks are provided for the distrodata class distrodata and checkpkg,
+	this two tasks can be used against a simple recipe or a image one for
+	get all the recipes information of an image.
+
+	The task distrodata provides information about the recipe and the checkpkg
+	provides the same information as distrodata plus upstream version/status that
+	means what version of the software exists in upstream and if is un-updated/updated/
+	unknown.
+    </para>
+
+    <para>
+        For execute distrodata/checkpkg over an image:
+
+	$ bitbake core-image-minimal -c distrodata
+
+	The results are stored in $LOG_DIR by default $BUILD_DIR/tmp/log.
+    </para>
 </section>
 
 <section id='ref-classes-distutils'>
-- 
2.1.4


