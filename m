Return-Path: <martyn.welch@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57E1CE00CE2; Thu, 16 Nov 2017 07:06:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED7DE00AD7
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 07:06:23 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: martyn) with ESMTPSA id 0897626F185
From: Martyn Welch <martyn.welch@collabora.co.uk>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Thu, 16 Nov 2017 15:05:56 +0000
Message-Id: <1510844758-20290-1-git-send-email-martyn.welch@collabora.co.uk>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH v4 1/3] image.bbclass: add prohibited-paths QA test
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
X-List-Received-Date: Thu, 16 Nov 2017 15:06:25 -0000

Sometimes we wish to ensure that files or directories are not installed
somewhere that may prove detrimental to the operation of the system. For
example, this may be the case if files are placed in a directory that is
utilised as a mount point at run time, thus making them inaccessible once
when the mount point is being utilised.

Implement the prohibited paths QA test, which enables such locations to be
specified in a "IMAGE_QA_PROHIBITED_PATHS" variable. This implementation
allows for a colon separated list of paths to be provided. Shell style
wildcards can be used.

Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
---
Changes since v1:
 - Correcting author and SOB.

Changes since v2:
 - Reimplemented as image rather than package level QA test.
 - Changed variable from PROHIBITED_PATH to PROHIBITED_PATHS to better
   reflect its use.

Changes since v3:
 - Rename variable to IMAGE_QA_PROHIBITED_PATHS.
 - Use str.startswith().
 - Simplify if statement.

 meta/classes/image.bbclass | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index d93de02..9053ce3 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -296,6 +296,26 @@ python do_image_complete_setscene () {
 }
 addtask do_image_complete_setscene
 
+python image_check_prohibited_paths () {
+    import glob
+    from oe.utils import ImageQAFailed
+
+    rootfs = d.getVar('IMAGE_ROOTFS')
+
+    path = (d.getVar('IMAGE_QA_PROHIBITED_PATHS') or "")
+    if path != "":
+        for p in path.split(':'):
+            if not p.startswith('/'):
+                raise ImageQAFailed("IMAGE_QA_PROHIBITED_PATHS \"%s\" must be an absolute path" % p, image_check_prohibited_paths)
+
+            match = glob.glob("%s%s" % (rootfs, p))
+            if match:
+                loc = ", ".join(item.replace(rootfs, '') for item in match)
+                raise ImageQAFailed("Match(es) for IMAGE_QA_PROHIBITED_PATHS \"%s\": %s" % (p, loc), image_check_prohibited_paths)
+}
+
+IMAGE_QA_COMMANDS += "image_check_prohibited_paths"
+
 # Add image-level QA/sanity checks to IMAGE_QA_COMMANDS
 #
 # IMAGE_QA_COMMANDS += " \
-- 
2.1.4


