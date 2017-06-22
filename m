Return-Path: <Zhixiong.Chi@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0BC9E00BD6; Wed, 21 Jun 2017 19:18:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C8DEE00BBD
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 19:18:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5M2I2DR017926
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 19:18:02 -0700 (PDT)
Received: from pek-lpggp2.wrs.com (128.224.153.75) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 21 Jun 2017 19:18:01 -0700
From: Zhixiong Chi <zhixiong.chi@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 22 Jun 2017 10:17:23 +0800
Message-ID: <1498097843-257146-1-git-send-email-zhixiong.chi@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] initscripts: use the 'i' option for restorecon command
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
X-List-Received-Date: Thu, 22 Jun 2017 02:18:04 -0000
Content-Type: text/plain

Use the 'i' option for restorecon command to ignore the files that
don't exist when building project.

Signed-off-by: Zhixiong Chi <zhixiong.chi@windriver.com>
---
 recipes-core/initscripts/initscripts_1.0.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-core/initscripts/initscripts_1.0.bbappend
index f17cf07..0fc7a5e 100644
--- a/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -5,9 +5,9 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 do_install_append () {
 	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
 touch /var/log/lastlog
-test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/lib /run \
+test ! -x /sbin/restorecon || /sbin/restorecon -iRF /var/volatile/ /var/lib /run \
     /etc/resolv.conf /etc/adjtime
 EOF
-	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /sbin/restorecon -RF /run' \
+	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /sbin/restorecon -iRF /run' \
 	    ${D}${sysconfdir}/init.d/checkroot.sh
 }
-- 
1.9.1


