Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6186AE00E07; Fri, 14 Jun 2019 07:49:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427A0E00DBD
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 07:49:30 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5EEnQMm013108
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Jun 2019 07:49:28 -0700 (PDT)
Received: from fidler.wrs.com (172.25.44.4) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.439.0;
	Fri, 14 Jun 2019 07:49:19 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Fri, 14 Jun 2019 10:48:50 -0400
Message-ID: <20190614144853.25839-2-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190614144853.25839-1-Randy.MacLeod@windriver.com>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH v2 1/4] utils: Ensure stdout/stderr are flushed
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
X-List-Received-Date: Fri, 14 Jun 2019 14:49:31 -0000
Content-Type: text/plain

From: Richard Purdie <richard.purdie@linuxfoundation.org>

There is no guarantee that the data written with fwrite will be flushed to the
buffer. If stdout and stderr are the same thing, this could lead to interleaved
writes. The common case is stdout output so flush the output pipes when writing to
stderr. Also flush stdout before the function returns.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Upstream-Status: Pending [code being tested]
---
 utils.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/utils.c b/utils.c
index 6e453a1..9fab6f2 100644
--- a/utils.c
+++ b/utils.c
@@ -316,8 +316,11 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 			}
 
 			if (pfds[1].revents != 0) {
-				while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
+				while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0) {
+					fflush(fps[0]);
 					fwrite(buf, n, 1, fps[1]);
+					fflush(fps[1]);
+				}
 			}
 
 			clock_gettime(clock, &sentinel);
@@ -336,7 +339,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 			break;
 	}
 
-
+	fflush(fps[0]);
 	return status;
 }
 
-- 
2.17.0


