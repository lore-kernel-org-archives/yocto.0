Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4711E00E60; Thu, 14 Apr 2016 08:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A88E00E56
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 08:36:01 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id 184so47223886pff.0
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 08:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=nw7m2dQtG8hQI+B79/gjFciVXCvec7jik8Dif4G4B+A=;
	b=Mo0GOh4n2R3XoPgpEniXq/LHK163egvhLM07FzmZKBMbPCRTnkoZTj3v55H5GQrOZi
	I2ujR0wJgxGfaVZQC9LYnZKfxMM8WZyQKQ3zrpwVi45Ws38YCib2ntkODrcIggk87XYg
	FFqicUHSKAgtoGoF0Q1ZmIDjCPwAQtK/7Dl1M2da0BDIt3hV4ER6qG/bpNweIw4JuSzC
	vhAc23B3BQB+aIa4Xd/Ej40TBSiUAqEUyoOsMacW8mcHQz+nmue9xdu1XfRhtg8xoDnZ
	Eq52DYcHo3UGWMQ9vcXo3kiVGY1r1RknV17ogymrcLSodjBvaw2pXfHhMm7P6sDLfqli
	cRrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=nw7m2dQtG8hQI+B79/gjFciVXCvec7jik8Dif4G4B+A=;
	b=dYLYlkzZ0XsAxWo7aoLjkfiJ2R18J3J2G5TVw1gOE8ea4T7yWw/vIopXsidoSxTUpS
	8irE2ar++C5Zqd6fKIlgOoGBpl7krMXpwrRz2jqXOKWC4HG6hYbwjKJ/NCn1aZfyRs3S
	E4pRyGZlTBEoeZUdHRDKbz8lqmLglSZ4Mdk9UBxg/bT5raoym4peVupYAR30GdpiW/3P
	gK6cF/Te3WfpmercpLISOrhSss2lRLeCNjOZi+LPjkB1E5i5tSpOW9H4iSOvIn4c2ZoS
	AVTyp7mdQRzreoL5tdvKXR7sMf8Ro7bdGpLJmoAiym7gQMuipKqog29+Xxogiuy1Xpqo
	MJyQ==
X-Gm-Message-State: AOPr4FVh0Z0nU3ffXWzlZz7+5Ta0udEsE7jPw2yLlmmrWx7MOJMQGZn0durdWXqLj7ydXg==
X-Received: by 10.98.10.136 with SMTP id 8mr22353946pfk.67.1460648161471;
	Thu, 14 Apr 2016 08:36:01 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	c9sm58728396pfd.24.2016.04.14.08.35.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 14 Apr 2016 08:36:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Apr 2016 08:35:47 -0700
Message-Id: <1460648147-15324-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1460648147-15324-1-git-send-email-akuster808@gmail.com>
References: <1460648147-15324-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] sssd: add new package
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
X-List-Received-Date: Thu, 14 Apr 2016 15:36:04 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/files/sssd.conf |  8 ++++
 recipes-security/sssd/sssd_1.13.3.bb  | 72 +++++++++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 recipes-security/sssd/files/sssd.conf
 create mode 100644 recipes-security/sssd/sssd_1.13.3.bb

diff --git a/recipes-security/sssd/files/sssd.conf b/recipes-security/sssd/files/sssd.conf
new file mode 100644
index 0000000..1709a7a
--- /dev/null
+++ b/recipes-security/sssd/files/sssd.conf
@@ -0,0 +1,8 @@
+[sssd]
+services = nss, pam
+config_file_version = 2
+
+[nss]
+
+[pam]
+
diff --git a/recipes-security/sssd/sssd_1.13.3.bb b/recipes-security/sssd/sssd_1.13.3.bb
new file mode 100644
index 0000000..d538af3
--- /dev/null
+++ b/recipes-security/sssd/sssd_1.13.3.bb
@@ -0,0 +1,72 @@
+SUMMARY = "system security services daemon"
+DESCRIPTION = "SSSD is a system security services daemon"
+HOMEPAGE = "https://fedorahosted.org/sssd/"
+SECTION = "base"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5"
+DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
+
+SRCREV = "70862d81a9a1228ad27ad35c9e99cc24b77940c6"
+
+PV = "1.13.3+git${SRCPV}"
+
+SRC_URI = "git://git.fedorahosted.org/git/sssd.git;branch='sssd-1-13' \
+            file://sssd.conf "
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig gettext update-rc.d python-dir
+
+CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
+    ac_cv_path_PYTHON2=${PYTHON_DIR} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
+    "
+
+PACKAGECONFIG ?="nss"
+PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+
+PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
+PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
+PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
+PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
+PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
+PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
+PACKAGECONFIG[nss] = "--with-crypto=nss, , nss"
+PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
+PACKAGECONFIG[nscd] = "--with-nscd=, --without-nscd, "
+PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
+PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
+PACKAGECONFIG[systemd] = "--with-systemdconfdir=${systemd_unitdir}/system/, --with-systemdconfdir="
+
+EXTRA_OECONF += "--disable-rpath --disable-config-lib --disable-cifs-idmap-plugin --without-nfsv4-idmapd-plugin --without-ipa-getkeytab"
+
+do_configure_prepend() {
+    mkdir -p ${AUTOTOOLS_AUXDIR}/build
+    cp ${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${AUTOTOOLS_AUXDIR}/build/
+
+    # libresove has host path, remove it
+    sed -i -e "s#\$sss_extra_libdir##" ${S}/src/external/libresolv.m4
+}
+
+do_install () {
+    oe_runmake install  DESTDIR="${D}"
+    rmdir --ignore-fail-on-non-empty "${D}/${bindir}"
+    install -d ${D}/${sysconfdir}/${BPN}
+    install -m 600 ${WORKDIR}/${BPN}.conf ${D}/${sysconfdir}/${BPN}
+}
+
+CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
+
+INITSCRIPT_NAME = "sssd"
+INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
+SYSTEMD_SERVICE_${PN} = "${BPN}.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+FILES_${PN} += "${libdir} ${datadir} /run ${libdir}/*.so* "
+FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
+
+# The package contains symlinks that trip up insane
+INSANE_SKIP_${PN} = "dev-so"
+
+RDEPENDS_${PN} += "bind dbus"
-- 
2.3.5


