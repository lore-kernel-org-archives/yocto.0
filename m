Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.11015.1596381869906022030
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 08:24:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VNwHl8pa;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id a79so1104899pfa.8
        for <yocto@lists.yoctoproject.org>; Sun, 02 Aug 2020 08:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=Dep/yzEOANGWmnUyig6+GYk4A0gRiPoT2dEMyQVYz4E=;
        b=VNwHl8pa5i77RBWwYLKrN3iUXXgzBE+TgC5cse6VrC0//1cjPMJC3TAv1dT2EMGgAt
         LUjxNQZwq9Hz90j9aUK6hITEPwjDuziIeZIVi95dy3ubBDcBJKkJDwBndQ6AleDNwoN1
         ynlmTNWrAOpXWoaAWE3MIYPLvPqOISlL0jercbblqvjntRizIAvtolxGXEZmIOMVyiM7
         mH2sCGX47/Ci/PPxlvi8x4JA6uRPq33LSiL4yE6vgtOq47r3GTA3D5A1WMYbM+Ccn0C2
         2wwOGzXnchRClm8dwIcqfVsGqsm6vKaTBpHcXw50gNM8eHL2+f5ufv6d8MBUW1dhD2nN
         nKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=Dep/yzEOANGWmnUyig6+GYk4A0gRiPoT2dEMyQVYz4E=;
        b=k/YTo3kRPA0AoG4L64btGK5U5pXQfeg5jtIsAvDVoWsJKh2AasFP5xuxhFfwtf9o16
         S3maAqG8dyeWgjACt3jc7nPSQfoGgTkxVzEmIVZHfqYOxJoL9sRLutDZl7mLQINWUJQj
         +O+Hr97gjfjRz62aIV1JnlYA/+C7cJJuVb9ma4Xs9Wm+sZypjfRbx678SHVjbJrEBUJf
         uv61JL8jZTeDCqOeYzPd1QsXkeptnJmd6o4oCKWwaEUX6TT+RyeocqKYRX9maFFrxCh6
         uCgf/2UhGQMwMHanA2iNFoNNZu0cU8XQWae56j5IMWdY+IBJ9Dh2PUgrtOwY88azhqb5
         sQTw==
X-Gm-Message-State: AOAM531YR8w7oNHNEKjlSfjs25LGzQLmtiR0p1Aa98nqyXUiHOFllV4I
	0qN+FlDgNNPlvNgS4ru212j95T2S
X-Google-Smtp-Source: ABdhPJwMJ2l9XLKV5HMlwYsAgfybk2w9sH3im0ckGnxLM9GS5PzqvUROpp26LZeFmEEgoeawgJWX6A==
X-Received: by 2002:a63:525a:: with SMTP id s26mr11194629pgl.155.1596381869091;
        Sun, 02 Aug 2020 08:24:29 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c5f6:288a:97f:6171? ([2601:202:4180:a5c0:c5f6:288a:97f:6171])
        by smtp.gmail.com with ESMTPSA id w16sm15831439pjd.50.2020.08.02.08.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2020 08:24:27 -0700 (PDT)
Subject: Re: [yocto] [meta-security][meta-hardening][PATCH] meta-harden: Add a layer to demo harding OE/YP
To: Konrad Weihmann <kweihmann@outlook.com>, yocto@lists.yoctoproject.org
References: <20200726201031.23187-1-akuster808@gmail.com>
 <AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <b1652b2a-4eee-8d89-313e-ccefb7227af3@gmail.com>
Date: Sun, 2 Aug 2020 08:24:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------AF587805DEEDF3E41952DD33"
Content-Language: en-US

--------------AF587805DEEDF3E41952DD33
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 8/2/20 2:47 AM, Konrad Weihmann wrote:
> Hi,
>
> is this just a demo, or are there plans to broaden the scope of this
> layer?

There are plans to broaden it.=C2=A0 Some of this was=C2=A0 came from anot=
her
layer I have which did not belong.

> To me it would make perfectly sense to have more of these features
> (besides sudo, openssh and root-pwd) and I'm willing to contribute, if
> this is something that will be actively pursued by the project.
That would be awesome and welcome.

> IMHO this should be become a core feature (DISTRO_FEATURE for example)
> than having it separately

I need a DISTRO_FEATURE to have this work with the layer this work came
from.=C2=A0 I have a DISTRO_FEATURE support almost working.

