Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DCA0E00D00; Fri, 29 Mar 2019 17:14:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01173E00942
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 17:14:56 -0700 (PDT)
Received: by mail-pl1-f181.google.com with SMTP id g37so1743983plb.5
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 17:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=XQeYLiDgC6ELWeqv04LQepqfifaIAM8ByjTFWxbKjt4=;
	b=qY9dlceVZC6Wbpd1nPXsJ7aSgei7zYkWPGJ2xP3XptLyGxj0SiWr/UAW6NUiPSbc32
	H8nipmyHLRLZyx4nuCxPtlEP/q9F+JvDrJ0C5vcoG6XN5YBlhR8VBQ6az3/d3drNUXQb
	60w27QCKv51EI6wZEBgLOlzZzB0MoNe0dAq6mVQTcrCisOm5/6D4WrXVcAoppmO3uz0s
	2b51QoXvJWJhALeDIN82OzyM+9503ZkBxOU4QShmJv6WRv2wftqocqbvmwlEj9NQNaSH
	LMqzF+BOlWZGuaCrQ9YBBk7nzDMciTo2ZNErxrbyo9UiOsDCHvtZ1kISo+aR4mDJ2BQy
	T9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=XQeYLiDgC6ELWeqv04LQepqfifaIAM8ByjTFWxbKjt4=;
	b=r/eT5o/4Y38ujXB/MV2oWBMBXYp1LyMRFDlBYvaEioSRx9qSzmpVrEVa4BqJzZCyt9
	+SRX1DzrjiDMxfEL0/zez4bN/vpSy5rVzEW3ERRsnOYQ996TfS8zEes79PVl2sD2eOFp
	TKvp/fcQhHhOuBNc9lsj8yqr62wGCqvr1ANEQ4Y68rDKRzspfTl0vN2oyJZGcNYIezY3
	pU4RDw8b8+UgEkRt47KhTuW1nXEm4Evu9C1GZO7gilGsL4/AlAS8wGCCTKcsJD+GtLBn
	6fzvz7lvpPYzbhhw873HvOfnLkOm4M5eCIuOd11bqvMx1Zfi6CcD+bWLPNtP6mzHDGqE
	hUhA==
X-Gm-Message-State: APjAAAVfRsLUhz15Ql249kOz4veomJ5T5rVbUBmbIth2teGa+yoRNvpi
	+4h3Tx/cf1Rq4b2WrdqkQsLgkb9o
X-Google-Smtp-Source: APXvYqxmF2F+IptO3cfdscaFgNU68AIbb010vo6XXQ3lLRqgmV7BA+Nu61fxWMWpOSWiOHOFJAjTxw==
X-Received: by 2002:a17:902:b407:: with SMTP id
	x7mr2198564plr.288.1553904896166; 
	Fri, 29 Mar 2019 17:14:56 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	c189sm1953909pfg.24.2019.03.29.17.14.55 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 17:14:55 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 17:14:53 -0700
Message-Id: <20190330001454.9884-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH 1/2] sssd: fix a few runtime issues
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
X-List-Received-Date: Sat, 30 Mar 2019 00:14:57 -0000

include a few more RDEPEND packages. remove init script as there really
isn't one yet.

[v2]
Squish build tweeking done in pkg update into this changeset

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.16.3.bb | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
index 8f7f805..e996a61 100644
--- a/recipes-security/sssd/sssd_1.16.3.bb
+++ b/recipes-security/sssd/sssd_1.16.3.bb
@@ -14,10 +14,13 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
 SRC_URI[md5sum] = "af4288c9d1f9953e3b3b6e0b165a5ece"
 SRC_URI[sha256sum] = "ee5d17a0c663c09819cbab9364085b9e57faeca02406cc30efe14cc0cfc04ec4"
 
-inherit autotools pkgconfig gettext update-rc.d python-dir distro_features_check
+inherit autotools pkgconfig gettext python-dir distro_features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
+SSSD_UID ?= "root"
+SSSD_GID ?= "root"
+
 CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     ac_cv_path_NSUPDATE=${bindir} \
     ac_cv_path_PYTHON2=${PYTHON_DIR} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
@@ -25,6 +28,7 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
 
 PACKAGECONFIG ?="nss nscd"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
 PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
@@ -55,6 +59,17 @@ do_install () {
     rmdir --ignore-fail-on-non-empty "${D}/${bindir}"
     install -d ${D}/${sysconfdir}/${BPN}
     install -m 600 ${WORKDIR}/${BPN}.conf ${D}/${sysconfdir}/${BPN}
+
+    # Remove /var/run as it is created on startup
+    rm -rf ${D}${localstatedir}/run
+
+}
+
+pkg_postinst_ontarget_${PN} () {
+if [ -e /etc/init.d/populate-volatile.sh ] ; then
+    ${sysconfdir}/init.d/populate-volatile.sh update
+fi
+    chown ${SSSD_UID}:${SSSD_GID} ${sysconfdir}/${BPN}/${BPN}.conf
 }
 
 CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
@@ -70,4 +85,4 @@ FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 # The package contains symlinks that trip up insane
 INSANE_SKIP_${PN} = "dev-so"
 
-RDEPENDS_${PN} += "bind dbus"
+RDEPENDS_${PN} = "bind dbus libldb libpam"
-- 
2.17.1


