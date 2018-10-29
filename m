Return-Path: <ephraim4321@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 895D6E00BFD; Mon, 29 Oct 2018 02:51:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ephraim4321[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E35DE00C15
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 02:51:02 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id f21-v6so3308890oig.1
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 02:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:reply-to:from:date:message-id
	:subject:to; bh=6mNUlKd5/tDA/xWoSHmJYietMUh76RQ7ImftBAYIKWc=;
	b=IckTc9zpQjvWnMuj/1gwCJXUN22UyVzPTTnEpLhcyLLSNjreHtirEPqTe+Ho9MT/c1
	t7QfpxR8X0D+cDRBdlJ5hNuGr689pAfbQqG8iIbM36Z00BHD7ZmarwkPbN4fgFvzykao
	VfM81wT/vIKjY/dHjTQjgW7pKQnqMLkMHFdnT9OnbPGL13/xN/vfYWKFD/zrdy+seC5V
	l7oyx/wKcU4u28nOj+LChXQsYYqvzSvkysH4XdCKTVfpi8+hEFOzYSDkEKjBVNNbCqpj
	pCaduyiMsq+UA3GCMbkm+xV6UNZxU8XxQyjisqP+lS/mpyesKBYQ/5QCfKmnBJ8Z+Yln
	PQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
	:from:date:message-id:subject:to;
	bh=6mNUlKd5/tDA/xWoSHmJYietMUh76RQ7ImftBAYIKWc=;
	b=gaerR6mBCBl2qVdt3Mdys8g2vXpzeFBvrA9Gpqvi/raf4SLlSWTJr3D7jNyc7mcPeM
	A+fXvYJa8ARD8TJ82R01L9+7Yj0dMDoTe7H+u32LpwwrKSkdlfDuTFHBOmvZLhtVoKX0
	ivyyhNforefNsP26X8eeOebg/5elH3RgSYSoWrp4RuxChLBwvquxfHolr8JQr5qk75A3
	rWCbT+FkkP2FzlQpy5j0qxwFY0fVb5JuOC0VIVTbhiC5ZErpqAja18p6GuVbz4Y+gnkR
	Yk+3autXGMazd5nMDCYbCy6PhOZo91dnIkLQ8OrBAH4LWWjmCLm/R+C7uzAisaECHnVJ
	D4Fw==
X-Gm-Message-State: AGRZ1gLi41EE+z7b7iSJf/61Zfb00dZ4JiiYmGS/ehLNONeBuYm4QAKQ
	P/3XW/aLXneM3N+2mfFLmsb7yidn3IzN77UeNic26w==
X-Google-Smtp-Source: AJdET5eY9byOUYgKj+VJMRMYipLyIfv8Byl/OBTzz7b9oRLVmkeVtJE/NN9Nd5gSSp/fAYdUaRp0Nert4unCi1IpxgA=
X-Received: by 2002:aca:4904:: with SMTP id w4-v6mr8490884oia.8.1540806661476; 
	Mon, 29 Oct 2018 02:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.4114.1540752637.2881.yocto@yoctoproject.org>
In-Reply-To: <mailman.4114.1540752637.2881.yocto@yoctoproject.org>
From: ephraim ben-ishai <ephraim4321@gmail.com>
Date: Mon, 29 Oct 2018 11:50:49 +0200
Message-ID: <CAE2TyXA9a=RWjw2aQqHtDMnSGbDPU07iwba5F6KtFhNcds1xjA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 97, Issue 86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ephraim4321@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 Oct 2018 09:51:07 -0000
Content-Type: multipart/alternative; boundary="000000000000b9972005795b0120"

--000000000000b9972005795b0120
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 28, 2018, 20:54 <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. [meta-security][PATCH 02/13] tpm2-abrmd: update to 2.0.2
>       (Armin Kuster)
>    2. [meta-security][PATCH 03/13] packagegroup-security-tpm2:  add
>       and remove packages (Armin Kuster)
>    3. [meta-security][PATCH 05/13] packagegroup-core-security:  add
>       few more ptest packages (Armin Kuster)
>    4. [meta-security][PATCH 04/13] swtpm: switch to stable branch
>       and clean up recipe (Armin Kuster)
>    5. [meta-security][PATCH 06/13] suricata: add ptest (Armin Kuster)
>    6. [meta-security][PATCH 07/13] packagegroup-core-security:  add
>       suricata-ptest (Armin Kuster)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Sun, 28 Oct 2018 18:50:17 +0000
> From: Armin Kuster <akuster808@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 02/13] tpm2-abrmd: update to
>         2.0.2
> Message-ID: <1540752628-10832-2-git-send-email-akuster808@gmail.com>
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../tpm2-abrmd/{tpm2-abrmd_2.0.1.bb => tpm2-abrmd_2.0.2.bb}      | 9
> ++++-----
>  .../{tpm2simulator-native_138.bb => tpm2simulator_138.bb}        | 0
>  2 files changed, 4 insertions(+), 5 deletions(-)
>  rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_2.0.1.bb =>
> tpm2-abrmd_2.0.2.bb} (86%)
>  rename meta-tpm/recipes-tpm/tpm2simulator/{tpm2simulator-native_138.bb
> => tpm2simulator_138.bb} (100%)
>
> diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
> b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
> similarity index 86%
> rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
> rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
> index 31e90f8..951556d 100644
> --- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
> +++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
> @@ -9,15 +9,16 @@ SECTION = "security/tpm"
>  LICENSE = "BSD-2-Clause"
>  LIC_FILES_CHKSUM =
> "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
>
> -DEPENDS += "autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss
> glib-2.0-native \
> +DEPENDS = "autoconf-archive dbus glib-2.0 tpm2.0-tss glib-2.0-native \
>              libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
>
> +
>  SRC_URI = "\
>      git://github.com/01org/tpm2-abrmd.git \
>      file://tpm2-abrmd-init.sh \
>      file://tpm2-abrmd.default \
>  "
> -SRCREV = "80f8966b90d6394ad568e362d2936b333c2822bb"
> +SRCREV = "d0120ace58d97bc9520c0d558657eaca87ae73b1"
>
>  S = "${WORKDIR}/git"
>
> @@ -34,9 +35,7 @@ USERADD_PACKAGES = "${PN}"
>  GROUPADD_PARAM_${PN} = "tss"
>  USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss
> tss"
>
> -PACKAGECONFIG ?="udev"
> -PACKAGECONFIG +=
> "${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
> -
> +PACKAGECONFIG
> ?="${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
>  PACKAGECONFIG[systemd] =
> "--with-systemdsystemunitdir=${systemd_system_unitdir},
> --with-systemdsystemunitdir=no"
>
>  do_install_append() {
> diff --git a/meta-tpm/recipes-tpm/tpm2simulator/
> tpm2simulator-native_138.bb b/meta-tpm/recipes-tpm/tpm2simulator/
> tpm2simulator_138.bb
> similarity index 100%
> rename from meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb
> rename to meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 2
> Date: Sun, 28 Oct 2018 18:50:18 +0000
> From: Armin Kuster <akuster808@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 03/13]
>         packagegroup-security-tpm2:     add and remove packages
> Message-ID: <1540752628-10832-3-git-send-email-akuster808@gmail.com>
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-tpm/recipes-core/packagegroup/
> packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/
> packagegroup-security-tpm2.bb
> index 099e01c..c4c8fb2 100644
> --- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
> +++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
> @@ -1,4 +1,4 @@
> -DESCRIPTION = "Security packagegroup for Poky"
> +DESCRIPTION = "TPM2 packagegroup for Security"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>
>  file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> @@ -14,5 +14,5 @@ RDEPENDS_packagegroup-security-tpm2 = " \
>      libtss2 \
>      libtss2-tcti-device \
>      libtss2-tcti-mssim \
> -    resourcemgr \
> +    tpm2-abrmd \
>      "
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 3
> Date: Sun, 28 Oct 2018 18:50:20 +0000
> From: Armin Kuster <akuster808@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 05/13]
>         packagegroup-core-security:     add few more ptest packages
> Message-ID: <1540752628-10832-5-git-send-email-akuster808@gmail.com>
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/packagegroup/packagegroup-core-security.bb | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb
> b/recipes-security/packagegroup/packagegroup-core-security.bb
> index 653d87b..9cf233f 100644
> --- a/recipes-security/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
> @@ -65,7 +65,7 @@ RDEPENDS_packagegroup-security-ids = " \
>  SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control
> systems"
>  RDEPENDS_packagegroup-security-mac = " \
>      ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)}
> \
> -    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "", "",d)} \
> +    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor",
> "",d)} \
>      ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
>      "
>
> @@ -76,5 +76,7 @@ RDEPENDS_packagegroup-security-ptest = " \
>      keyutils-ptest \
>      libseccomp-ptest \
>      python-scapy-ptest \
> +    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest",
> "",d)} \
> +    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest",
> "",d)} \
>      ptest-runner \
>      "
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 4
> Date: Sun, 28 Oct 2018 18:50:19 +0000
> From: Armin Kuster <akuster808@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 04/13] swtpm: switch to stable
>         branch  and clean up recipe
> Message-ID: <1540752628-10832-4-git-send-email-akuster808@gmail.com>
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb | 22 +++++-----------------
>  1 file changed, 5 insertions(+), 17 deletions(-)
>
> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
> b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
> index e0c5ffe..3fe1393 100644
> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
> @@ -3,22 +3,21 @@ LICENSE = "BSD-3-Clause"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>  SECTION = "apps"
>
> -DEPENDS = "libtasn1 expect socat glib-2.0 libtpm libtpm-native"
> +DEPENDS = "libtasn1 expect socat glib-2.0 net-tools-native libtpm
> libtpm-native"
>
>  # configure checks for the tools already during compilation and
>  # then swtpm_setup needs them at runtime
>  DEPENDS += "tpm-tools-native expect-native socat-native"
>
> -SRCREV = "66b42f52ef363998cb57f039889d59381d20bdf1"
> -SRC_URI = "git://github.com/stefanberger/swtpm.git \
> -           file://fix_lib_search_path.patch \
> +SRCREV = "94bb9f2d716d09bcc6cd2a2e033018f8592008e7"
> +SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=tpm2-preview.v2
> \
>             file://fix_fcntl_h.patch \
>             file://ioctl_h.patch \
>             "
>
>  S = "${WORKDIR}/git"
>
> -inherit autotools-brokensep pkgconfig
> +inherit autotools pkgconfig
>  PARALLEL_MAKE = ""
>
>  TSS_USER="tss"
> @@ -35,21 +34,12 @@ EXTRA_OECONF += "--with-tss-user=${TSS_USER}
> --with-tss-group=${TSS_GROUP}"
>
>  export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
>
> -# dup bootstrap
> -do_configure_prepend () {
> -       libtoolize --force --copy
> -       autoheader
> -       aclocal
> -       automake --add-missing -c
> -       autoconf
> -}
> -
>  USERADD_PACKAGES = "${PN}"
>  GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
>  USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
>      --no-create-home  --shell /bin/false ${BPN}"
>
> -RDEPENDS_${PN} = "libtpm expect socat bash"
> +RDEPENDS_${PN} = "libtpm expect socat bash tpm-tools"
>
>  BBCLASSEXTEND = "native nativesdk"
>
> @@ -58,5 +48,3 @@ python() {
>          'filesystems-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
>          raise bb.parse.SkipRecipe('Cuse enabled which requires
> meta-filesystems to be present.')
>  }
> -
> -RDEPENDS_${PN} += "tpm-tools"
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 5
> Date: Sun, 28 Oct 2018 18:50:21 +0000
> From: Armin Kuster <akuster808@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 06/13] suricata: add ptest
> Message-ID: <1540752628-10832-6-git-send-email-akuster808@gmail.com>
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/suricata/files/run-ptest   | 3 +++
>  recipes-security/suricata/suricata_4.0.5.bb | 6 +++++-
>  2 files changed, 8 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-security/suricata/files/run-ptest
>
> diff --git a/recipes-security/suricata/files/run-ptest
> b/recipes-security/suricata/files/run-ptest
> new file mode 100644
> index 0000000..666ba9c
> --- /dev/null
> +++ b/recipes-security/suricata/files/run-ptest
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +suricata -u
> diff --git a/recipes-security/suricata/suricata_4.0.5.bb
> b/recipes-security/suricata/suricata_4.0.5.bb
> index 90b4638..6c0a109 100644
> --- a/recipes-security/suricata/suricata_4.0.5.bb
> +++ b/recipes-security/suricata/suricata_4.0.5.bb
> @@ -10,12 +10,13 @@ SRC_URI += " \
>             file://volatiles.03_suricata \
>             file://suricata.yaml \
>             file://suricata.service \
> +           file://run-ptest \
>             "
>
>  SRC_URI[rules.md5sum] = "205c5e5b54e489207ed892c03ad75b33"
>  SRC_URI[rules.sha256sum] =
> "4aa81011b246875a57181c6a0569ca887845e366904bcaf0043220f33bd69798"
>
> -inherit autotools-brokensep pkgconfig python-dir systemd
> +inherit autotools-brokensep pkgconfig python-dir systemd ptest
>
>  CFLAGS += "-D_DEFAULT_SOURCE"
>
> @@ -28,6 +29,8 @@ EXTRA_OECONF += " --disable-debug \
>      "
>
>  PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink
> nss nspr"
> +PACKAGECONFIG_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ptest',
> 'unittests', '', d)}"
> +
>  PACKAGECONFIG[htp] = "--with-libhtp-includes=${STAGING_INCDIR}
> --with-libhtp-libraries=${STAGING_LIBDIR}, ,libhtp,"
>  PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR}
> --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ,"
>  PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR}
> --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
> @@ -42,6 +45,7 @@ PACKAGECONFIG[file] = ",,file, file"
>  PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR}
> --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss,"
>  PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR}
> --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr,"
>  PACKAGECONFIG[python] = "--enable-python, --disable-python, python,
> python"
> +PACKAGECONFIG[unittests] = "--enable-unittests, --disable-unittests,"
>
>  export logdir = "${localstatedir}/log"
>
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 6
> Date: Sun, 28 Oct 2018 18:50:22 +0000
> From: Armin Kuster <akuster808@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 07/13]
>         packagegroup-core-security:     add suricata-ptest
> Message-ID: <1540752628-10832-7-git-send-email-akuster808@gmail.com>
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/packagegroup/packagegroup-core-security.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb
> b/recipes-security/packagegroup/packagegroup-core-security.bb
> index 9cf233f..5ee06e3 100644
> --- a/recipes-security/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
> @@ -76,6 +76,7 @@ RDEPENDS_packagegroup-security-ptest = " \
>      keyutils-ptest \
>      libseccomp-ptest \
>      python-scapy-ptest \
> +    suricata-ptest \
>      ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest",
> "",d)} \
>      ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest",
> "",d)} \
>      ptest-runner \
> --
> 2.7.4
>
>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 97, Issue 86
> *************************************
>

