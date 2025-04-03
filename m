Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28559C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 11:44:41 +0000 (UTC)
Received: from smtpa-outbound5.duck.com (smtpa-outbound5.duck.com [20.13.235.197])
 by mx.groups.io with SMTP id smtpd.web10.10812.1743678569539640458
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 04:09:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@duck.com header.s=postal-KpyQVw header.b=mvSAn5Ik;
 spf=pass (domain: duck.com, ip: 20.13.235.197, mailfrom: proffesionaladdress2@duck.com)
Subject: Update a machine configuration file from another layer depending to it (with .bbapend)
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: DMARC_POLICY_ALLOW(-0.5) MIME_GOOD(-0.1) R_DKIM_ALLOW(-0.2) URI_COUNT_ODD(1) R_SPF_ALLOW(-0.2)
X-Rspamd-Score: 0
X-Rspamd-Action: no action
To: main <main@lists.yoctoproject.org>
Received: by smtp-inbound1.duck.com; Thu, 03 Apr 2025 07:09:28 -0400
Message-ID: <B29C09E9-9D26-4FD2-B814-58744324DDD6.1@smtp-inbound1.duck.com>
Date: Thu, 03 Apr 2025 07:09:28 -0400
From: proffesionaladdress2@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: To: Content-Type: MIME-Version: Subject; q=dns/txt;
 s=postal-KpyQVw; t=1743678568;
 bh=qJYuj0BWYPeHvUivhDymzq/zgCpCG1S/ZygTOHd5+yg=;
 b=mvSAn5Ik7gu8NBRJDCrgLV2O5C62/dwzgdtqSiFKcnLvbo8+VzeSoyayj7mhzpCAvrMnYYXDV
 fQiCVZzBiNwqkRopcVG9zsyAYVwaWI/oC/EhtpghzI/X3yjv9ICKvomkzcte+KuytLmlSuuTRkA
 0ObPRAw2IYFhltvWuKGZYf4=
Content-Type: multipart/alternative;
	boundary="=_+miZ6SlkPj4mBE1Uu5Z0mE_="
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 11:44:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65075

--=_+miZ6SlkPj4mBE1Uu5Z0mE_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: 7bit

Hello, 

I want to enable initramfs for raspberry-pi, by adding this machine specific configuration, through a layer (to make an overlay-fs on rootfs): 

# Enable uboot for rasperry pi 
RPI_USE_U_BOOT = "1" 

INITRAMFS_IMAGE = "image-initramfs" 
INITRAMFS_IMAGE_BUNDLE = "1" 
BOOT_SPACE = "1073741" 
INITRAMFS_MAXSIZE = "315400" 

INITRAMFS_KERNEL_IMAGE="${INITRAMFS_IMAGE}-${MACHINE}" 
IMAGE_BOOT_FILES:append = " ${INITRAMFS_KERNEL_IMAGE}.${INITRAMFS_FSTYPES};initramfs.cpio.gz" 

but the layer have a .bbapend file to modifing the uboot setting of the layer. If I understand properly I cannot change the priority of the layer to be before the meta-raspberrypi. 

I can also add it to a distro configuration like here: 
[ https://yocto.yoctoproject.narkive.com/YX6jam7u/possible-to-append-or-patch-existing-machine-conf-file | https://yocto.yoctoproject.narkive.com/YX6jam7u/possible-to-append-or-patch-existing-machine-conf-file ] 

but the layer shall be use with another layer that has already a distribution that modify the raspberry pi configuration. 
To keep things independant, I don't want to add the above configuration to conf/machine/rpi-extra.conf of other layer. 

I try something like this to my distro.conf file but I cannot use bash inside a conf file: 

for layer in ${BBFILE_COLLECTIONS}; do 
include ${layer}/conf/machine/${SOC_FAMILY}-extra.conf 
include ${layer}/conf/machine/${MACHINE}-extra.conf 
done 

The alone option I see now is to ask to add it to local.conf through a README. 

Best regards 

--=_+miZ6SlkPj4mBE1Uu5Z0mE_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 12pt; color: #000000"><div><div><div><div =
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; color:=
 #000000;" data-mce-style=3D"font-family: arial, helvetica, sans-serif; =
font-size: 12pt; color: #000000;"><div><div><div><div style=3D"font-family:=
 arial, helvetica, sans-serif; font-size: 12pt; color: #000000;" =
data-mce-style=3D"font-family: arial, helvetica, sans-serif; font-size: =
12pt; color: #000000;"><div>Hello,</div><div><br></div><div>I want to =
enable initramfs for raspberry-pi, by adding this machine specific =
configuration, through a layer (to make an overlay-fs on =
rootfs):</div><div><br></div><div># Enable uboot for rasperry =
pi<br>RPI_USE_U_BOOT =3D "1"</div><div><br></div><div>INITRAMFS_IMAGE =3D =
"image-initramfs"<br>INITRAMFS_IMAGE_BUNDLE =3D "1"<br>BOOT_SPACE =3D =
"1073741"<br>INITRAMFS_MAXSIZE =3D "315400"<br><br>INITRAMFS_KERNEL_IMAGE=
=3D"${INITRAMFS_IMAGE}-${MACHINE}"<br>IMAGE_BOOT_FILES:append =3D " =
${INITRAMFS_KERNEL_IMAGE}.${INITRAMFS_FSTYPES};initramfs.cpio.=
gz"</div><div><br></div><div>but the layer have a .bbapend file to modifing=
 the uboot setting of the layer. If I understand properly I cannot change =
the priority of the layer to be before the meta-raspberrypi.=
</div><div><br></div><div>I can also add it to a distro configuration like =
here:</div><div><span class=3D"Object" id=3D"OBJ_PREFIX_DWT250_com_zimbra_u=
rl"><span class=3D"Object" role=3D"link" id=3D"OBJ_PREFIX_DWT432_com_zimbra=
_url"><a href=3D"https://yocto.yoctoproject.narkive.=
com/YX6jam7u/possible-to-append-or-patch-existing-machine-conf-file" =
target=3D"_blank" rel=3D"noopener" data-mce-href=3D"https://yocto.=
yoctoproject.narkive.com/YX6jam7u/possible-to-append-or-patch-existing-mach=
ine-conf-file">https://yocto.yoctoproject.narkive.com/YX6jam7u/possible-to-=
append-or-patch-existing-machine-conf-file</a></span></span><br></div><div>=
<br></div><div>but the layer shall be use with another layer that has =
already a distribution that modify the raspberry pi configuration.=
</div><div>To keep things independant, I don't want to add the above =
configuration to conf/machine/rpi-extra.conf of other layer.=
</div><div><br></div><div>I try something like this to my distro.conf file =
but I cannot use bash inside a conf file:</div><div><br></div><div>for =
layer in ${BBFILE_COLLECTIONS}; do<br>&nbsp;&nbsp; include =
${layer}/conf/machine/${SOC_FAMILY}-extra.conf<br>&nbsp;&nbsp;&nbsp; =
include ${layer}/conf/machine/${MACHINE}-extra.conf<br>done<br></div><div><=
br></div><div>The alone option I see now is to ask to add it to local.conf =
through a README.</div><div><br></div><div>Best regards</div></div></div></=
div></div></div></div></div></div></div></body></html>

--=_+miZ6SlkPj4mBE1Uu5Z0mE_=--

