Return-Path: <Li.Zhou@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B025DE00BAF; Sun, 20 Jan 2019 18:29:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3ED3E00B3F
	for <yocto@yoctoproject.org>; Sun, 20 Jan 2019 18:29:14 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0L2TD09012741
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Jan 2019 18:29:13 -0800 (PST)
Received: from pek-lpggp2.wrs.com (128.224.153.75) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Sun, 20 Jan 2019 18:29:12 -0800
From: Li Zhou <li.zhou@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 10:11:36 +0800
Message-ID: <1548036696-53945-1-git-send-email-li.zhou@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [128.224.153.75]
X-Mailman-Approved-At: Mon, 21 Jan 2019 08:09:28 -0800
Cc: li.zhou@windriver.com
Subject: [ptest-runner] ptest-runner: make DEFAULT_DIRECTORY be able to be defined when compiling
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
X-List-Received-Date: Mon, 21 Jan 2019 02:29:15 -0000
Content-Type: text/plain

In yocto project ptest data are installed to
PTEST_PATH ?= "${libdir}/${BPN}/ptest". Here make DEFAULT_DIRECTORY
be able to be defined outside of c code (e.g. passed in by CFLAGS),
in case libdir isn't "/usr/lib", which will cause "No ptests found"
error when running "ptest-runner" command. We will pass libdir to
DEFAULT_DIRECTORY when compiling to avoid that error.

Signed-off-by: Li Zhou <li.zhou@windriver.com>
---
 main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/main.c b/main.c
index 83600b7..e963efe 100644
--- a/main.c
+++ b/main.c
@@ -37,7 +37,9 @@
 
 #include "utils.h"
 
+#ifndef DEFAULT_DIRECTORY
 #define DEFAULT_DIRECTORY "/usr/lib"
+#endif
 #define DEFAULT_TIMEOUT 300
 
 static inline void
-- 
1.9.1


