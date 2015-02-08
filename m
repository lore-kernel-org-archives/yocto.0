Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0045E00848; Sat,  7 Feb 2015 23:03:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,URIBL_BLACK
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5736AE007AB
	for <yocto@yoctoproject.org>; Sat,  7 Feb 2015 23:03:18 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id lj1so26602711pab.5
	for <yocto@yoctoproject.org>; Sat, 07 Feb 2015 23:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=8VRsQ9Vdnf4EA6E6fR8qypUtQ+GENnD0v5lKs89jSIM=;
	b=0LXcsWzRtuz0XFCBBO6RQHDvt5D/XVUvti411im8XmMnBplPwLvqQPybB0U4imVz8N
	DEMMNYa23NgD7GpZ77zu1b54KPDM4bHsrbKbPP6yr+L6PJcJ7aOtqhSmg9k8ziaXHtc3
	gHzueO/3LuPC5ncSmRsXIrMLgNKHKdwpgaOvnoqn6FnByjq20y4l+aUESdUR7Fm366MG
	zd+E43GX0FVHMlNtkrUOC0TohEFvldh+GDLRjaG3lyLdHXhIcwYbCucvD75P2QwoCGys
	j/uIdOmtkOVkT5SK5mXHR/FRSbvzPf3d9tMrejZovVK4sO/lCdHhn2z810Ig5Y4Rah41
	Us/Q==
X-Received: by 10.66.55.41 with SMTP id o9mr18550544pap.80.1423378998033;
	Sat, 07 Feb 2015 23:03:18 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	ib3sm12680278pbc.41.2015.02.07.23.03.15 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 Feb 2015 23:03:16 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  7 Feb 2015 23:03:12 -0800
Message-Id: <1423378992-14314-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] suricata: update to 2.0.6
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
X-List-Received-Date: Sun, 08 Feb 2015 07:03:25 -0000

fix new build issues with pcap-config
cleanup configure selection

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/libhtp_0.5.16.bb         |  2 +-
 .../no_libhtp_build.patch                          |  0
 .../suricata-2.0.6/no_pcap_pkgconf_check.patch     | 26 ++++++++++++++++
 .../suricata.yaml                                  |  0
 .../volatiles.03_suricata                          |  0
 recipes-security/suricata/suricata.inc             |  7 +++--
 .../{suricata_2.0.5.bb => suricata_2.0.6.bb}       | 35 ++++++++++------------
 7 files changed, 47 insertions(+), 23 deletions(-)
 rename recipes-security/suricata/{suricata-2.0.5 => suricata-2.0.6}/no_libhtp_build.patch (100%)
 create mode 100644 recipes-security/suricata/suricata-2.0.6/no_pcap_pkgconf_check.patch
 rename recipes-security/suricata/{suricata-2.0.5 => suricata-2.0.6}/suricata.yaml (100%)
 rename recipes-security/suricata/{suricata-2.0.5 => suricata-2.0.6}/volatiles.03_suricata (100%)
 rename recipes-security/suricata/{suricata_2.0.5.bb => suricata_2.0.6.bb} (51%)

diff --git a/recipes-security/suricata/libhtp_0.5.16.bb b/recipes-security/suricata/libhtp_0.5.16.bb
index ede9022..9d07133 100644
--- a/recipes-security/suricata/libhtp_0.5.16.bb
+++ b/recipes-security/suricata/libhtp_0.5.16.bb
@@ -8,6 +8,6 @@ inherit autotools pkgconfig
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
-S = "${WORKDIR}/suricata-2.0.5/${BPN}"
+S = "${WORKDIR}/suricata-2.0.6/${BPN}"
 
 RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/suricata-2.0.5/no_libhtp_build.patch b/recipes-security/suricata/suricata-2.0.6/no_libhtp_build.patch
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.5/no_libhtp_build.patch
rename to recipes-security/suricata/suricata-2.0.6/no_libhtp_build.patch
diff --git a/recipes-security/suricata/suricata-2.0.6/no_pcap_pkgconf_check.patch b/recipes-security/suricata/suricata-2.0.6/no_pcap_pkgconf_check.patch
new file mode 100644
index 0000000..ba9ff90
--- /dev/null
+++ b/recipes-security/suricata/suricata-2.0.6/no_pcap_pkgconf_check.patch
@@ -0,0 +1,26 @@
+Index: suricata-2.0.6/configure
+===================================================================
+--- suricata-2.0.6.orig/configure
++++ suricata-2.0.6/configure
+@@ -17372,8 +17372,6 @@ fi
+ 
+         if test "$HAVE_PCAP_CONFIG" = "no"; then
+             CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=1"
+-        else
+-            CFLAGS="${CFLAGS} `pcap-config --defines` `pcap-config --cflags` -DLIBPCAP_VERSION_MAJOR=1"
+         fi
+     else
+         CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=0"
+Index: suricata-2.0.6/configure.ac
+===================================================================
+--- suricata-2.0.6.orig/configure.ac
++++ suricata-2.0.6/configure.ac
+@@ -1060,8 +1060,6 @@
+         AC_PATH_PROG(HAVE_PCAP_CONFIG, pcap-config, "no")
+         if test "$HAVE_PCAP_CONFIG" = "no"; then
+             CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=1"
+-        else
+-            CFLAGS="${CFLAGS} `pcap-config --defines` `pcap-config --cflags` -DLIBPCAP_VERSION_MAJOR=1"
+         fi
+     else
+         CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=0"
diff --git a/recipes-security/suricata/suricata-2.0.5/suricata.yaml b/recipes-security/suricata/suricata-2.0.6/suricata.yaml
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.5/suricata.yaml
rename to recipes-security/suricata/suricata-2.0.6/suricata.yaml
diff --git a/recipes-security/suricata/suricata-2.0.5/volatiles.03_suricata b/recipes-security/suricata/suricata-2.0.6/volatiles.03_suricata
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.5/volatiles.03_suricata
rename to recipes-security/suricata/suricata-2.0.6/volatiles.03_suricata
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 1dcffcd..a7f95b1 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -1,7 +1,8 @@
+HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-2.0.5.tar.gz"
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-2.0.6.tar.gz"
 
