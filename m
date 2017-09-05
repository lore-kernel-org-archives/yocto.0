Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DE7AE00CC1; Mon,  4 Sep 2017 23:00:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED234E00CA2
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v85600pg007386
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Sep 2017 23:00:01 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:00 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:40 -0700
Message-ID: <20170905055958.54697-3-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 03/21] libselinux: uprev to 2.7 (20170804)
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:04 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Specify LIBSEPOLA to fix build error:
  make[1]: *** No rule to make target `/usr/lib/libsepol.a',
  needed by `python-2.7audit2why.so'.  Stop.

Add python-importlib to RDEPENDS_${PN}-python.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/libselinux.inc                           | 3 ++-
 recipes-security/selinux/{libselinux_2.6.bb => libselinux_2.7.bb} | 6 +++---
 2 files changed, 5 insertions(+), 4 deletions(-)
 rename recipes-security/selinux/{libselinux_2.6.bb => libselinux_2.7.bb} (72%)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index ad00d10..bd5ce8d 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -8,6 +8,7 @@ LICENSE = "PD"
 inherit lib_package pythonnative
 
 DEPENDS += "libsepol python libpcre swig-native"
+RDEPENDS_${PN}-python += "python-importlib"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
@@ -21,7 +22,7 @@ def get_policyconfigarch(d):
     return "ARCH=%s" % (target)
 EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 
-EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre'"
+EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
 
 do_compile_append() {
     oe_runmake pywrap -j1 \
diff --git a/recipes-security/selinux/libselinux_2.6.bb b/recipes-security/selinux/libselinux_2.7.bb
similarity index 72%
rename from recipes-security/selinux/libselinux_2.6.bb
rename to recipes-security/selinux/libselinux_2.7.bb
index b9ad231..e0d01fc 100644
--- a/recipes-security/selinux/libselinux_2.6.bb
+++ b/recipes-security/selinux/libselinux_2.7.bb
@@ -1,10 +1,10 @@
-include selinux_20161014.inc
+include selinux_20170804.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "0e066ba6d6e590ba4b53eed64905d901"
-SRC_URI[sha256sum] = "4ea2dde50665c202253ba5caac7738370ea0337c47b251ba981c60d24e1a118a"
+SRC_URI[md5sum] = "1d48ee4e9fadd76794d70c806b69ba7d"
+SRC_URI[sha256sum] = "d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
-- 
2.13.0


