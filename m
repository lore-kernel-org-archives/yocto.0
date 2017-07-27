Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D19EE00C25; Thu, 27 Jul 2017 01:19:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AAAFE00B87
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 01:19:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6R8JAIC006513
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 01:19:10 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 01:19:09 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 27 Jul 2017 16:18:47 +0800
Message-ID: <20170727081847.2948-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] nmap: upgrade to 7.50
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
X-List-Received-Date: Thu, 27 Jul 2017 08:19:13 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

- Add a patch to fix python library install dir for multilib.

- Add a patch to fix race condition with mkdir command.

- Inherit pythonnative instead of python-dir and install
  python modules for ndiff to fix the following errors:

  """
  root@qemux86-64:~# ndiff --help
  -sh: /usr/bin/ndiff: /path_to_build/tmp/hosttools/python: bad interpreter: No such file or directory
  root@qemux86-64:~# python /usr/bin/ndiff
  Could not import the ndiff module: 'No module named ndiff'.
  """

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../nmap-redefine-the-python-library-dir.patch     | 37 +++++++++++++++++
 ...shtool-mkdir-with-coreutils-mkdir-command.patch | 48 ++++++++++++++++++++++
 .../nmap/{nmap_7.31.bb => nmap_7.50.bb}            | 23 ++++++-----
 3 files changed, 97 insertions(+), 11 deletions(-)
 create mode 100644 recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch
 create mode 100644 recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch
 rename recipes-security/nmap/{nmap_7.31.bb => nmap_7.50.bb} (75%)

