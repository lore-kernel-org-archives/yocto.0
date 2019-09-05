Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D30E00DED; Thu,  5 Sep 2019 01:57:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 031DEE00798
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2019 01:57:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x858v7wN004595
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Sep 2019 01:57:07 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 5 Sep 2019 01:57:07 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 5 Sep 2019 16:57:04 +0800
Message-ID: <1567673824-29926-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode before relabel
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
X-List-Received-Date: Thu, 05 Sep 2019 08:57:12 -0000
Content-Type: text/plain

The commit b0d31db104d9a4e94bc1409c2ffcc1d82f4a780f introduced an issue
when first boot with bootparams="selinux=1 enforcing=1". At first boot,
all files are unlabeled including /sbin/fixfiles. The relabel operation
is not permitted under enforcing mode. Set /sys/fs/selinux/enforce to 0
to ensure the enforcing mode is disabled before relabel.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
index 154dad1..cb40971 100644
--- a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
+++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
@@ -13,6 +13,7 @@ fi
 # If /.autorelabel placed, the whole file system should be relabeled
 if [ -f /.autorelabel ]; then
 	echo "SELinux: /.autorelabel placed, filesystem will be relabeled..."
+	echo "0" > /sys/fs/selinux/enforce
 	${FIXFILES} -F -f relabel
 	/bin/rm -f /.autorelabel
 	echo " * Relabel done, rebooting the system."
-- 
2.7.4


