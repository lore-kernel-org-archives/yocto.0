Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84223E00D25; Thu, 24 Jan 2019 23:44:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 178D2E00CE2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 23:41:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0P7dth0006569
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 24 Jan 2019 23:40:36 -0800
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Thu, 24 Jan 2019 23:40:19 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <yocto@yoctoproject.org>
Date: Fri, 25 Jan 2019 15:39:41 +0800
Message-ID: <1548401981-18083-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1548401981-18083-1-git-send-email-yi.zhao@windriver.com>
References: <1548401981-18083-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 2/2] selinux-image.bbclass: using append instead of += for IMAGE_PREPROCESS_COMMAND
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
X-List-Received-Date: Fri, 25 Jan 2019 07:44:15 -0000
Content-Type: text/plain

Fix AVC denied error when booting:

type=AVC msg=audit(1548055920.478:86): avc:  denied  { execute } for
pid=366 comm="audispd" path="/lib/ld-2.28.so" dev="vda" ino=7545
scontext=system_u:system_r:audisp_t:s15:c0.c1023
tcontext=system_u:object_r:unlabeled_t:s0 tclass=file permissive=1

type=AVC msg=audit(1548055920.478:87): avc:  denied  { open } for
pid=366 comm="audispd" path="/lib/libc-2.28.so" dev="vda" ino=7558
scontext=system_u:system_r:audisp_t:s15:c0.c1023
tcontext=system_u:object_r:unlabeled_t:s0 tclass=file permissive=1

When using "+=" for IMAGE_PREPROCESS_COMMAND, the selinux_set_labels
process would run before prelink process to set the security labels for
the files. But the label for /lib/libc-2.28.so and /lib/ld-2.28.so would
be changed after run prelink process. Use "_append" to make sure the
selinux_set_labels process run after prelink process.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 classes/selinux-image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
index 5174dc5..7f157d3 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -10,6 +10,6 @@ selinux_set_labels () {
 
 DEPENDS += "policycoreutils-native"
 
-IMAGE_PREPROCESS_COMMAND += "selinux_set_labels ;"
+IMAGE_PREPROCESS_COMMAND_append = " selinux_set_labels ;"
 
 inherit core-image
-- 
2.7.4


