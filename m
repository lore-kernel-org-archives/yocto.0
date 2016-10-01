Return-Path: <rabin.vincent@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78DE1E00E21; Sat,  1 Oct 2016 08:13:19 -0700 (PDT)
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
X-Greylist: delayed 561 seconds by postgrey-1.32 at yocto-www;
	Sat, 01 Oct 2016 08:13:14 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 070E3E00E12
	for <yocto@yoctoproject.org>; Sat,  1 Oct 2016 08:13:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 0033D180BA;
	Sat,  1 Oct 2016 17:03:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id ZJXpydr3k0wN; Sat,  1 Oct 2016 17:03:52 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 4FCD4180AC;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 479A11E075;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 397451E072;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: from lnxartpec.se.axis.com (lnxartpec.se.axis.com [10.88.4.9])
	by seth.se.axis.com (Postfix) with ESMTP id 2B0F1443;
	Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
Received: by lnxartpec.se.axis.com (Postfix, from userid 10564)
	id 259C280D54; Sat,  1 Oct 2016 17:03:51 +0200 (CEST)
From: Rabin Vincent <rabin.vincent@axis.com>
To: seebs@seebs.net
Date: Sat,  1 Oct 2016 17:03:48 +0200
Message-Id: <1475334228-18978-2-git-send-email-rabin.vincent@axis.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475334228-18978-1-git-send-email-rabin.vincent@axis.com>
References: <1475334228-18978-1-git-send-email-rabin.vincent@axis.com>
X-TM-AS-GCONF: 00
Cc: yocto@yoctoproject.org, Rabin Vincent <rabinv@axis.com>
Subject: [PATCH pseudo 2/2] Reset the pseudo mutex on fork
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

When tclsh forks it can create new threads in the child process, in a
pthread_atfork() handler.  Running this under pseudo results in a
deadlock since the pseudo_lock() call in the new thread in the child
process premanently believes that the mutex is already locked by another
thread (which actually only existed in the parent process).

The provided test cases reproduces this.  Similar hangs can also been
seen in other cases, such as when attempting to use vim's cscope support
under pseudo.

Fix it by reseting the mutex in a pthread_atfork() child function.

Signed-off-by: Rabin Vincent <rabinv@axis.com>
---
 pseudo_wrappers.c       | 10 ++++++++++
 test/test-tclsh-fork.sh |  6 ++++++
 2 files changed, 16 insertions(+)
 create mode 100755 test/test-tclsh-fork.sh

diff --git a/pseudo_wrappers.c b/pseudo_wrappers.c
index 615ac9a..12bc541 100644
--- a/pseudo_wrappers.c
+++ b/pseudo_wrappers.c
@@ -98,8 +98,18 @@ extern int (*pseudo_real_lsetxattr)(const char *, const char *, const void *, si
 extern int (*pseudo_real_fsetxattr)(int, const char *, const void *, size_t, int);
 #endif
 
+static void libpseudo_atfork_child(void)
+{
+	pthread_mutex_init(&pseudo_mutex, NULL);
+	pseudo_mutex_recursion = 0;
+	pseudo_mutex_holder = 0;
+}
+
 static void
 _libpseudo_init(void) {
+	if (!_libpseudo_initted)
+		pthread_atfork(NULL, NULL, libpseudo_atfork_child);
+
 	pseudo_getlock();
 	pseudo_antimagic();
 	_libpseudo_initted = 1;
diff --git a/test/test-tclsh-fork.sh b/test/test-tclsh-fork.sh
new file mode 100755
index 0000000..e9dec66
--- /dev/null
+++ b/test/test-tclsh-fork.sh
@@ -0,0 +1,6 @@
+#!/bin/bash
+
+# Check that tclsh doesn't hang.  Note that the timeout is not needed to
+# reproduce the hang in tclsh, it's only there to ensure that this test script
+# doesn't hang in case of a failing test.
+timeout 2s bash -c "echo 'open {|true} r+' | tclsh"
-- 
2.1.4


