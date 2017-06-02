Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53F65E00B76; Fri,  2 Jun 2017 00:59:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD25E00B63
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 00:59:48 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v527xlw4021227
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 2 Jun 2017 00:59:48 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Fri, 2 Jun 2017 00:59:47 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 2 Jun 2017 15:59:46 +0800
Message-ID: <20170602075946.31648-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] poky-cgl: avoid installing multiple syslogs
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
X-List-Received-Date: Fri, 02 Jun 2017 07:59:52 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

do_rootfs fails if multiple syslogs are installed:
| Error: package syslog-ng-3.8.1-r0.i586 conflicts with sysklogd provided
  by sysklogd-1.5.1-r0.i586

core-image-cgl requires packagegroup-core-full-cmdline which depends
on VIRTUAL-RUNTIME_syslog (default to sysklogd), so set the
VIRTUAL-RUNTIME_syslog in distro conf and no need to depends
on any syslog in packagegroup-cgl-applications, then we ensure
that only one syslog is installed to avoid conflicts.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf                      | 4 ++++
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 2 --
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
index 90cc82b..69f6200 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -5,3 +5,7 @@ DISTRO = "poky-cgl"
 
 IMAGE_CLASSES += "image_types_uboot"
 PREFERRED_PROVIDER_virtual/refpolicy="refpolicy-targeted"
+
+# we want to use rsyslog as the default syslog, but it's GPLv3, so need this
+# check to switch to syslog-ng if GLPv3 is blacklisted.
+VIRTUAL-RUNTIME_syslog ?= "${@bb.utils.contains('INCOMPATIBLE_LICENSE', 'GPLv3', 'syslog-ng', 'rsyslog', d)}"
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
index b566e2d..be36075 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
@@ -40,7 +40,6 @@ RDEPENDS_${PN} = " \
     quota \
     smartmontools \
     monit \
-    syslog-ng \
     ocfs2-tools \
     logcheck \
     samhain-client \
@@ -48,7 +47,6 @@ RDEPENDS_${PN} = " \
     audit \
     pam-passwdqc \
     libpam \
-    rsyslog \
     makedumpfile \
     "
 
-- 
2.11.0


