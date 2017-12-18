Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 416B8E00D67; Mon, 18 Dec 2017 14:08:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67C54E00CFF
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:32 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id j4so9718921pgp.1
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YXUee2VN70Lo5yapDZixSuw5NrWqN541Fu2NA6bcMSI=;
	b=M4zcBISmJYLNv4yjxFar6VzUyxRuv0m+ZZfvbL9/ORQc2NE3GEg2ThIPpE6I2iEpUB
	P3jNPukRJagJ8qqpSMhE7kAWpbI2qmL+yQVRmSDNjlU4UuwkJc9DPCp0AycyXuS4aAQN
	NC9nDRw49m5pJb8KS5zBJnFySudJ0evG9W7DIPWHSrpRoo6/Q7zNtrq1YZ4qonNUe63G
	yoxpYnJAHgK4ntJrIgIdVG4bb/64aAe2NTBoE1c/wh7meCGFIUbIgr0PNs5ho9s96xNY
	oVmdPEPctMt5E7eJ20M1SYPz/93pAWyKycYK7pdNQaUANiLE96L6+RvPuWNN11fx94Hv
	nlvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YXUee2VN70Lo5yapDZixSuw5NrWqN541Fu2NA6bcMSI=;
	b=djiJM+1oL+DWplLIjqDBMYXMrDVzRqdzny74RX2VYCAUWiYCZpvxUu9HwSKLtuwQl+
	RKwf3AQoONdxrt38mVibLT7Rb7VlAlJnCtgLdXLp/zQAS+4G7upXNhqj0KLbQXCrOR93
	z7fQzFVSqMsseq0rUTMyMkiZLfOCX7cPGsrfFrvJMkcKI2dqFfVHYY2ERT1o267Y27up
	ehxJPl2M10bIKGsx/mIeWMCalZ36DyhKhZ2wNWW+HrhiuEz4hk3uKwGWEfpzTRwpVrGd
	u/4W3V2PVbhlkUHEcmQa+KaMaNHkPlDFCHW0BqHo+jIUBPRpcsg9UcXYewL1aKATkvJh
	eSOA==
X-Gm-Message-State: AKGB3mIJJZeY/xLLlN9QRG2OyHrW7JU8H7EK3tYWD6nyFe9smvZfuocS
	D5CgHFq3GmEoNxu4bqBMH2zxvw==
X-Google-Smtp-Source: ACJfBovrMjGaiIsFqXtuHVx9w2MA8bWLd0Mtd+DI9Ej+sNNBeTS4uy+xtNWCyF3mDzjFvbqwVGGzig==
X-Received: by 10.99.115.79 with SMTP id d15mr1004962pgn.340.1513634911323;
	Mon, 18 Dec 2017 14:08:31 -0800 (PST)
Received: from e6520.cablelabs.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	f7sm25602904pfa.133.2017.12.18.14.08.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Dec 2017 14:08:30 -0800 (PST)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Dec 2017 14:08:06 -0800
Message-Id: <1513634888-32057-2-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
References: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
Subject: [meta-gplv2][PATCH 1/3] gnutls: update 3.3.27 -> 3.3.28
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
X-List-Received-Date: Mon, 18 Dec 2017 22:08:33 -0000

* Version 3.3.28 (released 2017-07-04)

** libgnutls: Fixed issue when rehandshaking without a client certificate in
   a session which initially used one. Reported by Frantisek Sumsal.

** libgnutls: fix issue in RSA-PSK client callback which resulted in no username
   being sent to the peer. Patch by Nicolas Dufresne.

** libgnutls: no longer parse the ResponseID field of the status response
   TLS extension. The field is not used by GnuTLS nor is made available to
   calling applications. That addresses a null pointer dereference on server
   side caused by packets containing the ResponseID field. Reported
   by Hubert Kario. [GNUTLS-SA-2017-4]

** libgnutls: Handle specially HSMs which request explicit authentication.
   There are HSMs which return CKR_USER_NOT_LOGGED_IN on the first private key
   operation. Detect that state and try to login.

** libgnutls: the GNUTLS_PKCS11_OBJ_FLAG_LOGIN will force a login on HSMs.
   That is, even in tokens which do not have a CKF_LOGIN_REQUIRED flag
   a login will be forced. This improves operation on certain Safenet HSMs.

