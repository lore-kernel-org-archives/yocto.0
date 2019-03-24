Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 989EBE00C93; Sun, 24 Mar 2019 15:02:33 -0700 (PDT)
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
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 508D8E00C38
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2019 15:02:32 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id r15so4943208pfn.9
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2019 15:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=DB/atKuGVAsmZ9jZ5Hjz6tiGPIlR6JwdOrtCm6QhLNs=;
	b=C6Je2TN/mymIUj/qH2aH6HtL3Ulo54bXcUyN4OJ4pJp4ip+zofSGKad4gCgM7i+5CL
	/xwTtOeRNDIa1pnGHt6Uwk038iXY15TdNrydBEVT1EmG26zWZXsAnDYPEphvOmBAXWsP
	fS0KqVh4nx5lEoE1BJk6f3Ks4f8MQBM0UeH+w0gErTuhdjUTtH3AdcYiBoADquZJxQdO
	vCoVuXCNXVXi2Ieyqcy3lfBcomStboCtogALcebWdeo9OqqnyTCx3aPZXirPkphbnDJ0
	JL73FbjDwKg6JaIf686HyE11Ad2l4tccWST1eesYMIkLfUWes9WWvC+28luFmoLt8M7a
	89PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=DB/atKuGVAsmZ9jZ5Hjz6tiGPIlR6JwdOrtCm6QhLNs=;
	b=A8kUT2B77lUUDlQNhyFSGV/9Bo1Co20DaMBXTRcXj67Bu0aki3+ErcD2dJ51YLWZR5
	V7coTNqeJnZReJLjf5LPXb+6xDkRbmH4cLbYcyg2YnH/lWiemzWpGaleDkGPlF7OsJAz
	9xHr5tXcCQ0wtRIJBXFo1vu9vm01D0v6hjoisUPG0Toc7jq0DNqZ33coREfC4cB8g1an
	Kr0BHkk5sQY4W934ey+Lk2m7lnM0ZSAMzbdRb7ByzBdhZR9blz7vyp20j5qOs5dZ3c5r
	wIHazfftPYU3zmszNEZBnuf2Std32z4zAYLeAQp00YswZWk3SacJkMEgRMEbukdS1fDM
	Xp0Q==
X-Gm-Message-State: APjAAAX5dx178AVlmkejHm7xt0OdqdN6pv+TjCaCqTaMyXIvifpxA/2A
	nbGZnS/Rz2mtJbka966OK0faqRzs
X-Google-Smtp-Source: APXvYqxiqK9qoNjuJ8alpWiUW92BhK7yhmM9D1xQVqZAby3JzHFz72gdKq74llt1D5tjszxv1AgsGg==
X-Received: by 2002:aa7:8a92:: with SMTP id a18mr21005413pfc.218.1553464951440;
	Sun, 24 Mar 2019 15:02:31 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	s184sm21242757pfb.1.2019.03.24.15.02.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Mar 2019 15:02:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 24 Mar 2019 15:02:28 -0700
Message-Id: <20190324220228.593-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] tpm2.0 prefix: rename to tpm2 take2
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
X-List-Received-Date: Sun, 24 Mar 2019 22:02:33 -0000

v1 was commited. This is the additional changes.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb   | 4 ++--
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb | 2 +-
 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb   | 4 ++--
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb       | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
index 13dbf5a..a4c6682 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
@@ -9,7 +9,7 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 
-DEPENDS = "autoconf-archive dbus glib-2.0 tpm2.0-tss glib-2.0-native \
+DEPENDS = "autoconf-archive dbus glib-2.0 tpm2-tss glib-2.0-native \
             libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
 
 
@@ -50,6 +50,6 @@ do_install_append() {
 FILES_${PN} += "${libdir}/systemd/system-preset \
 		${datadir}/dbus-1"
 
-RDEPENDS_${PN} += "tpm2.0-tss"
+RDEPENDS_${PN} += "tpm2-tss"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
index c24fd8f..9031e63 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
@@ -4,7 +4,7 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=b748af41ef1300c98e105b3b7ec4ecc1"
 
-DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2.0-tools"
+DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
            file://bootstrap_fixup.patch \
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
index 56c68db..1f1f5c6 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
@@ -1,10 +1,10 @@
 SUMMARY = "Tools for TPM2."
-DESCRIPTION = "tpm2.0-tools"
+DESCRIPTION = "tpm2-tools"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
 SECTION = "tpm"
 
-DEPENDS = "pkgconfig tpm2.0-tss openssl curl autoconf-archive"
+DEPENDS = "pkgconfig tpm2-tss openssl curl autoconf-archive"
 
 SRCREV = "74ba065e5914bc5d713ca3709d62a5751b097369"
 
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
index 4f9db50..78bdeeb 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
@@ -1,5 +1,5 @@
 SUMMARY = "Software stack for TPM2."
-DESCRIPTION = "tpm2.0-tss like woah."
+DESCRIPTION = "OSS implementation of the TCG TPM2 Software Stack (TSS2) "
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 SECTION = "tpm"
-- 
2.17.1


