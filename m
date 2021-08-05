Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web12.10789.1628179014536479795
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 08:56:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=P6/quc2w;
 spf=pass (domain: mvista.com, ip: 209.85.216.51, mailfrom: jpuhlman@mvista.com)
Received: by mail-pj1-f51.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so10562532pjh.3
        for <yocto@lists.yoctoproject.org>; Thu, 05 Aug 2021 08:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Gd/jUCizaKKwIbDa6ewEwG6JqErK6hlvjEbMtDNnG10=;
        b=P6/quc2wMArZFyiH3LMRc+WQYy4Ea6Hw+ncZLv6qdajIpJ/vwV6P4tPJvYw500OZqX
         00Ar9pbBscQ/blyGfI/toIIYenId2kXXb5zCo6aCpfuosyDPxwkW418z0xgD0ABruVEA
         UlCGGb/r8WmAWFA0LH4stvt44OcqV6reOJtMo59dfrFg7hloLSwKfKdb9UEdiwAgMTJr
         0cdG4dBKj+7wcyIA8I14+jyNpKzSzzHVtNBnz1hHrkXea0XlshQtb0pd9ZwToUQJok/Z
         smc9t8dcHDvgeaxIpYgRs48oaUc+ABJx2LDGuga3JoNYa/0HjOntgksNMN31fVvRzl3X
         VV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Gd/jUCizaKKwIbDa6ewEwG6JqErK6hlvjEbMtDNnG10=;
        b=VFDuxAvI6R+4K08wAE8YPVLiPudwT6MabY/p7efuHJYbImVBbYwjVKYZTjV7w1kwTV
         4IuE5zDXo8jctRnkel7YEIf4/1u2shW4qGiv6R2exC5T78Ul4ukBszteGIn8Ep+2rIgM
         oW6E+046RbyxWyNOxhkIHH1rNuut2eXKO1SluT/LrpuBu1ZJAdZeM8+qsiXwBawf6XGU
         Ppt+GnKkBlHZ/W8GtnzSSPQI2YtQ37hT4lqpM7qDvr9K07uGNfBGJiOfY14eQpckt3zI
         wuoEmDDRHG16dUB+ZDRjmUbty1qnIgnXGmVSkRa5/NCiJ5krKSl0uVJ5LdK1QBDo/Muz
         kHeQ==
X-Gm-Message-State: AOAM531AtEP6R+ajg40I6rYKUqTsXAQhwyNU3iIaqJ/XiSaPKgRPVLNe
	AdoThq1vXVn16PnzS781JUIG9ODQckds+w==
X-Google-Smtp-Source: ABdhPJwdwrNamcW5GNsyZHOzwrZ/HyjQqazHU1My7xE+tdrkZRc9Tw4Ta2x29XpAkkJSBDF8xCYgmg==
X-Received: by 2002:a17:903:1ce:b029:12c:e40d:2c38 with SMTP id e14-20020a17090301ceb029012ce40d2c38mr2795251plh.20.1628179012215;
        Thu, 05 Aug 2021 08:56:52 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from [192.168.1.17] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id c12sm9782918pjm.16.2021.08.05.08.56.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 08:56:51 -0700 (PDT)
Subject: Re: [meta-cgl][PATCH 1/6] meta-cgl: convert to new override syntax
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20210805073930.382397-1-yi.zhao@windriver.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <f3aaeba8-3388-4de7-e4c1-bf4d4162fde2@mvista.com>
Date: Thu, 5 Aug 2021 08:56:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210805073930.382397-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

This series has been merged.

Thanks.
Jeremy Puhlman

