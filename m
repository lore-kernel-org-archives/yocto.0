Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23CDBE004AB
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 05:00:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Aug 2012 05:00:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,739,1336374000"; d="scan'208";a="177952267"
Received: from sentry (HELO localhost.localdomain) ([10.237.105.53])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2012 05:00:35 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 15:00:31 +0300
Message-Id: <1344513631-30219-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Upstream packages check for new versions
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
X-List-Received-Date: Thu, 09 Aug 2012 12:00:38 -0000

Mainly connectivity and multimedia packages.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   30 ++++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d34d980..e840c93 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -144,8 +144,7 @@ RECIPE_UPSTREAM_VERSION_pn-curl = "7.23.1"
 RECIPE_UPSTREAM_DATE_pn-curl = "Nov 17, 2011"
 RECIPE_UPSTREAM_VERSION_pn-cwautomacros = "20110201"
 RECIPE_UPSTREAM_DATE_pn-cwautomacros = "Feb 01, 2011"
-CHECK_DATE_pn-cwautomacros = "Jul 06, 2012"
-RECIPE_UPSTREAM_DATE_pn-cwautomacros = "Feb 01, 2011"
+CHECK_DATE_pn-cwautomacros = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-damageproto = "1.2.1"
 RECIPE_UPSTREAM_DATE_pn-damageproto = "Oct 29, 2010"
 RECIPE_UPSTREAM_VERSION_pn-dates = "0.4.11+git0+514185dc1f6588085fda41eb59898b93d0487dd4"
@@ -217,7 +216,7 @@ RECIPE_UPSTREAM_VERSION_pn-fixesproto = "5.0"
 RECIPE_UPSTREAM_DATE_pn-fixesproto = "Mar 8, 2011"
 RECIPE_UPSTREAM_VERSION_pn-flac="1.2.1"
 RECIPE_UPSTREAM_DATE_pn-flac= "Sep 8, 2007"
-CHECK_DATE_pn-flac = "Jul 24, 2012"
+CHECK_DATE_pn-flac = "Aug 09, 2012"
 RECIPE_UPSTREAM_DATE_pn-flac="Sep 16, 2007"
 RECIPE_UPSTREAM_VERSION_pn-flex = "2.5.35"
 RECIPE_UPSTREAM_DATE_pn-flex = "Feb 02, 2008"
@@ -345,7 +344,7 @@ RECIPE_UPSTREAM_DATE_pn-iptables = "Apr 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iputils="s20100418"
 RECIPE_UPSTREAM_VERSION_pn-irda-utils = "0.9.18"
 RECIPE_UPSTREAM_DATE_pn-irda-utils="Jul 10, 2006"
-CHECK_DATE_pn-irda-utils = "Jul 24, 2012"
+CHECK_DATE_pn-irda-utils = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iso-codes = "3.16"
 RECIPE_UPSTREAM_VERSION_pn-jpeg = "8c"
 CHECK_DATE_pn-jpeg = "Dec 24, 2011"
@@ -448,7 +447,7 @@ CHECK_DATE_pn-libgsmd = "Jul 06, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libgtkstylus = "0.5"
 RECIPE_UPSTREAM_VERSION_pn-libical = "0.48"
 RECIPE_UPSTREAM_DATE_pn-libical ="Dec 13, 2011"
-CHECK_DATE_pn-libical = "Jul 24, 2012"
+CHECK_DATE_pn-libical = "Aug 09, 2012"
 RECIPE_UPSTREAM_DATE_pn-libical = "Dec 13, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libice = "1.0.6"
 RECIPE_UPSTREAM_DATE_pn-libice = "Aug 01, 2009"
@@ -486,7 +485,7 @@ RECIPE_UPSTREAM_VERSION_pn-liboil = "0.3.17"
 RECIPE_UPSTREAM_DATE_pn-liboil = "Feb 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libomxil = "0.9.3"
 RECIPE_UPSTREAM_DATE_pn-libomxil = "May 20, 2011"
-CHECK_DATE_pn-libomxil = "Jul 24, 2012"
+CHECK_DATE_pn-libomxil = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libopensync-plugin-evolution2 = "0.39"
 RECIPE_UPSTREAM_VERSION_pn-libopensync = "0.39"
 RECIPE_UPSTREAM_DATE_pn-libowl-av = "Dec 01, 2008"
@@ -501,7 +500,7 @@ RECIPE_UPSTREAM_VERSION_pn-libpciaccess = "0.13.1"
 RECIPE_UPSTREAM_DATE_pn-libpciaccess = "Apr 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libpcre = "8.31"
 RECIPE_UPSTREAM_DATE_pn-libpcre = "Jul 23, 2012"
-CHECK_DATE_pn-libpcre = "Jul 24, 2012"
+CHECK_DATE_pn-libpcre = "Aug 09, 2012"
 RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks libmatchbox. Sticking with the 1.2.x series instead"
 RECIPE_UPSTREAM_VERSION_pn-libpng = "1.5.11"
 RECIPE_UPSTREAM_DATE_pn-libpng = "Jun 14, 2012"
@@ -514,7 +513,7 @@ RECIPE_UPSTREAM_VERSION_pn-librsvg = "2.32.1"
 RECIPE_UPSTREAM_DATE_pn-librsvg = "Nov 13, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libsamplerate0 = "0.1.8"
 RECIPE_UPSTREAM_DATE_pn-libsamplerate0 = "Aug 15, 2011"
-CHECK_DATE_pn-libsamplerate0 = "Jul 24, 2012"
+CHECK_DATE_pn-libsamplerate0 = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsdl = "1.2.15"
 CHECK_DATE_pn-libsdl = "Mar 14, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libsm = "1.1.1"
