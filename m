Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CEA7E00D07; Thu,  4 Jan 2018 22:45:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2004AE00C02
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 22:45:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w056joNO017208
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 4 Jan 2018 22:45:51 -0800
Received: from localhost (128.224.162.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Thu, 4 Jan 2018 22:45:50 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Jan 2018 14:44:09 +0800
Message-ID: <1515134649-1792-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.134]
Subject: [meta-cgl][PATCH] pacemaker: set CLEANBROKEN to fix rebuild
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
X-List-Received-Date: Fri, 05 Jan 2018 06:45:53 -0000
Content-Type: text/plain

Rebuilding pacemaker would cause the following error:

  | NOTE: make clean
  | make: *** No rule to make target 'clean'.  Stop.
  | ERROR: oe_runmake failed

Fix this problem by setting CLEANBROKEN to "1".

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index 37c3b53..c2bc787 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -31,6 +31,8 @@ inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
 S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
 
+CLEANBROKEN = "1"
+
 PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
 PACKAGECONFIG[systemd] = "--enable-systemd,--disable-systemd,systemd"
 PACKAGECONFIG[libesmtp] = "--with-esmtp=yes,--with-esmtp=no,libesmtp"
-- 
2.7.4


