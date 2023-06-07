Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62982C7EE23
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:16:57 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.6941.1686140208291143954
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:16:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=FTstBWps;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2b1a86cdec6so78940941fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 05:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686140206; x=1688732206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDJhsI/ng4MbWWPMr59x9I9V/VL2479aQSKevK6TFPo=;
        b=FTstBWpsZrbjGRZ3DXp99FUP+nHYlax6CB3cLiHxtMWB6GEKpCjCozx3RaGysoOdyS
         QKEw61hw7Glpx5NeprgtoEwGkBxjMZawYQbQ+SU3OMMUFwkYDN66c5qhgAhewTCr5MSv
         Ytut0UR6SszzegNztmQ4QOIfzEQWl5wh1KM7L5WsAYE104DlHFPFuCuvvki0j5045hJb
         UI14sZ551uFv/PlQo7uA3z483VUcnB5FIs1jJ3EtaDTkRRzgyWVUFbwDk2SbpUZJMeR1
         MTqKn7spmHfnHjFw4RUz7VhWBUCyWodaYD5ZtthEW/rT5CpmPWoS4zGuGr5fMsEnRwcB
         7r/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686140206; x=1688732206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tDJhsI/ng4MbWWPMr59x9I9V/VL2479aQSKevK6TFPo=;
        b=LK61V18qUGZW5ouk85x7fuof6kehrVSxNwK1NfsqNjRiVV5kpEbMLE4XLgHRsCZmFv
         61/wR2yulP1zNTBV+gjRLqCvBnfbV2+H5Kw5N/srYo8y0a8yEvH81jhOd8dsSYV4G1wN
         EIKdxlGa4d3EIUj02tMd0j9VlKHju8PQpXNeTvScJOc4VCMUQocpmNyIU1eahw5dEr8a
         Ydd9iVkJ2RoKk5RNrZuEFzoW43Fy43q7WEdbMb0A7Hu0g2fsL6+NrQJVedgKE2M7G7MY
         AM9hnKjJcemhMWdgZ5slwO/98KicX8QaurwkrTO3RxF4B0npngIwQLuCHfNAoJOiVYwH
         x6CQ==
X-Gm-Message-State: AC+VfDxMmiADLbMmp4Ygz6laod3YX2BwouWp/Va87Y8vl0kNsLpA3ZD8
	OG/UT8r7uQX7+F3+yjxDvip2Z4xGJSt6tqAlMHiUp4yh
X-Google-Smtp-Source: ACHHUZ4XBWJSkxV4KYh8KjOz8dtpFgKDCDfCFUcpj8YKdaIg+uwGWef/WOONoL5X/1fbu4Q9wXNeGgZmdpVm/c4FPKE=
X-Received: by 2002:a2e:99d8:0:b0:2b1:c023:8b88 with SMTP id
 l24-20020a2e99d8000000b002b1c0238b88mr2007589ljj.41.1686140206322; Wed, 07
 Jun 2023 05:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de>
In-Reply-To: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 Jun 2023 14:16:34 +0200
Message-ID: <CANNYZj9SDRVPiafkzEAnOaH92M6QR2ayGpezLspe0gDw1X3N_A@mail.gmail.com>
Subject: Re: [yocto] Remove kernel image from IMAGE_BOOT_FILES for WIC boot partition
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:16:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60205

I don't have a ready solution, but you could grep for the error
message, see where it happens and what can be done to 'not make it
happen'.

Alex

