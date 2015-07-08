Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AACE1E009CC; Tue,  7 Jul 2015 20:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4142EE00960
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 20:31:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t683VQi6007155
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 7 Jul 2015 20:31:26 -0700 (PDT)
Received: from [128.224.162.176] (128.224.162.176) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 7 Jul 2015 20:31:24 -0700
Message-ID: <559C998B.4070902@windriver.com>
Date: Wed, 8 Jul 2015 11:31:23 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1422257919-5468-1-git-send-email-rongqing.li@windriver.com>
In-Reply-To: <1422257919-5468-1-git-send-email-rongqing.li@windriver.com>
Subject: Re: [PATCH][meta-selinux] policycoreutils: enable mcstransd
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
X-List-Received-Date: Wed, 08 Jul 2015 03:31:28 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

Ping ...

On 01/26/2015 03:38 PM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> mcstransd is a daemon to translate SELinux MCS/MLS sensitivity labels,
> policycoreutils includes mcstransd whose version is newer than that
> from http://mcstrans.sourcearchive.com/
>
> Signed-off-by: Roy Li <rongqing.li@windriver.com>
> ---
>   recipes-security/selinux/policycoreutils.inc       | 82 ++++++++++++++++++++--
>   .../0001-mcstrans-fix-the-init-script.patch        | 27 +++++++
>   .../selinux/policycoreutils/enable-mcstrans.patch  | 17 +++++
>   recipes-security/selinux/policycoreutils_2.3.bb    |  2 +
>   recipes-security/selinux/policycoreutils_git.bb    |  2 +
>   5 files changed, 126 insertions(+), 4 deletions(-)
>   create mode 100644 recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch
>   create mode 100644 recipes-security/selinux/policycoreutils/enable-mcstrans.patch
>
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
> index 44a5861..fa0b601 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -13,11 +13,14 @@ PAM_SRC_URI = "file://pam.d/newrole \
>                  file://pam.d/run_init \
>   "
>
> -DEPENDS += "libsepol libselinux libsemanage"
> +DEPENDS += "libsepol libselinux libsemanage libcap"
>   EXTRA_DEPENDS = "libcap-ng libcgroup setools"
>   DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
>
> -inherit selinux
> +inherit selinux systemd pythonnative update-rc.d
> +
> +PROVIDES += "mcstrans"
> +
>   DEPENDS += "${@target_selinux(d, 'libpam audit')}"
>
>   RDEPENDS_${BPN}-audit2allow = "\
> @@ -113,7 +116,6 @@ RDEPENDS_${BPN} += "setools setools-libs ${BPN}-python"
>   WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
>   ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}"
>
> -inherit pythonnative
>
>   PACKAGES =+ "\
>   	${PN}-audit2allow \
> @@ -137,8 +139,31 @@ PACKAGES =+ "\
>   	${PN}-sestatus \
>   	${PN}-setfiles \
>   	${PN}-setsebool \
> +	mcstrans \
> +	mcstrans-doc \
>   	system-config-selinux \
>   "
> +PKGV_mcstrans = "0.3.2"
> +PKGV_mcstrans-doc = "0.3.2"
> +SUMMARY_mcstrans = "Daemon to translate SELinux MCS/MLS sensitivity labels"
> +DESCRIPTION_mcstrans = "\
> +        Security-enhanced Linux is a feature of the Linux kernel and a number \
> +        of utilities with enhanced security functionality designed to add \
> +        mandatory access controls to Linux.  The Security-enhanced Linux \
> +        kernel contains new architectural components originally developed to \
> +        improve the security of the Flask operating system. These \
> +        architectural components provide general support for the enforcement \
> +        of many kinds of mandatory access control policies, including those \
> +        based on the concepts of Type Enforcement®, Role-based Access \
> +        Control, and Multi-level Security. \
> +         \
> +        mcstrans provides an translation daemon to translate SELinux categories \
> +        from internal representations to user defined representation. \
> +        "
> +SUMMARY_mcstrans-doc = "${SUMMARY_mcstrans} man pages and examples"
> +DESCRIPTION_mcstrans-doc = "${DESCRIPTION_mcstrans} \
> +        This package contains man pages and examples. \
> +        "
>   FILES_${PN}-audit2allow = "\
>   	${bindir}/audit2allow \
>   	${bindir}/audit2why \
> @@ -208,6 +233,23 @@ FILES_${PN}-setsebool += "\
>   	${sbindir}/setsebool \
>   	${datadir}/bash-completion/completions/setsebool \
>   "
> +FILES_mcstrans = "\
> +	${base_sbindir}/mcstransd \
> +	${sbindir}/untranscon \
> +	${sbindir}/transcon \
> +	${sysconfdir}/init.d/mcstrans \
> +	${systemd_unitdir}/system/mcstrans.service \
> +	${sysconfdir}/default/volatiles/volatiles.80_mcstrans \
> +	${sysconfdir}/tmpfiles.d/setrans.conf \
> +"
> +
> +FILES_mcstrans-doc = "\
> +    /usr/share/man/man8/mcstransd.8 \
> +    /usr/share/man/man8/mcs.8 \
> +    /usr/share/man/man8/setrans.conf.8 \
> +    ${datadir}/mcstrans \
> +"
> +
>   FILES_system-config-selinux = " \
>       ${bindir}/sepolgen \
>       ${datadir}/system-config-selinux/* \
> @@ -248,7 +290,24 @@ do_compile_prepend() {
>
>   do_install_prepend() {
>   	export PYTHON=python
> -	export SEMODULE_PATH=${sbindir}
> +	export SEMODULE_PATH=${sbindir} SYSTEMDDIR=${D}/${systemd_unitdir}
> +}
> +
> +do_install_append_class-target() {
> +	install -m 755 mcstrans/utils/untranscon ${D}${sbindir}/
> +	install -m 755 mcstrans/utils/transcon ${D}${sbindir}/
> +
> +	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
> +		install -d ${D}${sysconfdir}/tmpfiles.d
> +		echo "d ${localstatedir}/run/setrans - - - -" \
> +		    > ${D}${sysconfdir}/tmpfiles.d/setrans.conf
> +	else
> +		install -d ${D}${sysconfdir}/default/volatiles
> +		echo "d root root 0755 /var/run/setrans none" \
> +			>${D}${sysconfdir}/default/volatiles/volatiles.80_mcstrans
> +	fi
> +	install -d ${D}${datadir}/mcstrans
> +	cp -r mcstrans/share/* ${D}${datadir}/mcstrans/.
>   }
>
>   do_install_virtclass-native() {
> @@ -266,3 +325,18 @@ do_install_append_class-target() {
>   		install -m 0644 ${WORKDIR}/pam.d/* ${D}${sysconfdir}/pam.d/
>   	fi
>   }
> +
> +SYSTEMD_SERVICE_mcstrans = "mcstrans.service"
> +INITSCRIPT_PACKAGES = "mcstrans"
> +INITSCRIPT_NAME_mcstrans = "mcstrans"
> +INITSCRIPT_PARAMS_mcstrans = "defaults"
> +
> +pkg_postinst_mcstrans () {
> +    if [ -z "$D" ]; then
> +        if command -v systemd-tmpfiles >/dev/null; then
> +            systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/setrans.conf
> +        elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
> +            ${sysconfdir}/init.d/populate-volatile.sh update
> +        fi
> +    fi
> +}
> diff --git a/recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch b/recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch
> new file mode 100644
> index 0000000..39be80a
> --- /dev/null
> +++ b/recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch
> @@ -0,0 +1,27 @@
> +[PATCH] mcstrans: fix the init script
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +replace daemon with start-stop-daemon, due to not daemon functions
> +
> +Signed-off-by: Roy Li <rongqing.li@windriver.com>
> +---
> + mcstrans/src/mcstrans.init | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/mcstrans/src/mcstrans.init b/mcstrans/src/mcstrans.init
> +index 2804ec0..c660290 100644
> +--- a/mcstrans/src/mcstrans.init
> ++++ b/mcstrans/src/mcstrans.init
> +@@ -51,7 +51,7 @@ start(){
> + 	fi
> +
> + 	unset HOME MAIL USER USERNAME
> +-	daemon $prog "$EXTRAOPTIONS"
> ++	start-stop-daemon --start --quiet --exec $prog -- "$EXTRAOPTIONS"
> + 	RETVAL=$?
> + 	echo
> + 	if test $RETVAL = 0 ; then
> +--
> +1.9.1
> +
> diff --git a/recipes-security/selinux/policycoreutils/enable-mcstrans.patch b/recipes-security/selinux/policycoreutils/enable-mcstrans.patch
> new file mode 100644
> index 0000000..e923903
> --- /dev/null
> +++ b/recipes-security/selinux/policycoreutils/enable-mcstrans.patch
> @@ -0,0 +1,17 @@
> +Add the "mcstrans" subdir so it gets built too.
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Signed-off-by: Roy Li <rongqing.li@windriver.com>
> +diff --git a/Makefile b/Makefile
> +index 83ebd45..3ae784f 100644
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -1,5 +1,7 @@
> + SUBDIRS = sepolicy setfiles semanage load_policy newrole run_init sandbox secon audit2allow sestatus semodule_package semodule semodule_link semodule_expand semodule_deps sepolgen-ifgen setsebool scripts po man gui
> +
> ++SUBDIRS += mcstrans
> ++
> + INOTIFYH = $(shell ls /usr/include/sys/inotify.h 2>/dev/null)
> +
> + ifeq (${INOTIFYH}, /usr/include/sys/inotify.h)
> diff --git a/recipes-security/selinux/policycoreutils_2.3.bb b/recipes-security/selinux/policycoreutils_2.3.bb
> index 447e6c9..c837266 100644
> --- a/recipes-security/selinux/policycoreutils_2.3.bb
> +++ b/recipes-security/selinux/policycoreutils_2.3.bb
> @@ -13,4 +13,6 @@ SRC_URI += "\
>   	file://policycoreutils-semanage-edit-user.patch \
>   	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
>   	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
> +	file://0001-mcstrans-fix-the-init-script.patch \
> +	file://enable-mcstrans.patch \
>   	"
> diff --git a/recipes-security/selinux/policycoreutils_git.bb b/recipes-security/selinux/policycoreutils_git.bb
> index 823edb2..b630797 100644
> --- a/recipes-security/selinux/policycoreutils_git.bb
> +++ b/recipes-security/selinux/policycoreutils_git.bb
> @@ -9,4 +9,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   SRC_URI += "\
>   	file://policycoreutils-fix-sepolicy-install-path.patch \
>   	file://policycoreutils-make-O_CLOEXEC-optional.patch \
> +	file://0001-mcstrans-fix-the-init-script.patch \
> +	file://enable-mcstrans.patch \
>   	"
>