>
> Regards
> Konrad
>
> On 26.07.20 22:10, akuster wrote:
>> diff --git a/meta-hardening/README b/meta-hardening/README
>> new file mode 100644
>> index 0000000..37a0b7e
>> --- /dev/null
>> +++ b/meta-hardening/README
>> @@ -0,0 +1,86 @@
>> +# This is an example for Security hardening an OE or Poky image
>> +
>> +
>> +Meta-hardening
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> +
>> +This layer provides examples for hardening OE/Yocto images.
>> +This layer does not provide 100% security protection.=C2=A0 This is on=
ly
>> +a framework from which a user can build from and can possible
>> contribute to.
>> +The goal here is to capture use cases and examples the community
>> decided shares for
>> +everyones benefit.
>> +
>> +Building the meta-hardening layer
>> +-------------------------------
>> +In order to add hardening support to the poky/OE build this layer
>> should be added
>> +to your projects bblayers.conf file.
>> +
>> +By default the hardening components are disabled.=C2=A0 This conforms =
to the
>> +Yocto Project compatible guideline that indicate that simply
>> including a
>> +layer should not change the system behavior.
>> +
>> +In order to use the components in this layer to take affect the=C2=A0
>> 'harden' keyword must
>> +set the DISTRO as in "DISTRO =3D harden".=C2=A0=C2=A0 This enables the=
 "NO ROOT
