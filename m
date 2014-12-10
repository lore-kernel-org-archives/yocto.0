Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9DC6E0082F; Wed, 10 Dec 2014 09:28:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B93E00461
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 09:28:39 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id lf10so2594218pab.18
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 09:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=TMRR2wONSIB2uEc0ghKF/xJ7h8M7PNzlcxnKXsPXfC8=;
	b=u1JhiMajfDYAee887nRDQ2m5FcYQDAnGtuXvNtps2a6PtG2Ymp8oVQ/GZQtXiNG5Pj
	lcHzmOMOGJjWLXVaYncozBTnfIdRZ9yoL0Kvm8chatR5LG0bS+8ajvrlY5SiKtV+sHne
	qsJ7bFZFzbYvAU2jekm6tIDznKd4Qc8KKEmYO/MaLVegff1NegqQh+khMcIfyx2LWFA1
	62pwGSo8Cc3W55Ba8bYHXzEHyeMD03eZmhZwoIPr0lxn2N92erzn8RKz/Bk66Jm/cnq+
	efsMZGNLHJC2CLmCNASpzHR/inTEfnBQaVK8QpQHaT0T6taJbUdElXFD0LaXWYRteKit
	ofPQ==
X-Received: by 10.66.179.75 with SMTP id de11mr9028079pac.24.1418232518725;
	Wed, 10 Dec 2014 09:28:38 -0800 (PST)
Received: from [192.168.0.27] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id ye4sm2194886pab.35.2014.12.10.09.28.37
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Dec 2014 09:28:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
Date: Wed, 10 Dec 2014 09:28:36 -0800
Message-Id: <02AD8519-65B5-4FD0-BC7F-F3FE6391948E@gmail.com>
References: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>
X-Mailer: Apple Mail (2.1993)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH] samhain: add new recipe
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
X-List-Received-Date: Wed, 10 Dec 2014 17:28:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Dec 10, 2014, at 12:33 AM, Li xin <lixin.fnst@cn.fujitsu.com> =
wrote:
>=20
> Samhain is an open source file integrity and intrusion detection
> system for Unix that uses cryptographic checksums of files to
> detect modifications, and allows you to trace: what changes have
> occured in your system, when these changes have occured, and who
> was logged into the system at the respective time.
>=20
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
> .../samhain/0001-Makefile.in-error-fix.patch       | 31 ++++++++++++
> .../samhain/samhain/config-site.samhain-3.1.3      |  2 +
> .../recipes-cgl/samhain/samhain_3.1.3.bb           | 58 =
++++++++++++++++++++++
> 3 files changed, 91 insertions(+)
> create mode 100644 =
meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.pat=
ch
> create mode 100644 =
meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
> create mode 100644 =
meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
>=20
> diff --git =
a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.p=
atch =
b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.p=
atch
> new file mode 100644
> index 0000000..cd646f6
> --- /dev/null
> +++ =
b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.p=
atch
> @@ -0,0 +1,31 @@
> +=46rom a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 =
2001
> +From: Li xin <lixin.fnst@cn.fujitsu.com>
> +Date: Wed, 10 Dec 2014 14:45:28 +0900
> +Subject: [PATCH] Makefile.in: error fix
> +
> +error:File '/usr/sbin/samhain' from samhain was already stripped,
> +this will prevent future debugging!
> +
> +Upstream-Status: pending
> +
> +Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> +---
> + Makefile.in | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Makefile.in b/Makefile.in
> +index b1904d9..000de49 100644
> +--- a/Makefile.in
> ++++ b/Makefile.in
> +@@ -54,7 +54,7 @@ selectconfig =3D @selectconfig@
> + top_builddir =3D .
> +=20
> + INSTALL =3D @INSTALL@
> +-INSTALL_PROGRAM =3D @INSTALL@ -s -m 700
> ++INSTALL_PROGRAM =3D @INSTALL@ -m 700
> + INSTALL_SHELL =3D @INSTALL@ -m 700
> + INSTALL_DATA =3D @INSTALL@ -m 600
> + INSTALL_MAN =3D @INSTALL@ -m 644
> +--=20
> +1.8.4.2
> +
> diff --git =
a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3 =
b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
> new file mode 100644
> index 0000000..2ce3769
> --- /dev/null
> +++ =
b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
> @@ -0,0 +1,2 @@
> +ssp_cv_lib=3Dno
> +sh_cv_va_copy=3Dyes
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb =
b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> new file mode 100644
> index 0000000..22c8577
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> @@ -0,0 +1,58 @@
> +SUMMARY =3D "File Integrity and Intrusion Detection System"
> +DESCRIPTION =3D "Samhain is an open source file integrity and =
intrusion detection \
> +system for Unix that uses cryptographic checksums of files to \
> +detect modifications, and allows you to trace: what changes have \
> +occured in your system, when these changes have occured, and who \
> +was logged into the system at the respective time."
> +
> +HOMEPAGE =3D "http://la-samhna.de/samhain/"
> +SECTION =3D "Filesystem"
> +
> +SRC_URI =3D =
"http://la-samhna.de/samhain/samhain-current.tar.gz;extract=3Dsamhain-3.1.=
3.tar.gz \
> +   file://0001-Makefile.in-error-fix.patch"
> +SRC_URI[md5sum] =3D "64572a4dbfdc8065d6e9f7ca0eab0a34"
> +SRC_URI[sha256sum] =3D =
"c234afaf9ba3c6b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"
> +LICENSE =3D "GPLv2"
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D8ca43cbc842c2336e835926c2166c28b"
> +
> +DEPENDS =3D "libpthread-stubs acl zlib attr"
> +inherit autotools-brokensep pkgconfig
> +
> +do_unpack2() {
> +    cd ${WORKDIR}
> +    tar zxvf ${PN}-${PV}.tar.gz
> +}

why is this needed ? can=E2=80=99t do_fetch/do_unpack do it ?

> +
> +S =3D "${WORKDIR}/${BP}"
> +
> +addtask unpack2 after do_unpack before do_patch
> +do_configure() {
> +    export CONFIG_SITE=3D./config-site.${BP}
> +    ./configure \
> +        --host=3D${HOST_SYS} \
> +        --build=3D${BUILD_SYS} \
> +        --prefix=3D${prefix} \
> +        --sbindir=3D${sbindir} \
> +        --mandir=3D${mandir} \
> +        --sysconfdir=3D${sysconfdir} \
> +        --localstatedir=3D${localstatedir} \
> +        --with-config-file=3D/etc/samhain/samhainrc \
> +        --with-state-dir=3D/var/samhain \
> +        --with-html-file=3D/var/samhain/samhain.html \
> +        --with-data-file=3D/var/samhain/samhain.data \
> +        --with-pid-file=3D/var/samhain/samhain.pid \
> +        --with-log-file=3D/var/samhain/samhain.log \
> +        --enable-login-watch \
> +        --disable-khide \
> +        --enable-suidcheck \
> +        --with-trusted=3D0
> +}

you might not need do_configure override. Just specify additional opts =
in EXTRA_OECONF

> +
> +do_install() {
> +    install -d -m 755 ${D}/var/samhain
> +    install -d  ${D}/${mandir}
> +    oe_runmake DESTDIR=3D${D} install-program install-man =
install-data
> +    chmod -R a+r ${D}/${mandir}
> +    install -d ${D}/etc/samhain
> +    install -c -m 644  samhainrc.linux ${D}/etc/samhain/samhainrc
> +}


This should be do_install_append

> --=20
> 1.8.4.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