-SRC_URI[md5sum] = "2ff10b929bf7d5fd4d345b0fd8f268a1"
-SRC_URI[sha256sum] = "57b1120e91bd4e348e1a4cee9eb7b197d05fc25169e062f1a11f5dd4b9322c60"
+SRC_URI[md5sum] = "14bfb3adc184d4da321c93ed9abae500"
+SRC_URI[sha256sum] = "e833e35ea3b6029bbdef81660af22e8f563494eac85d97618d761ce1b69c78ec"
diff --git a/recipes-security/suricata/suricata_2.0.5.bb b/recipes-security/suricata/suricata_2.0.6.bb
similarity index 51%
rename from recipes-security/suricata/suricata_2.0.5.bb
rename to recipes-security/suricata/suricata_2.0.6.bb
index f56c044..7e99791 100644
--- a/recipes-security/suricata/suricata_2.0.5.bb
+++ b/recipes-security/suricata/suricata_2.0.6.bb
@@ -5,37 +5,34 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
 
 SRC_URI += "file://no_libhtp_build.patch \
+            file://no_pcap_pkgconf_check.patch \
             file://volatiles.03_suricata \
             file://suricata.yaml \
         "
 
-DEPENDS = "libhtp file libpcre libyaml libpcap libcap-ng libnet libnfnetlink"
-
 inherit autotools-brokensep pkgconfig
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
+CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create=yes "
+
 EXTRA_OECONF += " --disable-debug \
     --enable-non-bundled-htp \
     --disable-gccmarch-native \
-    --with-libpcre-includes=${STAGING_INCDIR} \
-    --with-libpcre-libraries=${STAGING_LIBDIR} \
-    --with-libyaml-includes=${STAGING_INCDIR} \
-    --with-libyaml-libraries=${STAGING_LIBDIR} \
-    --with-libpcap-includes=${STAGING_INCDIR} \
-    --with-libpcap-libraries=${STAGING_LIBDIR} \
-    --with-libcap_ng-includes=${STAGING_INCDIR} \
-    --with-libcap_ng-libraries=${STAGING_LIBDIR} \
-    --with-libnfnetlink-includes=${STAGING_INCDIR} \
-    --with-libnfnetlink-libraries=${STAGING_LIBDIR} \
-    --with-libnet-includes=${STAGING_INCDIR} \
-    --with-libnet-libraries=${STAGING_LIBDIR} \
-    --with-libhtp-includes=${STAGING_INCDIR} \
-    --with-libhtp-libraries=${STAGING_LIBDIR} \
-    --with-libjansson-includes=${STAGING_INCDIR} \
-    --with-libjansson-libraries=${STAGING_LIBDIR} \
     "
 
+PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink"
+PACKAGECONFIG[htp] = "--with-libhtp-includes=${STAGING_INCDIR} --with-libhtp-libraries=${STAGING_LIBDIR}, ,libhtp,"
+PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
+PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR} --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
+PACKAGECONFIG[pcap] = "--with-libpcap-includes=${STAGING_INCDIR} --with-libpcap-libraries=${STAGING_LIBDIR}, ,libpcap ," 
+PACKAGECONFIG[cap-ng] = "--with-libcap_ng-includes=${STAGING_INCDIR} --with-libcap_ng-libraries=${STAGING_LIBDIR}, ,libcap-ng , "
+PACKAGECONFIG[net] = "--with-libnet-includes=${STAGING_INCDIR} --with-libnet-libraries=${STAGING_LIBDIR}, , libnet," 
+PACKAGECONFIG[nfnetlink] = "--with-libnfnetlink-includes=${STAGING_INCDIR} --with-libnfnetlink-libraries=${STAGING_LIBDIR}, ,libnfnetlink ,"
+
+PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-libjansson-libraries=${STAGING_LIBDIR},,jansson, jansson"
+PACKAGECONFIG[file] = ",,file, file"
+
 export logdir = "${localstatedir}/log"
 
 do_install_append () {
@@ -57,4 +54,4 @@ fi
 FILES_${PN} += "${sysconfdir}/suricata ${logdir}/suricata"
 FILES_${PN}-dev += "/usr/lib/python2.7/site-packages"
 
-RDEPENDS_${PN} += " file jansson"
+RDEPENDS_${PN} += " python"
-- 
1.9.1


