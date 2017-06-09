Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97B13E00B77; Thu,  8 Jun 2017 20:05:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38992E00B77
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 20:04:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5934wPq008120
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Jun 2017 20:04:58 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 8 Jun 2017 20:04:57 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 11:04:56 +0800
Message-ID: <20170609030456.21840-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] crmsh: add new recipe
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
X-List-Received-Date: Fri, 09 Jun 2017 03:05:02 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

crm shell, a Pacemaker command line interface for
management and configuration.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../recipes-cgl/crmsh/crmsh/tweaks_for_build.patch | 31 +++++++++++++++++++++
 meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb   | 32 ++++++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
 create mode 100644 meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch b/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
new file mode 100644
index 0000000..6e1a291
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
@@ -0,0 +1,31 @@
+Upstream-Status: Inappropriate [embedded specific]
+
+Pass option '--catalogs' to xsltproc via a2x to avoid network access.
+And disble xmllint check by option '-L'.
+
+Add option '--install-lib' of python setup.py to install python libraries to
+right place.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+diff --git a/Makefile.am b/Makefile.am
+index d89affb..0f2361f 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -47,7 +47,7 @@ endif
+ 	$(ASCIIDOC) --unsafe --backend=xhtml11 $<
+ 
+ %.8: %.8.adoc
+-	a2x -f manpage $<
++	a2x --xsltproc-opts=--catalogs -L -f manpage $<
+ 
+ # Shared data files
+ install-data-hook:
+@@ -79,6 +79,7 @@ install-exec-local:
+ 	-mkdir -p $(DESTDIR)$(pkgpythondir)
+ 	$(PYTHON) $(srcdir)/setup.py install \
+ 		$(python_prefix) \
++		--install-lib $(pythondir) \
+ 		--record $(DESTDIR)$(pkgpythondir)/install_files.txt \
+ 		--verbose
+ 	$(INSTALL) -d -m 770 $(DESTDIR)/$(CRM_CACHE_DIR)
diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb
new file mode 100644
index 0000000..709fbff
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb
@@ -0,0 +1,32 @@
+SUMMARY = "Pacemaker command line interface for management and configuration"
+DESCRIPTION = "crm shell, a Pacemaker command line interface for management and configuration"
+
+HOMEPAGE = "https://crmsh.github.io"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
+
+DEPENDS = "asciidoc-native \
+           docbook-xsl-stylesheets-native \
+           libxslt-native \
+           python-setuptools-native \
+           "
+RDEPENDS_${PN} = "pacemaker python-lxml gawk"
+
+SRC_URI = "https://github.com/ClusterLabs/crmsh/archive/${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
+           file://tweaks_for_build.patch \
+          "
+
+SRC_URI[md5sum] = "0a475d3c56a158dc991de61a26450eb5"
+SRC_URI[sha256sum] = "ac78b7786f6a52cc3d86b3d80b2d8627e84873330cd4846d5ea48869189ad864"
+
+inherit autotools-brokensep distutils-base
+
+export HOST_SYS
+export BUILD_SYS
+
+# Allow to process DocBook documentations without requiring
+# network accesses for the dtd and stylesheets
+export SGML_CATALOG_FILES = "${STAGING_DATADIR_NATIVE}/xml/docbook/xsl-stylesheets/catalog.xml"
+
+FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}/${BPN}"
-- 
2.11.0


