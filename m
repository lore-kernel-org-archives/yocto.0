Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97C6AE009F5; Fri, 24 Apr 2015 13:29:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA44E009C3
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:29:37 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YlkED-0004Fb-Hx from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 24 Apr 2015 13:29:37 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 24 Apr 2015 21:29:35 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 23:29:30 +0300
Message-ID: <1429907371-14096-8-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
References: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 8/9] pacemaker: fix building with xml-config now being disabled
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
X-List-Received-Date: Fri, 24 Apr 2015 20:29:48 -0000
Content-Type: text/plain

OE-Core now forbids using of xml-config, thus pacemaker is now broken.
Rewrite configure.ac to use pkg-config instead of xml-config.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 .../pacemaker-fix-xml-config.patch                 | 53 ++++++++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb     |  3 +-
 2 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch
new file mode 100644
index 0000000..553c3f3
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-fix-xml-config.patch
@@ -0,0 +1,53 @@
+Index: pacemaker-1.0-Pacemaker-1.0.9.1/configure.ac
+===================================================================
+--- pacemaker-1.0-Pacemaker-1.0.9.1.orig/configure.ac
++++ pacemaker-1.0-Pacemaker-1.0.9.1/configure.ac
+@@ -22,6 +22,7 @@ dnl     checks for system services
+ AC_INIT(pacemaker, 1.0.9, pacemaker@oss.clusterlabs.org)
+ CRM_DTD_VERSION="1.0"
+ 
++m4_pattern_allow([PKG_FEATURES])
+ PKG_FEATURES=""
+ HB_PKG=heartbeat
+ 
+@@ -97,7 +98,7 @@ dnl ====================================
+ cc_supports_flag() {
+          local CFLAGS="$@"
+          AC_MSG_CHECKING(whether $CC supports "$@")
+-         AC_COMPILE_IFELSE([int main(){return 0;}] ,[RC=0; AC_MSG_RESULT(yes)],[RC=1; AC_MSG_RESULT(no)])
++         AC_COMPILE_IFELSE([AC_LANG_SOURCE([int main(){return 0;}])] ,[RC=0; AC_MSG_RESULT(yes)],[RC=1; AC_MSG_RESULT(no)])
+          return $RC
+ }
+ 
+@@ -502,7 +503,6 @@ AC_PATH_PROGS(TAR, tar)
+ AC_PATH_PROGS(MD5, md5)
+ AC_PATH_PROGS(TEST, test)
+ AC_PATH_PROGS(PKGCONFIG, pkg-config)
+-AC_PATH_PROGS(XML2CONFIG, xml2-config)
+ AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
+ AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
+ 
+@@ -671,17 +671,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
+ dnl AC_CHECK_HEADERS(netinet/ip6.h)
+ dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
+ 
+-AC_MSG_CHECKING(for special libxml2 includes)
+-if test "x$XML2CONFIG" = "x"; then
+-   AC_MSG_ERROR(libxml2 config not found)
+-else
+-   XML2HEAD="`$XML2CONFIG --cflags`"
+-   AC_MSG_RESULT($XML2HEAD)
+-   AC_CHECK_LIB(xml2, xmlReadMemory)
+-   AC_CHECK_LIB(xslt, xsltApplyStylesheet)
+-fi
++PKG_CHECK_MODULES([XML], [libxml-2.0])
++PKG_CHECK_MODULES([XSLT], [libxslt])
++
++AC_CHECK_LIB(xml2, xmlReadMemory)
++AC_CHECK_LIB(xslt, xsltApplyStylesheet)
+ 
+-CPPFLAGS="$CPPFLAGS $XML2HEAD"
++CPPFLAGS="$CPPFLAGS $XML_CFLAGS"
+ 
+ AC_CHECK_HEADERS(libxml/xpath.h)
+ AC_CHECK_HEADERS(libxslt/xslt.h)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
index e492102..174ebd1 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
@@ -25,12 +25,13 @@ SRC_URI = " \
     file://pacemaker-dont-use-help2man.patch \
     file://fix-header-defs-lookup.patch \
     file://pacemaker-remove-ptest-functionality.patch \
+    file://pacemaker-fix-xml-config.patch \
 	file://volatiles \
 	"
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
 SRC_URI[md5sum] = "103fb2e804be3f8ace17021c5d9ad15d"
 SRC_URI[sha256sum] = "aabfc9ee1c66804151d973d0ed0323798ffebe49e1c2219fa804dc6898a69a1e"
-inherit autotools-brokensep python-dir
+inherit autotools-brokensep python-dir pkgconfig
 
 S = "${WORKDIR}/pacemaker-1.0-Pacemaker-${PV}"
 
-- 
2.1.4


