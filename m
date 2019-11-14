Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4109E00E5C; Wed, 13 Nov 2019 17:50:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0FF6E00DB1
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAE1nMIY016993
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:22 -0800
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:21 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:47 +0800
Message-ID: <20191114014901.22862-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 05/19] libselinux-python: add recipe
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:04 -0000
Content-Type: text/plain

After switch to python3, There is a loop dependency error with
libselinux-python package when build libselinux. Split the original
libselinux recipe into  libselinux and libselinux-python.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/libselinux-python.inc             | 40 +++++++++++++++++++
 .../selinux/libselinux-python_2.9.bb          | 18 +++++++++
 2 files changed, 58 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux-python.inc
 create mode 100644 recipes-security/selinux/libselinux-python_2.9.bb

diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-security/selinux/libselinux-python.inc
new file mode 100644
index 0000000..62354b2
--- /dev/null
+++ b/recipes-security/selinux/libselinux-python.inc
@@ -0,0 +1,40 @@
+SUMMARY = "SELinux library and simple utilities"
+DESCRIPTION = "libselinux provides an API for SELinux applications to get and set \
+process and file security contexts and to obtain security policy \
+decisions.  Required for any applications that use the SELinux API."
+SECTION = "base"
+LICENSE = "PD"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/libselinux:"
+
+inherit python3-dir
+
+DEPENDS += "python3 swig-native"
+RDEPENDS_${PN} += "libselinux python3-core python3-shell"
+
+def get_policyconfigarch(d):
+    import re
+    target = d.getVar('TARGET_ARCH', True)
+    p = re.compile('i.86')
+    target = p.sub('i386',target)
+    return "ARCH=%s" % (target)
+EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
+
+EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
+EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
+
+FILES_${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
+
+do_compile() {
+    oe_runmake pywrap -j1 \
+            PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+            PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
+            PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
+}
+
+do_install() {
+    oe_runmake install-pywrap swigify \
+            PYCEXT='.so' \
+            PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+            PYTHONLIBDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages'
+}
diff --git a/recipes-security/selinux/libselinux-python_2.9.bb b/recipes-security/selinux/libselinux-python_2.9.bb
new file mode 100644
index 0000000..8e3aae1
--- /dev/null
+++ b/recipes-security/selinux/libselinux-python_2.9.bb
@@ -0,0 +1,18 @@
+SELINUX_RELEASE = "20190315"
+
+SRC_URI = "https://github.com/SELinuxProject/selinux/releases/download/${SELINUX_RELEASE}/libselinux-${PV}.tar.gz"
+
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
+
+SRC_URI[md5sum] = "bb449431b6ed55a0a0496dbc366d6e31"
+SRC_URI[sha256sum] = "1bccc8873e449587d9a2b2cf253de9b89a8291b9fbc7c59393ca9e5f5f4d2693"
+
+SRC_URI += "\
+        file://libselinux-drop-Wno-unused-but-set-variable.patch \
+        file://libselinux-make-O_CLOEXEC-optional.patch \
+        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
+        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        "
+S = "${WORKDIR}/libselinux-${PV}"
-- 
2.17.1