On 8/5/2021 12:39 AM, Yi Zhao wrote:
> This is the result of automated script conversion:
> poky/scripts/contrib/convert-overrides.py meta-cgl
>
> Converting the metadata to use ":" as the override character instead of "_".
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   .../include/cgl_common_security_flags.inc     |  6 +-
>   meta-cgl-common/conf/distro/poky-cgl.conf     |  2 +-
>   .../cluster-glue/cluster-glue_1.0.12.bb       | 64 +++++++++----------
>   .../resource-agents_4.5.0.bb                  | 38 +++++------
>   .../recipes-cgl/cluster/cluster_3.2.0.bb      |  4 +-
>   .../recipes-cgl/crmsh/crmsh_4.20.bb           |  4 +-
>   .../recipes-cgl/heartbeat/heartbeat_3.0.6.bb  | 18 +++---
>   .../ocfs2-tools/ocfs2-tools_1.8.6.bb          | 18 +++---
>   .../recipes-cgl/pacemaker/pacemaker_2.0.5.bb  | 38 +++++------
>   .../recipes-cgl/racoon2/racoon2_202003018.bb  | 22 +++----
>   .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  8 +--
>   .../recipes-core/images/core-image-cgl.bb     | 12 ++--
>   .../initrdscripts/initramfs-cgl-boot_1.0.bb   |  4 +-
>   .../packagegroup-cgl-applications.bb          | 16 ++---
>   .../packagegroups/packagegroup-cgl-kernel.bb  |  4 +-
>   .../packagegroup-cgl-middleware.bb            |  4 +-
>   .../packagegroup-cgl-swdevtools.bb            |  6 +-
>   .../packagegroups/packagegroup-cgl.bb         |  4 +-
>   .../recipes-kernel/linux/cgl-common.inc       |  4 +-
>   .../perl/libmailtools-perl_2.21.bb            |  2 +-
>   .../recipes-perl/perl/libsocket6-perl_0.29.bb |  2 +-
>   .../perl/libtest-pod-perl_1.52.bb             |  2 +-
>   .../recipes-perl/perl/libwww-perl_6.43.bb     |  2 +-
>   23 files changed, 142 insertions(+), 142 deletions(-)
>
> diff --git a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
> index a2f9857..126352b 100644
> --- a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
> +++ b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
> @@ -1,5 +1,5 @@
> -SECURITY_LDFLAGS_remove_pn-audit = "-fstack-protector-strong"
> +SECURITY_LDFLAGS:remove:pn-audit = "-fstack-protector-strong"
>   
> -SECURITY_CFLAGS_pn-ocfs2-tools = "${SECURITY_NOPIE_CFLAGS}"
> -SECURITY_LDFLAGS_pn-ocfs2-tools = ""
> +SECURITY_CFLAGS:pn-ocfs2-tools = "${SECURITY_NOPIE_CFLAGS}"
> +SECURITY_LDFLAGS:pn-ocfs2-tools = ""
>   
> diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
> index 269ce49..10feab9 100644
> --- a/meta-cgl-common/conf/distro/poky-cgl.conf
> +++ b/meta-cgl-common/conf/distro/poky-cgl.conf
> @@ -3,7 +3,7 @@ require conf/distro/poky-lsb.conf
>   DISTRO = "poky-cgl"
>   DISTROOVERRIDES .= ":poky-cgl"
>   
> -DISTRO_FEATURES_append = " selinux ptest argp ext2 xattr nfs pci ipv4 ipv6"
> +DISTRO_FEATURES:append = " selinux ptest argp ext2 xattr nfs pci ipv4 ipv6"
>   
>   PREFERRED_PROVIDER_virtual/refpolicy="refpolicy-targeted"
>   
> diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> index af2342f..9221f06 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> @@ -18,13 +18,13 @@ SRC_URI = " \
>       file://volatiles \
>       file://tmpfiles \
>   "
> -SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
> +SRC_URI:append_libc-uclibc = " file://kill-stack-protector.patch"
>   
>   SRCREV = "fd5a3befacd23d056a72cacd2b8ad6bba498e56b"
>   
>   inherit autotools useradd pkgconfig systemd multilib_script multilib_header
>   
> -SYSTEMD_SERVICE_${PN} = "logd.service"
> +SYSTEMD_SERVICE:${PN} = "logd.service"
>   SYSTEMD_AUTO_ENABLE = "disable"
>   
>   HA_USER = "hacluster"
> @@ -47,18 +47,18 @@ CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0 \
>   "
>   
>   USERADD_PACKAGES = "${PN}"
> -USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat/cores/${HA_USER} \
> +USERADD_PARAM:${PN} = "--home-dir=${localstatedir}/lib/heartbeat/cores/${HA_USER} \
>                          -g ${HA_GROUP} -r -s ${sbindir}/nologin -c 'cluster user' ${HA_USER} \
>                         "
> -GROUPADD_PARAM_${PN} = "-r ${HA_GROUP}"
> +GROUPADD_PARAM:${PN} = "-r ${HA_GROUP}"
>   
>   MULTILIB_SCRIPTS = "${PN}:${sbindir}/cibsecret"
>   
> -do_configure_prepend() {
> +do_configure:prepend() {
>       ln -sf ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml2/libxml ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml
>   }
>   
> -do_install_append() {
> +do_install:append() {
>   	install -d ${D}${sysconfdir}/default/volatiles
>   	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
>   	install -d ${D}${sysconfdir}/tmpfiles.d
> @@ -67,7 +67,7 @@ do_install_append() {
>       oe_multilib_header heartbeat/glue_config.h
>   }
>   
> -pkg_postinst_${PN} () {
> +pkg_postinst:${PN} () {
>   	if [ -z "$D" ]; then
>   		if type systemd-tmpfiles >/dev/null; then
>   			systemd-tmpfiles --create
> @@ -99,7 +99,7 @@ PACKAGES =+ "\
>        ${PN}-plugin-compress-staticdev \
>   	 "
>   
> -FILES_${PN} = "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datadir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
> +FILES:${PN} = "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datadir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
>   	${libdir}/heartbeat/transient-test.sh \
>   	${libdir}/heartbeat/logtest \
>   	${libdir}/heartbeat/ipctransientserver \
> @@ -111,40 +111,40 @@ FILES_${PN} = "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datadir}/clus
>   	${systemd_unitdir} \
>   	"
>   
> -FILES_${PN}-dbg += "${libdir}/heartbeat/.debug/ \
> +FILES:${PN}-dbg += "${libdir}/heartbeat/.debug/ \
>                       ${sbindir}/.debug/ \
>                       ${libdir}/.debug/ \
>                      "
>   
> -FILES_${PN}-plugin-compress = "${libdir}/heartbeat/plugins/compress/*.so"
> -FILES_${PN}-plugin-compress-staticdev = "${libdir}/heartbeat/plugins/compress/*.*a"
> -FILES_${PN}-plugin-compress-dbg = "${libdir}/heartbeat/plugins/compress/.debug/"
> +FILES:${PN}-plugin-compress = "${libdir}/heartbeat/plugins/compress/*.so"
> +FILES:${PN}-plugin-compress-staticdev = "${libdir}/heartbeat/plugins/compress/*.*a"
> +FILES:${PN}-plugin-compress-dbg = "${libdir}/heartbeat/plugins/compress/.debug/"
>   
> -FILES_${PN}-plugin-test = "${libdir}/heartbeat/plugins/test/test.so"
> -FILES_${PN}-plugin-test-staticdev = "${libdir}/heartbeat/plugins/test/test.*a"
> -FILES_${PN}-plugin-test-dbg = "${libdir}/heartbeat/plugins/test/.debug/"
> -FILES_${PN}-plugin-stonith2 = " \
> +FILES:${PN}-plugin-test = "${libdir}/heartbeat/plugins/test/test.so"
> +FILES:${PN}-plugin-test-staticdev = "${libdir}/heartbeat/plugins/test/test.*a"
> +FILES:${PN}-plugin-test-dbg = "${libdir}/heartbeat/plugins/test/.debug/"
> +FILES:${PN}-plugin-stonith2 = " \
>   	${libdir}/stonith/plugins/xen0-ha-dom0-stonith-helper \
>   	${libdir}/stonith/plugins/stonith2/*.so \
>   	"
> -FILES_${PN}-plugin-stonith2-ribcl = "${libdir}/stonith/plugins/stonith2/ribcl.py"
> +FILES:${PN}-plugin-stonith2-ribcl = "${libdir}/stonith/plugins/stonith2/ribcl.py"
>   
> -FILES_${PN}-plugin-stonith2-dbg = "${libdir}/stonith/plugins/stonith2/.debug/"
> -FILES_${PN}-plugin-stonith2-staticdev = "${libdir}/stonith/plugins/stonith2/*.*a"
> +FILES:${PN}-plugin-stonith2-dbg = "${libdir}/stonith/plugins/stonith2/.debug/"
> +FILES:${PN}-plugin-stonith2-staticdev = "${libdir}/stonith/plugins/stonith2/*.*a"
>   
> -FILES_${PN}-plugin-stonith-external = "${libdir}/stonith/plugins/external/"
> -FILES_${PN}-plugin-raexec = "${libdir}/heartbeat/plugins/RAExec/*.so"
> -FILES_${PN}-plugin-raexec-staticdev = "${libdir}/heartbeat/plugins/RAExec/*.*a"
> -FILES_${PN}-plugin-raexec-dbg = "${libdir}/heartbeat/plugins/RAExec/.debug/"
> +FILES:${PN}-plugin-stonith-external = "${libdir}/stonith/plugins/external/"
> +FILES:${PN}-plugin-raexec = "${libdir}/heartbeat/plugins/RAExec/*.so"
> +FILES:${PN}-plugin-raexec-staticdev = "${libdir}/heartbeat/plugins/RAExec/*.*a"
> +FILES:${PN}-plugin-raexec-dbg = "${libdir}/heartbeat/plugins/RAExec/.debug/"
>   
> -FILES_${PN}-plugin-interfacemgr = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.so"
> -FILES_${PN}-plugin-interfacemgr-staticdev = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.*a"
> -FILES_${PN}-plugin-interfacemgr-dbg = "${libdir}/heartbeat/plugins/InterfaceMgr/.debug/"
> +FILES:${PN}-plugin-interfacemgr = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.so"
> +FILES:${PN}-plugin-interfacemgr-staticdev = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.*a"
> +FILES:${PN}-plugin-interfacemgr-dbg = "${libdir}/heartbeat/plugins/InterfaceMgr/.debug/"
>   
> -FILES_${PN}-lrmtest = "${datadir}/cluster-glue/lrmtest/"
> +FILES:${PN}-lrmtest = "${datadir}/cluster-glue/lrmtest/"
>   
> -RDEPENDS_${PN} += "perl"
> -RDEPENDS_${PN}-plugin-stonith2 += "bash"
> -RDEPENDS_${PN}-plugin-stonith-external += "bash python3-core perl"
> -RDEPENDS_${PN}-plugin-stonith2-ribcl += "python3-core"
> -RDEPENDS_${PN}-lrmtest += "${VIRTUAL-RUNTIME_getopt} ${PN}-plugin-raexec"
> +RDEPENDS:${PN} += "perl"
> +RDEPENDS:${PN}-plugin-stonith2 += "bash"
> +RDEPENDS:${PN}-plugin-stonith-external += "bash python3-core perl"
> +RDEPENDS:${PN}-plugin-stonith2-ribcl += "python3-core"
> +RDEPENDS:${PN}-lrmtest += "${VIRTUAL-RUNTIME_getopt} ${PN}-plugin-raexec"
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> index cc3ce89..bd906b2 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> @@ -5,14 +5,14 @@ rgmanager service managers."
>   HOMEPAGE = "http://sources.redhat.com/cluster/wiki/"
>   
>   LICENSE = "GPLv2+ & LGPLv2+ & GPLv3"
> -LICENSE_${PN} = "GPLv2+ & LGPLv2+"
> -LICENSE_${PN}-dev = "GPLv2+ & LGPLv2+"
> -LICENSE_${PN}-staticdev = "GPLv2+ & LGPLv2+"
> -LICENSE_${PN}-dbg = "GPLv2+ & LGPLv2+"
> -LICENSE_${PN}-doc = "GPLv2+ & LGPLv2+"
> -LICENSE_${PN}-extra = "GPLv3"
> -LICENSE_${PN}-extra-dbg = "GPLv3"
> -LICENSE_ldirectord = "GPLv2+"
> +LICENSE:${PN} = "GPLv2+ & LGPLv2+"
> +LICENSE:${PN}-dev = "GPLv2+ & LGPLv2+"
> +LICENSE:${PN}-staticdev = "GPLv2+ & LGPLv2+"
> +LICENSE:${PN}-dbg = "GPLv2+ & LGPLv2+"
> +LICENSE:${PN}-doc = "GPLv2+ & LGPLv2+"
> +LICENSE:${PN}-extra = "GPLv3"
> +LICENSE:${PN}-extra-dbg = "GPLv3"
> +LICENSE:ldirectord = "GPLv2+"
>   
>   SRC_URI = "git://github.com/ClusterLabs/resource-agents \
>              file://01-disable-doc-build.patch \
> @@ -37,7 +37,7 @@ DEPENDS = "cluster-glue"
>   # ip.sh requires: ethtool iproute2 iputils-arping
>   # fs.sh requires: e2fsprogs-e2fsck util-linux quota
>   # netfs.sh requires: procps util-linux nfs-utils
> -RDEPENDS_${PN} += "bash perl lvm2 \
> +RDEPENDS:${PN} += "bash perl lvm2 \
>       ethtool iproute2 iputils-arping \
>       e2fsprogs-e2fsck util-linux quota \
>       procps nfs-utils \
> @@ -56,31 +56,31 @@ CACHED_CONFIGUREVARS += " \
>   EXTRA_OECONF += "--disable-fatal-warnings \
>                    --with-rsctmpdir=/var/run/heartbeat/rsctmp"
>   
> -do_install_append() {
> +do_install:append() {
>       rm -rf "${D}${localstatedir}/run"
>       rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
>   }
>   
>   # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
>   # and it's required by portblock, so move portblock into ${PN}-extra together.
> -PACKAGES_prepend  = "${PN}-extra ${PN}-extra-dbg ldirectord "
> +PACKAGES:prepend  = "${PN}-extra ${PN}-extra-dbg ldirectord "
>   NOAUTOPACKAGEDEBUG = "1"
> -FILES_${PN}-extra = "${libexecdir}/heartbeat/tickle_tcp \
> +FILES:${PN}-extra = "${libexecdir}/heartbeat/tickle_tcp \
>                        ${libdir}/ocf/resource.d/heartbeat/portblock \
>                        ${datadir}/resource-agents/ocft/configs/portblock \
>                       "
> -FILES_${PN}-extra-dbg = "${libexecdir}/heartbeat/.debug/tickle_tcp"
> +FILES:${PN}-extra-dbg = "${libexecdir}/heartbeat/.debug/tickle_tcp"
>   
> -FILES_ldirectord = " \
> +FILES:ldirectord = " \
>           ${sbindir}/ldirectord \
>           ${sysconfdir}/ha.d/resource.d/ldirectord \
>           ${sysconfdir}/init.d/ldirectord \
>           ${sysconfdir}/logrotate.d/ldirectord \
>           ${libdir}/ocf/resource.d/heartbeat/ldirectord \
>           "
> -FILES_ldirectord-doc = "${mandir}/man8/ldirectord.8*"
> +FILES:ldirectord-doc = "${mandir}/man8/ldirectord.8*"
>   
> -RDEPENDS_ldirectord += " \
> +RDEPENDS:ldirectord += " \
>           ipvsadm \
>           libdbi-perl \
>           libdigest-hmac-perl \
> @@ -102,9 +102,9 @@ RDEPENDS_ldirectord += " \
>           "
>   
>   SYSTEMD_PACKAGES = "ldirectord"
> -SYSTEMD_SERVICE_ldirectord += "ldirectord.service"
> +SYSTEMD_SERVICE:ldirectord += "ldirectord.service"
>   
> -FILES_${PN} += "${datadir}/cluster/* \
> +FILES:${PN} += "${datadir}/cluster/* \
>                   ${libdir}/ocf/resource.d/heartbeat/ \
>                   ${libdir}/ocf/lib/heartbeat/* \
>                   ${libdir}/ocf/resource.d/redhat \
> @@ -112,6 +112,6 @@ FILES_${PN} += "${datadir}/cluster/* \
>                   ${systemd_unitdir}/system \
>                   "
>   
> -FILES_${PN}-dbg += "${libdir}/ocf/resource.d/heartbeat/.debug \
> +FILES:${PN}-dbg += "${libdir}/ocf/resource.d/heartbeat/.debug \
>                       ${sbindir}/.debug \
>                       ${libexecdir}/heartbeat/.debug "
> diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
> index 34076d3..edaeb8b 100644
> --- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
> @@ -17,9 +17,9 @@ PR = "r1"
>   
>   DEPENDS = "corosync dbus openldap libxml2 ncurses perl zlib"
>   
> -FILES_${PN} += "/lib/udev/rules.d/51-dlm.rules \
> +FILES:${PN} += "/lib/udev/rules.d/51-dlm.rules \
>       ${localstatedir}/run "
> -FILES_${PN}-doc += "/usr/share/man3/* /usr/share/man8/*"
> +FILES:${PN}-doc += "/usr/share/man3/* /usr/share/man8/*"
>   
>   do_configure () {
>       CFLAGS="${TARGET_CFLAGS}"       \
> diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
> index 830802d..ac97e25 100644
> --- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
> +++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
> @@ -10,7 +10,7 @@ DEPENDS = "asciidoc-native \
>              docbook-xsl-stylesheets-native \
>              libxslt-native \
>              "
> -RDEPENDS_${PN} = "pacemaker python3-lxml python3-parallax gawk bash"
> +RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash"
>   
>   S = "${WORKDIR}/git"
>   SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
> @@ -28,4 +28,4 @@ export BUILD_SYS
>   # network accesses for the dtd and stylesheets
>   export SGML_CATALOG_FILES = "${STAGING_DATADIR_NATIVE}/xml/docbook/xsl-stylesheets/catalog.xml"
>   
> -FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}/${BPN}"
> +FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}/${BPN}"
> diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> index 5031c64..b5dfad0 100644
> --- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> +++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> @@ -40,7 +40,7 @@ SRC_URI[md5sum] = "101c8f507b1f407468d5ef15ae6719da"
>   SRC_URI[sha256sum] = "851d2add2c129fef9fede764fec80229e1f6e7295e0e979950d10258648b462c"
>   S = "${WORKDIR}/Heartbeat-3-0-958e11be8686"
>   DEPENDS = "cluster-glue corosync gnutls libxslt-native xmlto-native docbook-xml-dtd4-native docbook-xsl-stylesheets-native intltool"
> -RDEPENDS_${PN} += "python"
> +RDEPENDS:${PN} += "python"
>   inherit autotools-brokensep pkgconfig useradd
>   EXTRA_OECONF = " \
>       STAGING_DIR_TARGET=${STAGING_DIR_TARGET} \
> @@ -48,7 +48,7 @@ EXTRA_OECONF = " \
>       --disable-static \
>   "
>   SOURCE1 = "heartbeat/init.d/heartbeat"
> -CFLAGS_append += "-DGLIB_COMPILATION"
> +CFLAGS:append = " -DGLIB_COMPILATION"
>   
>   do_configure() {
>       ./bootstrap
> @@ -70,12 +70,12 @@ do_configure() {
>       fi
>       oe_runconf ${EXTRA_OECONF}
>   }
> -do_compile_prepend() {
> +do_compile:prepend() {
>       sed -i 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g' ${HOST_PREFIX}libtool
>       sed -i 's|^runpath_var=LD_RUN_PATH|runpath_var=DIE_RPATH_DIE|g' ${HOST_PREFIX}libtool
>       make clean
>   }
> -do_install_append () {
> +do_install:append () {
>       sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/heartbeat.service
>       if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
>           install -d ${D}${libexecdir}
> @@ -101,22 +101,22 @@ do_install() {
>   }
>   
>   inherit systemd
> -SYSTEMD_SERVICE_${PN} = "heartbeat.service"
> +SYSTEMD_SERVICE:${PN} = "heartbeat.service"
>   
>   USERADD_PACKAGES = "${PN}"
> -GROUPADD_PARAM_${PN} = "-r haclient"
> -USERADD_PARAM_${PN} = " \
> +GROUPADD_PARAM:${PN} = "-r haclient"
> +USERADD_PARAM:${PN} = " \
>       -r -g haclient -d /var/lib/heartbeat/cores/hacluster -M \
>       -s /sbin/nologin -c \"heartbeat user\" hacluster \
>   "
> -FILES_${PN}-dbg += " \
> +FILES:${PN}-dbg += " \
>       ${libdir}/heartbeat/plugins/quorum/.debug \
>       ${libdir}/heartbeat/plugins/HBauth/.debug \
>       ${libdir}/heartbeat/plugins/tiebreaker/.debug \
>       ${libdir}/heartbeat/plugins/HBcomm/.debug \
>       ${libdir}/heartbeat/plugins/HBcompress/.debug \
>   "
> -FILES_${PN} += " \
> +FILES:${PN} += " \
>       run/heartbeat/ccm \
>       run/heartbeat/dopd \
>       ${libdir}/tmpfiles.d \
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
> index 81e6c2e..fa38006 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
> @@ -35,13 +35,13 @@ DEPENDS = "corosync pacemaker \
>   # lsbinitscripts are needed to replace /etc/init.d/functions supplied by initscripts (systemv)
>   # They are not the same code!
>   #
> -RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs glib-2.0"
> +RDEPENDS:${PN} = "bash coreutils net-tools module-init-tools e2fsprogs glib-2.0"
>   
> -ASNEEDED_pn-${PN} = ""
> +ASNEEDED:pn-${PN} = ""
>   PARALLEL_MAKE = ""
> -INSANE_SKIP_${PN} = "unsafe-references-in-binaries"
> -CFLAGS_append += "-DGLIB_COMPILATION"
> -CPPFLAGS_append += "-DGLIB_COMPILATION"
> +INSANE_SKIP:${PN} = "unsafe-references-in-binaries"
> +CFLAGS:append = " -DGLIB_COMPILATION"
> +CPPFLAGS:append = " -DGLIB_COMPILATION"
>   
>   EXTRA_OECONF = " \
>       --enable-ocfs2console=no \
> @@ -50,7 +50,7 @@ EXTRA_OECONF = " \
>       --with-root-prefix=${root_prefix} \
>   "
>   
> -do_configure_prepend () {
> +do_configure:prepend () {
>           # fix here or EXTRA_OECONF
>           sed -i -e '/^PYTHON_INCLUDES="-I/c\
>   PYTHON_INCLUDES="-I=/usr/include/python${PYTHON_BASEVERSION}"' \
> @@ -65,16 +65,16 @@ PYTHON_INCLUDES="-I=/usr/include/python${PYTHON_BASEVERSION}"' \
>   }
>   
>   
> -do_compile_prepend() {
> +do_compile:prepend() {
>       for m in `find . -name "Makefile"` ; do
>           sed -i -e "s@-I/usr/include@-I${STAGING_DIR_TARGET}/usr/include@g" $m
>       done
>   }
>   
> -SYSTEMD_SERVICE_${PN} = "o2cb.service ocfs2.service"
> +SYSTEMD_SERVICE:${PN} = "o2cb.service ocfs2.service"
>   SYSTEMD_AUTO_ENABLE = "disable"
>   
> -do_install_append() {
> +do_install:append() {
>       install -d ${D}${sysconfdir}/init.d
>       install -m 0755 ${S}/vendor/common/o2cb.init ${D}${sysconfdir}/init.d/o2cb
>       install -m 0755 ${S}/vendor/common/ocfs2.init ${D}${sysconfdir}/init.d/ocfs2
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> index 6cfa057..c86c282 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> @@ -22,7 +22,7 @@ SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
>   
>   CFLAGS += "-I${STAGING_INCDIR}/heartbeat"
>   CPPFLAGS +="-I${STAGING_INCDIR}/heartbeat"
> -SRC_URI_append_libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
> +SRC_URI:append:libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
>   
>   SRCREV = "ba59be71228fed04f78ab374dfac748d314d0e89"
>   
> @@ -49,7 +49,7 @@ EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
>   CACHED_CONFIGUREVARS += " \
>       ac_cv_path_BASH_PATH=/bin/bash \
>   "
> -do_configure_prepend() {
> +do_configure:prepend() {
>       # remove buildpath
>       placeh="abs_top_builddir abs_top_srcdir"
>       for ph in $placeh
> @@ -62,7 +62,7 @@ do_configure_prepend() {
>       done
>   }
>   
> -do_install_append() {
> +do_install:append() {
>       install -d ${D}${sysconfdir}/default
>       install -d ${D}${sysconfdir}/default/volatiles
>       install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_${BPN}
> @@ -86,11 +86,11 @@ do_install_append() {
>       done
>   }
>   
> -PACKAGES_prepend = "${PN}-cli-utils ${PN}-libs ${PN}-cluster-libs ${PN}-remote "
> +PACKAGES:prepend = "${PN}-cli-utils ${PN}-libs ${PN}-cluster-libs ${PN}-remote "
>   
> -FILES_${PN}-cli-utils = "${sbindir}/crm* ${sbindir}/iso8601"
> -RDEPENDS_${PN}-cli-utils += "libqb bash"
> -FILES_${PN}-libs = "${libdir}/libcib.so.* \
> +FILES:${PN}-cli-utils = "${sbindir}/crm* ${sbindir}/iso8601"
> +RDEPENDS:${PN}-cli-utils += "libqb bash"
> +FILES:${PN}-libs = "${libdir}/libcib.so.* \
>                       ${libdir}/liblrmd.so.* \
>                       ${libdir}/libcrmservice.so.* \
>                       ${libdir}/libcrmcommon.so.* \
> @@ -100,29 +100,29 @@ FILES_${PN}-libs = "${libdir}/libcib.so.* \
>                       ${libdir}/libstonithd.so.* \
>                       ${libdir}/libtransitioner.so.* \
>                      "
> -RDEPENDS_${PN}-libs += "libqb dbus-lib"
> -FILES_${PN}-cluster-libs = "${libdir}/libcrmcluster.so.*"
> -RDEPENDS_${PN}-cluster-libs += "libqb"
> -FILES_${PN}-remote = "${sysconfdir}/init.d/pacemaker_remote \
> +RDEPENDS:${PN}-libs += "libqb dbus-lib"
> +FILES:${PN}-cluster-libs = "${libdir}/libcrmcluster.so.*"
> +RDEPENDS:${PN}-cluster-libs += "libqb"
> +FILES:${PN}-remote = "${sysconfdir}/init.d/pacemaker_remote \
>                         ${sbindir}/pacemaker_remoted \
>                         ${libdir}/ocf/resource.d/pacemaker/remote \
>                        "
> -RDEPENDS_${PN}-remote += "libqb bash"
> -FILES_${PN} += " ${datadir}/snmp                             \
> +RDEPENDS:${PN}-remote += "libqb bash"
> +FILES:${PN} += " ${datadir}/snmp                             \
>                    ${libdir}/corosync/lcrso/pacemaker.lcrso    \
>                    ${libdir}/${PYTHON_DIR}/dist-packages/cts/  \
>                    ${libdir}/ocf/resource.d/ \
>                    ${libdir}/${PYTHON_DIR}/site-packages/cts/ \
>                  "
> -FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
> -RDEPENDS_${PN} = "bash python3-core perl libqb ${PN}-cli-utils"
> +FILES:${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
> +RDEPENDS:${PN} = "bash python3-core perl libqb ${PN}-cli-utils"
>   
>   SYSTEMD_AUTO_ENABLE = "disable"
>   
>   SYSTEMD_PACKAGES += "${PN}-remote"
> -SYSTEMD_SERVICE_${PN} += "pacemaker.service crm_mon.service"
> -SYSTEMD_SERVICE_${PN}-remote += "pacemaker_remote.service"
> +SYSTEMD_SERVICE:${PN} += "pacemaker.service crm_mon.service"
> +SYSTEMD_SERVICE:${PN}-remote += "pacemaker_remote.service"
>   
>   USERADD_PACKAGES = "${PN}"
> -USERADD_PARAM_${PN} = "-r -g haclient -s ${base_sbindir}/nologin hacluster"
> -GROUPADD_PARAM_${PN} = "-r haclient"
> +USERADD_PARAM:${PN} = "-r -g haclient -s ${base_sbindir}/nologin hacluster"
> +GROUPADD_PARAM:${PN} = "-r haclient"
> diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
> index 56dabfb..4c7c080 100644
> --- a/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
> +++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
> @@ -8,7 +8,7 @@ FreeBSD, NetBSD, Linux, and Mac OS X."
>   HOMEPAGE = "http://ftp.racoon2.wide.ad.jp/pub/racoon2/"
>   
>   DEPENDS = "${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'krb5', '', d)} libpcap openssl bison flex-native util-linux bison-native"
> -RDEPENDS_${PN} += "perl"
> +RDEPENDS:${PN} += "perl"
>   
>   LICENSE = "BSD-3-Clause"
>   LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=99a60756441098855c538fe86f859afe"
> @@ -49,11 +49,11 @@ EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN} \
>                    --with-kernel-build-dir=${STAGING_INCDIR}"
>   CLEANBROKEN = "1"
>   
> -do_configure_prepend () {
> +do_configure:prepend () {
>       mkdir -p lib/m4 spmd/m4 iked/m4 kinkd/m4
>   }
>   
> -do_install_append() {
> +do_install:append() {
>       install -d -m 0755 ${D}${sysconfdir}/init.d/
>       cp -rfa ${D}${sysconfdir}/${BPN}/init.d/* ${D}${sysconfdir}/init.d/
>   
> @@ -80,19 +80,19 @@ do_install_append() {
>   }
>   
>   INITSCRIPT_PACKAGES = "${PN} ${PN}-iked ${PN}-${@bb.utils.contains('DISTRO_FEATURES', 'krb5', 'kinkd', '', d)}"
> -INITSCRIPT_NAME_${PN} = "spmd"
> -INITSCRIPT_PARAMS_${PN} = "remove"
> -INITSCRIPT_NAME_${PN}-iked = "iked"
> -INITSCRIPT_PARAMS_${PN}-iked = "remove"
> -INITSCRIPT_NAME_${PN}-kinkd = "kinkd"
> -INITSCRIPT_PARAMS_${PN}-kinkd= "remove"
> +INITSCRIPT_NAME:${PN} = "spmd"
> +INITSCRIPT_PARAMS:${PN} = "remove"
> +INITSCRIPT_NAME:${PN}-iked = "iked"
> +INITSCRIPT_PARAMS:${PN}-iked = "remove"
> +INITSCRIPT_NAME:${PN}-kinkd = "kinkd"
> +INITSCRIPT_PARAMS:${PN}-kinkd= "remove"
>   
>   SYSTEMD_PACKAGES = "${PN}"
> -SYSTEMD_SERVICE_${PN} = "spmd.service iked.service"
> +SYSTEMD_SERVICE:${PN} = "spmd.service iked.service"
>   SYSTEMD_AUTO_ENABLE = "disable"
>   
>   
> -pkg_postinst_${PN} () {
> +pkg_postinst:${PN} () {
>       if [ -z "$D" ]; then
>           if [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
>               ${sysconfdir}/init.d/populate-volatile.sh update
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> index 6776735..4109276 100644
> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> @@ -32,19 +32,19 @@ SRC_URI[sha256sum] = "f3cc77e28481fd04f62bb3d4bc03104a97dd316c80c0ed04ad7be24b54
>   inherit autotools gettext systemd
>   
>   DEPENDS = "libpcap"
> -RDEPENDS_${PN} = "${@bb.utils.contains('DISTRO_FEATURES','systemd','initscripts-functions','',d)}"
> +RDEPENDS:${PN} = "${@bb.utils.contains('DISTRO_FEATURES','systemd','initscripts-functions','',d)}"
>   
> -SYSTEMD_SERVICE_${PN} = "ucarp.service"
> +SYSTEMD_SERVICE:${PN} = "ucarp.service"
>   SYSTEMD_AUTO_ENABLE = "disable"
>   export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2 -t 2 -T 30 --passive-ftp --no-check-certificate"
>   EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
>   
>   # fix the perms for config.rpath
> -do_configure_prepend() {
> +do_configure:prepend() {
>       chmod 755 ${S}/config.rpath
>   }
>   
> -do_install_append() {
> +do_install:append() {
>       sed -i -e 's#\(UPSCRIPT=\).*#\1${libexecdir}/vip-up.sh#' \
>              -e 's#\(DOWNSCRIPT=\).*#\1${libexecdir}/vip-down.sh#' ${WORKDIR}/ucarp.init
>   
> diff --git a/meta-cgl-common/recipes-core/images/core-image-cgl.bb b/meta-cgl-common/recipes-core/images/core-image-cgl.bb
> index 4a7d4f7..1c5ed7b 100644
> --- a/meta-cgl-common/recipes-core/images/core-image-cgl.bb
> +++ b/meta-cgl-common/recipes-core/images/core-image-cgl.bb
> @@ -10,11 +10,11 @@ python () {
>   }
>         
>   VALGRIND ?= ""
> -VALGRIND_powerpc ?= "valgrind"
> +VALGRIND:powerpc ?= "valgrind"
>   VALGRIND_e500v2 ?= ""
> -VALGRIND_x86 ?= "valgrind"
> -VALGRIND_x86_64 ?= "valgrind"
> -VALGRIND_armv7a ?= "valgrind"
> +VALGRIND:x86 ?= "valgrind"
> +VALGRIND:x86_64 ?= "valgrind"
> +VALGRIND:armv7a ?= "valgrind"
>   
>   # Include modules in rootfs
>   IMAGE_INSTALL += "\
> @@ -30,7 +30,7 @@ IMAGE_INSTALL += "\
>   IMAGE_FSTYPES += " ext3.gz"
>   
>   # kexec-tools doesn't work on Mips
> -KEXECTOOLS_mips ?= ""
> -KEXECTOOLS_mipsel ?= ""
> +KEXECTOOLS:mips ?= ""
> +KEXECTOOLS:mipsel ?= ""
>   
>   IMAGE_FEATURES += "tools-debug tools-profile"
> diff --git a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
> index 8b1768a..e022ad4 100644
> --- a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
> +++ b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
> @@ -10,6 +10,6 @@ do_install() {
>   
>   inherit allarch
>   
> -RDEPENDS_${PN} += "multipath-tools kpartx iscsi-initiator-utils"
> +RDEPENDS:${PN} += "multipath-tools kpartx iscsi-initiator-utils"
>   
> -FILES_${PN} += " /init "
> +FILES:${PN} += " /init "
> diff --git a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-applications.bb
> index 6b7a630..69fdb58 100644
> --- a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-applications.bb
> +++ b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-applications.bb
> @@ -24,7 +24,7 @@ LM_SENSORS = " \
>       lmsensors-config-fancontrol \
>       "
>   
> -RDEPENDS_${PN} = " \
> +RDEPENDS:${PN} = " \
>       lvm2 \
>       ${LM_SENSORS} \
>       bc \
> @@ -55,15 +55,15 @@ LTTNG ?= "\
>       lttng-modules \
>       lttng-ust \
>       "
> -LTTNG_armv6 ?= ""
> +LTTNG:armv6 ?= ""
>   
>   LTTNGUST = "lttng-ust"
>   LTTNGUST_libc-uclibc = ""
>   
> -RDEPENDS_${PN}_append_qemux86 = " valgrind lttng-ust"
> -RDEPENDS_${PN}_append_qemux86-64 = " ${LTTNGUST}"
> -RDEPENDS_${PN}_append_qemuppc = " ${LTTNGUST}"
> -RDEPENDS_${PN}_append_qemuarm = " ${LTTNGUST}"
> -RDEPENDS_${PN}_append_powerpc = " ${LTTNGUST}"
> +RDEPENDS:${PN}:append:qemux86 = " valgrind lttng-ust"
> +RDEPENDS:${PN}:append:qemux86-64 = " ${LTTNGUST}"
> +RDEPENDS:${PN}:append:qemuppc = " ${LTTNGUST}"
> +RDEPENDS:${PN}:append:qemuarm = " ${LTTNGUST}"
> +RDEPENDS:${PN}:append:powerpc = " ${LTTNGUST}"
>   
> -RRECOMMENDS_${PN} = ""
> +RRECOMMENDS:${PN} = ""
> diff --git a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-kernel.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-kernel.bb
> index bff7c4c..c6a4aa7 100644
> --- a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-kernel.bb
> +++ b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-kernel.bb
> @@ -10,9 +10,9 @@ inherit packagegroup
>   
>   PACKAGES = "packagegroup-cgl-kernel"
>   
> -RDEPENDS_packagegroup-cgl-kernel = " \
> +RDEPENDS:packagegroup-cgl-kernel = " \
>       ltp \
>       kernel-modules \
>       "
>   
> -RRECOMMENDS_packagegroup-cgl-kernel = ""
> +RRECOMMENDS:packagegroup-cgl-kernel = ""
> diff --git a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
> index 4fa7d48..4c70a84 100644
> --- a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
> +++ b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
> @@ -22,7 +22,7 @@ MULTIPATH_TOOLS = " \
>       kpartx \
>       "
>   
> -RDEPENDS_packagegroup-cgl-middleware = "\
> +RDEPENDS:packagegroup-cgl-middleware = "\
>       net-snmp-server \
>       net-snmp-client \
>       net-snmp-libs \
> @@ -53,4 +53,4 @@ RDEPENDS_packagegroup-cgl-middleware = "\
>       dmidecode \
>       "
>   
> -RRECOMMENDS_packagegroup-cgl-middleware = ""
> +RRECOMMENDS:packagegroup-cgl-middleware = ""
> diff --git a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-swdevtools.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-swdevtools.bb
> index 9f9ae03..7a54f73 100644
> --- a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-swdevtools.bb
> +++ b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-swdevtools.bb
> @@ -10,9 +10,9 @@ inherit packagegroup
>   PACKAGES = "packagegroup-cgl-swdevtools"
>   
>   NUMACTL = "numactl"
> -NUMACTL_arm = ""
> +NUMACTL:arm = ""
>   
> -RDEPENDS_packagegroup-cgl-swdevtools = " \
> +RDEPENDS:packagegroup-cgl-swdevtools = " \
>       libuio \
>       libcap-ng \
>       libwww-perl \
> @@ -23,4 +23,4 @@ RDEPENDS_packagegroup-cgl-swdevtools = " \
>       ${NUMACTL} \
>       "
>   
> -RRECOMMENDS_packagegroup-cgl-swdevtools = ""
> +RRECOMMENDS:packagegroup-cgl-swdevtools = ""
> diff --git a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl.bb
> index c2f6669..3450183 100644
> --- a/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl.bb
> +++ b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl.bb
> @@ -9,11 +9,11 @@ inherit packagegroup
>   
>   PACKAGES = "packagegroup-cgl"
>   
> -RDEPENDS_${PN} = "\
> +RDEPENDS:${PN} = "\
>       packagegroup-cgl-kernel \
>       packagegroup-cgl-swdevtools \
>       packagegroup-cgl-middleware \
>       packagegroup-cgl-applications \
>       "
>   
> -RRECOMMENDS_${PN} = ""
> +RRECOMMENDS:${PN} = ""
> diff --git a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
> index 1c93d7d..8f38e97 100644
> --- a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
> +++ b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
> @@ -1,6 +1,6 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>   
> -SRC_URI_append_poky-cgl = " file://cfg/00001-systemtap.cfg \
> +SRC_URI:append:poky-cgl = " file://cfg/00001-systemtap.cfg \
>               file://cfg/00002-oprofile.cfg \
>               file://cfg/00003-lttng.cfg \
>               file://cfg/00004-kgdb.cfg \
> diff --git a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb
> index 8bbbde5..f30e466 100644
> --- a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.21.bb
> @@ -7,7 +7,7 @@ DEPENDS = " \
>   	libtest-pod-perl-native \
>   	libtimedate-perl-native \
>   	"	
> -RDEPENDS_${PN} += " \
> +RDEPENDS:${PN} += " \
>   	libtest-pod-perl \
>   	libtimedate-perl \
>   	perl-module-io-handle \
> diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> index 0d133c6..bbeab8e 100644
> --- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> @@ -17,7 +17,7 @@ SRC_URI[socket6-perl-0.29.sha256sum] = "468915fa3a04dcf6574fc957eff495915e245694
>   
>   S = "${WORKDIR}/Socket6-${PV}"
>   
> -do_configure_prepend () {
> +do_configure:prepend () {
>   	mkdir -p m4
>   	autoreconf -Wcross --verbose --install --force || oefatal "autoreconf execution failed."
>   	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --oldincludedir=${oldincludedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
> diff --git a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
> index ff5538e..c9f455a 100644
> --- a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
> @@ -4,7 +4,7 @@ LICENSE = "Artistic-1.0 | GPL-1.0+"
>   LIC_FILES_CHKSUM = "file://README;beginline=26;md5=ea81140c3f3b2937c6490fc732471cd0"
>   HOMEPAGE = "https://github.com/perl-pod/test-pod/"
>   BBCLASSEXTEND = "native"
> -RDEPENDS_${PN} += " perl-module-test-more \
> +RDEPENDS:${PN} += " perl-module-test-more \
>                       perl-module-file-spec \
>                       perl-module-pod-simple \
>                       perl-module-test-builder-tester \
> diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb
> index 07fadb7..b7acf19 100644
> --- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb
> @@ -4,7 +4,7 @@ SECTION = "libs"
>   LICENSE = "Artistic-1.0 | GPL-1.0+"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=225d44a95fa3addb1da6d91187ab189f"
>   DEPENDS = "liburi-perl-native libhtml-parser-perl-native libhtml-tagset-perl-native"
> -RDEPENDS_${PN} += " \
> +RDEPENDS:${PN} += " \
>   	libhtml-parser-perl \
>   	libhtml-tagset-perl \
>   	liburi-perl \

