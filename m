Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DA2CE00DBA; Mon, 29 Jan 2018 11:04:30 -0800 (PST)
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
X-Greylist: delayed 388 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Jan 2018 11:04:28 PST
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27525E00D17
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 11:04:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 0B93B184A7;
	Mon, 29 Jan 2018 19:58:00 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id YUMXji15zq0j; Mon, 29 Jan 2018 19:57:59 +0100 (CET)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 5D92B18489;
	Mon, 29 Jan 2018 19:57:59 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4AC5F1E081;
	Mon, 29 Jan 2018 19:57:59 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3E8291E080;
	Mon, 29 Jan 2018 19:57:59 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Mon, 29 Jan 2018 19:57:59 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 325CF31BD;
	Mon, 29 Jan 2018 19:57:59 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w0TIvwui026020;
	Mon, 29 Jan 2018 19:57:58 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w0TIvw2w026019;
	Mon, 29 Jan 2018 19:57:58 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 29 Jan 2018 19:57:55 +0100
Message-Id: <20180129185755.25979-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [PATCH] ref-manual: Document the task feature of BUILDHISTORY_FEATURES
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
X-List-Received-Date: Mon, 29 Jan 2018 19:04:30 -0000

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 documentation/ref-manual/ref-variables.xml | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 521eaeaed2..70e5e3428b 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -1927,8 +1927,8 @@
                 </para>
 
                 <para>
-                    You can specify three features in the form of a
-                    space-separated list:
+                    You can specify features in the form of a space-separated
+                    list:
                     <itemizedlist>
                         <listitem><para><emphasis>image:</emphasis>
                             Analysis of the contents of images, which
@@ -1942,12 +1942,17 @@
                             Analysis of the contents of the software
                             development kit (SDK).
                             </para></listitem>
+                        <listitem><para><emphasis>task:</emphasis>
+                            Save output file signatures for sstate tasks.  This
+                            saves a file per task listing the SHA-256 checksums
+                            for each file staged, i.e., the output of the task.
+                            </para></listitem>
                     </itemizedlist>
                 </para>
 
                 <para>
                     By default, the <filename>buildhistory</filename> class
-                    enables all three features:
+                    enables the following features:
                     <literallayout class='monospaced'>
      BUILDHISTORY_FEATURES ?= "image package sdk"
                     </literallayout>
-- 
2.12.0


