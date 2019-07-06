Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1648DE00D4F; Sat,  6 Jul 2019 16:32:35 -0700 (PDT)
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
	*      [209.85.210.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6809DE00C9E
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 16:32:34 -0700 (PDT)
Received: by mail-pf1-f182.google.com with SMTP id u14so4621003pfn.2
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 16:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=UuL5TjfyKjofAdZPEWr1icWEOV9U8xLVNM0+AF+QSEo=;
	b=QkWuVeJXpV0MHzmZyoba4aAh3vMtR5A7HzfN/iIuMYiwr3fSpB6Pg0CG9zeO1WrIYN
	e5gB9o4dYFD2CYNvXiH0hDWa7oo5+9NFLmw8kqDU8419qALKABWGfVLtfbVUQ7MKOAg+
	kpwZXfXRPZS1eXTyOMT+Q9Dh6Gm18/0vKLmnY+9EhrJE/2ITxWePepNXWOp8Xbwh8spr
	eG2YZl70pkfnz9HtgMPZ+0okdAqk/RIYwLx8S/ZqvA+3rxI7h1vfY+h9frozEVN5UM4u
	ymCRbzzWLuqhWwFyHSeFV3z64N7+rok+/wsTY+T1MfrW9T2Jo2e7JgpB6LOvGu+O5xyp
	z85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=UuL5TjfyKjofAdZPEWr1icWEOV9U8xLVNM0+AF+QSEo=;
	b=eTtrv19IQXijste7kaTu3FfDJA19vyFAAarYpFDaliz9vYUmbIvIzsVlPpBOgzxkX5
	aYLVmx8g/YGKF3k6lwgMUDA9/HWANjmVOb7PC15EDcMNssw5YqI/n+c/BDgsfE1XDlOp
	djrvL4pe+4enF2leZ0ITB1LCkX+s2gShpzH9LcsI7roBIXb3LoDjg4cnm6dtXm11+QW7
	Qs1VLt2J9WjN2NMK9Ddis9xFvlBRqRsG34B9BFyC+MDhvcRe1UdRq7RMFSEVW3pIwKjc
	G0EEfdIHTUois/hjqVcHw9EcPPQXPnnbQIzWizZxfVTL0yVS0x0g3tWK1jQXF0LjorW/
	ZT/Q==
X-Gm-Message-State: APjAAAW5E7fYeXco0ftdc/yIv0+StWNyjQ1wy3hnYRohEZ3idtQOuKNU
	6/JZ332av3y9D2nNSWwBtJEdtQBEsWw=
X-Google-Smtp-Source: APXvYqwO7eeVX2dmtQx+K9S251/jkp4HBlwYiBIsE9A6D3tVuV/M/ZennJyekJa1Wnthohewo2henA==
X-Received: by 2002:a65:538d:: with SMTP id x13mr13277732pgq.190.1562455953689;
	Sat, 06 Jul 2019 16:32:33 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	a25sm12486639pfn.1.2019.07.06.16.32.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 16:32:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Jul 2019 16:32:28 -0700
Message-Id: <20190706233230.2774-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190706233230.2774-1-akuster808@gmail.com>
References: <20190706233230.2774-1-akuster808@gmail.com>
Subject: [meta-security-compliance][PATCH 2/4] openscap: add 1.3.1 recipes for upstream source
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
X-List-Received-Date: Sat, 06 Jul 2019 23:32:35 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-openscap/openscap/openscap.inc            | 11 +++++------
 .../recipes-openscap/openscap/openscap_1.3.1.bb       | 10 ++++++++++
 .../recipes-openscap/openscap/openscap_git.bb         |  4 ++--
 3 files changed, 17 insertions(+), 8 deletions(-)
 create mode 100644 meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index 4c1f206..e5daaf8 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -10,10 +10,10 @@ DEPENDS = "autoconf-archive dbus acl bzip2 pkgconfig gconf procps curl libxml2 l
 
 DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
 
-inherit cmake pkgconfig python3native perlnative ptest
-
 S = "${WORKDIR}/git"
 
+inherit cmake pkgconfig python3native perlnative ptest
+
 PACKAGECONFIG ?= "python3 rpm perl"
 PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=True, , python3, python3"
 PACKAGECONFIG[perl] = "-DENABLE_PERL=True,, perl, perl"
@@ -25,7 +25,6 @@ EXTRA_OECONF += "-DENABLE_PROBES_INDEPENDENT=yes -DENABLE_PROBES_LINUX=yes -DWIT
                 -DENABLE_OSCAP_UTIL_DOCKER=no \
                 "
 
-EXTRA_OECONF_class-native += "-DENABLE_PROBES=True"
 
 STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
@@ -33,9 +32,9 @@ STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
 EXTRANATIVEPATH += "chrpath-native"
 
 do_configure_append_class-native () {
-	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${S}/config.h
-	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${S}/config.h
-	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${S}/config.h
+	sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
+	sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
+	sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
 }
 
 do_clean[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
new file mode 100644
index 0000000..c29fd42
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.bb
@@ -0,0 +1,10 @@
+SUMARRY = "NIST Certified SCAP 1.2 toolkit"
+
+require openscap.inc
+
+SRCREV = "3a4c635691380fa990a226acc8558db35d7ebabc"
+SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3 \
+           file://run-ptest \
+"
+
+DEFAULT_PREFERENCE = "-1"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
index 3dfa99e..aded920 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
@@ -3,9 +3,9 @@
 
 SUMARRY = "NIST Certified SCAP 1.2 toolkit with OE changes"
 
+include openscap.inc
+
 SRCREV = "4bbdb46ff651f809d5b38ca08d769790c4bfff90"
 SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3 \
            file://run-ptest \
 "
-
-include openscap.inc
-- 
2.17.1


