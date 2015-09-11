Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE82E00DB2; Fri, 11 Sep 2015 04:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from thoth.sbs.de (thoth.sbs.de [192.35.17.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ACC4E00DC1
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 04:06:48 -0700 (PDT)
Received: from mail3.siemens.de (mail3.siemens.de [139.25.208.14])
	by thoth.sbs.de (8.15.2/8.15.2) with ESMTPS id t8BB6lbG021196
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 13:06:47 +0200
Received: from dev.sbt.siemens.com (MD1FZU9C.ww002.siemens.net [139.16.78.24])
	by mail3.siemens.de (8.15.1/8.15.1) with ESMTP id t8BB6lb9027186;
	Fri, 11 Sep 2015 13:06:47 +0200
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Sep 2015 13:06:42 +0200
Message-Id: <1441969602-30895-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
Subject: [yocto-docs][PATCH] ref-manual: Clarify PACKAGECONFIG in combination with inherit cmake
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
X-List-Received-Date: Fri, 11 Sep 2015 11:06:57 -0000

Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 documentation/ref-manual/ref-variables.xml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 4c4fc22..122b31d 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -8497,10 +8497,13 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                         <listitem><para>Extra arguments
                             that should be added to the configure script
                             argument list
-                            (<link linkend='var-EXTRA_OECONF'><filename>EXTRA_OECONF</filename></link>)
+                            (<link linkend='var-EXTRA_OECONF'><filename>EXTRA_OECONF</filename></link>
+                            or <link linkend='var-EXTRA_OECMAKE'><filename>EXTRA_OECMAKE</filename></link>
+                            for <filename>inherit cmake</filename> recipes)
                             if the feature is enabled.</para></listitem>
                         <listitem><para>Extra arguments
                             that should be added to <filename>EXTRA_OECONF</filename>
+                            or <filename>EXTRA_OECMAKE</filename>
                             if the feature is disabled.
                             </para></listitem>
                         <listitem><para>Additional build dependencies
-- 
2.1.4


