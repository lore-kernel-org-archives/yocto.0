Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4AA8E013F7
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:14:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6P9E20C021049
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Jul 2012 02:14:03 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 25 Jul 2012 02:14:02 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <saul.wold@intel.com>
Date: Wed, 25 Jul 2012 17:13:53 +0800
Message-ID: <74ebb59699150f5442fc09b87e0e977161808df8.1343207401.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1343207401.git.kai.kang@windriver.com>
References: <cover.1343207401.git.kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/2] upstream_tracking.inc: update some packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 09:14:04 -0000
Content-Type: text/plain

Update packages mingetty, qmmp, liburi-perl and ltp's version info
and/or manual check date.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   15 ++++++++-------
 1 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 98e7d16..b881155 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -541,7 +541,8 @@ RECIPE_UPSTREAM_VERSION_pn-libunistring = "0.9.3"
 CHECK_DATE_pn-libunistring = "Jan 17, 2012"
 RECIPE_UPSTREAM_VERSION_pn-liburcu = "0.6.7"
 RECIPE_UPSTREAM_DATE_pn-liburcu = "Dec 12, 2011"
-RECIPE_UPSTREAM_VERSION_pn-liburi-perl = "1.59"
+RECIPE_UPSTREAM_VERSION_pn-liburi-perl = "1.60"
+RECIPE_UPSTREAM_DATE_pn-liburi-perl = "Mar 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-libusb-compat = "Jul 08, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libusb1 = "1.0.8"
 RECIPE_UPSTREAM_DATE_pn-libusb = "May 01, 2010"
@@ -646,9 +647,9 @@ CHECK_DATE_pn-lsbsetup = "Nov 28, 2011"
 RECIPE_UPSTREAM_VERSION_pn-lsbtest = "1.0"
 RECIPE_UPSTREAM_VERSION_pn-lsof="4.84"
 CHECK_DATE_pn-lsof = "Jul 06, 2011"
-RECIPE_UPSTREAM_VERSION_pn-ltp = "20120401"
-RECIPE_UPSTREAM_DATE_pn-ltp = "Apr 01, 2012"
-CHECK_DATE_pn-ltp = "Mar 13, 2012"
+RECIPE_UPSTREAM_VERSION_pn-ltp = "20120614"
+RECIPE_UPSTREAM_DATE_pn-ltp = "Jun 14, 2012"
+CHECK_DATE_pn-ltp = "Jul 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-lttng-ust = "Dec 15, 2011"
 RECIPE_UPSTREAM_VERSION_pn-lzo = "2.06"
 RECIPE_UPSTREAM_DATE_pn-lzo = "Aug 12, 2011"
@@ -676,7 +677,7 @@ RECIPE_UPSTREAM_DATE_pn-mesa-dri="Jun 17, 2010"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-metacity = "2.30.3"
 RECIPE_UPSTREAM_VERSION_pn-mingetty = "1.08"
-CHECK_DATE_pn-mingetty = "Jan 12, 2012"
+CHECK_DATE_pn-mingetty = "Jul 24, 2012"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.1"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 11, 2012"
 CHECK_DATE_pn-minicom = "Jul 06, 2012"
@@ -817,8 +818,8 @@ CHECK_DATE_pn-qemugl= "Jul 05, 2012"
 RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
 RECIPE_UPSTREAM_DATE_pn-qemugl="May 30, 2009"
 RECIPE_UPSTREAM_DATE_pn-qemu = "Oct 01, 2010"
-RECIPE_UPSTREAM_VERSION_pn-qmmp = "0.5.2"
-RECIPE_UPSTREAM_DATE_pn-qmmp = "Sep 02, 2011"
+RECIPE_UPSTREAM_VERSION_pn-qmmp = "0.6.1"
+RECIPE_UPSTREAM_DATE_pn-qmmp = "Jul 24, 2012"
 RECIPE_UPSTREAM_DATE_pn-qt-mobility-embedded = "May 10, 2011"
 RECIPE_UPSTREAM_DATE_pn-qt4-native = "Dec 15, 2011"
 RECIPE_UPSTREAM_VERSION_pn-quicky = "0.4"
-- 
1.7.5.4


