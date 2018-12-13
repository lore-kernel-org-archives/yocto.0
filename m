Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9EC9E00CB0; Thu, 13 Dec 2018 03:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E24CE00C9F
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 03:24:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 97D3B1857E;
	Thu, 13 Dec 2018 12:24:08 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id cbmOuetmJJJe; Thu, 13 Dec 2018 12:24:06 +0100 (CET)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 06AB718358;
	Thu, 13 Dec 2018 12:24:06 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E682A1E068;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DB2251E066;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id CEDCE2EC4;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id wBDBO5bU029798;
	Thu, 13 Dec 2018 12:24:05 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id wBDBO56D029797;
	Thu, 13 Dec 2018 12:24:05 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Dec 2018 12:23:04 +0100
Message-Id: <20181213112305.29609-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [PATCH 1/2] ref-manual: Document the fifth argument to PACKAGECONFIG
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
X-List-Received-Date: Thu, 13 Dec 2018 11:24:10 -0000

Support for adding runtime recommendations (RRECOMMENDS) using
PACKAGECONFIG was introduced in Rocko.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 documentation/ref-manual/ref-variables.xml | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 58c5418d16..7dc3a3f79a 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -10333,9 +10333,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     Here is the basic block structure:
                     <literallayout class='monospaced'>
      PACKAGECONFIG ??= "f1 f2 f3 ..."
-     PACKAGECONFIG[f1] = "--with-f1,--without-f1,build-deps-f1,rt-deps-f1"
-     PACKAGECONFIG[f2] = "--with-f2,--without-f2,build-deps-f2,rt-deps-f2"
-     PACKAGECONFIG[f3] = "--with-f3,--without-f3,build-deps-f3,rt-deps-f3"
+     PACKAGECONFIG[f1] = "--with-f1,--without-f1,build-deps-f1,rt-deps-f1,rt-recs-f1"
+     PACKAGECONFIG[f2] = "--with-f2,--without-f2,build-deps-f2,rt-deps-f2,rt-recs-f2"
+     PACKAGECONFIG[f3] = "--with-f3,--without-f3,build-deps-f3,rt-deps-f3,rt-recs-f3"
                     </literallayout>
                 </para>
 
@@ -10344,7 +10344,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     variable itself specifies a space-separated list of the
                     features to enable.
                     Following the features, you can determine the behavior of
-                    each feature by providing up to four order-dependent
+                    each feature by providing up to five order-dependent
                     arguments, which are separated by commas.
                     You can omit any argument you like but must retain the
                     separating commas.
@@ -10370,6 +10370,10 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                             (<link linkend='var-RDEPENDS'><filename>RDEPENDS</filename></link>)
                             that should be added if the feature is enabled.
                             </para></listitem>
+                        <listitem><para>Additional runtime recommendations
+                            (<link linkend='var-RRECOMMENDS'><filename>RRECOMMENDS</filename></link>)
+                            that should be added if the feature is enabled.
+                            </para></listitem>
                     </orderedlist>
                 </para>
 
-- 
2.12.0


