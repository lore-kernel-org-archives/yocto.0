Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BF5E00753; Sat, 13 Dec 2014 10:15:24 -0800 (PST)
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
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E279FE00751
	for <yocto@yoctoproject.org>; Sat, 13 Dec 2014 10:15:14 -0800 (PST)
Received: by mail-pd0-f180.google.com with SMTP id w10so9132883pde.39
	for <yocto@yoctoproject.org>; Sat, 13 Dec 2014 10:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ZIKRc/Z//hXAqrPvMnPEAhZBK/4qUXHrHMKBbAhTrF4=;
	b=NSR5wfcQENqjJ25zhDMKF2RxT+cS7xrjE4Hds8T0IRqGQRuFVEmXLAJISMcNnpH/bi
	Im6TRPGAOhfC+HPrH8YFaQhIJf0fjbZZhOf0fTfk5VzsMaOg4nLts5/YXmxd3RIBxKJv
	/f//dgzR6V/2bwGkmMUlV13EF/az935AGRx+PVmQnwN3RbIa6pfVBfrpQHhcnLVZhNfM
	4OJTB2h+vYLE2wUfW1yijXCnxKoZoMy3uqvA4qGUED3QtUhlRFlgLew90VdKS7E9cAzt
	LJoG5A9ZoLFc7fiYCZO0F8nGy6HMCsdoPBBQOk4s1z8QfK41HCDeSSgDmbZrzIGm5aE9
	qsJw==
X-Received: by 10.68.194.227 with SMTP id hz3mr36748304pbc.52.1418494512807;
	Sat, 13 Dec 2014 10:15:12 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:8d0c:d29c:4b71:4aab?
	([2601:c:9380:601:8d0c:d29c:4b71:4aab])
	by mx.google.com with ESMTPSA id w5sm4819018pdj.13.2014.12.13.10.15.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 13 Dec 2014 10:15:11 -0800 (PST)
Message-ID: <548C822B.6090008@gmail.com>
Date: Sat, 13 Dec 2014 10:15:07 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Li xin <lixin.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
References: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
In-Reply-To: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
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
X-List-Received-Date: Sat, 13 Dec 2014 18:15:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


The current version in Meta-security is 3.1.3. Please check and send any 
changes to this list with [meta-security] in the subject.


- Armin

On 12/10/2014 12:33 AM, Li xin wrote:
> Samhain is an open source file integrity and intrusion detection
> system for Unix that uses cryptographic checksums of files to
> detect modifications, and allows you to trace: what changes have
> occured in your system, when these changes have occured, and who
> was logged into the system at the respective time.
>
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
>   .../samhain/0001-Makefile.in-error-fix.patch       | 31 ++++++++++++
>   .../samhain/samhain/config-site.samhain-3.1.3      |  2 +
>   .../recipes-cgl/samhain/samhain_3.1.3.bb           | 58 ++++++++++++++++++++++
>   3 files changed, 91 insertions(+)
>   create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
>   create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
>   create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
>
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
> new file mode 100644
> index 0000000..cd646f6
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
> @@ -0,0 +1,31 @@
> +From a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 2001
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
> +@@ -54,7 +54,7 @@ selectconfig = @selectconfig@
> + top_builddir = .
> +
> + INSTALL = @INSTALL@
> +-INSTALL_PROGRAM = @INSTALL@ -s -m 700
> ++INSTALL_PROGRAM = @INSTALL@ -m 700
> + INSTALL_SHELL = @INSTALL@ -m 700
> + INSTALL_DATA = @INSTALL@ -m 600
> + INSTALL_MAN = @INSTALL@ -m 644
> +--
> +1.8.4.2
> +
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3 b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
> new file mode 100644
> index 0000000..2ce3769
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
> @@ -0,0 +1,2 @@
> +ssp_cv_lib=no
> +sh_cv_va_copy=yes
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> new file mode 100644
> index 0000000..22c8577
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> @@ -0,0 +1,58 @@
> +SUMMARY = "File Integrity and Intrusion Detection System"
> +DESCRIPTION = "Samhain is an open source file integrity and intrusion detection \
> +system for Unix that uses cryptographic checksums of files to \
> +detect modifications, and allows you to trace: what changes have \
> +occured in your system, when these changes have occured, and who \
> +was logged into the system at the respective time."
> +
> +HOMEPAGE = "http://la-samhna.de/samhain/"
> +SECTION = "Filesystem"
> +
> +SRC_URI = "http://la-samhna.de/samhain/samhain-current.tar.gz;extract=samhain-3.1.3.tar.gz \
> +   file://0001-Makefile.in-error-fix.patch"
> +SRC_URI[md5sum] = "64572a4dbfdc8065d6e9f7ca0eab0a34"
> +SRC_URI[sha256sum] = "c234afaf9ba3c6b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
> +
> +DEPENDS = "libpthread-stubs acl zlib attr"
> +inherit autotools-brokensep pkgconfig
> +
> +do_unpack2() {
> +    cd ${WORKDIR}
> +    tar zxvf ${PN}-${PV}.tar.gz
> +}
> +
> +S = "${WORKDIR}/${BP}"
> +
> +addtask unpack2 after do_unpack before do_patch
> +do_configure() {
> +    export CONFIG_SITE=./config-site.${BP}
> +    ./configure \
> +        --host=${HOST_SYS} \
> +        --build=${BUILD_SYS} \
> +        --prefix=${prefix} \
> +        --sbindir=${sbindir} \
> +        --mandir=${mandir} \
> +        --sysconfdir=${sysconfdir} \
> +        --localstatedir=${localstatedir} \
> +        --with-config-file=/etc/samhain/samhainrc \
> +        --with-state-dir=/var/samhain \
> +        --with-html-file=/var/samhain/samhain.html \
> +        --with-data-file=/var/samhain/samhain.data \
> +        --with-pid-file=/var/samhain/samhain.pid \
> +        --with-log-file=/var/samhain/samhain.log \
> +        --enable-login-watch \
> +        --disable-khide \
> +        --enable-suidcheck \
> +        --with-trusted=0
> +}
> +
> +do_install() {
> +    install -d -m 755 ${D}/var/samhain
> +    install -d  ${D}/${mandir}
> +    oe_runmake DESTDIR=${D} install-program install-man install-data
> +    chmod -R a+r ${D}/${mandir}
> +    install -d ${D}/etc/samhain
> +    install -c -m 644  samhainrc.linux ${D}/etc/samhain/samhainrc
> +}
>

