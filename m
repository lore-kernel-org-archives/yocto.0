Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B187BE008CF; Wed, 21 Jan 2015 01:49:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 613F8E00873
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 01:49:38 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0L9nb7W000931
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 01:49:37 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.136) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Wed, 21 Jan 2015 01:49:37 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 21 Jan 2015 17:49:36 +0800
Message-ID: <1421833776-10864-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] lxc: inherit enable-selinux
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
X-List-Received-Date: Wed, 21 Jan 2015 09:49:43 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

inherit enable-selinux to kill the warning that lxc rdepends on libselinux,
but it isn't a build dependency

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 recipes-containers/lxc/lxc_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-containers/lxc/lxc_%.bbappend

diff --git a/recipes-containers/lxc/lxc_%.bbappend b/recipes-containers/lxc/lxc_%.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/recipes-containers/lxc/lxc_%.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
-- 
2.1.0


