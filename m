Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.5702.1579367165645351445
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jan 2020 09:06:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NtrEkZu8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id q9so10350166wmj.5
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jan 2020 09:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=NqTJoSgNNfrOCV2W2YdtF08vv1HFdbUJh+VheYT710U=;
        b=NtrEkZu8VMk4YS6SMsfNC8KUPE6LXbMGl/grel79m/4s0oljuLycasevIOz1h+Cz5S
         l9e7Kph4qsFntI9y26lHHxbH2t1dw4OyzCAZN8C0cdR2nMLcdLr7MG7nJvqEKt/zVDGu
         Jy0Rh3gDKPJjMy3UcyE34mi6Hinee4TMvJbgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NqTJoSgNNfrOCV2W2YdtF08vv1HFdbUJh+VheYT710U=;
        b=GzhvlrmduOh2J1sw9OkOl0SVrld3bYMQDIlvhAmFYzF5nNzeJQYv7l/bajLhvvvHMW
         8Ch7g37zwMJe6YKDMLD8yyNMhUpRHShyNbevRcxLnjE+MmOTBgxhZIBKuF0YWpF4acYo
         VXsxM6qb5LCIA0yYnY4uoX/UjY4fC3wczDW3rf5SGm3FI6ihyuEK0ZpN3y4oMyuzBnU0
         ppz7LdMN6amLPvzmGGoEsvK19R+VFRhiG1SF4cqVf4XjeHpUyNDQ6aUGBriLtBbIP7Cg
         XOyl5ACzmcLujIJlrQsN9wo5Tpu3qLKUB/zM90uHTIEVEOMDEyrELB6hfMztdTYXbqDP
         /n2A==
X-Gm-Message-State: APjAAAVO2MUXjLp9cdQY2TERvrj8/jA1R+RPB9qi8Fsl4Y2vW5zExMod
	bfNzfBNSrSmG44qYVcZgBbHuQNPqow8=
X-Google-Smtp-Source: APXvYqxMxnpmaoEkIHGST5Gu/Z+oInltXJxqdknJOE9jVFR9bU8+WaE/wnIbB9gFutwFG5sqm69s8A==
X-Received: by 2002:a7b:cd0a:: with SMTP id f10mr10767415wmj.56.1579367163708;
        Sat, 18 Jan 2020 09:06:03 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id p26sm14220698wmc.24.2020.01.18.09.06.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2020 09:06:03 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] shared-mime-info: Add 1.10 from OE-Core
Date: Sat, 18 Jan 2020 17:06:01 +0000
Message-Id: <20200118170601.26254-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200118170601.26254-1-richard.purdie@linuxfoundation.org>
References: <20200118170601.26254-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Later versions of shared-mime-info need itstool which is GPLv3. Add an old
version of shared-mime-info to allow gplv3 free builds to suceed.

Use python to set PREFERRED_VERSION based on INCOMPATIBLE_LICENSE to
control this.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/layer.conf                               |  3 ++
 .../shared-mime-info/shared-mime-info.inc     | 37 +++++++++++++++++++
 .../shared-mime-info/install-data-hook.patch  | 25 +++++++++++++
 .../shared-mime-info/parallelmake.patch       | 33 +++++++++++++++++
 .../shared-mime-info/shared-mime-info_1.10.bb |  7 ++++
 5 files changed, 105 insertions(+)
 create mode 100644 recipes-support/shared-mime-info/shared-mime-info.inc
 create mode 100644 recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch
 create mode 100644 recipes-support/shared-mime-info/shared-mime-info/parallelmake.patch
 create mode 100644 recipes-support/shared-mime-info/shared-mime-info_1.10.bb

diff --git a/conf/layer.conf b/conf/layer.conf
index 0d46e11..fafd9af 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,3 +17,6 @@ LAYERDEPENDS_gplv2 = "core"
 LAYERSERIES_COMPAT_gplv2 = "zeus"
 
 LICENSE_PATH += "${LAYERDIR}/licenses"
