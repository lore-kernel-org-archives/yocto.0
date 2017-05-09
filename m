Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCDB6E00B01; Mon,  8 May 2017 18:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C1D9E00AF4
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 18:55:47 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id u187so12934600pgb.1
	for <yocto@yoctoproject.org>; Mon, 08 May 2017 18:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=FlYSSiuml8piiET7hm2Z8C7sMUTPYb5Z9ALIj34NkWk=;
	b=AJQAlXz7QSKNFPjlGo3ndOjrxbJEjYaiz83TznQd70Qz/tCRJ27jMwyB8p1RikQ1+T
	Ko6mqPM78M8idC3beg7MGjVpJBGbtt+mjVJ8lIyuJ1eS1c72oUeyvtuJ6rJ+li1N9OrD
	jabpb3eAhNit5ddbWUUe1XicOoHp0ngefaoZCwidDUOtJ/gS94n3awLhuPwOrweEKFpl
	gNZM+nPA0+cnIoXyYF8TxIaezlI3PJpKvqMqM5deAp4vI2ReBiGG5dDdByIlIav25G/1
	nC+iaIPDeRTTB6bBkyx57ziWKVdBFh1PEZVvBikQP7SZa7M3JFYv072eF27F2qpjs1kN
	hKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=FlYSSiuml8piiET7hm2Z8C7sMUTPYb5Z9ALIj34NkWk=;
	b=tShRokIyDqMaJidPlIk1+TdPHpdWQsF8vsbLslX0xcz3cHqh1Ps8wsklrBmmlatmlu
	6nQ2x0vKWcgIQKC5lJMQUvxXlw1kSyYD54J7iT8rB0IS8flSz0hGLcIfF9Ej96CvRMbq
	bQgTezTiB96gcPNWNG3sLvBJSHHMQXtxWESQ9uEMwdiuX0/8G+9f5ZRunOpzdXum5Uc8
	z4PmpREW2ypQ06Ijvpfy9YbXsJS1p9joLINx/JMNEXzVQp6OlVhTqFCNa5R/OyNcHrpG
	M3wkFXen2Wkn1LS0IMiZqMVVmev8SjAgmn7dXpfzvrTAcEsv4sXSIxzkvZulIt672nnZ
	tzBg==
X-Gm-Message-State: AODbwcAGfN4yCN7E4/eNUPZTFZEm7w4OhYuRYXCcQrDM2Jxk3Sh3Subo
	7Xwskk3SPK8g9d37
X-Received: by 10.84.178.129 with SMTP id z1mr23346894plb.44.1494294947372;
	Mon, 08 May 2017 18:55:47 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	u78sm27800631pfa.47.2017.05.08.18.55.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 08 May 2017 18:55:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 May 2017 18:55:44 -0700
Message-Id: <1494294944-30235-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] sssd: update SRC_URI as git.fedorahosted.org shut down
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
X-List-Received-Date: Tue, 09 May 2017 01:55:51 -0000

build fixes too

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.13.3.bb | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.13.3.bb b/recipes-security/sssd/sssd_1.13.3.bb
index fd4f2a2..07abb93 100644
--- a/recipes-security/sssd/sssd_1.13.3.bb
+++ b/recipes-security/sssd/sssd_1.13.3.bb
@@ -5,25 +5,23 @@ SECTION = "base"
 LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
-DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5"
+DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
 DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 
-SRCREV = "70862d81a9a1228ad27ad35c9e99cc24b77940c6"
-
-PV = "1.13.3+git${SRCPV}"
-
-SRC_URI = "git://git.fedorahosted.org/git/sssd.git;branch='sssd-1-13' \
+SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
             file://sssd.conf "
 
-S = "${WORKDIR}/git"
+SRC_URI[md5sum] = "38bbb24ea9139508cc1d6e402e253244"
+SRC_URI[sha256sum] = "3fd8fe8e6ee9f50b33eecd1bcccfaa44791f30d4e5f3113ba91457ba5f411f85"
 
 inherit autotools pkgconfig gettext update-rc.d python-dir
 
 CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
+    ac_cv_path_NSUPDATE=${bindir} \
     ac_cv_path_PYTHON2=${PYTHON_DIR} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
     "
 
-PACKAGECONFIG ?="nss"
+PACKAGECONFIG ?="nss nscd"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 
 PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
@@ -32,14 +30,14 @@ PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no,
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
-PACKAGECONFIG[nss] = "--with-crypto=nss, , nss"
+PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[nscd] = "--with-nscd=, --without-nscd, "
+PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
 PACKAGECONFIG[systemd] = "--with-systemdconfdir=${systemd_unitdir}/system/, --with-systemdconfdir="
 
-EXTRA_OECONF += "--disable-rpath --disable-config-lib --disable-cifs-idmap-plugin --without-nfsv4-idmapd-plugin --without-ipa-getkeytab"
+EXTRA_OECONF += "--disable-config-lib --disable-cifs-idmap-plugin --without-nfsv4-idmapd-plugin --without-ipa-getkeytab"
 
 do_configure_prepend() {
     mkdir -p ${AUTOTOOLS_AUXDIR}/build
-- 
2.7.4


