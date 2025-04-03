Return-Path: <proffesionaladdress2@duck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74942C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 15:47:52 +0000 (UTC)
Received: from smtpa-outbound3.duck.com (smtpa-outbound3.duck.com [20.13.235.199])
 by mx.groups.io with SMTP id smtpd.web10.16956.1743695268836023805
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 08:47:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@duck.com header.s=postal-KpyQVw header.b=rvktsC8L;
 spf=pass (domain: duck.com, ip: 20.13.235.199, mailfrom: proffesionaladdress2@duck.com)
References: <CE791ECA-60AE-471D-86AB-170EA3C58287.1@smtp-inbound1.duck.com> <CANNYZj8yu=dbOEaN6CzF5Eu0W+UrQar99WyrV+TG0M8vZ85qAQ@mail.gmail.com> <23A5AA3D-A552-4DE2-BC32-E5F9659B73B9.1@smtp-inbound1.duck.com>
Subject: Re: [yocto] Update a machine configuration file from another layer
 depending to it (with .bbapend)
MIME-Version: 1.0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Bar: -
X-Rspamd-Report: DMARC_POLICY_ALLOW(-0.5) R_DKIM_ALLOW(-0.2) MIME_GOOD(-0.1) R_SPF_ALLOW(-0.2)
X-Rspamd-Score: -1
X-Rspamd-Action: no action
To: yocto at lists yoctoproject org proffesionaladdress2 <yocto@lists.yoctoproject.org>,
 "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
Received: by smtp-inbound1.duck.com; Thu, 03 Apr 2025 11:47:47 -0400
Message-ID: <661C7F75-1D3D-4900-84E6-BBA57BB9535D.1@smtp-inbound1.duck.com>
Date: Thu, 03 Apr 2025 11:47:47 -0400
From: proffesionaladdress2@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Subject: References; q=dns/txt; s=postal-KpyQVw;
 t=1743695268; bh=hEieWRD1EHOs/9pffuVXTBOOy1UA+dwMzg5JDSwyP2Q=;
 b=rvktsC8LC2BoXBdURNbXOFGun9rVIqBYJQ6rVhvh5SHikAjdr3FXKA/98NvLLpbl16NwiRSjg
 JMXU2rNVC8EEkI6hQosa+57GyBckF5WqVFVNHaZm0ppCqFygZ1cu6ytQvlTDYCb+lDbQmauQ10i
 TWUydJJoZtt415M9bIy5Unc=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 15:47:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65088

Thanks for your reply,

I was looking for an auto inclusion of layer if the file is avaible.
I try to add multiple conf/machine/mymachine.conf in many layer but it get =
not included.
Maybe I didn't understand very well.

I made it like this:

LIST_OF_EXTRA_MACHINE_CONF :=3D "${@' '.join('../meta-%s/conf/machine/${SOC=
_FAMILY}-extra.conf ../meta-%s/conf/machine/${MACHINE}-extra.conf' % (layer=
, layer) \
               for layer in BBFILE_COLLECTIONS.split())}"
include ${LIST_OF_EXTRA_MACHINE_CONF}

Now I am wondering if it's not better to set it in a .bbclass file but I =
don't find how to include a file from python code.
And the method list of utilities (from bb or other classes) are really =
unclear in BitBake documentation.

type help(bb) doesn't really help.

Maybe it's already fine.

----- Mail original -----
De: "Alexander Kanavin via lists.yoctoproject.org" <alex.kanavin=3Dgmail.=
com_at_lists.yoctoproject.org_proffesionaladdress2@duck.com>
=C3=80: "yocto at lists yoctoproject org proffesionaladdress2" =
<yocto_at_lists.yoctoproject.org_proffesionaladdress2@duck.com>, =
proffesionaladdress2@duck.com
Envoy=C3=A9: Jeudi 3 Avril 2025 13:28:27
Objet: Re: [yocto] Update a machine configuration file from another layer =
depending to it (with .bbapend)

You can define a new machine in your layer:
meta-mylayer/conf/machine/mymachine.conf

and then include any files from other machine definitions as needed,
and add tweaks on top.

Alex

On Thu, 3 Apr 2025 at 13:19, proffesionaladdress2 via
lists.yoctoproject.org
<proffesionaladdress2=3Dduck.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I want to enable initramfs for raspberry-pi, by adding this machine =
specific configuration, through a layer (to make an overlay-fs on rootfs):
>
> # Enable uboot for rasperry pi
> RPI_USE_U_BOOT =3D "1"
>
> INITRAMFS_IMAGE =3D "image-initramfs"
> INITRAMFS_IMAGE_BUNDLE =3D "1"
> BOOT_SPACE =3D "1073741"
> INITRAMFS_MAXSIZE =3D "315400"
>
> INITRAMFS_KERNEL_IMAGE=3D"${INITRAMFS_IMAGE}-${MACHINE}"
> IMAGE_BOOT_FILES:append =3D " ${INITRAMFS_KERNEL_IMAGE}.=
${INITRAMFS_FSTYPES};initramfs.cpio.gz"
>
> but the layer have a .bbapend file to modifing the uboot setting of the =
layer. If I understand properly I cannot change the priority of the layer =
to be before the meta-raspberrypi.
>
> I can also add it to a distro configuration like here:
> https://yocto.yoctoproject.narkive.com/YX6jam7u/possible-to-append-or-pat=
ch-existing-machine-conf-file
>
> but the layer shall be use with another layer that has already a =
distribution that modify the raspberry pi configuration.
> To keep things independant, I don't want to add the above configuration =
to conf/machine/rpi-extra.conf of other layer.
>
> I try something like this to my distro.conf file but I cannot use bash =
inside a conf file:
>
> for layer in ${BBFILE_COLLECTIONS}; do
>    include ${layer}/conf/machine/${SOC_FAMILY}-extra.conf
>     include ${layer}/conf/machine/${MACHINE}-extra.conf
> done
>
> The alone option I see now is to ask to add it to local.conf through a =
README.
>
> Best regards
>
>=20
>


-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#65074): https://lists.yoctoproject.=
org/g/yocto/message/65074
Mute This Topic: https://lists.yoctoproject.org/mt/112063497/9711386
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[proffesionaladdress2@duck.com]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


