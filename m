Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2557CE00D31; Sat, 23 Mar 2019 10:36:42 -0700 (PDT)
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
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57340E00D2E
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 10:36:41 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id t21so3620503pfe.2
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 10:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=duUNZf2Kpx4Y835q1vEsNdnGdRpnrdZDPs3dxRtKVJo=;
	b=lCVudMMPdDfHIY0IAgRVrzDQKlm/K9Odm2w2rXTJUYJALs/QU4n6kQVTDty2KIhy3r
	8nlhKdkzxoj+g8+06JF760imJx7nqp3L11V+9Oy9h+03N9/z0OeEzJYihD6HVb0+HNfA
	SvUvi4PH0f3JLZUoVdCe7euoga8FKWGG/YYzhbT3/RfDlN2YYLzWnH81uVYVN+jWFiEV
	1oqMiRCg/tfH8/91mAmbwf97kMJNhjCDMHR1XrMIVqBwV1H9qo/avzOSjIKq+4J1sHH3
	Gs0mAteH+lSDEVBT7vGkGiErwDlSzcPiqJG5m3j5Lys/NfsJsps8FW+z+RIDRNR2mxPm
	v06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=duUNZf2Kpx4Y835q1vEsNdnGdRpnrdZDPs3dxRtKVJo=;
	b=q18uMijrIhAQdhMMWl4L8A9ktx0ioy48/Nhgkibg228SLfIUuxzOObixmyQjisO1Vo
	ymsaWVfrcqixTUjs/WVywMnzhL459pM82CLfa4IM6Q+594lGeerJNwu2BW01nYOiLZag
	xZLmfzJS8t58tQBiHELgJihNS4Enks//6uEN3yve0tNug1EULw+KYVPav/Tr5WK4XiWv
	SUMLvgUGT9kEGQ6q6wKKHlbrHQEtsV1umPhUbpb3C6JqzgVuwKPPod4IIB1kzuzTEiZQ
	CTche6o2wATg28ME4ELk9Gxew60zYUg3k8j4EM52IF9SJ0rNldMDQW5DaBj6G6A+XWbF
	pHOw==
X-Gm-Message-State: APjAAAVPd58us8jcToKfeRVY0Xtih3aHaf8t4kHZZZCxGfXjoszcEZas
	Kj9QHcntFBa8/8piVMA52N0JSH+c
X-Google-Smtp-Source: APXvYqzocVHE0fjPGDUtHwXk0FrAHstaOW6gdjJQLOMk/xwlOJVzJTeaG/oF5iQW1GQ0Szf75BZ8lw==
X-Received: by 2002:a63:4542:: with SMTP id u2mr14700025pgk.291.1553362600501; 
	Sat, 23 Mar 2019 10:36:40 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f10sm12150874pgo.55.2019.03.23.10.36.38 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Mar 2019 10:36:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Mar 2019 10:36:37 -0700
Message-Id: <20190323173637.920-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH] tpm2.0 prefix: rename to tpm2
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
X-List-Received-Date: Sat, 23 Mar 2019 17:36:42 -0000

this aligns with the rest of the tpm2 recipes

[v2]
make changes in recipes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb          | 4 ++--
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb        | 2 +-
 .../tpm2.0-tools_3.1.3.bb => tpm2-tools/tpm2-tools_3.1.3.bb}  | 4 ++--
 .../tpm2.0-tss => tpm2-tss/tpm2-tss}/ax_pthread.m4            | 0
 .../tpm2-tss}/fix_musl_select_include.patch                   | 0
 .../tpm2.0-tss_2.2.1.bb => tpm2-tss/tpm2-tss_2.2.1.bb}        | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tools/tpm2.0-tools_3.1.3.bb => tpm2-tools/tpm2-tools_3.1.3.bb} (77%)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tss/tpm2.0-tss => tpm2-tss/tpm2-tss}/ax_pthread.m4 (100%)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tss/tpm2.0-tss => tpm2-tss/tpm2-tss}/fix_musl_select_include.patch (100%)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tss/tpm2.0-tss_2.2.1.bb => tpm2-tss/tpm2-tss_2.2.1.bb} (98%)

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
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
similarity index 77%
rename from meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
index 56c68db..1f1f5c6 100644
--- a/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
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
 
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/ax_pthread.m4
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/ax_pthread.m4
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fix_musl_select_include.patch
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fix_musl_select_include.patch
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
similarity index 98%
rename from meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
index 4f9db50..d9172e7 100644
--- a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
@@ -1,5 +1,5 @@
 SUMMARY = "Software stack for TPM2."
-DESCRIPTION = "tpm2.0-tss like woah."
+DESCRIPTION = "tpm2-tss like woah."
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 SECTION = "tpm"
-- 
2.17.1


