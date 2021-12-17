Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4D5BC433F5
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 08:16:41 +0000 (UTC)
Subject: #yocto #sdk Bitbake populate_sdk not pulling the correct
 dependencies.
To: yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Krommenie, North Holland, NL (178.84.56.61)
X-Originating-Platform: Linux Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Dec 2021 00:16:40 -0800
Message-ID: <9Crv.1639729000674254781.JhuE@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 08:16:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55604

Hi Yocto Devs,

I have this issue when I want to generate a SDK for our custom distro. We r=
equire the use of debian package due to historic reasons so the package man=
agement has been enabled,=20
where the package class is package_deb. Now I get a lot of dependency error=
s from APT when generating the SDK.

I will not place the complete list here due to it's length but I got the fo=
llowing:

-- The following packages have unmet dependencies:
 bzip2-dev : Depends: bzip2 (=3D 1.0.8-r0) but it is not going to be instal=
led
             Recommends: libbz2-dev but it is not installable
             Recommends: update-alternatives-opkg-dev but it is not install=
able
 curl-dev : Depends: curl (=3D 7.75.0-r0) but it is not going to be install=
ed
            Recommends: libcurl-dev but it is not installable
 e2fsprogs-dev : Depends: e2fsprogs (=3D 1.46.1-r0) but it is not going to =
be installed
                 Depends: libss
                 Recommends: attr-dev but it is not going to be installed
                 Recommends: autoconf-archive-dev but it is not installable
                 Recommends: e2fsprogs-badblocks-dev but it is not installa=
ble
                 Recommends: e2fsprogs-dumpe2fs-dev but it is not installab=
le
                 Recommends: libcomerr-dev but it is not installable
                 Recommends: libe2p-dev but it is not installable
                 Recommends: libext2fs-dev but it is not installable
                 Recommends: libss-dev but it is not installable
                 Recommends: update-alternatives-opkg-dev but it is not ins=
tallable
 libgmp-dev : Depends: libgmpxx
              Recommends: libgmpxx-dev but it is not installable
 libgnutls-dev : Depends: gnutls-openssl
                 Depends: gnutls-xx
                 Recommends: gnutls-openssl-dev but it is not installable
                 Recommends: gnutls-xx-dev but it is not installable
 mosquitto-dev : Depends: libmosquittopp1 but it is not going to be install=
ed
                 Recommends: libcrypto-dev but it is not installable
                 Recommends: libmosquitto1-dev but it is not installable
                 Recommends: libmosquittopp1-dev but it is not installable
                 Recommends: libssl-dev but it is not installable
                 Recommends: libsystemd-dev but it is not installable
                 Recommends: shadow-sysroot-dev but it is not installable
                 Recommends: uthash-dev but it is not going to be installed
<A lot more items here.>
E: Unmet dependencies. Try 'apt --fix-broken install' with no packages (or =
specify a solution).

If I add the depending packages as a IMAGE_INSTALL_append then it seem to b=
e resolved, but still the mossquitto-dev or curl-dev package is still not p=
resent within the SDK sysroots environment.
That leads me to think that I did something wrong or something is broken?

I found on the internet some pointer to remove the package_deb for the SDK =
generation (so it will fallback to package_rpm), but that increases the bui=
ld times significantly (which is not desirable).

Can anyone give me some pointers into resolving this behavior?

With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

