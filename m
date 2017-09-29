Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C44BE00D74; Thu, 28 Sep 2017 19:10:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9745BE00D70
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8T2AaFf005589
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Sep 2017 19:10:36 -0700 (PDT)
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:35 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:36 +0800
Message-ID: <1506650980-87720-4-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 4/8] Add version(-v) since we change return code ABI
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:37 -0000
Content-Type: text/plain

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 main.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/main.c b/main.c
index 505829c..d524200 100644
--- a/main.c
+++ b/main.c
@@ -41,10 +41,16 @@
 static inline void
 print_usage(FILE *stream, char *progname)
 {
-	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] [-x xml-filename]"
+	fprintf(stream, "Usage: %s [-v] [-d directory] [-l list] [-t timeout] [-x xml-filename]"
 			" [-h] [ptest1 ptest2 ...]\n", progname);
 }
 
+static inline void
+print_version(FILE *stream, char *progname)
+{
+	fprintf(stream, "version: 3.0.0\n");
+}
+
 int
 main(int argc, char *argv[])
 {
@@ -66,7 +72,7 @@ main(int argc, char *argv[])
 	opts.ptests = NULL;
 	opts.xml_filename = NULL;
 
-	while ((opt = getopt(argc, argv, "d:lt:x:h")) != -1) {
+	while ((opt = getopt(argc, argv, "vd:lt:x:h")) != -1) {
 		switch (opt) {
 			case 'd':
 				free(opts.directory);
@@ -82,6 +88,9 @@ main(int argc, char *argv[])
 			case 'h':
 				print_usage(stdout, argv[0]);
 				exit(0);
+			case 'v':
+				print_version(stdout, argv[0]);
+				exit(0);
 			break;
 			case 'x':
 				free(opts.xml_filename);
-- 
1.8.3.1


