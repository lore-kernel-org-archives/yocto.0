Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C771CE00D28; Thu, 28 Mar 2019 22:28:26 -0700 (PDT)
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
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F53E00D1B
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:26 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id y3so621188pgk.12
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=EveiAbL2hxlXEjLE5F05L4cLjsVR4HBX5IMUDnQxv5I=;
	b=cX2qbUj6YsliX2Tuk5rjs8K7ufUb+9ktzTJTYXrUCPlDUDbr4dkOw3Ok8iecpq8our
	yWhfxOJyUdPqURhnvdDO6tSeHMF2WTUkaVjMnc4PzBYE02aFQS41oCyhlqE0IIO5NWGb
	O+kFleFfZbIv+jKR23EkQjhMp0p3KzAasnmXgyTOFnuGLIUoGz6fyxs52hOCWvRdhdtK
	nojS8+OiVXXpzrRafo9bYmxE3saNCFaMGwV6MbMlGC6id3lKc16W31WrR/Z9HequZcrR
	gSFzeqUlY8mjSwR9GDy6xQJkIEqKbnPbwOc9PeQiZclh4IYSHWaUUE1mX0wcx/O17QyJ
	fY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=EveiAbL2hxlXEjLE5F05L4cLjsVR4HBX5IMUDnQxv5I=;
	b=sPDrRwdf1LJBGwJvsf0YA8wLnyxTTBPD7KkN1IWF42xwFdlbU8crcpKGCsrSsyW9JM
	kLdQSCmHcvRUDrEG23H3eKxSq2s0yk/l/tO5eLW2AxEPETOCnPrxgHmliWyKFxwAaTZG
	4SFhdRHRdqagIKsupqeNPxkhBsm7kz8AzPuSYyl2UiG0seesxfjh3F2VWfvXbE6ZK8gL
	Rn2eSVbtzkuSCnfyeUBmQcySWWtpcTEh2vqSuEaqjyoiHkH/zehb0lrUWcFRRChDMHlc
	F1H9bETwwbfpMyaDT6uOXmtmWYiNJ92YhICJbwb0X4mUlw+d3c/60r1f5E6rWI8e0l+z
	OT+A==
X-Gm-Message-State: APjAAAVw/wCv3wIPsuRVCPZzfGWV00wGHyFzT8gBJLorsYRlBQvHSFe8
	s9BOwaQYP88cun0UkuBAZT4rppnX
X-Google-Smtp-Source: APXvYqyaUMexvro9qBCBFCc8aKQON5Xl9BCkHzKrrjWyOD6yTSMUgnnEvuKGewqtRxJ1HMbr2MiW/Q==
X-Received: by 2002:a63:f412:: with SMTP id g18mr44097106pgi.444.1553837305893;
	Thu, 28 Mar 2019 22:28:25 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f9sm1133978pfd.10.2019.03.28.22.28.25
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Mar 2019 22:28:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Mar 2019 22:28:20 -0700
Message-Id: <20190329052821.13718-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190329052821.13718-1-akuster808@gmail.com>
References: <20190329052821.13718-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/5] sssd: update to 1.16.4
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
X-List-Received-Date: Fri, 29 Mar 2019 05:28:26 -0000

Add systemd pkgconf via DISTRO_FEATURE

Fix uid/gid of sssd.conf

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../sssd/{sssd_1.16.3.bb => sssd_1.16.4.bb}          | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)
 rename recipes-security/sssd/{sssd_1.16.3.bb => sssd_1.16.4.bb} (88%)

diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.4.bb
similarity index 88%
rename from recipes-security/sssd/sssd_1.16.3.bb
rename to recipes-security/sssd/sssd_1.16.4.bb
index e3fb254..3fa3426 100644
--- a/recipes-security/sssd/sssd_1.16.3.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -11,13 +11,16 @@ DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
             file://sssd.conf "
 
-SRC_URI[md5sum] = "af4288c9d1f9953e3b3b6e0b165a5ece"
-SRC_URI[sha256sum] = "ee5d17a0c663c09819cbab9364085b9e57faeca02406cc30efe14cc0cfc04ec4"
+SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
+SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
 
 inherit autotools pkgconfig gettext python-dir distro_features_check
 
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
@@ -64,7 +68,7 @@ pkg_postinst_ontarget_${PN} () {
 if [ -e /etc/init.d/populate-volatile.sh ] ; then
     ${sysconfdir}/init.d/populate-volatile.sh update
 fi
-
+    chown ${SSSD_UID}:${SSSD_GID} ${sysconfdir}/${BPN}/${BPN}.conf
 }
 
 CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
@@ -80,4 +84,4 @@ FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 # The package contains symlinks that trip up insane
 INSANE_SKIP_${PN} = "dev-so"
 
-RDEPENDS_${PN} = "bind dbus samba libldb"
+RDEPENDS_${PN} = "bind dbus samba libldb libpam"
-- 
2.17.1


