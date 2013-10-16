Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A476E01663
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 15:45:25 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id un15so1452095pbc.29
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 15:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=o5B88FSaSlMJz0/U6R4ihZjkETFCV0HvqyLSq+s/EJw=;
	b=PMm4K5/U94Y43kKfaLmMqoLU1/8fBIKRN1sA65zl+VpkDMF8zMpFXpk/CGQpvK+SmB
	t5L2NY/e/Dk9fZh/EFTHhQXMsWlMJLrMToGV9JdTrl3mEiPEBubPWqRO0GHaMeKUKiEv
	m1VwPvlimKvKCrFk8EEdKUDK2j3bcUQuXJ4Gk9+FGpL5M5DW/2Ot0HfXMAkQjgtQDGQR
	OmqCQZP7Pbq3eN4vfVAGjTVHR2xXiGeM4MCg7jQ0g9NLpirH8RHDy4ue6vc8rJro6Gdq
	ZpTAwaBytG2i6LCSo3K44or1gWYP70JSdBQxrb2fDC28CnJPaec1CN/9TIWpW+NBt8dc
	2WQQ==
X-Received: by 10.68.229.167 with SMTP id sr7mr5119625pbc.159.1381963525159;
	Wed, 16 Oct 2013 15:45:25 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	rv9sm93484842pbc.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 16 Oct 2013 15:45:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
Date: Wed, 16 Oct 2013 15:45:25 -0700
Message-Id: <6C2F2091-CD52-4D83-AE39-80B5B5E32C62@gmail.com>
References: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-xilinx
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Oct 2013 22:45:28 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Oct 16, 2013, at 2:57 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> Hello,
> I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at =
that time I had the following folders.
>=20
> meta-kc705
> meta-zc702
> meta-zedboard
>=20
> Build Configuration:
> BB_VERSION        =3D "1.19.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Fedora-18"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "zedboard"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4+snapshot-20130921"
> TUNE_FEATURES     =3D " armv7a vfp neon zynq"
> TARGET_FPU        =3D "vfp-neon"
> meta             =20
> meta-yocto        =3D =
"(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
> meta-xilinx      =20
> meta-kc705       =20
> meta-zc702       =20
> meta-zedboard     =3D =
"master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
> meta-yocto-bsp    =3D =
"(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
>=20
> With the dora release I did a new clone of =
git://git.yoctoproject.org/meta-xilinx
> now I do not see=20
> meta-kc705
> meta-zc702
> meta-zedboard
>=20
> When I execute MACHINE=3Dzedboard bitbake core-image-sato
> ERROR:  OE-core's config sanity checker detected a potential =
misconfiguration.
>     Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>=20
>     Please set a valid MACHINE in your local.conf or environment
>=20
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> In my local.conf I have the following.
>=20
> MACHINE ?=3D "zedboard"
>=20
> bblayers.conf
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION =3D "6"
>=20
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>=20
> BBLAYERS ?=3D " \
>   /home/vidal/POKY/build101613_zedboard/poky/meta \
>   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
>   /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \
>   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \
>   "
> BBLAYERS_NON_REMOVABLE ?=3D " \
>   /home/vidal/POKY/build101613_zedboard/poky/meta \
>   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
>   "
> Any help will be appreciated.
> Regards

it seems like layer went thru some restructuring e.g. see
commit d9617006376d73e37f1db17857ee06c24e6b7c03
Author: Nathan Rossi <nathan.rossi@xilinx.com>
Date:   Fri Aug 2 12:41:14 2013 +1000

    meta-*: Remove deprecated sublayers
   =20
    * The machines supported in the sublayer BSPs are now supported in =
the base
      meta-xilinx layer, these sublayers are no longer required.
    * Relevant documentation has also been relocated into =
meta-xilinx/docs/*.



So may be zedboard -> zedboard-zynq7


>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