--000000000000b9972005795b0120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On =
Sun, Oct 28, 2018, 20:54  &lt;<a href=3D"mailto:yocto-request@yoctoproject.=
org">yocto-request@yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Send yocto mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank" rel=3D"noreferrer">yocto@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-request@yoctoproject.or=
g" target=3D"_blank" rel=3D"noreferrer">yocto-request@yoctoproject.org</a><=
br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org"=
 target=3D"_blank" rel=3D"noreferrer">yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. [meta-security][PATCH 02/13] tpm2-abrmd: update to 2.0.2<br=
>
=C2=A0 =C2=A0 =C2=A0 (Armin Kuster)<br>
=C2=A0 =C2=A02. [meta-security][PATCH 03/13] packagegroup-security-tpm2:=C2=
=A0 add<br>
=C2=A0 =C2=A0 =C2=A0 and remove packages (Armin Kuster)<br>
=C2=A0 =C2=A03. [meta-security][PATCH 05/13] packagegroup-core-security:=C2=
=A0 add<br>
=C2=A0 =C2=A0 =C2=A0 few more ptest packages (Armin Kuster)<br>
=C2=A0 =C2=A04. [meta-security][PATCH 04/13] swtpm: switch to stable branch=
<br>
=C2=A0 =C2=A0 =C2=A0 and clean up recipe (Armin Kuster)<br>
=C2=A0 =C2=A05. [meta-security][PATCH 06/13] suricata: add ptest (Armin Kus=
ter)<br>
=C2=A0 =C2=A06. [meta-security][PATCH 07/13] packagegroup-core-security:=C2=
=A0 add<br>
=C2=A0 =C2=A0 =C2=A0 suricata-ptest (Armin Kuster)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Sun, 28 Oct 2018 18:50:17 +0000<br>
From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] [meta-security][PATCH 02/13] tpm2-abrmd: update to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 2.0.2<br>
Message-ID: &lt;<a href=3D"mailto:1540752628-10832-2-git-send-email-akuster=
808@gmail.com" target=3D"_blank" rel=3D"noreferrer">1540752628-10832-2-git-=
send-email-akuster808@gmail.com</a>&gt;<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../tpm2-abrmd/{<a href=3D"http://tpm2-abrmd_2.0.1.bb" rel=3D"norefer=
rer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.1.bb</a> =3D&gt; <a href=
=3D"http://tpm2-abrmd_2.0.2.bb" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">tpm2-abrmd_2.0.2.bb</a>}=C2=A0 =C2=A0 =C2=A0 | 9 ++++-----<br>
=C2=A0.../{<a href=3D"http://tpm2simulator-native_138.bb" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">tpm2simulator-native_138.bb</a> =3D&gt; <a h=
ref=3D"http://tpm2simulator_138.bb" rel=3D"noreferrer noreferrer" target=3D=
"_blank">tpm2simulator_138.bb</a>}=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 0<br>
=C2=A02 files changed, 4 insertions(+), 5 deletions(-)<br>
=C2=A0rename meta-tpm/recipes-tpm/tpm2-abrmd/{<a href=3D"http://tpm2-abrmd_=
2.0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.1.=
bb</a> =3D&gt; <a href=3D"http://tpm2-abrmd_2.0.2.bb" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">tpm2-abrmd_2.0.2.bb</a>} (86%)<br>
=C2=A0rename meta-tpm/recipes-tpm/tpm2simulator/{<a href=3D"http://tpm2simu=
lator-native_138.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2si=
mulator-native_138.bb</a> =3D&gt; <a href=3D"http://tpm2simulator_138.bb" r=
el=3D"noreferrer noreferrer" target=3D"_blank">tpm2simulator_138.bb</a>} (1=
00%)<br>
<br>
diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/<a href=3D"http://tpm2-abrmd_2=
.0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.1.b=
b</a> b/meta-tpm/recipes-tpm/tpm2-abrmd/<a href=3D"http://tpm2-abrmd_2.0.2.=
bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.2.bb</a>=
<br>
similarity index 86%<br>
rename from meta-tpm/recipes-tpm/tpm2-abrmd/<a href=3D"http://tpm2-abrmd_2.=
0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.1.bb=
</a><br>
rename to meta-tpm/recipes-tpm/tpm2-abrmd/<a href=3D"http://tpm2-abrmd_2.0.=
2.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.2.bb</=
a><br>
index 31e90f8..951556d 100644<br>
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/<a href=3D"http://tpm2-abrmd_2.0.1.bb=
" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.1.bb</a><b=
r>
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/<a href=3D"http://tpm2-abrmd_2.0.2.bb=
" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2-abrmd_2.0.2.bb</a><b=
r>
@@ -9,15 +9,16 @@ SECTION =3D &quot;security/tpm&quot;<br>
=C2=A0LICENSE =3D &quot;BSD-2-Clause&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://${S}/LICENSE;md5=3D500b2e742befc3da=
00684d8a1d5fd9da&quot;<br>
<br>
-DEPENDS +=3D &quot;autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss gli=
b-2.0-native \<br>
+DEPENDS =3D &quot;autoconf-archive dbus glib-2.0 tpm2.0-tss glib-2.0-nativ=
e \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libtss2 libtss2-mu libtss2-=
tcti-device libtss2-tcti-mssim&quot;<br>
<br>
+<br>
=C2=A0SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://github.com/01org/tpm2-abrmd.git=
" rel=3D"noreferrer noreferrer" target=3D"_blank">github.com/01org/tpm2-abr=
md.git</a> \<br>
=C2=A0 =C2=A0 =C2=A0file://tpm2-abrmd-init.sh \<br>
=C2=A0 =C2=A0 =C2=A0file://tpm2-abrmd.default \<br>
=C2=A0&quot;<br>
-SRCREV =3D &quot;80f8966b90d6394ad568e362d2936b333c2822bb&quot;<br>
+SRCREV =3D &quot;d0120ace58d97bc9520c0d558657eaca87ae73b1&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
@@ -34,9 +35,7 @@ USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
=C2=A0GROUPADD_PARAM_${PN} =3D &quot;tss&quot;<br>
=C2=A0USERADD_PARAM_${PN} =3D &quot;--system -M -d /var/lib/tpm -s /bin/fal=
se -g tss tss&quot;<br>
<br>
-PACKAGECONFIG ?=3D&quot;udev&quot;<br>
-PACKAGECONFIG +=3D &quot;${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;,&#=
39;systemd&#39;,&#39;systemd&#39;, &#39;&#39;, d)}&quot;<br>
-<br>
+PACKAGECONFIG ?=3D&quot;${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;,&#3=
9;systemd&#39;,&#39;systemd&#39;, &#39;&#39;, d)}&quot;<br>
=C2=A0PACKAGECONFIG[systemd] =3D &quot;--with-systemdsystemunitdir=3D${syst=
emd_system_unitdir}, --with-systemdsystemunitdir=3Dno&quot;<br>
<br>
=C2=A0do_install_append() {<br>
diff --git a/meta-tpm/recipes-tpm/tpm2simulator/<a href=3D"http://tpm2simul=
ator-native_138.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2sim=
ulator-native_138.bb</a> b/meta-tpm/recipes-tpm/tpm2simulator/<a href=3D"ht=
tp://tpm2simulator_138.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">=
tpm2simulator_138.bb</a><br>
similarity index 100%<br>
rename from meta-tpm/recipes-tpm/tpm2simulator/<a href=3D"http://tpm2simula=
tor-native_138.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2simu=
lator-native_138.bb</a><br>
rename to meta-tpm/recipes-tpm/tpm2simulator/<a href=3D"http://tpm2simulato=
r_138.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">tpm2simulator_138=
.bb</a><br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Sun, 28 Oct 2018 18:50:18 +0000<br>
From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] [meta-security][PATCH 03/13]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 packagegroup-security-tpm2:=C2=A0 =C2=A0 =C2=A0=
add and remove packages<br>
Message-ID: &lt;<a href=3D"mailto:1540752628-10832-3-git-send-email-akuster=
808@gmail.com" target=3D"_blank" rel=3D"noreferrer">1540752628-10832-3-git-=
send-email-akuster808@gmail.com</a>&gt;<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0meta-tpm/recipes-core/packagegroup/<a href=3D"http://packagegroup-sec=
urity-tpm2.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup=
-security-tpm2.bb</a> | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/meta-tpm/recipes-core/packagegroup/<a href=3D"http://packagegr=
oup-security-tpm2.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packa=
gegroup-security-tpm2.bb</a> b/meta-tpm/recipes-core/packagegroup/<a href=
=3D"http://packagegroup-security-tpm2.bb" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">packagegroup-security-tpm2.bb</a><br>
index 099e01c..c4c8fb2 100644<br>
--- a/meta-tpm/recipes-core/packagegroup/<a href=3D"http://packagegroup-sec=
urity-tpm2.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup=
-security-tpm2.bb</a><br>
+++ b/meta-tpm/recipes-core/packagegroup/<a href=3D"http://packagegroup-sec=
urity-tpm2.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup=
-security-tpm2.bb</a><br>
@@ -1,4 +1,4 @@<br>
-DESCRIPTION =3D &quot;Security packagegroup for Poky&quot;<br>
+DESCRIPTION =3D &quot;TPM2 packagegroup for Security&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D083=
5ade698e0bcf8506ecda2f7b4f302 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de204=
20&quot;<br>
@@ -14,5 +14,5 @@ RDEPENDS_packagegroup-security-tpm2 =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0libtss2 \<br>
=C2=A0 =C2=A0 =C2=A0libtss2-tcti-device \<br>
=C2=A0 =C2=A0 =C2=A0libtss2-tcti-mssim \<br>
-=C2=A0 =C2=A0 resourcemgr \<br>
+=C2=A0 =C2=A0 tpm2-abrmd \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Sun, 28 Oct 2018 18:50:20 +0000<br>
From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] [meta-security][PATCH 05/13]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 packagegroup-core-security:=C2=A0 =C2=A0 =C2=A0=
add few more ptest packages<br>
Message-ID: &lt;<a href=3D"mailto:1540752628-10832-5-git-send-email-akuster=
808@gmail.com" target=3D"_blank" rel=3D"noreferrer">1540752628-10832-5-git-=
send-email-akuster808@gmail.com</a>&gt;<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/packagegroup/<a href=3D"http://packagegroup-core-sec=
urity.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup-core=
-security.bb</a> | 4 +++-<br>
=C2=A01 file changed, 3 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-security/packagegroup/<a href=3D"http://packagegroup-c=
ore-security.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegro=
up-core-security.bb</a> b/recipes-security/packagegroup/<a href=3D"http://p=
ackagegroup-core-security.bb" rel=3D"noreferrer noreferrer" target=3D"_blan=
k">packagegroup-core-security.bb</a><br>
index 653d87b..9cf233f 100644<br>
--- a/recipes-security/packagegroup/<a href=3D"http://packagegroup-core-sec=
urity.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup-core=
-security.bb</a><br>
+++ b/recipes-security/packagegroup/<a href=3D"http://packagegroup-core-sec=
urity.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup-core=
-security.bb</a><br>
@@ -65,7 +65,7 @@ RDEPENDS_packagegroup-security-ids =3D &quot; \<br>
=C2=A0SUMMARY_packagegroup-security-mac =3D &quot;Security Mandatory Access=
 Control systems&quot;<br>
=C2=A0RDEPENDS_packagegroup-security-mac =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot=
;tomoyo&quot;, &quot;ccs-tools&quot;, &quot;&quot;,d)} \<br>
-=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;appa=
rmor&quot;, &quot;&quot;, &quot;&quot;,d)} \<br>
+=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;appa=
rmor&quot;, &quot;apparmor&quot;, &quot;&quot;,d)} \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot=
;smack&quot;, &quot;smack&quot;, &quot;&quot;,d)} \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
@@ -76,5 +76,7 @@ RDEPENDS_packagegroup-security-ptest =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0keyutils-ptest \<br>
=C2=A0 =C2=A0 =C2=A0libseccomp-ptest \<br>
=C2=A0 =C2=A0 =C2=A0python-scapy-ptest \<br>
+=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;appa=
rmor&quot;, &quot;apparmor-ptest&quot;, &quot;&quot;,d)} \<br>
+=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;smac=
k&quot;, &quot;smack-ptest&quot;, &quot;&quot;,d)} \<br>
=C2=A0 =C2=A0 =C2=A0ptest-runner \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Sun, 28 Oct 2018 18:50:19 +0000<br>
From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] [meta-security][PATCH 04/13] swtpm: switch to stable<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 branch=C2=A0 and clean up recipe<br>
Message-ID: &lt;<a href=3D"mailto:1540752628-10832-4-git-send-email-akuster=
808@gmail.com" target=3D"_blank" rel=3D"noreferrer">1540752628-10832-4-git-=
send-email-akuster808@gmail.com</a>&gt;<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0meta-tpm/recipes-tpm/swtpm/<a href=3D"http://swtpm_1.0.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">swtpm_1.0.bb</a> | 22 +++++----------=
-------<br>
=C2=A01 file changed, 5 insertions(+), 17 deletions(-)<br>
<br>
diff --git a/meta-tpm/recipes-tpm/swtpm/<a href=3D"http://swtpm_1.0.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">swtpm_1.0.bb</a> b/meta-tpm/re=
cipes-tpm/swtpm/<a href=3D"http://swtpm_1.0.bb" rel=3D"noreferrer noreferre=
r" target=3D"_blank">swtpm_1.0.bb</a><br>
index e0c5ffe..3fe1393 100644<br>
--- a/meta-tpm/recipes-tpm/swtpm/<a href=3D"http://swtpm_1.0.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">swtpm_1.0.bb</a><br>
+++ b/meta-tpm/recipes-tpm/swtpm/<a href=3D"http://swtpm_1.0.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">swtpm_1.0.bb</a><br>
@@ -3,22 +3,21 @@ LICENSE =3D &quot;BSD-3-Clause&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dfe8092c832b71ef20dfe4=
c6d3decb3a8&quot;<br>
=C2=A0SECTION =3D &quot;apps&quot;<br>
<br>
-DEPENDS =3D &quot;libtasn1 expect socat glib-2.0 libtpm libtpm-native&quot=
;<br>
+DEPENDS =3D &quot;libtasn1 expect socat glib-2.0 net-tools-native libtpm l=
ibtpm-native&quot;<br>
<br>
=C2=A0# configure checks for the tools already during compilation and<br>
=C2=A0# then swtpm_setup needs them at runtime<br>
=C2=A0DEPENDS +=3D &quot;tpm-tools-native expect-native socat-native&quot;<=
br>
<br>
-SRCREV =3D &quot;66b42f52ef363998cb57f039889d59381d20bdf1&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/stefanberger/swtpm.gi=
t" rel=3D"noreferrer noreferrer" target=3D"_blank">github.com/stefanberger/=
swtpm.git</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://fix_lib_search_path.patch =
\<br>
+SRCREV =3D &quot;94bb9f2d716d09bcc6cd2a2e033018f8592008e7&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/stefanberger/swtpm.gi=
t;branch=3Dtpm2-preview.v2" rel=3D"noreferrer noreferrer" target=3D"_blank"=
>github.com/stefanberger/swtpm.git;branch=3Dtpm2-preview.v2</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://fix_fcntl_h.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ioctl_h.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
-inherit autotools-brokensep pkgconfig<br>
+inherit autotools pkgconfig<br>
=C2=A0PARALLEL_MAKE =3D &quot;&quot;<br>
<br>
=C2=A0TSS_USER=3D&quot;tss&quot;<br>
@@ -35,21 +34,12 @@ EXTRA_OECONF +=3D &quot;--with-tss-user=3D${TSS_USER} -=
-with-tss-group=3D${TSS_GROUP}&quot;<br>
<br>
=C2=A0export SEARCH_DIR =3D &quot;${STAGING_LIBDIR_NATIVE}&quot;<br>
<br>
-# dup bootstrap <br>
-do_configure_prepend () {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0libtoolize --force --copy<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0autoheader<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0aclocal<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0automake --add-missing -c<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0autoconf<br>
-}<br>
-<br>
=C2=A0USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
=C2=A0GROUPADD_PARAM_${PN} =3D &quot;--system ${TSS_USER}&quot;<br>
=C2=A0USERADD_PARAM_${PN} =3D &quot;--system -g ${TSS_GROUP} --home-dir=C2=
=A0 \<br>
=C2=A0 =C2=A0 =C2=A0--no-create-home=C2=A0 --shell /bin/false ${BPN}&quot;<=
br>
<br>
-RDEPENDS_${PN} =3D &quot;libtpm expect socat bash&quot;<br>
+RDEPENDS_${PN} =3D &quot;libtpm expect socat bash tpm-tools&quot;<br>
<br>
=C2=A0BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
<br>
@@ -58,5 +48,3 @@ python() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;filesystems-layer&#39; not in d.getV=
ar(&#39;BBFILE_COLLECTIONS&#39;).split():<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise bb.parse.SkipRecipe(&#39;Cuse enabl=
ed which requires meta-filesystems to be present.&#39;)<br>
=C2=A0}<br>
-<br>
-RDEPENDS_${PN} +=3D &quot;tpm-tools&quot;<br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Sun, 28 Oct 2018 18:50:21 +0000<br>
From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] [meta-security][PATCH 06/13] suricata: add ptest<br>
Message-ID: &lt;<a href=3D"mailto:1540752628-10832-6-git-send-email-akuster=
808@gmail.com" target=3D"_blank" rel=3D"noreferrer">1540752628-10832-6-git-=
send-email-akuster808@gmail.com</a>&gt;<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/suricata/files/run-ptest=C2=A0 =C2=A0| 3 +++<br>
=C2=A0recipes-security/suricata/<a href=3D"http://suricata_4.0.5.bb" rel=3D=
"noreferrer noreferrer" target=3D"_blank">suricata_4.0.5.bb</a> | 6 +++++-<=
br>
=C2=A02 files changed, 8 insertions(+), 1 deletion(-)<br>
=C2=A0create mode 100644 recipes-security/suricata/files/run-ptest<br>
<br>
diff --git a/recipes-security/suricata/files/run-ptest b/recipes-security/s=
uricata/files/run-ptest<br>
new file mode 100644<br>
index 0000000..666ba9c<br>
--- /dev/null<br>
+++ b/recipes-security/suricata/files/run-ptest<br>
@@ -0,0 +1,3 @@<br>
+#!/bin/sh<br>
+<br>
+suricata -u<br>
diff --git a/recipes-security/suricata/<a href=3D"http://suricata_4.0.5.bb"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">suricata_4.0.5.bb</a> b/re=
cipes-security/suricata/<a href=3D"http://suricata_4.0.5.bb" rel=3D"norefer=
rer noreferrer" target=3D"_blank">suricata_4.0.5.bb</a><br>
index 90b4638..6c0a109 100644<br>
--- a/recipes-security/suricata/<a href=3D"http://suricata_4.0.5.bb" rel=3D=
"noreferrer noreferrer" target=3D"_blank">suricata_4.0.5.bb</a><br>
+++ b/recipes-security/suricata/<a href=3D"http://suricata_4.0.5.bb" rel=3D=
"noreferrer noreferrer" target=3D"_blank">suricata_4.0.5.bb</a><br>
@@ -10,12 +10,13 @@ SRC_URI +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://volatiles.03_suricata \<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://suricata.yaml \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://suricata.service \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://run-ptest \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0SRC_URI[rules.md5sum] =3D &quot;205c5e5b54e489207ed892c03ad75b33&quot=
;<br>
=C2=A0SRC_URI[rules.sha256sum] =3D &quot;4aa81011b246875a57181c6a0569ca8878=
45e366904bcaf0043220f33bd69798&quot;<br>
<br>
-inherit autotools-brokensep pkgconfig python-dir systemd <br>
+inherit autotools-brokensep pkgconfig python-dir systemd ptest<br>
<br>
=C2=A0CFLAGS +=3D &quot;-D_DEFAULT_SOURCE&quot;<br>
<br>
@@ -28,6 +29,8 @@ EXTRA_OECONF +=3D &quot; --disable-debug \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0PACKAGECONFIG ??=3D &quot;htp jansson file pcre yaml pcap cap-ng net =
nfnetlink nss nspr&quot;<br>
+PACKAGECONFIG_append =3D &quot; ${@bb.utils.contains(&#39;DISTRO_FEATURES&=
#39;, &#39;ptest&#39;, &#39;unittests&#39;, &#39;&#39;, d)}&quot;<br>
+<br>
=C2=A0PACKAGECONFIG[htp] =3D &quot;--with-libhtp-includes=3D${STAGING_INCDI=
R} --with-libhtp-libraries=3D${STAGING_LIBDIR}, ,libhtp,&quot;<br>
=C2=A0PACKAGECONFIG[pcre] =3D &quot;--with-libpcre-includes=3D${STAGING_INC=
DIR} --with-libpcre-libraries=3D${STAGING_LIBDIR}, ,libpcre ,&quot; <br>
=C2=A0PACKAGECONFIG[yaml] =3D &quot;--with-libyaml-includes=3D${STAGING_INC=
DIR} --with-libyaml-libraries=3D${STAGING_LIBDIR}, ,libyaml ,&quot;<br>
@@ -42,6 +45,7 @@ PACKAGECONFIG[file] =3D &quot;,,file, file&quot;<br>
=C2=A0PACKAGECONFIG[nss] =3D &quot;--with-libnss-includes=3D${STAGING_INCDI=
R} --with-libnss-libraries=3D${STAGING_LIBDIR}, nss, nss,&quot; <br>
=C2=A0PACKAGECONFIG[nspr] =3D &quot;--with-libnspr-includes=3D${STAGING_INC=
DIR} --with-libnspr-libraries=3D${STAGING_LIBDIR}, nspr, nspr,&quot; <br>
=C2=A0PACKAGECONFIG[python] =3D &quot;--enable-python, --disable-python, py=
thon, python&quot; <br>
+PACKAGECONFIG[unittests] =3D &quot;--enable-unittests, --disable-unittests=
,&quot; <br>
<br>
=C2=A0export logdir =3D &quot;${localstatedir}/log&quot;<br>
<br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Sun, 28 Oct 2018 18:50:22 +0000<br>
From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] [meta-security][PATCH 07/13]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 packagegroup-core-security:=C2=A0 =C2=A0 =C2=A0=
add suricata-ptest<br>
Message-ID: &lt;<a href=3D"mailto:1540752628-10832-7-git-send-email-akuster=
808@gmail.com" target=3D"_blank" rel=3D"noreferrer">1540752628-10832-7-git-=
send-email-akuster808@gmail.com</a>&gt;<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/packagegroup/<a href=3D"http://packagegroup-core-sec=
urity.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup-core=
-security.bb</a> | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-security/packagegroup/<a href=3D"http://packagegroup-c=
ore-security.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegro=
up-core-security.bb</a> b/recipes-security/packagegroup/<a href=3D"http://p=
ackagegroup-core-security.bb" rel=3D"noreferrer noreferrer" target=3D"_blan=
k">packagegroup-core-security.bb</a><br>
index 9cf233f..5ee06e3 100644<br>
--- a/recipes-security/packagegroup/<a href=3D"http://packagegroup-core-sec=
urity.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup-core=
-security.bb</a><br>
+++ b/recipes-security/packagegroup/<a href=3D"http://packagegroup-core-sec=
urity.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">packagegroup-core=
-security.bb</a><br>
@@ -76,6 +76,7 @@ RDEPENDS_packagegroup-security-ptest =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0keyutils-ptest \<br>
=C2=A0 =C2=A0 =C2=A0libseccomp-ptest \<br>
=C2=A0 =C2=A0 =C2=A0python-scapy-ptest \<br>
+=C2=A0 =C2=A0 suricata-ptest \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot=
;apparmor&quot;, &quot;apparmor-ptest&quot;, &quot;&quot;,d)} \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot=
;smack&quot;, &quot;smack-ptest&quot;, &quot;&quot;,d)} \<br>
=C2=A0 =C2=A0 =C2=A0ptest-runner \<br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
<br>
<br>
End of yocto Digest, Vol 97, Issue 86<br>
*************************************<br>
</blockquote></div>

--000000000000b9972005795b0120--
