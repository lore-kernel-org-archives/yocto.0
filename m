Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB84BE00949; Tue, 10 Feb 2015 00:21:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8AEE00596
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 00:21:11 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t1A8LAv7006913
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 00:21:10 -0800 (PST)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Tue, 10 Feb 2015 00:21:10 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Feb 2015 16:17:29 +0800
Message-ID: <1423556249-25916-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] audit: sleep to wait for stop finished
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
X-List-Received-Date: Tue, 10 Feb 2015 08:21:16 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

This issue only occurs on Board Target that boot with local disk.

Steps to reproduce the issue:

$ for x in `seq 1 10`; do /etc/init.d/auditd restart; done
$ ps -e | grep auditd

There will be many auditd processes running.

If stop is not finished completely, then start will generate two
auditd processes in the case.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/audit/audit/auditd | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-security/audit/audit/auditd b/recipes-security/audit/audit/auditd
index fcd96c9..bac9a77 100755
--- a/recipes-security/audit/audit/auditd
+++ b/recipes-security/audit/audit/auditd
@@ -73,6 +73,10 @@ do_stop()
 		no|NO) ;;
 		*) /sbin/auditctl -D >/dev/null ;;
 	esac
+
+	# Waiting for start-stop-daemon finished
+	sleep 1
+
 	return "$RETVAL"
 }
 
-- 
1.9.1


