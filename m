Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24BB3E00E2F; Fri, 14 Jun 2019 07:49:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B46A6E00DC6
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 07:49:32 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5EEnTK0013195
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Jun 2019 07:49:29 -0700 (PDT)
Received: from fidler.wrs.com (172.25.44.4) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.439.0;
	Fri, 14 Jun 2019 07:49:28 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Fri, 14 Jun 2019 10:48:51 -0400
Message-ID: <20190614144853.25839-3-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190614144853.25839-1-Randy.MacLeod@windriver.com>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH v2 2/4] use process groups when spawning
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
X-List-Received-Date: Fri, 14 Jun 2019 14:49:33 -0000
Content-Type: text/plain

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Rather than just killing the process we've swawned, set the process group
for spawned children and then kill the group of processes.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Upstream-Status: Pending [code being tested]
---
 utils.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index 9fab6f2..86dcdad 100644
--- a/utils.c
+++ b/utils.c
@@ -330,7 +330,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 			clock_gettime(clock, &time);
 			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
 				*timeouted = 1;
-				kill(pid, SIGKILL);
+				kill(-pid, SIGKILL);
 				waitflags = 0;
 			}
 		}
@@ -392,6 +392,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				rc = -1;
 				break;
 			} else if (child == 0) {
+				setsid();
 				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
 			} else {
 				int status;
-- 
2.17.0


