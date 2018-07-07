Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 508F2E00C50; Sat,  7 Jul 2018 08:16:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB993E004F6
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 08:16:30 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id w126-v6so28703268oie.7
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 08:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=UiGoVs+aLYiyVicunWyxAhDLo5HQD37dCtej8MmdmDg=;
	b=KcCY3nRN145peJjwYJ4kKkD65iZm/jvsgwBhQZyTYLgadehmvDKduyKVgYBupKlYIo
	QLhR0T2gM3wiffvVUWvlJPF6AIudI4zOL4IlTOGzM74hmQJuUdC0m6itRYWm4Md0kOaU
	CKdizeAfUrjznt3vCFCXX2NePgtnpGsrnqkUE8jfLP7DDqHu6dR6WwPCTny35rymUvPx
	QSk6RraJZOK3qHjN7MA3qcdBnc7g+v4zyyL7RloMFk5LErL6i249rUrZkjL7g2B9SCKm
	SBSyX7zgfhFq1U+6D4MyGnJySuIL6FejoSOqD8/xkRkPqsq7tTvq5NDfHdW++MG7BPll
	ZNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=UiGoVs+aLYiyVicunWyxAhDLo5HQD37dCtej8MmdmDg=;
	b=f/KE99o7I/XtSeMWlSxQOYTClaDNHjVv0HxMQZynqh0tVaLHyU2g7LkYo5rqZ6njFY
	l3aDIzKGtfazshy3naRLM2oBQggYSw8rUBzPmKcYXkesOxUA1b8ynmw0Js7vAApTWB+l
	MBVU+xsuOXulVhN/p/P5Pfyy/h5X2cBCI4qZxCYkyQLcnoBL0d/fSv7k9GOj1Fl/cYIM
	O5ZONrbw7TeIcboa9QLqA4yPu7x39sXZnfN9678h+KOnhyN+MG2VG076j0XJYC19xuUU
	7htB1pocDMohhMOiqmSekAFG9YZOHV5vxflKAXzcp4TpeRtwUTEWlNL9XBGtSo+hDnO9
	JvhQ==
X-Gm-Message-State: APt69E1kQxNQzXiwqSPQfQaGs26153gteAYv4MDer2aDlpMIH2ebBMNN
	wStO8JgWfK/WOaZusgzb3lQq8A==
X-Google-Smtp-Source: AAOMgpfS/dt+s3cDRCszkS0Y+IGSCxKN8WitqermUfCAiC76pPE8bKKO/V8DsepVVKi3RwgEMU3RwA==
X-Received: by 2002:aca:5249:: with SMTP id
	g70-v6mr16518753oib.351.1530976590062; 
	Sat, 07 Jul 2018 08:16:30 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:41a9:b69d:a923:c699])
	by smtp.gmail.com with ESMTPSA id
	16-v6sm5997780oin.5.2018.07.07.08.16.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 Jul 2018 08:16:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  7 Jul 2018 08:16:27 -0700
Message-Id: <1530976587-14611-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] nmap: remove recipe as it is in meta-oe now
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
X-List-Received-Date: Sat, 07 Jul 2018 15:16:33 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../nmap-redefine-the-python-library-dir.patch     | 37 ---------------
 ...shtool-mkdir-with-coreutils-mkdir-command.patch | 48 -------------------
 recipes-security/nmap/nmap_7.60.bb                 | 54 ----------------------
 3 files changed, 139 deletions(-)
 delete mode 100644 recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch
 delete mode 100644 recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch
 delete mode 100644 recipes-security/nmap/nmap_7.60.bb

