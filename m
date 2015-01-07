Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 193D2E008E5; Wed,  7 Jan 2015 07:24:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950D9E0059E
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 07:24:13 -0800 (PST)
Received: from mail3.siemens.de (localhost [127.0.0.1])
	by david.siemens.de (8.14.3/8.14.3) with ESMTP id t07FOCnl028463
	for <yocto@yoctoproject.org>; Wed, 7 Jan 2015 16:24:12 +0100
Received: from localhost.localdomain (MD159NTC.ww002.siemens.net
	[139.16.79.114])
	by mail3.siemens.de (8.14.3/8.14.3) with ESMTP id t07FOBWu006679;
	Wed, 7 Jan 2015 16:24:11 +0100
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Jan 2015 16:24:06 +0100
Message-Id: <1420644247-2077-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [yocto-docs][PATCHv2 1/2] ref-manual: Document USE_DEVFS variable
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
X-List-Received-Date: Wed, 07 Jan 2015 15:24:21 -0000

Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 documentation/ref-manual/ref-variables.xml |   17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index e3272fe..425d33a 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -11199,6 +11199,23 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-USE_DEVFS'><glossterm><imagedata fileref="figures/define-generic.png" />USE_DEVFS</glossterm>
+            <info>
+               USE_DEVFS[doc] = "Determines if devtmpfs is used for /dev population."
+            </info>
+            <glossdef>
+                <para>
+                    Determines if <filename>devtmpfs</filename> is used for <filename>/dev</filename> population.
+                    The default value used for <filename>USE_DEVFS</filename>
+                    is "1" when no default value is specifically set.
+                    Typically, you would set <filename>USE_DEVFS</filename>
+                    to "0" if you like to have a statically-populated <filename>/dev</filename>
+                    directory. See: <ulink url='&YOCTO_DOCS_DEV_URL;#selecting-dev-manager'>Development Manual</ulink>
+                    for more information on <filename>/dev</filename> population.
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-USE_VT'><glossterm><imagedata fileref="figures/define-generic.png" />USE_VT</glossterm>
             <info>
                USE_VT[doc] = "When using SysVinit, determines whether or not to run a getty on any virtual terminals in order to enable logging in through those terminals."
-- 
1.7.10.4