diff --git a/recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch b/recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch
new file mode 100644
index 0000000..356b507
--- /dev/null
+++ b/recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch
@@ -0,0 +1,37 @@
+[PATCH] redefine the python library install dir
+
+Upstream-Status: Pending
+
+If install-lib is not defined, it is always /usr/lib/, but it
+maybe /usr/lib64 for multilib
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ Makefile.in | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 1bb062c..cced2fb 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -311,7 +311,7 @@ build-zenmap: $(ZENMAPDIR)/setup.py $(ZENMAPDIR)/zenmapCore/Version.py
+ 
+ install-zenmap: $(ZENMAPDIR)/setup.py
+ 	$(INSTALL) -d $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
+-	cd $(ZENMAPDIR) && $(PYTHON) setup.py --quiet install --prefix "$(prefix)" --force $(if $(DESTDIR),--root "$(DESTDIR)")
++	cd $(ZENMAPDIR) && $(PYTHON) setup.py --quiet install --prefix "$(prefix)" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --force $(if $(DESTDIR),--root "$(DESTDIR)")
+ 	$(INSTALL) -c -m 644 docs/zenmap.1 $(DESTDIR)$(mandir)/man1/
+ # Create a symlink from nmapfe to zenmap if nmapfe doesn't exist or is
+ # already a link.
+@@ -328,7 +328,7 @@ build-nping: $(NPINGDIR)/Makefile nbase_build nsock_build netutil_build $(NPINGD
+ 	@cd $(NPINGDIR) && $(MAKE)
+ 
+ install-ndiff:
+-	cd $(NDIFFDIR) && $(PYTHON) setup.py install --prefix "$(prefix)" $(if $(DESTDIR),--root "$(DESTDIR)")
++	cd $(NDIFFDIR) && $(PYTHON) setup.py install --prefix "$(prefix)" --install-lib="${PYTHON_SITEPACKAGES_DIR}" $(if $(DESTDIR),--root "$(DESTDIR)")
+ 
+ NSE_FILES = scripts/script.db scripts/*.nse
+ NSE_LIB_LUA_FILES = nselib/*.lua nselib/*.luadoc
+-- 
+1.9.1
+
diff --git a/recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch b/recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch
new file mode 100644
index 0000000..cfe043a
--- /dev/null
+++ b/recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch
@@ -0,0 +1,48 @@
+[PATCH] replace "./shtool mkdir" with coreutils mkdir command
+
+Upstream-Status: Pending
+
+"./shtool mkdir" is used when mkdir has not -p parameter, but mkdir in today
+most release has supportted the -p parameter, not need to use shtool, and it
+can not fix the race if two process are running mkdir to create same dir
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ ncat/Makefile.in        | 4 ++--
+ nmap-update/Makefile.in | 2 +-
+ 2 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/ncat/Makefile.in b/ncat/Makefile.in
+index cfd306d..2166e08 100644
+--- a/ncat/Makefile.in
++++ b/ncat/Makefile.in
+@@ -163,11 +163,11 @@ $(NSOCKDIR)/libnsock.a: $(NSOCKDIR)/Makefile
+ 
+ install: $(TARGET)
+ 	@echo Installing Ncat;
+-	$(SHTOOL) mkdir -f -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
++	mkdir -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
+ 	$(INSTALL) -c -m 755 ncat $(DESTDIR)$(bindir)/ncat
+ 	$(STRIP) -x $(DESTDIR)$(bindir)/ncat
+ 	if [ -n "$(DATAFILES)" ]; then \
+-		$(SHTOOL) mkdir -f -p -m 755 $(DESTDIR)$(pkgdatadir); \
++		mkdir -p -m 755 $(DESTDIR)$(pkgdatadir); \
+ 		$(INSTALL) -c -m 644 $(DATAFILES) $(DESTDIR)$(pkgdatadir)/; \
+ 	fi
+ 	$(INSTALL) -c -m 644 docs/$(TARGET).1 $(DESTDIR)$(mandir)/man1/$(TARGET).1
+diff --git a/nmap-update/Makefile.in b/nmap-update/Makefile.in
+index 89ff928..93f48d8 100644
+--- a/nmap-update/Makefile.in
++++ b/nmap-update/Makefile.in
+@@ -37,7 +37,7 @@ $(NBASELIB):
+ 	cd $(NBASEDIR) && $(MAKE)
+ 
+ install: nmap-update
+-	$(SHTOOL) mkdir -f -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
++	mkdir -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
+ 	$(INSTALL) -c -m 755 nmap-update $(DESTDIR)$(bindir)
+ 	$(STRIP) -x $(DESTDIR)$(bindir)/nmap-update
+ 	$(INSTALL) -c -m 644 ../docs/nmap-update.1 $(DESTDIR)$(mandir)/man1/
+-- 
+1.9.1
+
diff --git a/recipes-security/nmap/nmap_7.31.bb b/recipes-security/nmap/nmap_7.50.bb
similarity index 75%
rename from recipes-security/nmap/nmap_7.31.bb
rename to recipes-security/nmap/nmap_7.50.bb
index c50b240..30ae06f 100644
--- a/recipes-security/nmap/nmap_7.31.bb
+++ b/recipes-security/nmap/nmap_7.50.bb
@@ -3,14 +3,17 @@ DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utili
 SECTION = "security"
 LICENSE = "GPL-2.0"
 
-LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=bce7593e567a4b12f60c6a04f9b8c1e5"
+LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=87c6956e28c3603a0a1dda11bcdc227a"
 
-SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
+SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2 \
+           file://nmap-redefine-the-python-library-dir.patch \
+           file://nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch \
+"
 
-SRC_URI[md5sum] = "f2f6660142a777862342a58cc54258ea"
-SRC_URI[sha256sum] = "cb9f4e03c0771c709cd47dc8fc6ac3421eadbdd313f0aae52276829290583842"
+SRC_URI[md5sum] = "435c7e095bdd4565e0f69c41743a45be"
+SRC_URI[sha256sum] = "e9a96a8e02bfc9e80c617932acc61112c23089521ee7d6b1502ecf8e3b1674b2"
 
-inherit autotools-brokensep pkgconfig python-dir distro_features_check
+inherit autotools-brokensep pkgconfig pythonnative distro_features_check
 
 PACKAGECONFIG ?= "ncat nping ndiff pcap"
 PACKAGECONFIG += " ${@bb.utils.contains('IMAGE_FEATURES', 'x11-base', 'zenmap', '', d)}"
@@ -22,7 +25,7 @@ PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, op
 #disable/enable packages
 PACKAGECONFIG[nping] = ",--without-nping,"
 PACKAGECONFIG[ncat] = ",--without-ncat,"
-PACKAGECONFIG[ndiff] = ",--without-ndiff,"
+PACKAGECONFIG[ndiff] = ",--without-ndiff,python"
 PACKAGECONFIG[update] = ",--without-nmap-update,"
 
 #Add gui
@@ -30,6 +33,8 @@ PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core pytho
 
 EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion --with-liblua=included"
 
+export PYTHON_SITEPACKAGES_DIR
+
 do_configure() {
     # strip hard coded python2#
     sed -i -e 's=python2\.*=python=g'  ${S}/configure.ac
@@ -38,13 +43,9 @@ do_configure() {
     oe_runconf
 }
 
-do_install_append () {
-   # remove python dir, its not used or installed
-   rm -fr ${D}/${libdir}
-}
-
 PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'zenmap', '${PN}-zenmap', '', d)}"
 
+FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${PYTHON_SITEPACKAGES_DIR}/radialnet/* ${PYTHON_SITEPACKAGES_DIR}/zenmap*", "", d)}"
 
 RDEPENDS_${PN} = "python"
-- 
2.11.0


