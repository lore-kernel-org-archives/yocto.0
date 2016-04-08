Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFEBE00C76; Fri,  8 Apr 2016 01:28:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 262AAE00B8B
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2016 01:28:05 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u388RuuM005464
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Apr 2016 01:27:56 -0700 (PDT)
Received: from [128.224.162.227] (128.224.162.227) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 8 Apr 2016 01:27:55 -0700
Message-ID: <57076B89.20404@windriver.com>
Date: Fri, 8 Apr 2016 16:27:53 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>, <yocto@yoctoproject.org>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
	<1459729295-79553-3-git-send-email-flihp@twobit.us>
In-Reply-To: <1459729295-79553-3-git-send-email-flihp@twobit.us>
Subject: Re: [meta-selinux][PATCH 2/3] Integrate selinux-config into refpolicy_common.
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
X-List-Received-Date: Fri, 08 Apr 2016 08:28:07 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

This causes do_populate_sysroot error if build two or more types of 
refpolicy:

$ bitbake refpolicy-minimum && bitbake refpolicy-mls

ERROR: refpolicy-mls-git-r0 do_populate_sysroot: The recipe 
refpolicy-mls is trying to install files into a shared area when those 
files already exist. Those files and their manifest location are:
 
/buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-64/etc/selinux/sepolgen.conf
  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
 
/buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-64/etc/selinux/config
  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
 
/buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-64/sysroot-providers/virtual_refpolicy
  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
Please verify which recipe should provide the above files.

Philip,

Can you consider to withdraw the integration?

Thanks
Wenzong

On 04/04/2016 08:21 AM, Philip Tricca wrote:
> With the virutal package there's no need for a separate recipe to build
> the config. This can be generated and included as part of the policy
> package.
>
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>   .../packagegroups/packagegroup-core-selinux.bb     |  1 -
>   .../packagegroups/packagegroup-selinux-minimal.bb  |  1 -
>   recipes-security/refpolicy/refpolicy_common.inc    | 30 ++++++++++++++--
>   recipes-security/selinux/selinux-config_0.1.bb     | 40 ----------------------
>   4 files changed, 28 insertions(+), 44 deletions(-)
>   delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb
>
> diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> index 62c5a76..c6d22b7 100644
> --- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
> +++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> @@ -22,7 +22,6 @@ RDEPENDS_${PN} = " \
>   	packagegroup-selinux-policycoreutils \
>   	setools \
>   	setools-console \
> -	selinux-config \
>   	selinux-autorelabel \
>   	selinux-init \
>   	selinux-labeldev \
> diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> index 87ae686..451ae8b 100644
> --- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> +++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> @@ -21,7 +21,6 @@ RDEPENDS_${PN} = "\
>   	policycoreutils-semodule \
>   	policycoreutils-sestatus \
>   	policycoreutils-setfiles \
> -	selinux-config \
>   	selinux-labeldev \
>   	virtual/refpolicy \
>   "
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
> index ba887e4..305675f 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -1,3 +1,5 @@
> +DEFAULT_ENFORCING ??= "enforcing"
> +
>   SECTION = "base"
>   LICENSE = "GPLv2"
>
> @@ -14,7 +16,8 @@ SRC_URI += "file://customizable_types \
>
>   S = "${WORKDIR}/refpolicy"
>
> -FILES_${PN} = " \
> +CONFFILES_${PN} += "${sysconfdir}/selinux/config"
> +FILES_${PN} += " \
>   	${sysconfdir}/selinux/${POLICY_NAME}/ \
>   	${datadir}/selinux/${POLICY_NAME}/*.pp \
>   	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
> @@ -25,7 +28,6 @@ FILES_${PN}-dev =+ " \
>   "
>
>   DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
> -RDEPENDS_${PN} += "selinux-config"
>
>   PACKAGE_ARCH = "${MACHINE_ARCH}"
>
> @@ -137,13 +139,37 @@ install_misc_files () {
>   	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install-headers
>   }
>
> +install_config () {
> +	echo "\
> +# This file controls the state of SELinux on the system.
> +# SELINUX= can take one of these three values:
> +#     enforcing - SELinux security policy is enforced.
> +#     permissive - SELinux prints warnings instead of enforcing.
> +#     disabled - No SELinux policy is loaded.
> +SELINUX=${DEFAULT_ENFORCING}
> +# SELINUXTYPE= can take one of these values:
> +#     standard - Standard Security protection.
> +#     mls - Multi Level Security protection.
> +#     targeted - Targeted processes are protected.
> +#     mcs - Multi Category Security protection.
> +SELINUXTYPE=${POLICY_TYPE}
> +" > ${WORKDIR}/config
> +	install -d ${D}/${sysconfdir}/selinux
> +	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
> +}
> +
>   do_install () {
>   	prepare_policy_store
>   	rebuild_policy
>   	install_misc_files
> +	install_config
>   }
>
>   do_install_append(){
>   	# While building policies on target, Makefile will be searched from SELINUX_DEVEL_PATH
>   	echo "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" > ${D}${sysconfdir}/selinux/sepolgen.conf
>   }
> +
> +sysroot_stage_all_append () {
> +	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> +}
> diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
> deleted file mode 100644
> index e902e98..0000000
> --- a/recipes-security/selinux/selinux-config_0.1.bb
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -DEFAULT_ENFORCING ??= "enforcing"
> -
> -SUMMARY = "SELinux configuration"
> -DESCRIPTION = "\
> -SELinux configuration files for Yocto. \
> -"
> -
> -SECTION = "base"
> -LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> -PR = "r4"
> -
> -S = "${WORKDIR}"
> -
> -CONFFILES_${PN} += "${sysconfdir}/selinux/config"
> -
> -PACKAGE_ARCH = "${MACHINE_ARCH}"
> -
> -do_install () {
> -	echo "\
> -# This file controls the state of SELinux on the system.
> -# SELINUX= can take one of these three values:
> -#     enforcing - SELinux security policy is enforced.
> -#     permissive - SELinux prints warnings instead of enforcing.
> -#     disabled - No SELinux policy is loaded.
> -SELINUX=${DEFAULT_ENFORCING}
> -# SELINUXTYPE= can take one of these values:
> -#     standard - Standard Security protection.
> -#     mls - Multi Level Security protection.
> -#     targeted - Targeted processes are protected.
> -#     mcs - Multi Category Security protection.
> -SELINUXTYPE=${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy", False)[len("refpolicy-"):]}
> -" > ${WORKDIR}/config
> -	install -d ${D}/${sysconfdir}/selinux
> -	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
> -}
> -
> -sysroot_stage_all_append () {
> -	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> -}
>