On Wed, 7 Jun 2023 at 14:10, Konstantin Kletschke
<konstantin.kletschke@inside-m2m.de> wrote:
>
> Hi There,
>
> I want to create a WIC image for sdcards which generally works.
> I use beaglebone-yocto with barebox instead of u-boot.
>
> This works with overwriting IMAGE_BOOT_FILES in my
> meta-insidem2m/recipes-core/images/sdcard.bb:
>
> IMAGE_BOOT_FILES=3D"barebox/barebox.bin;barebox.bin barebox-pbl/MLO;MLO z=
Image am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
>
> I use bootloader spec booting with barebox, so I need only MLO and
> barbox.bin in the boot partition, so I went:
>
> IMAGE_BOOT_FILES=3D"barebox/barebox.bin;barebox.bin barebox-pbl/MLO;MLO"
>
> bitbake -e reflects the change:
>
> bitbake -e sdcard|grep ^IMAGE_BOOT
> IMAGE_BOOT_FILES=3D"barebox/barebox.bin;barebox.bin barebox-pbl/MLO;MLO"
>
> Then "bitbake sdcard" complains:
>
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['cross-localedef-native',=
 'ldconfig-native', 'cdrtools-native', 'qemuwrapper-cross', 'depmodwrapper-=
cross', 'update-rc.d-native', 'apt-native', 'btrfs-tools-native', 'dosfstoo=
ls-native', 'dpkg-native', 'e2fsprogs-native', 'gptfdisk-native', 'makedevs=
-native', 'mtools-native', 'opkg-utils-native', 'pseudo-native', 'squashfs-=
tools-native', 'syslinux-native', 'parted-native', 'pigz-native', 'bmap-too=
ls-native', 'openssl-native', 'debianutils-native', 'kmod-native', 'systemd=
-systemctl-native', 'shadow-native', 'qemu-native', 'python3-six-native', '=
python3-setuptools-native', 'python3-installer-native', 'python3-native', '=
python3-wheel-native', 'coreutils-native', 'zlib-native', 'perl-native', 'g=
nutls-native', 'lz4-native', 'xz-native', 'xxhash-native', 'db-native', 'cm=
ake-native', 'libgcrypt-native', 'attr-native', 'lzo-native', 'zstd-native'=
, 'libtool-native', 'texinfo-dummy-native', 'readline-native', 'util-linux-=
native', 'ncurses-native', 'gettext-minimal-native', 'popt-native', 'shared=
-mime-info-native', 'nasm-native', 'bzip2-native', 'gettext-native', 'glib-=
2.0-native', 'python3-flit-core-native', 'unzip-native', 'gdbm-native', 'li=
btirpc-native', 'util-linux-libuuid-native', 'libffi-native', 'libnsl2-nati=
ve', 'sqlite3-native', 'make-native', 'nettle-native', 'libunistring-native=
', 'libidn2-native', 'gmp-native', 'curl-native', 'libgpg-error-native', 'l=
ibcap-native', 'libcap-ng-native', 'libpcre2-native', 'libxml2-native', 'it=
stool-native', 'groff-native', 'libpcre-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing python function set_image_size
> | DEBUG: 345274.800000 =3D 265596 * 1.300000
> | DEBUG: 345274.800000 =3D max(345274.800000, 65536)[345274.800000] + 0
> | DEBUG: 345275.000000 =3D int(345274.800000)
> | DEBUG: 345275 =3D aligned(345275)
> | DEBUG: returning 345275
> | DEBUG: Python function set_image_size finished
> | DEBUG: Executing shell function do_image_wic
> | INFO: Creating image(s)...
> |
> | ERROR: No kernel file found
> |
> | WARNING: exit code 1 from a shell command.
>
> How do I remove the requirement for a kernel image? I suppose if I
> manage to do that, the dtb files are missng too, then.
>
>
> Kind Regards
> Konstantin
>
> --
> INSIDE M2M GmbH
> Konstantin Kletschke
> Berenbosteler Stra=C3=9Fe 76 B
> 30823 Garbsen
>
> Telefon: +49 (0) 5137 90950136
> Mobil: +49 (0) 151 15256238
> Fax: +49 (0) 5137 9095010
>
> konstantin.kletschke@inside-m2m.de
> http://www.inside-m2m.de
>
> Gesch=C3=A4ftsf=C3=BChrung: Michael Emmert, Derek Uhlig
> HRB: 111204, AG Hannover
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60202): https://lists.yoctoproject.org/g/yocto/messag=
e/60202
> Mute This Topic: https://lists.yoctoproject.org/mt/99383061/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

