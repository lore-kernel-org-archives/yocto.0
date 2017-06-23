Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06012E00BAF; Fri, 23 Jun 2017 03:32:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD0F2E00B53
	for <yocto@lists.yoctoproject.org>;
	Fri, 23 Jun 2017 03:32:46 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id c11so59577192wrc.3
	for <yocto@lists.yoctoproject.org>;
	Fri, 23 Jun 2017 03:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=AXUdsG1Dm7yLpZQqtM2O5GW+7qtBlybhmeSCgekPLtU=;
	b=PUV8SMls2pc8vxxyqKnxR91+g+Ai8AaGVYj6t9XR9w1lH9TqSf17PFr3euE8DCuOwK
	51CuLL4vWTDQR6kRWZqbbGA7a4AMZrbBujEHIu4yHM4g8rTtI7AJXl8dmlQsnMf0WnR0
	qc4RrAUYWrxU1PRijTnfNP6XqJE3d9axFqE1RqpQzdseMqo3/0TwifgUJqFoJdSxSldb
	fm0bWCoLnWubp5BD4+sDfF9FVsYcsGcnt9YheXjxz1/oCe34XMKyUfPNrnA05r5Z8tcP
	GCyU40ZNaK+nIPaIyuGJKxfrDggwjap4JICmwK5rbYz+n449FdlX+OkfiqtcnVYLL+qA
	I2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=AXUdsG1Dm7yLpZQqtM2O5GW+7qtBlybhmeSCgekPLtU=;
	b=XGZNSTso/2Z1hWKhVcv8xrfPPVuW38Dv+asfLef4qo6cyVRP4RlvS0LToBCNS18yCj
	TBbWht4SmVmw0txQ2BJGSrAYpUaloXBiMjzO0yrKnhVxED6N42/T+R5he7qDAQFDw7oA
	h1T5Frs9PA8WWqzNrkPPSk73EN/g+85QRD66EHBHPA5B/4i9sEQuPkM0o3DJDvuUNw3m
	cLftzwiMqz1nOpnJtSYq6QzgSzkXAMx0MFLLd/inOQxIy3rd6Q80t0PGFoaIiyUklsNm
	aM0DzAmHMRglkB+43JZX8QsiRdyW2z/cW0DmWWtl7XGtHIPa/Qx0lB5h7F/+SZlSuD+k
	XNkA==
X-Gm-Message-State: AKS2vOwEwLdyVaRSlTNSUdSYzuWeCmBI/t+4vi9jFe5kONp3lug+POna
	Wo4dbwadxz25960j
X-Received: by 10.28.18.145 with SMTP id 139mr4981087wms.2.1498213965121;
	Fri, 23 Jun 2017 03:32:45 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	m73sm3875118wmi.25.2017.06.23.03.32.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 03:32:44 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Fri, 23 Jun 2017 12:32:53 +0200
Message-Id: <20170623103253.22812-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.13.1
Subject: [PATCH][meta-gplv2] gnutls: make it independent on gnutls.inc from oe-core
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
X-List-Received-Date: Fri, 23 Jun 2017 10:32:48 -0000

* also remove correct_rpl_gettimeofday_signature.patch like in
  commit e01e7c543a559c8926d72159b5cd55db0c661434
  Author: Richard Purdie <richard.purdie@linuxfoundation.org>
  Date:   Thu Jun 15 23:15:00 2017 +0100
  meta: Remove further uclibc remnants (inc. patches and site files)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-support/gnutls/gnutls.inc       | 57 +++++++++++++++++++++++++++++++++
 recipes-support/gnutls/gnutls_3.3.27.bb |  8 +----
 2 files changed, 58 insertions(+), 7 deletions(-)
 create mode 100644 recipes-support/gnutls/gnutls.inc

diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
new file mode 100644
index 0000000..4a5c3df
--- /dev/null
+++ b/recipes-support/gnutls/gnutls.inc
@@ -0,0 +1,57 @@
+SUMMARY = "GNU Transport Layer Security Library"
+HOMEPAGE = "http://www.gnu.org/software/gnutls/"
+BUGTRACKER = "https://savannah.gnu.org/support/?group=gnutls"
+
+LICENSE = "GPLv3+ & LGPLv2.1+"
+LICENSE_${PN} = "LGPLv2.1+"
+LICENSE_${PN}-xx = "LGPLv2.1+"
+LICENSE_${PN}-bin = "GPLv3+"
+LICENSE_${PN}-openssl = "GPLv3+"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=71391c8e0c1cfe68077e7fce3b586283 \
+                    file://doc/COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://doc/COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+DEPENDS = "nettle gmp virtual/libiconv"
+DEPENDS_append_libc-musl = " argp-standalone"
+
+SHRT_VER = "${@d.getVar('PV').split('.')[0]}.${@d.getVar('PV').split('.')[1]}"
+
+SRC_URI = "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
+
+inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk-doc
+
+PACKAGECONFIG ??= "libidn zlib"
+
+PACKAGECONFIG[libidn] = "--with-idn,--without-idn,libidn"
+PACKAGECONFIG[libtasn1] = "--with-included-libtasn1=no,--with-included-libtasn1,libtasn1"
+PACKAGECONFIG[p11-kit] = "--with-p11-kit,--without-p11-kit,p11-kit"
+PACKAGECONFIG[tpm] = "--with-tpm,--without-tpm,trousers"
+PACKAGECONFIG[zlib] = "--with-zlib,--without-zlib,zlib"
+
+EXTRA_OECONF = " \
+    --enable-doc \
+    --disable-libdane \
+    --disable-guile \
+    --disable-rpath \
+    --enable-local-libopts \
+    --enable-openssl-compatibility \
+    --with-libpthread-prefix=${STAGING_DIR_HOST}${prefix} \
+"
+
+LDFLAGS_append_libc-musl = " -largp"
+LDFLAGS_append_libc-uclibc = " -luargp -pthread"
+
+do_configure_prepend() {
+	for dir in . lib; do
+		rm -f ${dir}/aclocal.m4 ${dir}/m4/libtool.m4 ${dir}/m4/lt*.m4
+	done
+}
+
+PACKAGES =+ "${PN}-openssl ${PN}-xx"
+
+FILES_${PN}-dev += "${bindir}/gnutls-cli-debug"
+FILES_${PN}-openssl = "${libdir}/libgnutls-openssl.so.*"
+FILES_${PN}-xx = "${libdir}/libgnutlsxx.so.*"
+
+BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gnutls/gnutls_3.3.27.bb
index 9a8cd40..a1dcdb5 100644
--- a/recipes-support/gnutls/gnutls_3.3.27.bb
+++ b/recipes-support/gnutls/gnutls_3.3.27.bb
@@ -1,12 +1,9 @@
-require recipes-support/gnutls/gnutls.inc
+require gnutls.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
-FILESEXTRAPATHS_prepend = "${THISDIR}/${BPN}:${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
-
 SRC_URI += " \
-    file://correct_rpl_gettimeofday_signature.patch \
     file://configure.ac-fix-sed-command.patch \
     file://use-pkg-config-to-locate-zlib.patch \
 "
@@ -18,6 +15,3 @@ SRC_URI[sha256sum] = "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b1572650a7ffb
 PACKAGECONFIG[libidn] = ""
 # but it still has the libidn dependency, without this option
 EXTRA_OECONF += "--disable-crywrap"
-
-# This version doesn't support this option added in newer gnutls
-EXTRA_OECONF_remove = "--without-libunistring-prefix"
-- 
2.13.1


