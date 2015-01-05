Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B497E00931; Mon,  5 Jan 2015 06:02:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
X-Greylist: delayed 435 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Jan 2015 06:02:12 PST
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 778AFE008A6
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 06:02:12 -0800 (PST)
Received: from mail3.siemens.de (localhost [127.0.0.1])
	by david.siemens.de (8.14.3/8.14.3) with ESMTP id t05DsmYE022848
	for <yocto@yoctoproject.org>; Mon, 5 Jan 2015 14:54:49 +0100
Received: from localhost.localdomain (MD159NTC.ww002.siemens.net
	[139.16.79.114])
	by mail3.siemens.de (8.14.3/8.14.3) with ESMTP id t05DsmPY013506;
	Mon, 5 Jan 2015 14:54:48 +0100
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Mon,  5 Jan 2015 14:54:42 +0100
Message-Id: <1420466082-18006-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [yocto-docs][PATCH] Add missing quote
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
X-List-Received-Date: Mon, 05 Jan 2015 14:02:16 -0000


Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 9fd0fed..6106af3 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -7583,7 +7583,7 @@ Gateways via their Web Interfaces</ulink>"</emphasis>
             <ulink url='&YOCTO_DOCS_REF_URL;#var-SRCPV'><filename>SRCPV</filename></ulink>.
             Here is an example:
             <literallayout class='monospaced'>
-     PV = "1.2.3+git${SRCPV}
+     PV = "1.2.3+git${SRCPV}"
             </literallayout>
             Then, you can add the following to your
             <filename>local.conf</filename>:
-- 
1.7.10.4


