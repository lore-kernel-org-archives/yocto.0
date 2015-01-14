Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A230E00824; Tue, 13 Jan 2015 21:30:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD91E004FF
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 21:30:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0E5U4tc020224
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 21:30:04 -0800 (PST)
Received: from pek-kkang-d2.wrs.com (128.224.163.146) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 13 Jan 2015 21:30:03 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 14 Jan 2015 13:30:03 +0800
Message-ID: <1421213403-27878-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] audit-systemd: allow manual stop as sysvinit
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
X-List-Received-Date: Wed, 14 Jan 2015 05:30:22 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The audit service should be manually stopped with systemd.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/audit/audit/auditd.service | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/audit/audit/auditd.service b/recipes-security/audit/audit/auditd.service
index adf4d3b..ebc0798 100644
--- a/recipes-security/audit/audit/auditd.service
+++ b/recipes-security/audit/audit/auditd.service
@@ -5,7 +5,6 @@ After=local-fs.target
 Conflicts=shutdown.target
 Before=sysinit.target shutdown.target
 After=systemd-tmpfiles-setup.service
-RefuseManualStop=yes
 
 [Service]
 ExecStart=/sbin/auditd -n
-- 
1.9.1