diff --git a/recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch b/recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch
deleted file mode 100644
index 356b507..0000000
--- a/recipes-security/nmap/files/nmap-redefine-the-python-library-dir.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-[PATCH] redefine the python library install dir
-
-Upstream-Status: Pending
-
-If install-lib is not defined, it is always /usr/lib/, but it
-maybe /usr/lib64 for multilib
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
----
- Makefile.in | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/Makefile.in b/Makefile.in
-index 1bb062c..cced2fb 100644
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -311,7 +311,7 @@ build-zenmap: $(ZENMAPDIR)/setup.py $(ZENMAPDIR)/zenmapCore/Version.py
- 
- install-zenmap: $(ZENMAPDIR)/setup.py
- 	$(INSTALL) -d $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
--	cd $(ZENMAPDIR) && $(PYTHON) setup.py --quiet install --prefix "$(prefix)" --force $(if $(DESTDIR),--root "$(DESTDIR)")
-+	cd $(ZENMAPDIR) && $(PYTHON) setup.py --quiet install --prefix "$(prefix)" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --force $(if $(DESTDIR),--root "$(DESTDIR)")
- 	$(INSTALL) -c -m 644 docs/zenmap.1 $(DESTDIR)$(mandir)/man1/
- # Create a symlink from nmapfe to zenmap if nmapfe doesn't exist or is
- # already a link.
-@@ -328,7 +328,7 @@ build-nping: $(NPINGDIR)/Makefile nbase_build nsock_build netutil_build $(NPINGD
- 	@cd $(NPINGDIR) && $(MAKE)
- 
- install-ndiff:
--	cd $(NDIFFDIR) && $(PYTHON) setup.py install --prefix "$(prefix)" $(if $(DESTDIR),--root "$(DESTDIR)")
-+	cd $(NDIFFDIR) && $(PYTHON) setup.py install --prefix "$(prefix)" --install-lib="${PYTHON_SITEPACKAGES_DIR}" $(if $(DESTDIR),--root "$(DESTDIR)")
- 
- NSE_FILES = scripts/script.db scripts/*.nse
- NSE_LIB_LUA_FILES = nselib/*.lua nselib/*.luadoc
--- 
-1.9.1
-
diff --git a/recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch b/recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch
deleted file mode 100644
index cfe043a..0000000
--- a/recipes-security/nmap/files/nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-[PATCH] replace "./shtool mkdir" with coreutils mkdir command
-
-Upstream-Status: Pending
-
-"./shtool mkdir" is used when mkdir has not -p parameter, but mkdir in today
-most release has supportted the -p parameter, not need to use shtool, and it
-can not fix the race if two process are running mkdir to create same dir
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
----
- ncat/Makefile.in        | 4 ++--
- nmap-update/Makefile.in | 2 +-
- 2 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/ncat/Makefile.in b/ncat/Makefile.in
-index cfd306d..2166e08 100644
---- a/ncat/Makefile.in
-+++ b/ncat/Makefile.in
-@@ -163,11 +163,11 @@ $(NSOCKDIR)/libnsock.a: $(NSOCKDIR)/Makefile
- 
- install: $(TARGET)
- 	@echo Installing Ncat;
--	$(SHTOOL) mkdir -f -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
-+	mkdir -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
- 	$(INSTALL) -c -m 755 ncat $(DESTDIR)$(bindir)/ncat
- 	$(STRIP) -x $(DESTDIR)$(bindir)/ncat
- 	if [ -n "$(DATAFILES)" ]; then \
--		$(SHTOOL) mkdir -f -p -m 755 $(DESTDIR)$(pkgdatadir); \
-+		mkdir -p -m 755 $(DESTDIR)$(pkgdatadir); \
- 		$(INSTALL) -c -m 644 $(DATAFILES) $(DESTDIR)$(pkgdatadir)/; \
- 	fi
- 	$(INSTALL) -c -m 644 docs/$(TARGET).1 $(DESTDIR)$(mandir)/man1/$(TARGET).1
-diff --git a/nmap-update/Makefile.in b/nmap-update/Makefile.in
-index 89ff928..93f48d8 100644
---- a/nmap-update/Makefile.in
-+++ b/nmap-update/Makefile.in
-@@ -37,7 +37,7 @@ $(NBASELIB):
- 	cd $(NBASEDIR) && $(MAKE)
- 
- install: nmap-update
--	$(SHTOOL) mkdir -f -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
-+	mkdir -p -m 755 $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
- 	$(INSTALL) -c -m 755 nmap-update $(DESTDIR)$(bindir)
- 	$(STRIP) -x $(DESTDIR)$(bindir)/nmap-update
- 	$(INSTALL) -c -m 644 ../docs/nmap-update.1 $(DESTDIR)$(mandir)/man1/
--- 
-1.9.1
-
diff --git a/recipes-security/nmap/nmap_7.60.bb b/recipes-security/nmap/nmap_7.60.bb
deleted file mode 100644
index a6616eb..0000000
--- a/recipes-security/nmap/nmap_7.60.bb
+++ /dev/null
@@ -1,54 +0,0 @@
-SUMMARY = "network auditing tool"
-DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
-SECTION = "security"
-LICENSE = "GPL-2.0"
-
-LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=700c690f4ca6b1754f3f1db8645e42d9"
-
-SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2 \
-           file://nmap-redefine-the-python-library-dir.patch \
-           file://nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch \
-"
-
-SRC_URI[md5sum] = "4e454266559ddf2c4e2109866c62560c"
-SRC_URI[sha256sum] = "a8796ecc4fa6c38aad6139d9515dc8113023a82e9d787e5a5fb5fa1b05516f21"
-
-inherit autotools-brokensep pkgconfig pythonnative distro_features_check
-
-PACKAGECONFIG ?= "ncat nping ndiff pcap"
-PACKAGECONFIG += " ${@bb.utils.contains('IMAGE_FEATURES', 'x11-base', 'zenmap', '', d)}"
-
-PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
-PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
-PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
-PACKAGECONFIG[ssh2] = "--with-openssh2=${STAGING_LIBDIR}/.., --without-openssh2, libssh2, libssh2"
-PACKAGECONFIG[libz] = "--with-libz=${STAGING_LIBDIR}/.., --without-libz, zlib, zlib"
-
-#disable/enable packages
-PACKAGECONFIG[nping] = ",--without-nping,"
-PACKAGECONFIG[ncat] = ",--without-ncat,"
-PACKAGECONFIG[ndiff] = ",--without-ndiff,python"
-PACKAGECONFIG[update] = ",--without-nmap-update,"
-
-#Add gui
-PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
-
-EXTRA_OECONF = "--with-libdnet=included --with-liblinear=included --without-subversion --with-liblua=included"
-
-export PYTHON_SITEPACKAGES_DIR
-
-do_configure() {
-    # strip hard coded python2#
-    sed -i -e 's=python2\.*=python=g'  ${S}/configure.ac
-    sed -i -e 's=python2\.*=python=g'  ${S}/configure
-    autoconf
-    oe_runconf
-}
-
-PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'zenmap', '${PN}-zenmap', '', d)}"
-
-FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
-FILES_${PN}-zenmap = "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${bindir}/*zenmap ${bindir}/xnmap ${datadir}/applications/*  ${bindir}/nmapfe ${datadir}/zenmap/* ${PYTHON_SITEPACKAGES_DIR}/radialnet/* ${PYTHON_SITEPACKAGES_DIR}/zenmap*", "", d)}"
-
-RDEPENDS_${PN} = "python"
-RDEPENDS_${PN}-zenmap = "nmap"
-- 
2.7.4


