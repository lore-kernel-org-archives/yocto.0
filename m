Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B775E00D62; Thu, 28 Sep 2017 19:10:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA8EE00D5B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8T2AUxJ005586
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Sep 2017 19:10:31 -0700 (PDT)
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:30 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:33 +0800
Message-ID: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 1/8] Corrected return code interpreter
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:33 -0000
Content-Type: text/plain

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 utils.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/utils.c b/utils.c
index 6d65388..a07faec 100644
--- a/utils.c
+++ b/utils.c
@@ -300,9 +300,19 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 	}
 
 	if (status) {
-		fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
 		if (timeouted)
-			fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
+			fprintf(fps[0], "TIMEOUT: %s ", ptest_dir);
+
+		if(WIFEXITED(status)) {
+			fprintf(fps[0], "\nERROR: Exit status is %d\n", WEXITSTATUS(status));
+			return WEXITSTATUS(status);
+		}
+		else if(WIFSIGNALED(status)) {
+			fprintf(fps[0], " Killed by signal\n");
+			return 127;
+		}
+		else
+			fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
 	}
 
 	return status;
-- 
1.8.3.1


