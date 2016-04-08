Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60A13E00C7D; Thu,  7 Apr 2016 23:27:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 743E0E00C76
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 23:27:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u386RP42023724
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 7 Apr 2016 23:27:26 -0700
Received: from localhost (128.224.162.200) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Thu, 7 Apr 2016 23:27:25 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Apr 2016 14:27:22 +0800
Message-ID: <1460096842-24475-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.200]
Cc: srifenbark@gmail.com
Subject: [PATCH] dev-manual: set correct task name for do_kernel_configme
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
X-List-Received-Date: Fri, 08 Apr 2016 06:27:30 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index dc6ed46..d1c090b 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -5089,7 +5089,7 @@
                         This configuration file will be your baseline.
                         </para></listitem>
                     <listitem><para>Separately run the
-                        <filename>do_configme</filename> and
+                        <filename>do_kernel_configme</filename> and
                         <filename>do_kernel_configcheck</filename> tasks.
                         </para></listitem>
                     <listitem><para>Take the resulting list of files from the
@@ -5117,7 +5117,7 @@
                     <listitem><para>
                         After you have worked through the output of the kernel
                         configuration audit, you can re-run the
-                        <filename>do_configme</filename> and
+                        <filename>do_kernel_configme</filename> and
                         <filename>do_kernel_configcheck</filename> tasks to
                         see the results of your changes.
                         If you have more issues, you can deal with them as
-- 
1.9.1


