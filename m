Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4190AC7EE29
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:09:57 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.6794.1686139792650515123
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:09:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=n3gh3DEK;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 38DD740266
	for <yocto@lists.yoctoproject.org>; Wed,  7 Jun 2023 14:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686139787;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=D0RctgnwLp+ovGi/dmCqtp1jsEmnuNXGQpXLz+NFogc=;
	b=n3gh3DEKY0mg8lXqPLNiJTEEPgp0mCvFMdjHYZcls+wGYICKZUVEaxUASDw2ju0G+iY5cF
	kPKR2Vy+O5vPmdU8pFYBpEaq20deOVFzOIyFUe3l7ykkPcPku7Su6+5b0SZeyrwHzw/tJ1
	+WTEa8NztkrnrSLKmbBOFVNGcgQNPDs=
Date: Wed, 7 Jun 2023 14:09:45 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Remove kernel image from IMAGE_BOOT_FILES for WIC boot partition
Message-ID: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:09:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60202

Hi There,

I want to create a WIC image for sdcards which generally works.
I use beaglebone-yocto with barebox instead of u-boot.

This works with overwriting IMAGE_BOOT_FILES in my
meta-insidem2m/recipes-core/images/sdcard.bb:

IMAGE_BOOT_FILES=3D"barebox/barebox.bin;barebox.bin barebox-pbl/MLO;MLO zIm=
age am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"

I use bootloader spec booting with barebox, so I need only MLO and
barbox.bin in the boot partition, so I went:

IMAGE_BOOT_FILES=3D"barebox/barebox.bin;barebox.bin barebox-pbl/MLO;MLO"

bitbake -e reflects the change:

bitbake -e sdcard|grep ^IMAGE_BOOT
IMAGE_BOOT_FILES=3D"barebox/barebox.bin;barebox.bin barebox-pbl/MLO;MLO"

Then "bitbake sdcard" complains:

| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['cross-localedef-native', '=
ldconfig-native', 'cdrtools-native', 'qemuwrapper-cross', 'depmodwrapper-cr=
oss', 'update-rc.d-native', 'apt-native', 'btrfs-tools-native', 'dosfstools=
-native', 'dpkg-native', 'e2fsprogs-native', 'gptfdisk-native', 'makedevs-n=
ative', 'mtools-native', 'opkg-utils-native', 'pseudo-native', 'squashfs-to=
ols-native', 'syslinux-native', 'parted-native', 'pigz-native', 'bmap-tools=
-native', 'openssl-native', 'debianutils-native', 'kmod-native', 'systemd-s=
ystemctl-native', 'shadow-native', 'qemu-native', 'python3-six-native', 'py=
thon3-setuptools-native', 'python3-installer-native', 'python3-native', 'py=
thon3-wheel-native', 'coreutils-native', 'zlib-native', 'perl-native', 'gnu=
tls-native', 'lz4-native', 'xz-native', 'xxhash-native', 'db-native', 'cmak=
e-native', 'libgcrypt-native', 'attr-native', 'lzo-native', 'zstd-native', =
'libtool-native', 'texinfo-dummy-native', 'readline-native', 'util-linux-na=
tive', 'ncurses-native', 'gettext-minimal-native', 'popt-native', 'shared-m=
ime-info-native', 'nasm-native', 'bzip2-native', 'gettext-native', 'glib-2.=
0-native', 'python3-flit-core-native', 'unzip-native', 'gdbm-native', 'libt=
irpc-native', 'util-linux-libuuid-native', 'libffi-native', 'libnsl2-native=
', 'sqlite3-native', 'make-native', 'nettle-native', 'libunistring-native',=
 'libidn2-native', 'gmp-native', 'curl-native', 'libgpg-error-native', 'lib=
cap-native', 'libcap-ng-native', 'libpcre2-native', 'libxml2-native', 'itst=
ool-native', 'groff-native', 'libpcre-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing python function set_image_size
| DEBUG: 345274.800000 =3D 265596 * 1.300000
| DEBUG: 345274.800000 =3D max(345274.800000, 65536)[345274.800000] + 0
| DEBUG: 345275.000000 =3D int(345274.800000)
| DEBUG: 345275 =3D aligned(345275)
| DEBUG: returning 345275
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_wic
| INFO: Creating image(s)...
|
| ERROR: No kernel file found
|
| WARNING: exit code 1 from a shell command.

How do I remove the requirement for a kernel image? I suppose if I
manage to do that, the dtb files are missng too, then.


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

Gesch=E4ftsf=FChrung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover


