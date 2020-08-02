Received: from EUR02-VE1-obe.outbound.protection.outlook.com (EUR02-VE1-obe.outbound.protection.outlook.com [40.92.69.51])
 by mx.groups.io with SMTP id smtpd.web11.17428.1596401893972565887
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 13:58:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=hqm0y+XA;
 spf=pass (domain: outlook.com, ip: 40.92.69.51, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEIzT/PvBAQV1xEXJy9kquPLln6Yf2HeYVwXAXC9ZuRJC7QmiWpL+BUpX9nPMf/1PyehOWtpJVcImh4MzE6qKgaAAJ0UF1r0VY3KMa81l4Mx0UbAUTWsKrnTKgEH0wOx8lowRXWntWW7Hou0uoSoEzUQS8/vjmYTTtoYDOs0rarjbJTIp7/SWWG3yO/6XjxQavvR01hzKc5rH9SqsarXgBtbhy3g/pB1RYuOAwYEctQsC94kNp4mPyl2OYa0a+mqg+G8NQfuhRBK4lPqOMnKjXlXit96R37m30dqRy0MhwNmUbTIzL08cq8VW80Ryao6Hkodf7n/waRb6q3mmGhacg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPU9RwWT39ZCWFSTKQQOKwlcIuFCbAgeXhvttztkfoQ=;
 b=mER168wS7x2QCqddkC68uBiQuvLfrteJymJaCAlGbv2bWFu5YiP9pRqXhG9JAh6aLiOaQntG6MxzHaz7yuEa7Wk0a9uEF7Z7dHd82KjIxI1sOfnQ6M5uIXAyc7T/LycbrneZ1mv0Ve0bYZZGX0Ts1zOHsndmb/xTN8t/OgjUeWCxKG+kSRg9g7uv8FbnX6cGTHIKQ/jGwSDmxKW/A4w3xVPOX85lEvFga6LRrce1/pXnQmudGJXr7BFDgAokWsPTRhtU7bqNrhc/482oBbXoERehjQnB5hFeAe/SEzgGCsxyT/ALUlCMl5sihD+OljAXAXkAAN4kwHTszmyqePmv+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPU9RwWT39ZCWFSTKQQOKwlcIuFCbAgeXhvttztkfoQ=;
 b=hqm0y+XAXhmFEnrbnAJkrL35etkCF+pswo9gBGt4MVwWdTCm64fq/npN2/uC9GHKZDOVoJNmqguDAYMy0MGIgWphwH3zNjFnyFn6WTQnoK6G49Y0h7kb+bbkSo7QNX3moUSfRrcyBzGaKA6eTBuLTcwK372g05u7VSvhukjcmBoYBf562uBsjo4zks2OCk4UC7eRMsfUW/1w995FM+hQS2hnLvI329YxRi5SlFBdlx5GWVm63yOmYLhsd4lWU39Tg2XQZbn8HujzYJz4fC3gKzUcnp5wcf0K25qBgNyLLo8OIHrUgt1Mak/SJ+i/VSabvxOqx/XxmATmK20vFMWLDA==
Received: from VE1EUR02FT057.eop-EUR02.prod.protection.outlook.com
 (2a01:111:e400:7e1e::46) by
 VE1EUR02HT118.eop-EUR02.prod.protection.outlook.com (2a01:111:e400:7e1e::334)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Sun, 2 Aug
 2020 20:58:11 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:7e1e::4d) by VE1EUR02FT057.mail.protection.outlook.com
 (2a01:111:e400:7e1e::346) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20 via Frontend
 Transport; Sun, 2 Aug 2020 20:58:11 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E65EE21CA3AC1C8F98D7AF42B86F009AB4743E40C58F03163C327DDF27E83CEB;UpperCasedChecksum:17664A30FE856BA1C45EB664EA58A3922B66B67BC70DF64B570051ECB8AF474F;SizeAsReceived:8906;Count:48
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e%9]) with mapi id 15.20.3239.021; Sun, 2 Aug 2020
 20:58:11 +0000
Subject: Re: [yocto] [meta-security][meta-hardening][PATCH] meta-harden: Add a layer to demo harding OE/YP
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20200726201031.23187-1-akuster808@gmail.com>
 <AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com>
 <b1652b2a-4eee-8d89-313e-ccefb7227af3@gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM7PR05MB6881652BB7B952764B0EB37FA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Sun, 2 Aug 2020 22:58:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <b1652b2a-4eee-8d89-313e-ccefb7227af3@gmail.com>