+
+PREFERRED_VERSION_shared-mime-info = "${@['1.10', '']['GPLV3' in d.getVar('INCOMPATIBLE_LICENSE')]}"
+PREFERRED_VERSION_shared-mime-info-native = "${@['1.10', '']['GPLV3' in d.getVar('INCOMPATIBLE_LICENSE')]}"
diff --git a/recipes-support/shared-mime-info/shared-mime-info.inc b/recipes-support/shared-mime-info/shared-mime-info.inc
new file mode 100644
index 0000000..3fe1a44
--- /dev/null
+++ b/recipes-support/shared-mime-info/shared-mime-info.inc
@@ -0,0 +1,37 @@
+SUMMARY = "Shared MIME type database and specification"
+HOMEPAGE = "http://freedesktop.org/wiki/Software/shared-mime-info"
+SECTION = "base"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+DEPENDS = "libxml2 intltool-native glib-2.0 shared-mime-info-native"
+
+SRC_URI = "http://freedesktop.org/~hadess/shared-mime-info-${PV}.tar.xz"
+
+inherit autotools pkgconfig gettext
+
+EXTRA_OECONF = "--disable-update-mimedb"
+
+FILES_${PN} += "${datadir}/mime"
+FILES_${PN}-dev += "${datadir}/pkgconfig/shared-mime-info.pc"
+
+# freedesktop.org.xml is only required when updating the mime database,
+# package it separately
+PACKAGES =+ "shared-mime-info-data"
+FILES_shared-mime-info-data = "${datadir}/mime/packages/freedesktop.org.xml"
+RDEPENDS_shared-mime-info-data = "shared-mime-info"
+
+do_install () {
+	autotools_do_install
+
+	update-mime-database ${D}${datadir}/mime
+}
+
+do_install_class-native () {
+	autotools_do_install
+
+	${B}/update-mime-database ${D}${datadir}/mime
+}
+
+BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch b/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch
new file mode 100644
index 0000000..262ff75
--- /dev/null
+++ b/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch
@@ -0,0 +1,25 @@
+fix shared-mime-info build race condition
+
+The definition of install-data-hook in Makefile.am leads
+to multiple, overlapping, executions of install-binPROGRAMS
+target.  We modify the definition to avoid that.
+
+Upstream-Status: Pending
+
+Signed-off-by: Joe Slater <jslater@windriver.com>
+
+Index: shared-mime-info-1.9/Makefile.am
+===================================================================
+--- shared-mime-info-1.9.orig/Makefile.am
++++ shared-mime-info-1.9/Makefile.am
+@@ -50,7 +50,9 @@ else
+   update_mime_database="$(top_builddir)/update-mime-database$(EXEEXT)"
+ endif
+ 
+-install-data-hook: install-binPROGRAMS
++# do NOT make this dependent on anything!
++#
++install-data-hook:
+ if ENABLE_UPDATE_MIMEDB
+ 	$(update_mime_database) -V "$(DESTDIR)$(datadir)/mime"
+ endif
diff --git a/recipes-support/shared-mime-info/shared-mime-info/parallelmake.patch b/recipes-support/shared-mime-info/shared-mime-info/parallelmake.patch
new file mode 100644
index 0000000..fea34a5
--- /dev/null
+++ b/recipes-support/shared-mime-info/shared-mime-info/parallelmake.patch
@@ -0,0 +1,33 @@
+The Makefile used by shared-mime-info is one big race with the SUBDIRS 
+option and the dependency specifically calling make all combining to
+create multiple make instances all of which may try and build targets
+like update-mime-database.
+
+This patch removes those options meaning make can correctly identify
+dependencies and stop itself racing itself.
+
+RP 10/10/2011
+
+Upstream-Status: Pending
+Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
+
+Index: shared-mime-info-1.9/Makefile.am
+===================================================================
+--- shared-mime-info-1.9.orig/Makefile.am
++++ shared-mime-info-1.9/Makefile.am
+@@ -1,5 +1,3 @@
+-SUBDIRS=. po
+-
+ AM_CPPFLAGS = $(ALL_CFLAGS)
+ 
+ packagesdir = $(datadir)/mime/packages
+@@ -81,8 +79,7 @@ endif
+ 
+ all: $(defaultmakedeps)
+ 
+-create-pot:
+-	$(AM_V_GEN) $(MAKE) -C po shared-mime-info.pot
++create-pot: po
+ 
+ local-test: create-pot freedesktop.org.xml update-mime-database$(EXEEXT)
+ if CROSS_COMPILING
diff --git a/recipes-support/shared-mime-info/shared-mime-info_1.10.bb b/recipes-support/shared-mime-info/shared-mime-info_1.10.bb
new file mode 100644
index 0000000..9fc210b
--- /dev/null
+++ b/recipes-support/shared-mime-info/shared-mime-info_1.10.bb
@@ -0,0 +1,7 @@
+require shared-mime-info.inc
+
+SRC_URI += "file://parallelmake.patch \
+	    file://install-data-hook.patch"
+
+SRC_URI[md5sum] = "418c2ced9dc4dd5ca8b06a755e6d64e9"
+SRC_URI[sha256sum] = "c625a83b4838befc8cafcd54e3619946515d9e44d63d61c4adf7f5513ddfbebf"
-- 
2.17.1

