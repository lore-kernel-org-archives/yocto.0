Received: from EUR06-DB8-obe.outbound.protection.outlook.com (EUR06-DB8-obe.outbound.protection.outlook.com [40.92.51.103])
 by mx.groups.io with SMTP id smtpd.web11.6304.1596361672748648017
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 02:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=HrOARb3s;
 spf=pass (domain: outlook.com, ip: 40.92.51.103, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xm+nj9KKqhwexaukhVaj882QdPu00bXFJGpshRjYG2VYR+5Zz84Qb/FMxKQYWhB6Uqzvm0RW08QY6GRvt41MZB6rpQJQfUzOuuyoGAoMEN635SZ8UIquELuDsgm4vEjFRv0oG8RIKsWML1MrwiywpAB8oaqIEimscJ+Lm0HfA8yMhfAC63YoIDqMxCeN1fJGn2AoV24mZ3XSotiPYfF20FJCa+qq4Yn1RRETIlOq8XjNasosf1Uq6SRB3OPMOhuiEgSYL6FIa/YPeg3Q+ny9rD13aSZcpt9gv7EA94Y+q3iu6j0nM96cra0XUtO8QPHgiyGCPpxxW5BqfMH9TnU8Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tm0tDF2Da/WbJOl9Bdf1PArH0ONk9ChzzEr9kx42O6A=;
 b=lG3LcQT3yKIUw8oXGYFdevJ+RcwlcJODs02SKVL41639gczG0gNBLadPBGJxoZVm4Aw4Vd7nda8JL4z1JzGO+jHabPGgruyjqtp6kMpl+FFMBrLPIXMHB4Qp8QOLPlwWqsXHHXtizxhyh4fbS8RDC2+Vx/wAUK5dHtxcQ75s6B+p4ZMLKAYv6vMky8IHtHefymPrlKwvvRdsfDV2KjEl4jB7i9al7UsskZqh0MvFjFvLTO4gnpopUP004+gYoQIguHLUauRe4dU8JYdMi0l22Mr22iZKFnJYdpWJLIG0tykXW1yTsYrFX6kr3Ye/cRSZB1RuJcVpeXTR3as02+dPKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tm0tDF2Da/WbJOl9Bdf1PArH0ONk9ChzzEr9kx42O6A=;
 b=HrOARb3sCKymLJwvY7UN7MXlUTDeNvZX4WhWkP0iKQ0ZJKgmq+HFD8p28T8dJm5BDGd6Hf/t6z7LXMvPsyDQOXvk/TVfCX9DlqjuEVqxJoGE+NCWgoqBsX3V8E1u2IH6+AjAfYUcpW0c+1aMXbi9ioa7NsdVrlpqBufzNWmghcQQLNY7zklqPO6xlTIcE55Ix0yWUOBWJJQSYgQKX9/LgNuAG8deTxft2quVN7DsuyH0breCp/V33FAuoKcnHw0xchF6YnM3Dv5x3CVpP52L1MErrJRfhq8Nvkd3bB28CmZlfQlhbuFCs9VlHwoJK3BTpyST7W2cZDkrPIZcbprO7g==
Received: from AM7EUR06FT062.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc36::42) by
 AM7EUR06HT234.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc36::278)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Sun, 2 Aug
 2020 09:47:50 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:fc36::43) by AM7EUR06FT062.mail.protection.outlook.com
 (2a01:111:e400:fc36::191) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20 via Frontend
 Transport; Sun, 2 Aug 2020 09:47:50 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:1A8876A4BFCC7B2412D1FD04326570153635440842CF4FBEA66B9AB86A0B48D3;UpperCasedChecksum:4545615D43585AD553A042A27CD3BB7FB5B62EC72FAFF609D4ACE8EA37FF8764;SizeAsReceived:8725;Count:48
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e%9]) with mapi id 15.20.3239.021; Sun, 2 Aug 2020
 09:47:50 +0000
Subject: Re: [yocto] [meta-security][meta-hardening][PATCH] meta-harden: Add a layer to demo harding OE/YP
To: yocto@lists.yoctoproject.org
References: <20200726201031.23187-1-akuster808@gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Sun, 2 Aug 2020 11:47:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200726201031.23187-1-akuster808@gmail.com>
X-ClientProxiedBy: AM6P192CA0012.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:83::25) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <2b4469d6-68f8-12d2-fe52-8f51c26aebb8@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.82.84) by AM6P192CA0012.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:83::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16 via Frontend Transport; Sun, 2 Aug 2020 09:47:50 +0000
X-Microsoft-Original-Message-ID: 
 <2b4469d6-68f8-12d2-fe52-8f51c26aebb8@outlook.com>
