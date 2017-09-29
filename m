Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A94D0E00D8D; Thu, 28 Sep 2017 19:10:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36F15E00D85
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8T2AeHs005604
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Sep 2017 19:10:40 -0700 (PDT)
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:40 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:39 +0800
Message-ID: <1506650980-87720-7-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 7/8] Introduce a ret-code for timeouts
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:41 -0000
Content-Type: text/plain

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 utils.c | 39 +++++++++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/utils.c b/utils.c
index 0e97ac4..54ef89d 100644
--- a/utils.c
+++ b/utils.c
@@ -349,7 +349,7 @@ wait_child(const char *ptest_dir,
 		}
 		else if(WIFSIGNALED(status) && pid > 0) {
 			fprintf(fps[0], " Killed by signal\n");
-			return 127;
+			return 0x800000;
 		}
 		else
 			fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
@@ -570,17 +570,32 @@ xml_add_case(FILE *xh, int status, struct ptest_entry *ptest, char *buf)
 
 	/* fprintf should guarantee atomicity for fprintfs within the same process */
 	if (status != 0) {
-		fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
-			"\t\t<failure type='exit_code'" \
-			" message='run-ptest exited with code: %d'>" \
-			"</failure>\n" \
-			"\t\t<system-out>%s" \
-			"</system-out>\n" \
-			"\t</testcase>\n",
-			ptest->ptest,
-			basename(bname),
-			status,
-			buf);
+		if (status == 0x800000) {
+			fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
+				"\t\t<failure type='timeout'"		\
+				" message='Test HUNG, Killed due to timeout 0x%x'>" \
+				"</failure>\n"				\
+				"\t\t<system-out>%s"			\
+				"</system-out>\n"			\
+				"\t</testcase>\n",
+				ptest->ptest,
+				basename(bname),
+				status,
+				buf);
+		}
+		else {
+			fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
+				"\t\t<failure type='exit_code'"		\
+				" message='run-ptest exited with code: %d'>" \
+				"</failure>\n"				\
+				"\t\t<system-out>%s"			\
+				"</system-out>\n"			\
+				"\t</testcase>\n",
+				ptest->ptest,
+				basename(bname),
+				status,
+				buf);
+		}
 	}
 	else {
 		fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
-- 
1.8.3.1


