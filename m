Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C820E00A5B; Thu,  9 Jul 2015 01:04:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25FF6E009C8
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 01:04:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t6984wYe022611
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 Jul 2015 01:04:58 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.224.2; Thu, 9 Jul 2015 01:04:57 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Jul 2015 15:59:23 +0800
Message-ID: <1436428763-9988-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 1/1][meta-selinux] initscripts: fix contexts for /etc/resolv.conf, adjtime
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
X-List-Received-Date: Thu, 09 Jul 2015 08:04:59 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Restore contexts for /etc/{resolv.conf, adjtime}, they are created
dynamically and the incorrect contexts maybe prevent some programs
from valid accessing.

  /etc/resolv.conf: etc_t:SystemHigh -> etc_t:SystemLow
  /etc/adjtime:     etc_t:SystemHigh -> adjtime_t:SystemLow

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/initscripts/initscripts_1.0.bbappend | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-core/initscripts/initscripts_1.0.bbappend
index 462db6f..f17cf07 100644
--- a/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -5,7 +5,8 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 do_install_append () {
 	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
 touch /var/log/lastlog
-test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/lib /run
+test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/lib /run \
+    /etc/resolv.conf /etc/adjtime
 EOF
 	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /sbin/restorecon -RF /run' \
 	    ${D}${sysconfdir}/init.d/checkroot.sh
-- 
1.9.1


