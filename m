Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AAA7E00DB5; Sun,  8 Sep 2019 19:03:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 688C0E00828
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 19:03:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8923qXN027780
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Sep 2019 19:03:53 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Sun, 8 Sep 2019 19:03:52 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Mon, 9 Sep 2019 10:03:49 +0800
Message-ID: <1567994629-16058-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-selinux][PATCH V2] selinux-autorelabel: disable enforcing mode before relabel
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
X-List-Received-Date: Mon, 09 Sep 2019 02:03:56 -0000
Content-Type: text/plain

The commit b0d31db104d9a4e94bc1409c2ffcc1d82f4a780f introduced an issue
when first boot with bootparams="selinux=1 enforcing=1". At first boot,
all files are unlabeled including /sbin/setfiles. The relabel operations
are not permitted under enforcing mode. So we need to disable enforcing
mode before relabel.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/selinux-autorelabel/selinux-autorelabel.sh           | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
index 154dad1..25b6921 100644
--- a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
+++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
@@ -3,16 +3,19 @@
 /usr/sbin/selinuxenabled 2>/dev/null || exit 0
 
 FIXFILES=/sbin/fixfiles
+SETENFORCE=/usr/sbin/setenforce
 
-if ! test -x ${FIXFILES}; then
-	echo "${FIXFILES} is missing in the system."
+for i in ${FIXFILES} ${SETENFORCE}; do
+	test -x $i && continue
+	echo "$i is missing in the system."
 	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
 	exit 1
-fi
+done
 
 # If /.autorelabel placed, the whole file system should be relabeled
 if [ -f /.autorelabel ]; then
 	echo "SELinux: /.autorelabel placed, filesystem will be relabeled..."
+	${SETENFORCE} 0
 	${FIXFILES} -F -f relabel
 	/bin/rm -f /.autorelabel
 	echo " * Relabel done, rebooting the system."
-- 
2.7.4