@@ -531,7 +530,7 @@ RECIPE_UPSTREAM_VERSION_pn-libtheora = "1.2.0"
 RECIPE_UPSTREAM_VERSION_pn-libtimedate-perl = "1.20"
 RECIPE_UPSTREAM_VERSION_pn-libtirpc = "0.2.2"
 RECIPE_UPSTREAM_DATE_pn-libtirpc = "May 02, 2011"
-CHECK_DATE_pn-libtirpc = "Jul 24, 2012"
+CHECK_DATE_pn-libtirpc = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libtool="2.4.2"
 CHECK_DATE_pn-libtool = "Nov 28, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libunique = "2.91.4"
@@ -672,7 +671,6 @@ RECIPE_UPSTREAM_VERSION_pn-mdadm = "3.2.5"
 RECIPE_UPSTREAM_DATE_pn-mdadm = "May 18, 2012"
 RECIPE_UPSTREAM_VERSION_pn-menu-cache = "0.3.3"
 RECIPE_UPSTREAM_DATE_pn-menu-cache = "May 20, 2012"
-CHECK_DATE_pn-minicom = "Jul 24, 2012"
 RECIPE_UPSTREAM_DATE_pn-mesa-dri="Jun 17, 2010"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-metacity = "2.30.3"
@@ -680,7 +678,7 @@ RECIPE_UPSTREAM_VERSION_pn-mingetty = "1.08"
 CHECK_DATE_pn-mingetty = "Jul 24, 2012"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.1"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 11, 2012"
-CHECK_DATE_pn-minicom = "Jul 06, 2012"
+CHECK_DATE_pn-minicom = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-mkfontdir="1.0.7"
 RECIPE_UPSTREAM_DATE_pn-mkfontdir="Feb 10, 2012"
 RECIPE_UPSTREAM_VERSION_pn-mkfontscale="1.10.0"
@@ -694,7 +692,7 @@ CHECK_DATE_pn-mpeg2dec = "May 24, 2011"
 RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
 RECIPE_UPSTREAM_VERSION_pn-mpfr="3.1.1"
 RECIPE_UPSTREAM_DATE_pn-mpfr = "Jul 04, 2012"
-CHECK_DATE_pn-mpfr = "Jul 06, 2012"
+CHECK_DATE_pn-mpfr = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-msynctool = "0.38"
 RECIPE_UPSTREAM_DATE_pn-msynctool = "Nov 11, 2008"
 RECIPE_UPSTREAM_DATE_pn-mtd-utils = "Dec 17, 2011"
@@ -827,7 +825,7 @@ RECIPE_UPSTREAM_DATE_pn-quicky = "Jun 18, 2008"
 RECIPE_UPSTREAM_VERSION_pn-quilt="0.60"
 RECIPE_UPSTREAM_VERSION_pn-quota = "4.00"
 RECIPE_UPSTREAM_DATE_pn-quota = "Aug 17, 2011"
-CHECK_DATE_pn-quota = "Jul 24, 2012"
+CHECK_DATE_pn-quota = "Aug 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-randrproto = "1.3.2"
 RECIPE_UPSTREAM_DATE_pn-randrproto = "Oct 29, 2010"
 RECIPE_UPSTREAM_VERSION_pn-readline = "6.2"
@@ -842,7 +840,7 @@ RECIPE_UPSTREAM_VERSION_pn-resourceproto = "1.2.0"
 RECIPE_UPSTREAM_DATE_pn-resourceproto = "May 27, 2011"
 RECIPE_UPSTREAM_VERSION_pn-rpcbind = "0.2.0"
 RECIPE_UPSTREAM_DATE_pn-rpcbind = "May 29, 2009"
-CHECK_DATE_pn-rpcbind = "Jul 24, 2012"
+CHECK_DATE_pn-rpcbind = "Aug 09, 2012"
 RECIPE_UPSTREAM_DATE_pn-rpcbind = "May 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-rpm = "5.1.10"
 RECIPE_UPSTREAM_DATE_pn-rpm = "Jan 01, 2010"
@@ -952,6 +950,8 @@ RECIPE_UPSTREAM_VERSION_pn-trapproto = "3.4.3"
 RECIPE_UPSTREAM_DATE_pn-trapproto = "Jan 01, 2006"
 RECIPE_UPSTREAM_VERSION_pn-tremor="20120122"
 RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
+CHECK_DATE_pn-tremor= "Aug 09, 2012"
+RECIPE_NO_UPDATE_REASON_pn-tremor= "SVN rev seems older than our recipe"
 RECIPE_UPSTREAM_VERSION_pn-tslib = "1.0"
 RECIPE_UPSTREAM_DATE_pn-tslib ="Sep 09, 2006"
 CHECK_DATE_pn-tslib = "Jul 06, 2012"
@@ -997,7 +997,7 @@ RECIPE_UPSTREAM_DATE_pn-which = "Aug 01, 2008"
 CHECK_DATE_pn-which = "Nov 22, 2011"
 RECIPE_UPSTREAM_VERSION_pn-wireless-tools = "29"
 RECIPE_UPSTREAM_DATE_pn-wireless-tools="Sep 18, 2007"
-CHECK_DATE_pn-wireless-tools = "Jul 24, 2012"
+CHECK_DATE_pn-wireless-tools = "Aug 09, 2012"
 RECIPE_UPSTREAM_DATE_pn-wpa-supplicant="Sep 07, 2010"
 RECIPE_UPSTREAM_VERSION_pn-wv = "1.2.1"
 RECIPE_UPSTREAM_DATE_pn-x11-common="Sep 22, 2008"
-- 
1.7.9.5