X-ClientProxiedBy: AM6P195CA0001.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::14) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <7c9eb9da-5c89-b9d1-852a-8e193a91107e@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.82.84) by AM6P195CA0001.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16 via Frontend Transport; Sun, 2 Aug 2020 20:58:10 +0000
X-Microsoft-Original-Message-ID: <7c9eb9da-5c89-b9d1-852a-8e193a91107e@outlook.com>
X-TMN: [IxtT0S+w/+/hCyTcTZr6zu4kK9RmNiWH]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: a9263dcb-b2d8-49e4-25e5-08d83726c40a
X-MS-TrafficTypeDiagnostic: VE1EUR02HT118:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BhMmvx7judTIPuWzojka+XRsnnR/E9zrJIrvpdV0bc9eaujue3GEaNmeyxo/BhACpJirGSPCg2aCDuUj9vchZE98daSOt0f0MRg0EvDPNfHH2+CCelyq7M3291dGY16QzB9mPidN+PY2OfOOdEuSfCpuQOXw37tuGCsufHCNpuxm49oTvsL0siOCXE9dP3tMBRLyJcsVVbVhjeaTbLw0esTgGl4tbre9FcjcoX7jBftpIVvOvk+i1VrEldeFETNZ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6881.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	C9+GKQrQmTUr0jP7mdGt+vsoHEx+KWNziCG0FA05QXYqZhOf+XCg3sVxUr224mqjTtqgfkLlzqfU7uMJyjDHiktteR6KuYbr1DPUyqCaIc8pLSHsUEDIif/7umY7w03paFj01GHCu8jEsLPp8GTcjg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9263dcb-b2d8-49e4-25e5-08d83726c40a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2020 20:58:11.3365
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR02FT057.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT118
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Armin,

that sounds good. Please keep me in the loop.
BTW did you/the project create any kind of roadmap, just out of interest?

BR
Konrad

On 02.08.20 17:24, akuster808 wrote:
>=20
>=20
> On 8/2/20 2:47 AM, Konrad Weihmann wrote:
>> Hi,
>>
>> is this just a demo, or are there plans to broaden the scope of this=20
>> layer?
>=20
> There are plans to broaden it.=C2=A0 Some of this was=C2=A0 came from an=
other=20
> layer I have which did not belong.
>=20
>> To me it would make perfectly sense to have more of these features=20
>> (besides sudo, openssh and root-pwd) and I'm willing to contribute, if=
=20
>> this is something that will be actively pursued by the project.
> That would be awesome and welcome.
>=20
>> IMHO this should be become a core feature (DISTRO_FEATURE for example)=
=20
>> than having it separately
>=20
> I need a DISTRO_FEATURE to have this work with the layer this work came=
=20
> from.=C2=A0 I have a DISTRO_FEATURE support almost working.
>=20
>>
>> Regards
>> Konrad
>>
>> On 26.07.20 22:10, akuster wrote:
>>> diff --git a/meta-hardening/README b/meta-hardening/README
>>> new file mode 100644
>>> index 0000000..37a0b7e
>>> --- /dev/null
>>> +++ b/meta-hardening/README
>>> @@ -0,0 +1,86 @@
>>> +# This is an example for Security hardening an OE or Poky image
>>> +
>>> +
>>> +Meta-hardening
>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> +
>>> +This layer provides examples for hardening OE/Yocto images.
>>> +This layer does not provide 100% security protection.=C2=A0 This is o=
nly
>>> +a framework from which a user can build from and can possible=20
>>> contribute to.
>>> +The goal here is to capture use cases and examples the community=20
>>> decided shares for
>>> +everyones benefit.
>>> +
>>> +Building the meta-hardening layer
>>> +-------------------------------
>>> +In order to add hardening support to the poky/OE build this layer=20
>>> should be added
>>> +to your projects bblayers.conf file.
>>> +
>>> +By default the hardening components are disabled.=C2=A0 This conforms=
 to the
