Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0CD3E00EC3; Fri, 20 May 2016 08:54:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74225E00CD9
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 08:54:18 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id b66so11706355pfb.2
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 08:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=gtiZV/LYgsi8ODbtfCbk8+nYa9NEOrPWUXHYjciAVV4=;
	b=co3RDdWcfhfhOnBZOJ6/15zfgYGdPcRlrEkDk+fksBDH7fs3fLxxkC02xJdXt82/VX
	fy69HZUhADqPGm5MG46uiwO3eU5mpl0+gDveroSYBP1YObPo5ibE6TKUP/sZpDf/bzGU
	TIfXSPDbSWtK08RbxcPNb0toHNFVO3T5xDbfAFE54uFx1/DC7RJGWoLhwHx4C45n/F3W
	dShKvT/Prc1xSmrIK8Mp3CufV+Cw3JUouaXP+mzp6hfjmRwxEr/iZmZyCMOXSc+KUrgu
	r/CidJtfun7lyGbSWOspVOIQRMypRhi6K0ERG1ResRFnTJPIpPRgRy8X607vRXLt4zZq
	YKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=gtiZV/LYgsi8ODbtfCbk8+nYa9NEOrPWUXHYjciAVV4=;
	b=MT6hty//e4pYxy0BULVo15ik4qXr7shjP+FhFCcBTXU340WUe++U/EiYLPAm5vdbue
	muyUAyzunOHK26NG7QZ42tYQrCjHD20kUwFFaL6BnvDgoZAMG10LDnNT6OPcFroMEYNz
	h71Q3yMmyELwgmle/oi7XoHmDoJLeHfRFAtb2/SzhlDb1RvNrUTvHWBiFqlQI/r1+Ih/
	ldkvgofbTAWEjg0kNKXCJZAY9Ao8mmlmFaHpC65d9D0XggbtnuUGeX/mYC/S/2YQEt/u
	u7RaMOvUsPU9JrbshzfFNmGj8M4UXTwzKZ0DeNiOxgk5cp+tEoPTESCdc4oGP4McaAdt
	VEBA==
X-Gm-Message-State: AOPr4FXN3lPxgI2Cmj2oNboIXQB0MQG5B20vjPUKvhaBXw3Tfy4iNWymgpO0IgrpgtcLjw==
X-Received: by 10.98.23.211 with SMTP id 202mr5937336pfx.122.1463759657376;
	Fri, 20 May 2016 08:54:17 -0700 (PDT)
Received: from ?IPv6:2601:646:9b80:c0a8:5d9b:2fea:d0eb:1ca1?
	([2601:646:9b80:c0a8:5d9b:2fea:d0eb:1ca1])
	by smtp.gmail.com with ESMTPSA id
	f191sm581297pfa.26.2016.05.20.08.54.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 20 May 2016 08:54:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
Date: Fri, 20 May 2016 08:54:11 -0700
Message-Id: <760C5721-BC09-4D27-AFEC-1D5221F7D468@gmail.com>
References: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 00/13] Support for VC4 graphics driver
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
X-List-Received-Date: Fri, 20 May 2016 15:54:21 -0000
X-Groupsio-MsgNum: 30122
Content-Type: multipart/signed;
	boundary="Apple-Mail=_606444B3-FCBF-417A-8FFE-3D93B52E2F17";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_606444B3-FCBF-417A-8FFE-3D93B52E2F17
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 20, 2016, at 4:51 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> This v2 series addresses the following issues with the first series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to =
build (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d =
overlay, depending on the board (and the memory it has)
>=20
> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it =
required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for =
4.4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed =
unreasonable to support VC4 with 4.1 kernels.
>=20
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 =
and later.
>=20
> This patch series proposes to support VC4 by only adding 'vc4graphics' =
to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger =
all the necessary configuration/changes to use the VC4 driver, including =
mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed =
(support for .dtbo, and fix of the mesa packaging when there is no DRI =
driver).
> The memory reserved for the VC4 driver has default values depending on =
the version of the board used, but it can be configured by setting =
VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', =
'cma-128', 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on =
boards with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>=20
> It was tested with wayland/weston, without the support for X11.

Looks good to me now.

>=20
> This patch series depends on two other patch series previously posted, =
that enable the support for .dtbo overlay files.
>=20
> Herve Jourdain (13):
>  rpi-default-providers.inc: change default providers to support
>    vc4graphics
>  rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>  raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  firmware.inc: bump version to support vc4graphics
>  rpi-config_git.bb: add v4c overlay to config.txt to support
>    vc4graphics
>  wayland/weston_%.bbappend: modify configuration options to support
>    vc4graphics
>  weston/weston_%.bbappend: modify configuration options to support
>    vc4graphics
>  mesa_%.bbappend: new file to add the correct configuration options to
>    support vc4graphics
>  linux-raspberrypi_4.4.bb: bump the kernel revision to 4.4.10 to
>    support vc4graphics
>  linux-rpi.inc: add the configuration options required to support
>    vc4graphics
>=20
> conf/machine/include/rpi-base.inc              |  1 +
> conf/machine/include/rpi-default-providers.inc |  8 ++++----
> conf/machine/raspberrypi.conf                  |  2 ++
> conf/machine/raspberrypi0.conf                 |  2 ++
> conf/machine/raspberrypi2.conf                 |  2 ++
> conf/machine/raspberrypi3.conf                 |  2 ++
> recipes-bsp/bootfiles/rpi-config_git.bb        | 10 +++++++++-
> recipes-bsp/common/firmware.inc                |  4 ++--
> recipes-graphics/mesa/mesa_%.bbappend          |  4 ++++
> recipes-graphics/wayland/weston_%.bbappend     |  6 ++----
> recipes-graphics/weston/weston_%.bbappend      | 13 +++++++------
> recipes-kernel/linux/linux-raspberrypi_4.4.bb  |  4 ++--
> recipes-kernel/linux/linux-rpi.inc             | 10 ++++++++++
> 13 files changed, 49 insertions(+), 19 deletions(-)
> create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_606444B3-FCBF-417A-8FFE-3D93B52E2F17
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc/MyYACgkQuwUzVZGdMxSp5gCbB5NS3r1lae1lQNTx/C6Y2MSy
Zc4An0wkGDKG5RsxeXslTDxnnd4WePlc
=PeAw
-----END PGP SIGNATURE-----

--Apple-Mail=_606444B3-FCBF-417A-8FFE-3D93B52E2F17--
