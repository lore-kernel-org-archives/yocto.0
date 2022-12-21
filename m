Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72062C4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 21:13:16 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.30855.1671657191834515951
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Dec 2022 13:13:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=RRHcfKww;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.local (unknown [94.31.106.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id BDF4A40010
	for <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 22:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1671657187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CM2+DSs3U+SfjZ3Wo/kmkZGXC5AtiBv6akhPe6IwvF0=;
	b=RRHcfKwwRsCOrCAYk0LjLZJEWuF/kbrjWXFqypSOonDd9nTuIFO/yDT5CNhK7CUyOaCBN8
	1IYoxgLpRUdswuINs/NAVjMAMoLjk5awpRFLVG2LIluGLEJ8K9Q6fmBL1ZqC+a/w5MNZRP
	8SFOxtgHf0jiqdm5DhJOJPP+Xhpf0Ko=
Date: Wed, 21 Dec 2022 22:13:01 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Remove kernel image and modules from rootfs
Message-ID: <Y6N23Z8n++QpwfFI@Hephaistos.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 21:13:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58856

Hi,

I am creating a rootfs/bootloader/kernel to run on a beaglebone black
usually and it works great.

So I have in conf/local.conf

MACHINE ?=3D "beaglebone-yocto"

and an own layer meta-insidem2m which defines some image settings in
recipes-core/images/insidem2m-s.bb among other recipes for packages and
package modification.

Now I wan't to create a rootfs without the kernel image and the kernel
modules to make it as small as possible to use it as a basis to run as a
docker image.

Now I wonder how to instruct bitbake to not put the kernel image (and
modules) into the rootfs.

I read this was done by=20

RDEPENDS_${KERNEL_PACKAGE_NAME}-base =3D ""=20

but this is now deprecated for kirkstone and should be done this way:

RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base =3D ""

But rootfs always still is equipped with kernel and modules.
I tried all permutations of

#RDEPENDS_kernel-base =3D ""
#MACHINE_ESSENTIAL_EXTRA_RDEPENDS =3D ""
#RDEPENDS_kernel-base =3D ""
#PREFERRED_PROVIDER_virtual/kernel =3D "linux-dummy"
# Don't include kernels in standard images
##RDEPENDS:kernel-base =3D ""
#RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base =3D ""
#MACHINE_EXTRA_RRECOMMENDS =3D ""
#RDEPENDS_${KERNEL_PACKAGE_NAME}-base =3D ""

in my conf/local.conf but no avail...

How is this done correctly?
Are there any variables to check I might have (being) set preventing me
to do this? Or is it necessary to split out a new MACHINE, i.e. can this
only be done in an own created machine which has to be split out?

I thought setting such at the bottom of conf/local.conf always "wins".

Kind Regards
Konstantin

--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, De=
rek Uhlig
HRB: 111204, AG Hannover


