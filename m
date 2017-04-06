Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBAD1E00ACE; Thu,  6 Apr 2017 14:01:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F3C5E00AA7
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 14:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491512481; x=1523048481;
	h=from:to:cc:subject:date:message-id:mime-version:
	content-transfer-encoding;
	bh=VFkyd3ZpYFd+Ry9jm02X5xCorvOI0skVemeQMlc44GM=;
	b=JlB6utnif9yl8HhxlmHmT+lzHTaZc8fJI4Ds8uIU0r6JtExin9ZDPZpJ
	RXMt5ksFdNkX7NcYffMhCyi/oroT1g==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Apr 2017 14:01:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,161,1488873600"; d="scan'208";a="842934228"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.124])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Apr 2017 14:01:18 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Apr 2017 16:05:24 -0500
Message-Id: <1491512724-27571-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: schuler.christian@siemens.com
Subject: [[PATCH][ptest-runner]] utils.c: Improve user notice of TIMEOUT
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
X-List-Received-Date: Thu, 06 Apr 2017 21:01:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Print exit status before TIMEOUT to give clear information
to the user about exit status before TIMEOUT and END.

[YOCTO #10842]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 utils.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/utils.c b/utils.c
index 77427e0..e5677ec 100644
--- a/utils.c
+++ b/utils.c
@@ -260,6 +260,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 	time_t sentinel;
 	int r;
 
+	int timeouted = 0;
 	int status;
 	int waitflags;
 
@@ -289,7 +290,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 			sentinel = time(NULL);
 		} else if (timeout >= 0 && ((time(NULL) - sentinel) > timeout)) {
-			fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
+			timeouted = 1;
 			kill(pid, SIGKILL);
 			waitflags = 0;
 		}
@@ -298,6 +299,12 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 			break;
 	}
 
+	if (status) {
+		fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
+		if (timeouted)
+			fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
+	}
+
 	return status;
 }
 
@@ -351,10 +358,9 @@ run_ptests(struct ptest_list *head, int timeout, const char *progname,
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
 						timeout, fds, fps);
-				if (status) {
-					fprintf(fp, "ERROR: Exit status is %d\n", status);
+				if (status)
 					rc += 1;
-				}
+
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
 			}
-- 
2.1.4