X-TMN: [yPGOKtU93rFjAYRRZXUwLWWANbAu3nIp]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 2966e0c9-18ae-405e-8243-08d836c91e93
X-MS-TrafficTypeDiagnostic: AM7EUR06HT234:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	T6XiX/LNzR5EkLVSXX7QKhYiW5zaP8j3+7WNZhdRDvelMgN8j8J7ChchHhH4r/vU4strPMlIjepyAUnLhka/BM+izYXERo4bzWeru1/dE2kQI0lOePVQH2hmJ/Zvk/HsKegvDort0ACH52OVa9y3URx1Y+TqHJye6RyYTj9kZ//y7OiDk7cDHjmIGcVgURIL5nqxWyC2G088YnjNBXhsub9NzD/19K6UIld4Y3+mV0EvOR40bBEsY35dG6nhQ4sJ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6881.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	8FwNQC58HBYyQpDwQBGUC0GoG0Z5caaRrqvdZgv68HD4x753BAY5kZ+Ae0GG/deYKloaU9mpsDm1MaXEIzXBTLdLQ/jQUqDkxUJXHcXTBOBk/vROJgQVaYT5wFcChD0uM28o9ogNznG0FUIJMoER7Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2966e0c9-18ae-405e-8243-08d836c91e93
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2020 09:47:50.5341
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR06FT062.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7EUR06HT234
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

is this just a demo, or are there plans to broaden the scope of this layer?
To me it would make perfectly sense to have more of these features 
(besides sudo, openssh and root-pwd) and I'm willing to contribute, if 
this is something that will be actively pursued by the project.
IMHO this should be become a core feature (DISTRO_FEATURE for example) 
than having it separately

Regards
Konrad

