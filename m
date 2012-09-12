Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48764E00348
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 15:04:16 -0700 (PDT)
Received: from mail116-am1-R.bigfish.com (10.3.201.232) by
	AM1EHSOBE003.bigfish.com (10.3.204.23) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 22:04:15 +0000
Received: from mail116-am1 (localhost [127.0.0.1])	by
	mail116-am1-R.bigfish.com (Postfix) with ESMTP id 2663D46010F	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 22:04:15 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail116-am1 (localhost.localdomain [127.0.0.1]) by mail116-am1
	(MessageSwitch) id 1347487453518676_32623;
	Wed, 12 Sep 2012 22:04:13 +0000 (UTC)
Received: from AM1EHSMHS005.bigfish.com (unknown [10.3.201.235])	by
	mail116-am1.bigfish.com (Postfix) with ESMTP id 7BA56180049	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 22:04:13 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS005.bigfish.com
	(10.3.207.105) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 22:04:11 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 17:04:10 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 11/16] u-boot: fix nand image name issue
	for different core type
Thread-Index: AQHNkTKInWUeWgg/WkaqSjAkmhCdYQ==
Date: Wed, 12 Sep 2012 22:04:09 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A6755C3@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-11-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-11-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 11/16] u-boot: fix nand image name issue for different core type
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 22:04:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <3DBE242041A2174C9E98ACF4AF33864B@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Zhenhua Luo <b19537@freescale.com>
>
> Final nand u-boot image is named differently in u-boot source. That is:
> "u-boot-nand.bin" for e500v2 boards, "u-boot.bin" for other boards.
>
> Signed-off-by: Zhenhua Luo <b19537@freescale.com>
> Signed-off-by: Ting Liu <b28495@freescale.com>

This is not applying against master.

-M

> ---
>  recipes-kernel/u-boot/u-boot_git.bb |   21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/recipes-kernel/u-boot/u-boot_git.bb b/recipes-kernel/u-boot/=
u-boot_git.bb
> index 38d0574..898cd7a 100644
> --- a/recipes-kernel/u-boot/u-boot_git.bb
> +++ b/recipes-kernel/u-boot/u-boot_git.bb
> @@ -5,7 +5,7 @@ PROVIDES =3D "virtual/bootloader"
>  LICENSE =3D "GPLv2"
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D1707d6db1d42237583f50183a5651=
ecb"
>
> -PR =3D "r19"
> +PR =3D "r21"
>  INHIBIT_DEFAULT_DEPS =3D "1"
>  DEPENDS =3D "boot-format-native virtual/${TARGET_PREFIX}gcc libgcc"
>
> @@ -49,19 +49,20 @@ do_compile () {
>                 esac
>
>                 if [ "x${UBOOT_TARGET}" !=3D "x" ]; then
> -                       if [ "${UBOOT_TARGET}" =3D=3D "u-boot-nand" ]; th=
en
> -                               :
> -                       elif [ "${MACHINE_ARCH}" =3D=3D "p1023rds" ] || \
> -                               [ "${MACHINE_ARCH}" =3D=3D "p2041rdb" ] |=
| \
> -                               [ "${MACHINE_ARCH}" =3D=3D "p3041ds" ] ||=
 \
> -                               [ "${MACHINE_ARCH}" =3D=3D "p4080ds" ] ||=
 \
> -                               [ "${MACHINE_ARCH}" =3D=3D "p5020ds" ] ||=
 \
> -                               [ "${UBOOT_TARGET}" =3D=3D "u-boot-sd" ];=
 then
> +                       if [ "${UBOOT_TARGET}" =3D=3D "u-boot-sd" ]; then
>                                 cp ${S}/${board}/u-boot.bin  ${S}/${board=
}/${UBOOT_TARGET}.bin
> +            elif [ "${UBOOT_TARGET}" =3D=3D "u-boot-nand" ];then
> +                               if [ "${DEFAULTTUNE}" !=3D "ppce500v2" ];=
then
> +                    cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_T=
ARGET}.bin
> +                fi
>                         else
> -                               ${STAGING_BINDIR_NATIVE}/boot_format \
> +                               if [ -n "${BOOTFORMAT_CONFIG}" ];then
> +                    ${STAGING_BINDIR_NATIVE}/boot_format \
>                                         ${STAGING_DATADIR_NATIVE}/boot_fo=
rmat/${BOOTFORMAT_CONFIG} \
>                                         ${S}/${board}/u-boot.bin -spi ${S=
}/${board}/${UBOOT_TARGET}.bin
> +                else
> +                    cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_T=
ARGET}.bin
> +                fi
>                         fi
>                 fi
>         done
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


