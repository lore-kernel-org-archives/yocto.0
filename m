Return-Path: <jeffrey.pautler@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D99B2E00D12; Tue, 31 Oct 2017 12:39:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53941E00D04
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 12:39:14 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v9VJadYN023298; Tue, 31 Oct 2017 14:38:51 -0500
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2dvtn3j6nk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 31 Oct 2017 14:38:51 -0500
Received: from us-aus-exch1.ni.corp.natinst.com
	(us-aus-exch1.ni.corp.natinst.com [130.164.68.11])
	by us-aus-skprod3.natinst.com (8.16.0.21/8.16.0.21) with ESMTPS id
	v9VJcoom019869
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2017 14:38:50 -0500
Received: from us-aus-exch7.ni.corp.natinst.com (130.164.68.17) by
	us-aus-exch1.ni.corp.natinst.com (130.164.68.11) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Tue, 31 Oct 2017 14:38:50 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exch7.ni.corp.natinst.com (130.164.68.17) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Tue, 31 Oct 2017 14:38:50 -0500
Received: from krustylinux.amer.corp.natinst.com (130.164.49.7) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Tue, 31 Oct 2017 14:38:50 -0500
From: Jeffrey Pautler <jeffrey.pautler@ni.com>
To: <yocto@yoctoproject.org>
Date: Tue, 31 Oct 2017 14:38:39 -0500
Message-ID: <1509478719-23960-1-git-send-email-jeffrey.pautler@ni.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-31_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=4 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710310237
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner] utils.c: Prefer monotonic clock to calculate elapsed time
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
X-List-Received-Date: Tue, 31 Oct 2017 19:39:16 -0000
Content-Type: text/plain

The current implementation uses the system clock to calculate how long
a ptest has been running with no output. If a ptest changes the system
clock as part of the test, that can cause the current implementation
to falsely trigger a timeout or miss an actual timeout. It is
preferrable to use a monotonic clock for calculating elapsed time in
order to avoid these issues.

This change tries to use the monotonic clock first and falls back to
the realtime clock if the monotonic clock is not supported.

Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
---
 utils.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/utils.c b/utils.c
index 6d65388..933eced 100644
--- a/utils.c
+++ b/utils.c
@@ -257,7 +257,8 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 		int timeout, int *fds, FILE **fps)
 {
 	struct pollfd pfds[2];
-	time_t sentinel;
+	struct timespec sentinel;
+	clockid_t clock = CLOCK_MONOTONIC;
 	int r;
 
 	int timeouted = 0;
@@ -269,7 +270,11 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 	pfds[1].fd = fds[1];
 	pfds[1].events = POLLIN;
 
-	sentinel = time(NULL);
+	if (clock_gettime(clock, &sentinel) == -1) {
+		clock = CLOCK_REALTIME;
+		clock_gettime(clock, &sentinel);
+	}
+
 	while (1) {
 		waitflags = WNOHANG;
 
@@ -288,11 +293,16 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 					fwrite(buf, n, 1, fps[1]);
 			}
 
-			sentinel = time(NULL);
-		} else if (timeout >= 0 && ((time(NULL) - sentinel) > timeout)) {
-			timeouted = 1;
-			kill(pid, SIGKILL);
-			waitflags = 0;
+			clock_gettime(clock, &sentinel);
+		} else if (timeout >= 0) {
+			struct timespec time;
+
+			clock_gettime(clock, &time);
+			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
+				timeouted = 1;
+				kill(pid, SIGKILL);
+				waitflags = 0;
+			}
 		}
 
 		if (waitpid(pid, &status, waitflags) == pid)
-- 
2.7.4