On 26.07.20 22:10, akuster wrote:
> diff --git a/meta-hardening/README b/meta-hardening/README
> new file mode 100644
> index 0000000..37a0b7e
> --- /dev/null
> +++ b/meta-hardening/README
> @@ -0,0 +1,86 @@
> +# This is an example for Security hardening an OE or Poky image
> +
> +
> +Meta-hardening
> +=============
> +
> +This layer provides examples for hardening OE/Yocto images.
> +This layer does not provide 100% security protection.  This is only
> +a framework from which a user can build from and can possible contribute to.
> +The goal here is to capture use cases and examples the community decided shares for
> +everyones benefit.
> +
> +Building the meta-hardening layer
> +-------------------------------
> +In order to add hardening support to the poky/OE build this layer should be added
> +to your projects bblayers.conf file.
> +
> +By default the hardening components are disabled.  This conforms to the
> +Yocto Project compatible guideline that indicate that simply including a
> +layer should not change the system behavior.
> +
> +In order to use the components in this layer to take affect the  'harden' keyword must
> +set the DISTRO as in "DISTRO = harden".   This enables the "NO ROOT access" idea or framework.
> +
> +If one wants the a more complete example of a hardened image, one must also build the image:
> +harden-image-minimal
> +
> +There are default example userid and passwards:
> +These can be over written in your local.conf via:
> +ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
> +DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
> +
> +example:
> +local.conf
> +DISTRO = "harden"
> +
> +The default user and password are:
> +User: "myadmin"
> +Password: "1SimplePw!"
> +
> +bitbake {qemu machine} harden-image-minimal
> +
> +Dependencies
> +============
> +
> +Branch: master
> +
> +This layer depends on:
> +
> +URI: git://git.yoctoproject.org/poky
> +
> +or this normal combo:
> +
> +URI: git://git.openembedded.org/meta-openembedded/meta-oe
> +
> +URI: git://git.openembedded.org/bitbake
> +
> +plus:
> +
> +URI: git://git.openembedded.org/meta-openembedded
> +layers: meta-oe
> +
> +
> +Maintenance
> +-----------
> +
> +Send pull requests, patches, comments or questions to yocto@yoctoproject.org
> +
> +When sending single patches, please using something like:
> +'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-hardening][PATCH'
> +
> +These values can be set as defaults for this repository:
> +
> +$ git config sendemail.to yocto@yoctoproject.org
> +$ git config format.subjectPrefix meta-hardening][PATCH
> +
> +Now you can just do 'git send-email origin/master' to send all local patches.
> +
> +Maintainers:  Armin Kuster <akuster808@gmail.com>
> +
> +License
> +=======
> +
> +All metadata is MIT licensed unless otherwise stated. Source code included
> +in tree for individual recipes is under the LICENSE stated in each recipe
> +(.bb file) unless otherwise stated.
> diff --git a/meta-hardening/conf/distro/harden.conf b/meta-hardening/conf/distro/harden.conf
> new file mode 100644
> index 0000000..66db9b7
> --- /dev/null
> +++ b/meta-hardening/conf/distro/harden.conf
> @@ -0,0 +1,11 @@
> +DISTRO = "harden"
> +DISTRO_NAME = "Simple Security hardening example"
> +DISTRO_VERSION = "1.0"
> +
> +DISTRO_FEATURES = " acl xattr pci ext2 pam ipv4 ipv6 ipsec largefile usbhost"
> +
> +VIRTUAL-RUNTIME_base-utils-syslog ?= "rsyslog"
> +IMAGE_ROOTFS_EXTRA_SPACE = "524288"
> +EXTRA_IMAGE_FEATURES_remove = "debug-tweaks"
> +
> +DISABLE_ROOT ?= "True"
> diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
> new file mode 100644
> index 0000000..5896214
> --- /dev/null
> +++ b/meta-hardening/conf/layer.conf
> @@ -0,0 +1,13 @@
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH .= ":${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
> +
> +BBFILE_COLLECTIONS += "harden-layer"
> +BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
> +BBFILE_PRIORITY_harden-layer = "10"
> +
> +LAYERSERIES_COMPAT_harden-layer = "dunfell"
> +
> +LAYERDEPENDS_harden-layer = "core openembedded-layer"
> diff --git a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
> new file mode 100644
> index 0000000..67be3f3
> --- /dev/null
> +++ b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
> @@ -0,0 +1,13 @@
> +do_install_append_harden () {
> +	# to hardend
> +	sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwarding no:' ${D}${sysconfdir}/ssh/sshd_config
> +	sed -i -e 's:ClientAliveCountMax 4:ClientAliveCountMax 2:' ${D}${sysconfdir}/ssh/sshd_config
> +	sed -i -e 's:#LogLevel INFO:LogLevel VERBOSE:' ${D}${sysconfdir}/ssh/sshd_config
> +	sed -i -e 's:#MaxSessions.*:MaxSessions 2:' ${D}${sysconfdir}/ssh/sshd_config
> +	sed -i -e 's:#TCPKeepAlive yes:TCPKeepAlive no:' ${D}${sysconfdir}/ssh/sshd_config
> +	sed -i -e 's:#AllowAgentForwarding yes:AllowAgentForwarding no:' ${D}${sysconfdir}/ssh/sshd_config
> +
> +    if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes', 'no', d)}" = "yes" ]; then
> +        sed -i -e 's:#PermitRootLogin.*:PermitRootLogin prohibit-password:' ${D}${sysconfdir}/ssh/sshd_config
> +    fi
> +}
> diff --git a/meta-hardening/recipes-core/base-files/base-files_%.bbappend b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
> new file mode 100644
> index 0000000..3956304
> --- /dev/null
> +++ b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
> @@ -0,0 +1,4 @@
> +
> +do_install_append_harden () {
> +    sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/profile
> +}
> diff --git a/meta-hardening/recipes-core/images/harden-image-minimal.bb b/meta-hardening/recipes-core/images/harden-image-minimal.bb
> new file mode 100644
> index 0000000..daed3fb
> --- /dev/null
> +++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
> @@ -0,0 +1,25 @@
> +SUMMARY = "A small image for an example hardening OE."
> +
> +IMAGE_INSTALL = "packagegroup-core-boot packagegroup-hardening"
> +IMAGE_INSTALL_append = " os-release"
> +
> +IMAGE_FEATURES = ""
> +IMAGE_LINGUAS = " "
> +
> +LICENSE = "MIT"
> +
> +IMAGE_ROOTFS_SIZE ?= "8192"
> +
> +inherit core-image extrausers
> +
> +ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
> +DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
> +DEFAULT_ADMIN_GROUP ?= "wheel"
> +DEFAULT_ADMIN_ACCOUNT_PASSWORD ?= "1SimplePw!"
> +
> +EXTRA_USERS_PARAMS = "${@bb.utils.contains('DISABLE_ROOT', 'True', "usermod -L root;", "usermod -P '${ROOT_DEFAULT_PASSWORD}' root;", d)}"
> +
> +EXTRA_USERS_PARAMS += "useradd  ${DEFAULT_ADMIN_ACCOUNT};"
> +EXTRA_USERS_PARAMS += "groupadd  ${DEFAULT_ADMIN_GROUP};"
> +EXTRA_USERS_PARAMS += "usermod -P '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};"
> +EXTRA_USERS_PARAMS += "usermod -aG ${DEFAULT_ADMIN_GROUP}  ${DEFAULT_ADMIN_ACCOUNT};"
> diff --git a/meta-hardening/recipes-core/initscripts/files/mountall.sh b/meta-hardening/recipes-core/initscripts/files/mountall.sh
> new file mode 100755
> index 0000000..e093f96
> --- /dev/null
> +++ b/meta-hardening/recipes-core/initscripts/files/mountall.sh
> @@ -0,0 +1,41 @@
> +#!/bin/sh
> +### BEGIN INIT INFO
> +# Provides:          mountall
> +# Required-Start:    mountvirtfs
> +# Required-Stop:
> +# Default-Start:     S
> +# Default-Stop:
> +# Short-Description: Mount all filesystems.
> +# Description:
> +### END INIT INFO
> +
> +. /etc/default/rcS
> +
> +#
> +# Mount local filesystems in /etc/fstab. For some reason, people
> +# might want to mount "proc" several times, and mount -v complains
> +# about this. So we mount "proc" filesystems without -v.
> +#
> +test "$VERBOSE" != no && echo "Mounting local filesystems..."
> +mkdir -p /home
> +mkdir -p /var
> +mount -at nonfs,nosmbfs,noncpfs 2>/dev/null
> +
> +#
> +# We might have mounted something over /dev, see if /dev/initctl is there.
> +#
> +if test ! -p /dev/initctl
> +then
> +	rm -f /dev/initctl
> +	mknod -m 600 /dev/initctl p
> +fi
> +kill -USR1 1
> +
> +#
> +# Execute swapon command again, in case we want to swap to
> +# a file on a now mounted filesystem.
> +#
> +[ -x /sbin/swapon ] && swapon -a
> +
> +: exit 0
> +
> diff --git a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
> new file mode 100644
> index 0000000..896b039
> --- /dev/null
> +++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +SRC_URI_append_harden = " file://mountall.sh"
> +
> +do_install_append_harden() {
> +    install -d ${D}${sysconfdir}/init.d
> +    install -m 0755 ${WORKDIR}/mountall.sh ${D}${sysconfdir}/init.d
> +}
> diff --git a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
> new file mode 100644
> index 0000000..1dcd5fc
> --- /dev/null
> +++ b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
> @@ -0,0 +1,19 @@
> +#
> +#
> +#
> +
> +SUMMARY = "Hardening example group"
> +
> +inherit packagegroup
> +
> +PROVIDES = "${PACKAGES}"
> +PACKAGES = "${PN}  \
> +    packagegroup-${PN} \
> +"
> +
> +RDEPENDS_${PN} = "\
> +    init-ifupdown \
> +    ${VIRTUAL-RUNTIME_base-utils-syslog} \
> +    sudo \
> +    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "pam-plugin-wheel", "",d)} \
> +"
> diff --git a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
> new file mode 100644
> index 0000000..3f363f0
> --- /dev/null
> +++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
> @@ -0,0 +1,10 @@
> +do_install_append_harden () {
> +	# to hardend
> +	sed -i -e 's:UMASK.*:UMASK 027:' ${D}${sysconfdir}/login.defs
> +	sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:' ${D}${sysconfdir}/login.defs
> +	sed -i -e 's:PASS_MIN_DAYS.*:PASS_MIN_DAYS 1:' ${D}${sysconfdir}/login.defs
> +	sed -i -e 's:#PASS_MIN_LEN.*:PASS_MIN_LEN 11:' ${D}${sysconfdir}/login.defs
> +	sed -i -e 's:PASS_WARN_AGE.*:PASS_WARN_AGE 14:' ${D}${sysconfdir}/login.defs
> +	sed -i -e 's:LOGIN_RETRIES.*:LOGIN_RETRIES 3:' ${D}${sysconfdir}/login.defs
> +	sed -i -e 's:LOGIN_TIMEOUT.*:LOGIN_TIMEOUT 30:' ${D}${sysconfdir}/login.defs
> +}
> diff --git a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
> new file mode 100644
> index 0000000..a31c081
> --- /dev/null
> +++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
> @@ -0,0 +1,7 @@
> +
> +PACKAGECONFIG_append_harden = " pam-wheel"
> +do_install_append_harden () {
> +    if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes', 'no', d)}" = "yes" ]; then
> +        sed -i -e 's:root ALL=(ALL) ALL:#root ALL=(ALL) ALL:' ${D}${sysconfdir}/sudoers
> +    fi
> +}
> 
> 
> 
> 