** libgnutls: do not set leading zeros when copying integers on HSMs.
   PKCS#11 defines integers as unsigned having most significant byte
   first, e.g., 32768 = 0x80 0x00. This is interpreted literraly by
   some HSMs which do not accept an integer with a leading zero. This
   improves operation with certain Atos HSMs.

** libgnutls: Backported PKCS#11 key generation functionality for DSA keys.

** libgnutls: Improve check for /dev/urandom uniqueness. Ensure that when
   gnutls_global_init() is called for a second time that /dev/urandom is
   re-opened when the inode or device ID has changed.

** API and ABI modifications:
No changes since last version.

Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
---
 recipes-support/gnutls/gnutls.inc       |  9 ++++-----
 recipes-support/gnutls/gnutls_3.3.27.bb | 17 -----------------
 recipes-support/gnutls/gnutls_3.3.28.bb |  8 ++++++++
 3 files changed, 12 insertions(+), 22 deletions(-)
 delete mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
 create mode 100644 recipes-support/gnutls/gnutls_3.3.28.bb

diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
index 4a5c3df..4cf375f 100644
--- a/recipes-support/gnutls/gnutls.inc
+++ b/recipes-support/gnutls/gnutls.inc
@@ -8,9 +8,8 @@ LICENSE_${PN}-xx = "LGPLv2.1+"
 LICENSE_${PN}-bin = "GPLv3+"
 LICENSE_${PN}-openssl = "GPLv3+"
 
-LIC_FILES_CHKSUM = "file://LICENSE;md5=71391c8e0c1cfe68077e7fce3b586283 \
-                    file://doc/COPYING;md5=d32239bcb673463ab874e80d47fae504 \
-                    file://doc/COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 DEPENDS = "nettle gmp virtual/libiconv"
 DEPENDS_append_libc-musl = " argp-standalone"
@@ -21,9 +20,8 @@ SRC_URI = "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
 
 inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk-doc
 
-PACKAGECONFIG ??= "libidn zlib"
+PACKAGECONFIG ??= "zlib"
 
-PACKAGECONFIG[libidn] = "--with-idn,--without-idn,libidn"
 PACKAGECONFIG[libtasn1] = "--with-included-libtasn1=no,--with-included-libtasn1,libtasn1"
 PACKAGECONFIG[p11-kit] = "--with-p11-kit,--without-p11-kit,p11-kit"
 PACKAGECONFIG[tpm] = "--with-tpm,--without-tpm,trousers"
@@ -31,6 +29,7 @@ PACKAGECONFIG[zlib] = "--with-zlib,--without-zlib,zlib"
 
 EXTRA_OECONF = " \
     --enable-doc \
+    --disable-crywrap \
     --disable-libdane \
     --disable-guile \
     --disable-rpath \
diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gnutls/gnutls_3.3.27.bb
deleted file mode 100644
index a1dcdb5..0000000
--- a/recipes-support/gnutls/gnutls_3.3.27.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-require gnutls.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
-                    file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI += " \
-    file://configure.ac-fix-sed-command.patch \
-    file://use-pkg-config-to-locate-zlib.patch \
-"
-SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
-SRC_URI[sha256sum] = "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b1572650a7ffb56b17f"
-
-# This version doesn't support this option added in newer gnutls
-# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was passed unrecognised options: --with-idn [unknown-configure-option]
-PACKAGECONFIG[libidn] = ""
-# but it still has the libidn dependency, without this option
-EXTRA_OECONF += "--disable-crywrap"
diff --git a/recipes-support/gnutls/gnutls_3.3.28.bb b/recipes-support/gnutls/gnutls_3.3.28.bb
new file mode 100644
index 0000000..1b23369
--- /dev/null
+++ b/recipes-support/gnutls/gnutls_3.3.28.bb
@@ -0,0 +1,8 @@
+require gnutls.inc
+
+SRC_URI += " \
+    file://configure.ac-fix-sed-command.patch \
+    file://use-pkg-config-to-locate-zlib.patch \
+"
+SRC_URI[md5sum] = "e19718d97cee5279edf3f3b9318f926c"
+SRC_URI[sha256sum] = "608f63441abc209c5bd5f61e35f2b6128c22e06fa2ad6248a08d8a643feeb807"
-- 
1.9.1