>>> +Yocto Project compatible guideline that indicate that simply=20
>>> including a
>>> +layer should not change the system behavior.
>>> +
>>> +In order to use the components in this layer to take affect the  
>>> 'harden' keyword must
>>> +set the DISTRO as in "DISTRO =3D harden".=C2=A0=C2=A0 This enables th=
e "NO ROOT=20
>>> access" idea or framework.
>>> +
>>> +If one wants the a more complete example of a hardened image, one=20
>>> must also build the image:
>>> +harden-image-minimal
>>> +
>>> +There are default example userid and passwards:
>>> +These can be over written in your local.conf via:
>>> +ROOT_DEFAULT_PASSWORD ?=3D "1SimplePw!"
>>> +DEFAULT_ADMIN_ACCOUNT ?=3D "myadmin"
>>> +
>>> +example:
>>> +local.conf
>>> +DISTRO =3D "harden"
>>> +
>>> +The default user and password are:
>>> +User: "myadmin"
>>> +Password: "1SimplePw!"
>>> +
>>> +bitbake {qemu machine} harden-image-minimal
>>> +
>>> +Dependencies
>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> +
>>> +Branch: master
>>> +
>>> +This layer depends on:
>>> +
>>> +URI: git://git.yoctoproject.org/poky
>>> +
>>> +or this normal combo:
>>> +
>>> +URI: git://git.openembedded.org/meta-openembedded/meta-oe
>>> +
>>> +URI: git://git.openembedded.org/bitbake
>>> +
>>> +plus:
>>> +
>>> +URI: git://git.openembedded.org/meta-openembedded
>>> +layers: meta-oe
>>> +
>>> +
>>> +Maintenance
>>> +-----------
>>> +
>>> +Send pull requests, patches, comments or questions to=20
>>> yocto@yoctoproject.org
>>> +
>>> +When sending single patches, please using something like:
>>> +'git send-email -1 --to yocto@yoctoproject.org=20
>>> --subject-prefix=3Dmeta-hardening][PATCH'
>>> +
>>> +These values can be set as defaults for this repository:
>>> +
>>> +$ git config sendemail.to yocto@yoctoproject.org
>>> +$ git config format.subjectPrefix meta-hardening][PATCH
>>> +
>>> +Now you can just do 'git send-email origin/master' to send all local=
=20
>>> patches.
>>> +
>>> +Maintainers:=C2=A0 Armin Kuster <akuster808@gmail.com>
>>> +
>>> +License
>>> +=3D=3D=3D=3D=3D=3D=3D
>>> +
>>> +All metadata is MIT licensed unless otherwise stated. Source code=20
>>> included
>>> +in tree for individual recipes is under the LICENSE stated in each=20
>>> recipe
>>> +(.bb file) unless otherwise stated.
>>> diff --git a/meta-hardening/conf/distro/harden.conf=20
>>> b/meta-hardening/conf/distro/harden.conf
>>> new file mode 100644
>>> index 0000000..66db9b7
>>> --- /dev/null
>>> +++ b/meta-hardening/conf/distro/harden.conf
>>> @@ -0,0 +1,11 @@
>>> +DISTRO =3D "harden"
>>> +DISTRO_NAME =3D "Simple Security hardening example"
>>> +DISTRO_VERSION =3D "1.0"
>>> +
>>> +DISTRO_FEATURES =3D " acl xattr pci ext2 pam ipv4 ipv6 ipsec largefil=
e=20
>>> usbhost"
>>> +
>>> +VIRTUAL-RUNTIME_base-utils-syslog ?=3D "rsyslog"
>>> +IMAGE_ROOTFS_EXTRA_SPACE =3D "524288"
>>> +EXTRA_IMAGE_FEATURES_remove =3D "debug-tweaks"
>>> +
>>> +DISABLE_ROOT ?=3D "True"
>>> diff --git a/meta-hardening/conf/layer.conf=20
>>> b/meta-hardening/conf/layer.conf
>>> new file mode 100644
>>> index 0000000..5896214
>>> --- /dev/null
>>> +++ b/meta-hardening/conf/layer.conf
>>> @@ -0,0 +1,13 @@
>>> +# We have a conf and classes directory, add to BBPATH
>>> +BBPATH .=3D ":${LAYERDIR}"
>>> +
>>> +# We have a recipes directory, add to BBFILES
>>> +BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb=20
>>> ${LAYERDIR}/recipes*/*/*.bbappend"
>>> +
>>> +BBFILE_COLLECTIONS +=3D "harden-layer"
>>> +BBFILE_PATTERN_harden-layer =3D "^${LAYERDIR}/"
>>> +BBFILE_PRIORITY_harden-layer =3D "10"
>>> +
>>> +LAYERSERIES_COMPAT_harden-layer =3D "dunfell"
>>> +
>>> +LAYERDEPENDS_harden-layer =3D "core openembedded-layer"
>>> diff --git=20
>>> a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend=20
>>> b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
>>> new file mode 100644
>>> index 0000000..67be3f3
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
>>> @@ -0,0 +1,13 @@
>>> +do_install_append_harden () {
>>> +=C2=A0=C2=A0=C2=A0 # to hardend
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwa=
rding no:'=20
>>> ${D}${sysconfdir}/ssh/sshd_config
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:ClientAliveCountMax 4:ClientAliveCoun=
tMax 2:'=20
>>> ${D}${sysconfdir}/ssh/sshd_config
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#LogLevel INFO:LogLevel VERBOSE:'=20
>>> ${D}${sysconfdir}/ssh/sshd_config
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#MaxSessions.*:MaxSessions 2:'=20
>>> ${D}${sysconfdir}/ssh/sshd_config
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#TCPKeepAlive yes:TCPKeepAlive no:'=
=20
>>> ${D}${sysconfdir}/ssh/sshd_config
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#AllowAgentForwarding yes:AllowAgentF=
orwarding no:'=20
>>> ${D}${sysconfdir}/ssh/sshd_config
>>> +
>>> +=C2=A0=C2=A0=C2=A0 if [ "${@bb.utils.contains('DISABLE_ROOT', 'True',=
 'yes', 'no',=20
>>> d)}" =3D "yes" ]; then
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i -e 's:#PermitRootLo=
gin.*:PermitRootLogin=20
>>> prohibit-password:' ${D}${sysconfdir}/ssh/sshd_config
>>> +=C2=A0=C2=A0=C2=A0 fi
>>> +}
>>> diff --git=20
>>> a/meta-hardening/recipes-core/base-files/base-files_%.bbappend=20
>>> b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
>>> new file mode 100644
>>> index 0000000..3956304
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
>>> @@ -0,0 +1,4 @@
>>> +
>>> +do_install_append_harden () {
>>> +=C2=A0=C2=A0=C2=A0 sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/=
profile
>>> +}
>>> diff --git=20
>>> a/meta-hardening/recipes-core/images/harden-image-minimal.bb=20
>>> b/meta-hardening/recipes-core/images/harden-image-minimal.bb
>>> new file mode 100644
>>> index 0000000..daed3fb
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
>>> @@ -0,0 +1,25 @@
>>> +SUMMARY =3D "A small image for an example hardening OE."
>>> +
>>> +IMAGE_INSTALL =3D "packagegroup-core-boot packagegroup-hardening"
>>> +IMAGE_INSTALL_append =3D " os-release"
>>> +
>>> +IMAGE_FEATURES =3D ""
>>> +IMAGE_LINGUAS =3D " "
>>> +
>>> +LICENSE =3D "MIT"
>>> +
>>> +IMAGE_ROOTFS_SIZE ?=3D "8192"
>>> +
>>> +inherit core-image extrausers
>>> +
>>> +ROOT_DEFAULT_PASSWORD ?=3D "1SimplePw!"
>>> +DEFAULT_ADMIN_ACCOUNT ?=3D "myadmin"
>>> +DEFAULT_ADMIN_GROUP ?=3D "wheel"
>>> +DEFAULT_ADMIN_ACCOUNT_PASSWORD ?=3D "1SimplePw!"
>>> +
>>> +EXTRA_USERS_PARAMS =3D "${@bb.utils.contains('DISABLE_ROOT', 'True',=
=20
>>> "usermod -L root;", "usermod -P '${ROOT_DEFAULT_PASSWORD}' root;", d)}=
"
>>> +
>>> +EXTRA_USERS_PARAMS +=3D "useradd=C2=A0 ${DEFAULT_ADMIN_ACCOUNT};"
>>> +EXTRA_USERS_PARAMS +=3D "groupadd=C2=A0 ${DEFAULT_ADMIN_GROUP};"
>>> +EXTRA_USERS_PARAMS +=3D "usermod -P=20
>>> '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};"
>>> +EXTRA_USERS_PARAMS +=3D "usermod -aG ${DEFAULT_ADMIN_GROUP}=20
>>> ${DEFAULT_ADMIN_ACCOUNT};"
>>> diff --git=20
>>> a/meta-hardening/recipes-core/initscripts/files/mountall.sh=20
>>> b/meta-hardening/recipes-core/initscripts/files/mountall.sh
>>> new file mode 100755
>>> index 0000000..e093f96
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-core/initscripts/files/mountall.sh
>>> @@ -0,0 +1,41 @@
>>> +#!/bin/sh
>>> +### BEGIN INIT INFO
>>> +# Provides:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mou=
ntall
>>> +# Required-Start:=C2=A0=C2=A0=C2=A0 mountvirtfs
>>> +# Required-Stop:
>>> +# Default-Start:=C2=A0=C2=A0=C2=A0=C2=A0 S
>>> +# Default-Stop:
>>> +# Short-Description: Mount all filesystems.
>>> +# Description:
>>> +### END INIT INFO
>>> +
>>> +. /etc/default/rcS
>>> +
>>> +#
>>> +# Mount local filesystems in /etc/fstab. For some reason, people
>>> +# might want to mount "proc" several times, and mount -v complains
>>> +# about this. So we mount "proc" filesystems without -v.
>>> +#
>>> +test "$VERBOSE" !=3D no && echo "Mounting local filesystems..."
>>> +mkdir -p /home
>>> +mkdir -p /var
>>> +mount -at nonfs,nosmbfs,noncpfs 2>/dev/null
>>> +
>>> +#
>>> +# We might have mounted something over /dev, see if /dev/initctl is=
=20
>>> there.
>>> +#
>>> +if test ! -p /dev/initctl
>>> +then
>>> +=C2=A0=C2=A0=C2=A0 rm -f /dev/initctl
>>> +=C2=A0=C2=A0=C2=A0 mknod -m 600 /dev/initctl p
>>> +fi
>>> +kill -USR1 1
>>> +
>>> +#
>>> +# Execute swapon command again, in case we want to swap to
>>> +# a file on a now mounted filesystem.
>>> +#
>>> +[ -x /sbin/swapon ] && swapon -a
>>> +
>>> +: exit 0
>>> +
>>> diff --git=20
>>> a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend=20
>>> b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
>>> new file mode 100644
>>> index 0000000..896b039
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
>>> @@ -0,0 +1,8 @@
>>> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>> +
>>> +SRC_URI_append_harden =3D " file://mountall.sh"
>>> +
>>> +do_install_append_harden() {
>>> +=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/init.d
>>> +=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/mountall.sh ${D}${sysco=
nfdir}/init.d
>>> +}
>>> diff --git=20
>>> a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb=
=20
>>> b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
>>> new file mode 100644
>>> index 0000000..1dcd5fc
>>> --- /dev/null
>>> +++=20
>>> b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
>>> @@ -0,0 +1,19 @@
>>> +#
>>> +#
>>> +#
>>> +
>>> +SUMMARY =3D "Hardening example group"
>>> +
>>> +inherit packagegroup
>>> +
>>> +PROVIDES =3D "${PACKAGES}"
>>> +PACKAGES =3D "${PN}=C2=A0 \
>>> +=C2=A0=C2=A0=C2=A0 packagegroup-${PN} \
>>> +"
>>> +
>>> +RDEPENDS_${PN} =3D "\
>>> +=C2=A0=C2=A0=C2=A0 init-ifupdown \
>>> +=C2=A0=C2=A0=C2=A0 ${VIRTUAL-RUNTIME_base-utils-syslog} \
>>> +=C2=A0=C2=A0=C2=A0 sudo \
>>> +=C2=A0=C2=A0=C2=A0 ${@bb.utils.contains("DISTRO_FEATURES", "pam",=20
>>> "pam-plugin-wheel", "",d)} \
>>> +"
>>> diff --git a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend=
=20
>>> b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
>>> new file mode 100644
>>> index 0000000..3f363f0
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
>>> @@ -0,0 +1,10 @@
>>> +do_install_append_harden () {
>>> +=C2=A0=C2=A0=C2=A0 # to hardend
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:UMASK.*:UMASK 027:' ${D}${sysconfdir}=
/login.defs
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:'=
=20
>>> ${D}${sysconfdir}/login.defs
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:PASS_MIN_DAYS.*:PASS_MIN_DAYS 1:'=20
>>> ${D}${sysconfdir}/login.defs
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#PASS_MIN_LEN.*:PASS_MIN_LEN 11:'=20
>>> ${D}${sysconfdir}/login.defs
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:PASS_WARN_AGE.*:PASS_WARN_AGE 14:'=20
>>> ${D}${sysconfdir}/login.defs
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:LOGIN_RETRIES.*:LOGIN_RETRIES 3:'=20
>>> ${D}${sysconfdir}/login.defs
>>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:LOGIN_TIMEOUT.*:LOGIN_TIMEOUT 30:'=20
>>> ${D}${sysconfdir}/login.defs
>>> +}
>>> diff --git a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend=20
>>> b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
>>> new file mode 100644
>>> index 0000000..a31c081
>>> --- /dev/null
>>> +++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
>>> @@ -0,0 +1,7 @@
>>> +
>>> +PACKAGECONFIG_append_harden =3D " pam-wheel"
>>> +do_install_append_harden () {
>>> +=C2=A0=C2=A0=C2=A0 if [ "${@bb.utils.contains('DISABLE_ROOT', 'True',=
 'yes', 'no',=20
>>> d)}" =3D "yes" ]; then
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i -e 's:root ALL=3D(A=
LL) ALL:#root ALL=3D(ALL) ALL:'=20
>>> ${D}${sysconfdir}/sudoers
>>> +=C2=A0=C2=A0=C2=A0 fi
>>> +}
>>>
>>>
>>>
>>>
>>
>>=20
>=20
