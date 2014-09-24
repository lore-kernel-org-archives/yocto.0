Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3960CE00786; Tue, 23 Sep 2014 18:34:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E62DE0034C
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 18:33:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s8O1Xn4E003181
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 18:33:50 -0700 (PDT)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.141) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Tue, 23 Sep 2014 18:33:49 -0700
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 24 Sep 2014 09:33:48 +0800
Message-ID: <1411522429-30924-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] dhcp: remove the unrecognised without-selinux configuration warning
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
X-List-Received-Date: Wed, 24 Sep 2014 01:34:01 -0000
Content-Type: text/plain

From: "Roy.Li" <rongqing.li@windriver.com>

dhcp 4.3 has no selinux related configuration options, but it needs the
correct initscript when SELinux is enabled, so inherit selinux, not
inherit with-selinux

Signed-off-by: Roy.Li <rongqing.li@windriver.com>
---
 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
index 900c2aa..2d2232c 100644
--- a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
+++ b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
@@ -1,3 +1,3 @@
-inherit with-selinux
+inherit selinux
 
 FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
-- 
1.7.10.4


