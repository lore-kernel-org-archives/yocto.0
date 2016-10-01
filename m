Return-Path: <rabin.vincent@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67882E00E23; Sat,  1 Oct 2016 08:13:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08572E00E17
	for <yocto@yoctoproject.org>; Sat,  1 Oct 2016 08:13:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 09D97180E0;
	Sat,  1 Oct 2016 17:03:53 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id 3QO00NO16N5G; Sat,  1 Oct 2016 17:03:52 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 4FD1F180BA;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 437021E074;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 370A51E06E;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from lnxartpec.se.axis.com (lnxartpec.se.axis.com [10.88.4.9])
	by seth.se.axis.com (Postfix) with ESMTP id 2A863432;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: by lnxartpec.se.axis.com (Postfix, from userid 10564)
	id 2202480D56; Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
From: Rabin Vincent <rabin.vincent@axis.com>
To: seebs@seebs.net
Date: Sat,  1 Oct 2016 17:03:47 +0200
Message-Id: <1475334228-18978-1-git-send-email-rabin.vincent@axis.com>
X-Mailer: git-send-email 2.1.4
X-TM-AS-GCONF: 00
Cc: yocto@yoctoproject.org, Rabin Vincent <rabinv@axis.com>
Subject: [PATCH pseudo 1/2] test-umask: clear state before test
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
X-List-Received-Date: Sat, 01 Oct 2016 15:13:19 -0000

From: Rabin Vincent <rabinv@axis.com>

test-umask fails if run twice.  Make it remove the created temporary
files before the test.

Signed-off-by: Rabin Vincent <rabinv@axis.com>
---
 test/test-umask.sh | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/test-umask.sh b/test/test-umask.sh
index 48cb3b1..8ca4963 100755
--- a/test/test-umask.sh
+++ b/test/test-umask.sh
@@ -4,6 +4,8 @@ mode() {
 	ls -l "$1" | awk '{ print $1 }'
 }
 
+rm -f a b
+
 # Verify normal operation...
 umask 022
 touch a
-- 
2.1.4


