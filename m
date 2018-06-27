Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4F05E011D5; Tue, 26 Jun 2018 22:10:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB90E00EB4
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 22:10:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w5R5AVg0027204
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 22:10:31 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.399.0; Tue, 26 Jun 2018 22:10:30 -0700
From: Changqing Li <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 27 Jun 2018 13:10:29 +0800
Message-ID: <1530076229-46216-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH] samhain: correct service status
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
X-List-Received-Date: Wed, 27 Jun 2018 05:10:32 -0000
Content-Type: text/plain

status get by "systemctl status samhain" is not correct.
It is active(exited) now. but actually, there is a dameon
running, it should be active(running). so change Type of
servive.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-security/samhain/files/samhain.service | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/samhain/files/samhain.service b/recipes-security/samhain/files/samhain.service
index e6dc3b9..e4f216a 100644
--- a/recipes-security/samhain/files/samhain.service
+++ b/recipes-security/samhain/files/samhain.service
@@ -3,7 +3,7 @@ Description=Samhain @MODE_NAME@ Daemon
 After=syslog.target network.target
 
 [Service]
-Type=oneshot
+Type=forking
 RemainAfterExit=yes
 ExecStart=@LIBDIR@/@SAMHAIN_HELPER@ start
 ExecStop=@LIBDIR@/@SAMHAIN_HELPER@ stop
-- 
2.7.4


