Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C24CE00DD1; Fri, 26 Jan 2018 19:07:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A46E00D94
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 19:07:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jan 2018 19:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,419,1511856000"; d="scan'208";a="22659031"
Received: from timo-fedora.jf.intel.com ([10.7.159.66])
	by orsmga003.jf.intel.com with ESMTP; 26 Jan 2018 19:07:27 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Jan 2018 19:15:50 -0800
Message-Id: <20180127031550.27764-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [eclipse-poky][PATCH] README.txt: update contributor instructions to use eclipse-poky
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
X-List-Received-Date: Sat, 27 Jan 2018 03:07:29 -0000

Since we have now created an eclipse-poky mailing list, all
patches and discussion should be directed there.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 README.txt | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/README.txt b/README.txt
index cc5b890c5a8..3049c595362 100644
--- a/README.txt
+++ b/README.txt
@@ -188,13 +188,22 @@ Part V. Sharing with the Community
 V.1 Sending Patches to the Mailing List
 
   Any changes to the eclipse-poky plugin should be sent as patches to
-  the Yocto Project mailing list (yocto@yoctoproject.org), with
+  the Eclipse Poky  mailing list (eclipse-poky@yoctoproject.org), with
 
-    --subject-prefix="eclipse-poky][PATCH"
+    --subject-prefix="<eclipse-revision>][PATCH"
+
+  where <eclipse-revision> might be "neon" or "oxygen". Also if, the bug
+  affects a particular Yocto Project release, include the release name
+  in the subject prefix:
+
+    --subject-prefix="<eclipse-revision>][<yocto-project-release-name>][PATCH"
+
+  where <yocto-project-release-name> might be "morty", "pyro" or "rocko" for
+  instance.
 
   This is a subscriber only list, so you will need to sign up for access at:
 
-    https://lists.yoctoproject.org/listinfo/yocto
+    https://lists.yoctoproject.org/listinfo/eclipse-poky
 
   Patches should follow the same guidelines that are used for other parts of
   the Yocto Project and Open Embedded code-base:
-- 
2.13.6


