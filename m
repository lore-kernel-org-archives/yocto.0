Return-Path: <zhenhua.luo@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2B1E004E5
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 02:28:33 -0800 (PST)
Received: from mail76-ch1-R.bigfish.com (10.43.68.248) by
	CH1EHSOBE015.bigfish.com (10.43.70.65) with Microsoft SMTP Server id
	14.1.225.22; Tue, 19 Nov 2013 10:28:32 +0000
Received: from mail76-ch1 (localhost [127.0.0.1])	by mail76-ch1-R.bigfish.com
	(Postfix) with ESMTP id B83D93405F9;
	Tue, 19 Nov 2013 10:28:32 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz936eIzz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h8275bh1de097hz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h1354h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh2222h224fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h2218h2216h1155h)
Received: from mail76-ch1 (localhost.localdomain [127.0.0.1]) by mail76-ch1
	(MessageSwitch) id 1384856910700692_18284;
	Tue, 19 Nov 2013 10:28:30 +0000 (UTC)
Received: from CH1EHSMHS010.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.243])	by mail76-ch1.bigfish.com (Postfix) with ESMTP id
	9CC6914004E;	Tue, 19 Nov 2013 10:28:30 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS010.bigfish.com
	(10.43.70.10) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Tue, 19 Nov 2013 10:28:30 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Tue, 19 Nov 2013 10:28:29 +0000
Received: from localhost.localdomain (B19537-03.ap.freescale.net
	[10.192.208.102])	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with
	ESMTP id rAJASP0c011506;	Tue, 19 Nov 2013 03:28:27 -0700
From: Zhenhua Luo <zhenhua.luo@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 19 Nov 2013 18:27:49 +0800
Message-ID: <1384856869-10658-1-git-send-email-zhenhua.luo@freescale.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
X-Mailman-Approved-At: Tue, 19 Nov 2013 08:43:11 -0800
Cc: b40290@freescale.com, b40527@freescale.com
Subject: [meta-cloud-services][PATCH] erlang: skip the host library path check to fix cross-compile issue
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
X-List-Received-Date: Tue, 19 Nov 2013 10:28:36 -0000
Content-Type: text/plain

Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
---
 .../erlang/erlang-fix-build-issue-in-Yocto.patch   | 25 ++++++++++++++++++++++
 .../recipes-devtools/erlang/erlang_R15B.bb         |  2 ++
 2 files changed, 27 insertions(+)
 create mode 100644 meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch

diff --git a/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch b/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch
new file mode 100644
index 0000000..2d4b7b5
--- /dev/null
+++ b/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-in-Yocto.patch
@@ -0,0 +1,25 @@
+Upstream-Status: Inappropriate [The fix is specific to Yocto build env]
+
+Skip host library path check to fix following Yocto insane check issue: 
+ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
+Rerun configure task after fixing this.
+
+Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
+
+--- otp_src_R15B/erts/configure.in.orig	2011-12-14 04:22:11.000000000 -0600
++++ otp_src_R15B/erts/configure.in	2013-11-19 04:15:33.694334610 -0600
+@@ -1469,10 +1469,10 @@
+ 	# ln -s libdlpi.so.1 $try_dlpi_lib/libdlpi.so
+ 	])
+    fi
+-   LDFLAGS="-L$try_dlpi_lib -R$try_dlpi_lib $LDFLAGS"
+-   unset -v try_dlpi_lib
+-   AC_MSG_NOTICE([Extending the search to include /lib])
+-   AC_CHECK_LIB(dlpi, dlpi_open)
++#   LDFLAGS="-L$try_dlpi_lib -R$try_dlpi_lib $LDFLAGS"
++#   unset -v try_dlpi_lib
++#   AC_MSG_NOTICE([Extending the search to include /lib])
++#   AC_CHECK_LIB(dlpi, dlpi_open)
+    if test x"$ac_cv_lib_dlpi_dlpi_open" = x"no"; then
+       LDFLAGS="$save_ldflags"
+    fi
diff --git a/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb b/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
index 68d144b..8d8e28b 100644
--- a/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
+++ b/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
@@ -9,6 +9,7 @@ EXTRA_OEMAKE = "BUILD_CC='${BUILD_CC}'"
 
 EXTRA_OECONF = "--with-ssl=${STAGING_DIR_HOST}${layout_exec_prefix}"
 
+EXTRA_OECONF_append_powerpc = " --disable-smp-support --disable-hipe"
 EXTRA_OECONF_append_arm = " --disable-smp-support --disable-hipe"
 EXTRA_OECONF_append_armeb = " --disable-smp-support --disable-hipe"
 EXTRA_OECONF_append_mipsel = " --disable-smp-support --disable-hipe"
@@ -55,5 +56,6 @@ FILES_${PN}-staticdev += "${libdir}/*/*/*/*.a ${libdir}/*/*/*/*/*.a ${libdir}/*/
 
 FILES_${PN}-libs-dbg += " ${libdir}/erlang/*/.debug ${libdir}/erlang/*/*/.debug ${libdir}/erlang/*/*/*/.debug ${libdir}/erlang/*/*/*/*/.debug ${libdir}/erlang/*/*/*/*/*/.debug "
 
+SRC_URI += "file://erlang-fix-build-issue-in-Yocto.patch"
 SRC_URI[md5sum] = "dd6c2a4807551b4a8a536067bde31d73"
 SRC_URI[sha256sum] = "5bc34fc34fc890f84bae7ff1f7c81fbec2c9aa28a0ef51a57d7a8192204d8aa2"
-- 
1.8.3.1