>> access" idea or framework.
>> +
>> +If one wants the a more complete example of a hardened image, one
>> must also build the image:
>> +harden-image-minimal
>> +
>> +There are default example userid and passwards:
>> +These can be over written in your local.conf via:
>> +ROOT_DEFAULT_PASSWORD ?=3D "1SimplePw!"
>> +DEFAULT_ADMIN_ACCOUNT ?=3D "myadmin"
>> +
>> +example:
>> +local.conf
>> +DISTRO =3D "harden"
>> +
>> +The default user and password are:
>> +User: "myadmin"
>> +Password: "1SimplePw!"
>> +
>> +bitbake {qemu machine} harden-image-minimal
>> +
>> +Dependencies
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> +
>> +Branch: master
>> +
>> +This layer depends on:
>> +
>> +URI: git://git.yoctoproject.org/poky
>> +
>> +or this normal combo:
>> +
>> +URI: git://git.openembedded.org/meta-openembedded/meta-oe
>> +
>> +URI: git://git.openembedded.org/bitbake
>> +
>> +plus:
>> +
>> +URI: git://git.openembedded.org/meta-openembedded
>> +layers: meta-oe
>> +
>> +
>> +Maintenance
>> +-----------
>> +
>> +Send pull requests, patches, comments or questions to
>> yocto@yoctoproject.org
>> +
>> +When sending single patches, please using something like:
>> +'git send-email -1 --to yocto@yoctoproject.org
>> --subject-prefix=3Dmeta-hardening][PATCH'
>> +
>> +These values can be set as defaults for this repository:
>> +
>> +$ git config sendemail.to yocto@yoctoproject.org
>> +$ git config format.subjectPrefix meta-hardening][PATCH
>> +
>> +Now you can just do 'git send-email origin/master' to send all local
>> patches.
>> +
>> +Maintainers:=C2=A0 Armin Kuster <akuster808@gmail.com>
>> +
>> +License
>> +=3D=3D=3D=3D=3D=3D=3D
>> +
>> +All metadata is MIT licensed unless otherwise stated. Source code
>> included
>> +in tree for individual recipes is under the LICENSE stated in each
>> recipe
>> +(.bb file) unless otherwise stated.
>> diff --git a/meta-hardening/conf/distro/harden.conf
>> b/meta-hardening/conf/distro/harden.conf
>> new file mode 100644
>> index 0000000..66db9b7
>> --- /dev/null
>> +++ b/meta-hardening/conf/distro/harden.conf
>> @@ -0,0 +1,11 @@
>> +DISTRO =3D "harden"
>> +DISTRO_NAME =3D "Simple Security hardening example"
>> +DISTRO_VERSION =3D "1.0"
>> +
>> +DISTRO_FEATURES =3D " acl xattr pci ext2 pam ipv4 ipv6 ipsec largefile
>> usbhost"
>> +
>> +VIRTUAL-RUNTIME_base-utils-syslog ?=3D "rsyslog"
>> +IMAGE_ROOTFS_EXTRA_SPACE =3D "524288"
>> +EXTRA_IMAGE_FEATURES_remove =3D "debug-tweaks"
>> +
>> +DISABLE_ROOT ?=3D "True"
>> diff --git a/meta-hardening/conf/layer.conf
>> b/meta-hardening/conf/layer.conf
>> new file mode 100644
>> index 0000000..5896214
>> --- /dev/null
>> +++ b/meta-hardening/conf/layer.conf
>> @@ -0,0 +1,13 @@
>> +# We have a conf and classes directory, add to BBPATH
>> +BBPATH .=3D ":${LAYERDIR}"
>> +
>> +# We have a recipes directory, add to BBFILES
>> +BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb
>> ${LAYERDIR}/recipes*/*/*.bbappend"
>> +
>> +BBFILE_COLLECTIONS +=3D "harden-layer"
>> +BBFILE_PATTERN_harden-layer =3D "^${LAYERDIR}/"
>> +BBFILE_PRIORITY_harden-layer =3D "10"
>> +
>> +LAYERSERIES_COMPAT_harden-layer =3D "dunfell"
>> +
>> +LAYERDEPENDS_harden-layer =3D "core openembedded-layer"
>> diff --git
>> a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
>> b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
>> new file mode 100644
>> index 0000000..67be3f3
>> --- /dev/null
>> +++ b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
>> @@ -0,0 +1,13 @@
>> +do_install_append_harden () {
>> +=C2=A0=C2=A0=C2=A0 # to hardend
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwar=
ding no:'
>> ${D}${sysconfdir}/ssh/sshd_config
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:ClientAliveCountMax 4:ClientAliveCount=
Max 2:'
>> ${D}${sysconfdir}/ssh/sshd_config
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#LogLevel INFO:LogLevel VERBOSE:'
>> ${D}${sysconfdir}/ssh/sshd_config
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#MaxSessions.*:MaxSessions 2:'
>> ${D}${sysconfdir}/ssh/sshd_config
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#TCPKeepAlive yes:TCPKeepAlive no:'
>> ${D}${sysconfdir}/ssh/sshd_config
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#AllowAgentForwarding yes:AllowAgentFo=
rwarding no:'
>> ${D}${sysconfdir}/ssh/sshd_config
>> +
>> +=C2=A0=C2=A0=C2=A0 if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', =
'yes', 'no',
>> d)}" =3D "yes" ]; then
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i -e 's:#PermitRootLog=
in.*:PermitRootLogin
>> prohibit-password:' ${D}${sysconfdir}/ssh/sshd_config
>> +=C2=A0=C2=A0=C2=A0 fi
>> +}
>> diff --git
>> a/meta-hardening/recipes-core/base-files/base-files_%.bbappend
>> b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
>> new file mode 100644
>> index 0000000..3956304
>> --- /dev/null
>> +++ b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
>> @@ -0,0 +1,4 @@
>> +
>> +do_install_append_harden () {
>> +=C2=A0=C2=A0=C2=A0 sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/p=
rofile
>> +}
>> diff --git
>> a/meta-hardening/recipes-core/images/harden-image-minimal.bb
>> b/meta-hardening/recipes-core/images/harden-image-minimal.bb
>> new file mode 100644
>> index 0000000..daed3fb
>> --- /dev/null
>> +++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
>> @@ -0,0 +1,25 @@
>> +SUMMARY =3D "A small image for an example hardening OE."
>> +
>> +IMAGE_INSTALL =3D "packagegroup-core-boot packagegroup-hardening"
>> +IMAGE_INSTALL_append =3D " os-release"
>> +
>> +IMAGE_FEATURES =3D ""
>> +IMAGE_LINGUAS =3D " "
>> +
>> +LICENSE =3D "MIT"
>> +
>> +IMAGE_ROOTFS_SIZE ?=3D "8192"
>> +
>> +inherit core-image extrausers
>> +
>> +ROOT_DEFAULT_PASSWORD ?=3D "1SimplePw!"
>> +DEFAULT_ADMIN_ACCOUNT ?=3D "myadmin"
>> +DEFAULT_ADMIN_GROUP ?=3D "wheel"
>> +DEFAULT_ADMIN_ACCOUNT_PASSWORD ?=3D "1SimplePw!"
>> +
>> +EXTRA_USERS_PARAMS =3D "${@bb.utils.contains('DISABLE_ROOT', 'True',
>> "usermod -L root;", "usermod -P '${ROOT_DEFAULT_PASSWORD}' root;", d)}"
>> +
>> +EXTRA_USERS_PARAMS +=3D "useradd=C2=A0 ${DEFAULT_ADMIN_ACCOUNT};"
>> +EXTRA_USERS_PARAMS +=3D "groupadd=C2=A0 ${DEFAULT_ADMIN_GROUP};"
>> +EXTRA_USERS_PARAMS +=3D "usermod -P
>> '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};"
>> +EXTRA_USERS_PARAMS +=3D "usermod -aG ${DEFAULT_ADMIN_GROUP}=C2=A0
>> ${DEFAULT_ADMIN_ACCOUNT};"
>> diff --git
>> a/meta-hardening/recipes-core/initscripts/files/mountall.sh
>> b/meta-hardening/recipes-core/initscripts/files/mountall.sh
>> new file mode 100755
>> index 0000000..e093f96
>> --- /dev/null
>> +++ b/meta-hardening/recipes-core/initscripts/files/mountall.sh
>> @@ -0,0 +1,41 @@
>> +#!/bin/sh
>> +### BEGIN INIT INFO
>> +# Provides:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 moun=
tall
>> +# Required-Start:=C2=A0=C2=A0=C2=A0 mountvirtfs
>> +# Required-Stop:
>> +# Default-Start:=C2=A0=C2=A0=C2=A0=C2=A0 S
>> +# Default-Stop:
>> +# Short-Description: Mount all filesystems.
>> +# Description:
>> +### END INIT INFO
>> +
>> +. /etc/default/rcS
>> +
>> +#
>> +# Mount local filesystems in /etc/fstab. For some reason, people
>> +# might want to mount "proc" several times, and mount -v complains
>> +# about this. So we mount "proc" filesystems without -v.
>> +#
>> +test "$VERBOSE" !=3D no && echo "Mounting local filesystems..."
>> +mkdir -p /home
>> +mkdir -p /var
>> +mount -at nonfs,nosmbfs,noncpfs 2>/dev/null
>> +
>> +#
>> +# We might have mounted something over /dev, see if /dev/initctl is
>> there.
>> +#
>> +if test ! -p /dev/initctl
>> +then
>> +=C2=A0=C2=A0=C2=A0 rm -f /dev/initctl
>> +=C2=A0=C2=A0=C2=A0 mknod -m 600 /dev/initctl p
>> +fi
>> +kill -USR1 1
>> +
>> +#
>> +# Execute swapon command again, in case we want to swap to
>> +# a file on a now mounted filesystem.
>> +#
>> +[ -x /sbin/swapon ] && swapon -a
>> +
>> +: exit 0
>> +
>> diff --git
>> a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
>> b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
>> new file mode 100644
>> index 0000000..896b039
>> --- /dev/null
>> +++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
>> @@ -0,0 +1,8 @@
>> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>> +
>> +SRC_URI_append_harden =3D " file://mountall.sh"
>> +
>> +do_install_append_harden() {
>> +=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/init.d
>> +=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/mountall.sh ${D}${syscon=
fdir}/init.d
>> +}
>> diff --git
>> a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
>> b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
>> new file mode 100644
>> index 0000000..1dcd5fc
>> --- /dev/null
>> +++
>> b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
>> @@ -0,0 +1,19 @@
>> +#
>> +#
>> +#
>> +
>> +SUMMARY =3D "Hardening example group"
>> +
>> +inherit packagegroup
>> +
>> +PROVIDES =3D "${PACKAGES}"
>> +PACKAGES =3D "${PN}=C2=A0 \
>> +=C2=A0=C2=A0=C2=A0 packagegroup-${PN} \
>> +"
>> +
>> +RDEPENDS_${PN} =3D "\
>> +=C2=A0=C2=A0=C2=A0 init-ifupdown \
>> +=C2=A0=C2=A0=C2=A0 ${VIRTUAL-RUNTIME_base-utils-syslog} \
>> +=C2=A0=C2=A0=C2=A0 sudo \
>> +=C2=A0=C2=A0=C2=A0 ${@bb.utils.contains("DISTRO_FEATURES", "pam",
>> "pam-plugin-wheel", "",d)} \
>> +"
>> diff --git a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
>> b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
>> new file mode 100644
>> index 0000000..3f363f0
>> --- /dev/null
>> +++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
>> @@ -0,0 +1,10 @@
>> +do_install_append_harden () {
>> +=C2=A0=C2=A0=C2=A0 # to hardend
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:UMASK.*:UMASK 027:' ${D}${sysconfdir}/=
login.defs
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:'
>> ${D}${sysconfdir}/login.defs
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:PASS_MIN_DAYS.*:PASS_MIN_DAYS 1:'
>> ${D}${sysconfdir}/login.defs
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:#PASS_MIN_LEN.*:PASS_MIN_LEN 11:'
>> ${D}${sysconfdir}/login.defs
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:PASS_WARN_AGE.*:PASS_WARN_AGE 14:'
>> ${D}${sysconfdir}/login.defs
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:LOGIN_RETRIES.*:LOGIN_RETRIES 3:'
>> ${D}${sysconfdir}/login.defs
>> +=C2=A0=C2=A0=C2=A0 sed -i -e 's:LOGIN_TIMEOUT.*:LOGIN_TIMEOUT 30:'
>> ${D}${sysconfdir}/login.defs
>> +}
>> diff --git a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
>> b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
>> new file mode 100644
>> index 0000000..a31c081
>> --- /dev/null
>> +++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
>> @@ -0,0 +1,7 @@
>> +
>> +PACKAGECONFIG_append_harden =3D " pam-wheel"
>> +do_install_append_harden () {
>> +=C2=A0=C2=A0=C2=A0 if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', =
'yes', 'no',
>> d)}" =3D "yes" ]; then
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i -e 's:root ALL=3D(AL=
L) ALL:#root ALL=3D(ALL) ALL:'
>> ${D}${sysconfdir}/sudoers
>> +=C2=A0=C2=A0=C2=A0 fi
>> +}
>>
>>
>>
>>
>
>=20


--------------AF587805DEEDF3E41952DD33
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 8/2/20 2:47 AM, Konrad Weihmann
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com">Hi,
      <br>
      <br>
      is this just a demo, or are there plans to broaden the scope of
      this layer?
      <br>
    </blockquote>
    <br>
    There are plans to broaden it.  Some of this was  came from another
    layer I have which did not belong. <br>
    <br>
    <blockquote type="cite"
cite="mid:AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com">To
      me it would make perfectly sense to have more of these features
      (besides sudo, openssh and root-pwd) and I'm willing to
      contribute, if this is something that will be actively pursued by
      the project.
      <br>
    </blockquote>
    That would be awesome and welcome.<br>
    <br>
    <blockquote type="cite"
cite="mid:AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com">IMHO
      this should be become a core feature (DISTRO_FEATURE for example)
      than having it separately
      <br>
    </blockquote>
    <br>
    I need a DISTRO_FEATURE to have this work with the layer this work
    came from.  I have a DISTRO_FEATURE support almost working. <br>
    <br>
    <blockquote type="cite"
cite="mid:AM7PR05MB6881E04F712394595856B01EA84C0@AM7PR05MB6881.eurprd05.prod.outlook.com"><br>
      Regards
      <br>
      Konrad
      <br>
      <br>
      On 26.07.20 22:10, akuster wrote:
      <br>
      <blockquote type="cite">diff --git a/meta-hardening/README
        b/meta-hardening/README
        <br>
        new file mode 100644
        <br>
        index 0000000..37a0b7e
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/README
        <br>
        @@ -0,0 +1,86 @@
        <br>
        +# This is an example for Security hardening an OE or Poky image
        <br>
        +
        <br>
        +
        <br>
        +Meta-hardening
        <br>
        +=============
        <br>
        +
        <br>
        +This layer provides examples for hardening OE/Yocto images.
        <br>
        +This layer does not provide 100% security protection.  This is
        only
        <br>
        +a framework from which a user can build from and can possible
        contribute to.
        <br>
        +The goal here is to capture use cases and examples the
        community decided shares for
        <br>
        +everyones benefit.
        <br>
        +
        <br>
        +Building the meta-hardening layer
        <br>
        +-------------------------------
        <br>
        +In order to add hardening support to the poky/OE build this
        layer should be added
        <br>
        +to your projects bblayers.conf file.
        <br>
        +
        <br>
        +By default the hardening components are disabled.  This
        conforms to the
        <br>
        +Yocto Project compatible guideline that indicate that simply
        including a
        <br>
        +layer should not change the system behavior.
        <br>
        +
        <br>
        +In order to use the components in this layer to take affect
        the  'harden' keyword must
        <br>
        +set the DISTRO as in "DISTRO = harden".   This enables the "NO
        ROOT access" idea or framework.
        <br>
        +
        <br>
        +If one wants the a more complete example of a hardened image,
        one must also build the image:
        <br>
        +harden-image-minimal
        <br>
        +
        <br>
        +There are default example userid and passwards:
        <br>
        +These can be over written in your local.conf via:
        <br>
        +ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
        <br>
        +DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
        <br>
        +
        <br>
        +example:
        <br>
        +local.conf
        <br>
        +DISTRO = "harden"
        <br>
        +
        <br>
        +The default user and password are:
        <br>
        +User: "myadmin"
        <br>
        +Password: "1SimplePw!"
        <br>
        +
        <br>
        +bitbake {qemu machine} harden-image-minimal
        <br>
        +
        <br>
        +Dependencies
        <br>
        +============
        <br>
        +
        <br>
        +Branch: master
        <br>
        +
        <br>
        +This layer depends on:
        <br>
        +
        <br>
        +URI: git://git.yoctoproject.org/poky
        <br>
        +
        <br>
        +or this normal combo:
        <br>
        +
        <br>
        +URI: git://git.openembedded.org/meta-openembedded/meta-oe
        <br>
        +
        <br>
        +URI: git://git.openembedded.org/bitbake
        <br>
        +
        <br>
        +plus:
        <br>
        +
        <br>
        +URI: git://git.openembedded.org/meta-openembedded
        <br>
        +layers: meta-oe
        <br>
        +
        <br>
        +
        <br>
        +Maintenance
        <br>
        +-----------
        <br>
        +
        <br>
        +Send pull requests, patches, comments or questions to
        <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
        <br>
        +
        <br>
        +When sending single patches, please using something like:
        <br>
        +'git send-email -1 --to <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
        --subject-prefix=meta-hardening][PATCH'
        <br>
        +
        <br>
        +These values can be set as defaults for this repository:
        <br>
        +
        <br>
        +$ git config sendemail.to <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
        <br>
        +$ git config format.subjectPrefix meta-hardening][PATCH
        <br>
        +
        <br>
        +Now you can just do 'git send-email origin/master' to send all
        local patches.
        <br>
        +
        <br>
        +Maintainers:  Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
        <br>
        +
        <br>
        +License
        <br>
        +=======
        <br>
        +
        <br>
        +All metadata is MIT licensed unless otherwise stated. Source
        code included
        <br>
        +in tree for individual recipes is under the LICENSE stated in
        each recipe
        <br>
        +(.bb file) unless otherwise stated.
        <br>
        diff --git a/meta-hardening/conf/distro/harden.conf
        b/meta-hardening/conf/distro/harden.conf
        <br>
        new file mode 100644
        <br>
        index 0000000..66db9b7
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/conf/distro/harden.conf
        <br>
        @@ -0,0 +1,11 @@
        <br>
        +DISTRO = "harden"
        <br>
        +DISTRO_NAME = "Simple Security hardening example"
        <br>
        +DISTRO_VERSION = "1.0"
        <br>
        +
        <br>
        +DISTRO_FEATURES = " acl xattr pci ext2 pam ipv4 ipv6 ipsec
        largefile usbhost"
        <br>
        +
        <br>
        +VIRTUAL-RUNTIME_base-utils-syslog ?= "rsyslog"
        <br>
        +IMAGE_ROOTFS_EXTRA_SPACE = "524288"
        <br>
        +EXTRA_IMAGE_FEATURES_remove = "debug-tweaks"
        <br>
        +
        <br>
        +DISABLE_ROOT ?= "True"
        <br>
        diff --git a/meta-hardening/conf/layer.conf
        b/meta-hardening/conf/layer.conf
        <br>
        new file mode 100644
        <br>
        index 0000000..5896214
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/conf/layer.conf
        <br>
        @@ -0,0 +1,13 @@
        <br>
        +# We have a conf and classes directory, add to BBPATH
        <br>
        +BBPATH .= ":${LAYERDIR}"
        <br>
        +
        <br>
        +# We have a recipes directory, add to BBFILES
        <br>
        +BBFILES += "${LAYERDIR}/recipes*/*/*.bb
        ${LAYERDIR}/recipes*/*/*.bbappend"
        <br>
        +
        <br>
        +BBFILE_COLLECTIONS += "harden-layer"
        <br>
        +BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
        <br>
        +BBFILE_PRIORITY_harden-layer = "10"
        <br>
        +
        <br>
        +LAYERSERIES_COMPAT_harden-layer = "dunfell"
        <br>
        +
        <br>
        +LAYERDEPENDS_harden-layer = "core openembedded-layer"
        <br>
        diff --git
        a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
        b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
        <br>
        new file mode 100644
        <br>
        index 0000000..67be3f3
        <br>
        --- /dev/null
        <br>
        +++
        b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
        <br>
        @@ -0,0 +1,13 @@
        <br>
        +do_install_append_harden () {
        <br>
        +    # to hardend
        <br>
        +    sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwarding
        no:' ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +    sed -i -e 's:ClientAliveCountMax 4:ClientAliveCountMax 2:'
        ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +    sed -i -e 's:#LogLevel <a class="moz-txt-link-freetext" href="INFO:LogLevel">INFO:LogLevel</a> VERBOSE:'
        ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +    sed -i -e 's:#MaxSessions.*:MaxSessions 2:'
        ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +    sed -i -e 's:#TCPKeepAlive yes:TCPKeepAlive no:'
        ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +    sed -i -e 's:#AllowAgentForwarding yes:AllowAgentForwarding
        no:' ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +
        <br>
        +    if [ <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISABLE_ROOT','True','yes','no',d)}">"${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes',
        'no', d)}"</a> = "yes" ]; then
        <br>
        +        sed -i -e 's:#PermitRootLogin.*:PermitRootLogin
        prohibit-password:' ${D}${sysconfdir}/ssh/sshd_config
        <br>
        +    fi
        <br>
        +}
        <br>
        diff --git
        a/meta-hardening/recipes-core/base-files/base-files_%.bbappend
        b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
        <br>
        new file mode 100644
        <br>
        index 0000000..3956304
        <br>
        --- /dev/null
        <br>
        +++
        b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
        <br>
        @@ -0,0 +1,4 @@
        <br>
        +
        <br>
        +do_install_append_harden () {
        <br>
        +    sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/profile
        <br>
        +}
        <br>
        diff --git
        a/meta-hardening/recipes-core/images/harden-image-minimal.bb
        b/meta-hardening/recipes-core/images/harden-image-minimal.bb
        <br>
        new file mode 100644
        <br>
        index 0000000..daed3fb
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
        <br>
        @@ -0,0 +1,25 @@
        <br>
        +SUMMARY = "A small image for an example hardening OE."
        <br>
        +
        <br>
        +IMAGE_INSTALL = "packagegroup-core-boot packagegroup-hardening"
        <br>
        +IMAGE_INSTALL_append = " os-release"
        <br>
        +
        <br>
        +IMAGE_FEATURES = ""
        <br>
        +IMAGE_LINGUAS = " "
        <br>
        +
        <br>
        +LICENSE = "MIT"
        <br>
        +
        <br>
        +IMAGE_ROOTFS_SIZE ?= "8192"
        <br>
        +
        <br>
        +inherit core-image extrausers
        <br>
        +
        <br>
        +ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
        <br>
        +DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
        <br>
        +DEFAULT_ADMIN_GROUP ?= "wheel"
        <br>
        +DEFAULT_ADMIN_ACCOUNT_PASSWORD ?= "1SimplePw!"
        <br>
        +
        <br>
        +EXTRA_USERS_PARAMS = <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISABLE_ROOT','True',">"${@bb.utils.contains('DISABLE_ROOT',
        'True', "</a>usermod -L root;", "usermod -P
        '${ROOT_DEFAULT_PASSWORD}' root;", d)}"
        <br>
        +
        <br>
        +EXTRA_USERS_PARAMS += "useradd  ${DEFAULT_ADMIN_ACCOUNT};"
        <br>
        +EXTRA_USERS_PARAMS += "groupadd  ${DEFAULT_ADMIN_GROUP};"
        <br>
        +EXTRA_USERS_PARAMS += "usermod -P
        '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};"
        <br>
        +EXTRA_USERS_PARAMS += "usermod -aG ${DEFAULT_ADMIN_GROUP} 
        ${DEFAULT_ADMIN_ACCOUNT};"
        <br>
        diff --git
        a/meta-hardening/recipes-core/initscripts/files/mountall.sh
        b/meta-hardening/recipes-core/initscripts/files/mountall.sh
        <br>
        new file mode 100755
        <br>
        index 0000000..e093f96
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/recipes-core/initscripts/files/mountall.sh
        <br>
        @@ -0,0 +1,41 @@
        <br>
        +#!/bin/sh
        <br>
        +### BEGIN INIT INFO
        <br>
        +# Provides:          mountall
        <br>
        +# Required-Start:    mountvirtfs
        <br>
        +# Required-Stop:
        <br>
        +# Default-Start:     S
        <br>
        +# Default-Stop:
        <br>
        +# Short-Description: Mount all filesystems.
        <br>
        +# Description:
        <br>
        +### END INIT INFO
        <br>
        +
        <br>
        +. /etc/default/rcS
        <br>
        +
        <br>
        +#
        <br>
        +# Mount local filesystems in /etc/fstab. For some reason,
        people
        <br>
        +# might want to mount "proc" several times, and mount -v
        complains
        <br>
        +# about this. So we mount "proc" filesystems without -v.
        <br>
        +#
        <br>
        +test "$VERBOSE" != no &amp;&amp; echo "Mounting local
        filesystems..."
        <br>
        +mkdir -p /home
        <br>
        +mkdir -p /var
        <br>
        +mount -at nonfs,nosmbfs,noncpfs 2&gt;/dev/null
        <br>
        +
        <br>
        +#
        <br>
        +# We might have mounted something over /dev, see if
        /dev/initctl is there.
        <br>
        +#
        <br>
        +if test ! -p /dev/initctl
        <br>
        +then
        <br>
        +    rm -f /dev/initctl
        <br>
        +    mknod -m 600 /dev/initctl p
        <br>
        +fi
        <br>
        +kill -USR1 1
        <br>
        +
        <br>
        +#
        <br>
        +# Execute swapon command again, in case we want to swap to
        <br>
        +# a file on a now mounted filesystem.
        <br>
        +#
        <br>
        +[ -x /sbin/swapon ] &amp;&amp; swapon -a
        <br>
        +
        <br>
        +: exit 0
        <br>
        +
        <br>
        diff --git
        a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
        <br>
        new file mode 100644
        <br>
        index 0000000..896b039
        <br>
        --- /dev/null
        <br>
        +++
        b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
        <br>
        @@ -0,0 +1,8 @@
        <br>
        +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
        <br>
        +
        <br>
        +SRC_URI_append_harden = <a class="moz-txt-link-rfc2396E" href="file://mountall.sh">" file://mountall.sh"</a>
        <br>
        +
        <br>
        +do_install_append_harden() {
        <br>
        +    install -d ${D}${sysconfdir}/init.d
        <br>
        +    install -m 0755 ${WORKDIR}/mountall.sh
        ${D}${sysconfdir}/init.d
        <br>
        +}
        <br>
        diff --git
        a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
        <br>
        new file mode 100644
        <br>
        index 0000000..1dcd5fc
        <br>
        --- /dev/null
        <br>
        +++
        b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
        <br>
        @@ -0,0 +1,19 @@
        <br>
        +#
        <br>
        +#
        <br>
        +#
        <br>
        +
        <br>
        +SUMMARY = "Hardening example group"
        <br>
        +
        <br>
        +inherit packagegroup
        <br>
        +
        <br>
        +PROVIDES = "${PACKAGES}"
        <br>
        +PACKAGES = "${PN}  \
        <br>
        +    packagegroup-${PN} \
        <br>
        +"
        <br>
        +
        <br>
        +RDEPENDS_${PN} = "\
        <br>
        +    init-ifupdown \
        <br>
        +    ${VIRTUAL-RUNTIME_base-utils-syslog} \
        <br>
        +    sudo \
        <br>
        +    ${@bb.utils.contains("DISTRO_FEATURES", "pam",
        "pam-plugin-wheel", "",d)} \
        <br>
        +"
        <br>
        diff --git
        a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
        b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
        <br>
        new file mode 100644
        <br>
        index 0000000..3f363f0
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
        <br>
        @@ -0,0 +1,10 @@
        <br>
        +do_install_append_harden () {
        <br>
        +    # to hardend
        <br>
        +    sed -i -e 's:UMASK.*:UMASK 027:'
        ${D}${sysconfdir}/login.defs
        <br>
        +    sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:'
        ${D}${sysconfdir}/login.defs
        <br>
        +    sed -i -e 's:PASS_MIN_DAYS.*:PASS_MIN_DAYS 1:'
        ${D}${sysconfdir}/login.defs
        <br>
        +    sed -i -e 's:#PASS_MIN_LEN.*:PASS_MIN_LEN 11:'
        ${D}${sysconfdir}/login.defs
        <br>
        +    sed -i -e 's:PASS_WARN_AGE.*:PASS_WARN_AGE 14:'
        ${D}${sysconfdir}/login.defs
        <br>
        +    sed -i -e 's:LOGIN_RETRIES.*:LOGIN_RETRIES 3:'
        ${D}${sysconfdir}/login.defs
        <br>
        +    sed -i -e 's:LOGIN_TIMEOUT.*:LOGIN_TIMEOUT 30:'
        ${D}${sysconfdir}/login.defs
        <br>
        +}
        <br>
        diff --git
        a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
        b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
        <br>
        new file mode 100644
        <br>
        index 0000000..a31c081
        <br>
        --- /dev/null
        <br>
        +++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
        <br>
        @@ -0,0 +1,7 @@
        <br>
        +
        <br>
        +PACKAGECONFIG_append_harden = " pam-wheel"
        <br>
        +do_install_append_harden () {
        <br>
        +    if [ <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISABLE_ROOT','True','yes','no',d)}">"${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes',
        'no', d)}"</a> = "yes" ]; then
        <br>
        +        sed -i -e 's:root ALL=(ALL) ALL:#root ALL=(ALL) ALL:'
        ${D}${sysconfdir}/sudoers
        <br>
        +    fi
        <br>
        +}
        <br>
        <br>
        <br>
        <br>
        <br>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------AF587805DEEDF3E41952DD33--
