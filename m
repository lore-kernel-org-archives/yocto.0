Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08519E01492
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 14:24:53 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id 10so1254427pdi.25
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 14:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=FpHF44iMSn5xXQlsVqbZb5LGVTJSkLYPZ5z9Zx3NhQQ=;
	b=wQfcp4Iobm9IFjJi4E+8zKDSVdqavB3+r0hu9gbWBb1RMNQ+XVCHaLBRZB5mITmEIu
	ttSpClEtQ2zpHmTA8VFMk03NiL3g9iCLDI/AY8PLGyd7VO2vFijsb7vRKfCsTFPpXkqb
	j43056t9JciUDFbsev7fIFNb3tnTmMYYzrQq+UsS20Z/PqldaJ4O6b+m//yl5V/k7pIn
	f0lLKh49NtnYVTKHPMfm3eKQu+H+7LcxxjK1lVPDbgHqXRx2hy2vR55DyCduY+zkBZbI
	iBz3qVW2dUlDYp6YwId0HACCgm7SKDGov95Y+Cjio71PIzHqQYPpXR3iRCABGhlOK4Fs
	4a0w==
X-Received: by 10.68.162.97 with SMTP id xz1mr8324410pbb.166.1372454693519;
	Fri, 28 Jun 2013 14:24:53 -0700 (PDT)
Received: from kosborne-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id gb2sm9712441pbd.38.2013.06.28.14.24.51
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Jun 2013 14:24:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
Date: Fri, 28 Jun 2013 14:24:50 -0700
Message-Id: <23674701-2217-4CFC-88CF-8E4C3709E576@gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
To: Ross Burton <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Fri, 28 Jun 2013 21:24:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jun 27, 2013, at 3:06 AM, Ross Burton <ross.burton@intel.com> wrote:

> The meta-toolchain* recipes are deprecated, so when building =
meta-toolchain-gmae
> also build the SDK for core-image-sato.

as an aside, if meta-toolchain is deprecated why should we carry =
meta-toolchain-gmae as well? it seems a special SDK
only target. I think it will be better to have sdks from images all the =
time.

>=20
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
> buildset-config/nightly-arm.conf     |    2 ++
> buildset-config/nightly-fsl-arm.conf |    2 ++
> buildset-config/nightly-fsl-ppc.conf |    2 ++
> buildset-config/nightly-mips.conf    |    2 ++
> buildset-config/nightly-oecore.conf  |    2 ++
> buildset-config/nightly-ppc.conf     |    2 ++
> buildset-config/nightly-x86-64.conf  |    2 ++
> buildset-config/nightly-x86.conf     |    2 ++
> 8 files changed, 16 insertions(+)
>=20
> diff --git a/buildset-config/nightly-arm.conf =
b/buildset-config/nightly-arm.conf
> index 90e5332..827b5fb 100644
> --- a/buildset-config/nightly-arm.conf
> +++ b/buildset-config/nightly-arm.conf
> @@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', =
'ipk', 'rpm', 'deb', 'toolchain']}}]
> diff --git a/buildset-config/nightly-fsl-arm.conf =
b/buildset-config/nightly-fsl-arm.conf
> index c5b4caf..b5750bd 100644
> --- a/buildset-config/nightly-fsl-arm.conf
> +++ b/buildset-config/nightly-fsl-arm.conf
> @@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': =
'ACCEPT_FSL_EULA =3D "1"\n'}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': =
'ACCEPT_FSL_EULA =3D "1"\n'}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'imx6qsabresd', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': =
'ACCEPT_FSL_EULA =3D "1"\n'}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': =
'ACCEPT_FSL_EULA =3D "1"\n'}},
> diff --git a/buildset-config/nightly-fsl-ppc.conf =
b/buildset-config/nightly-fsl-ppc.conf
> index 579ba47..5153580 100644
> --- a/buildset-config/nightly-fsl-ppc.conf
> +++ b/buildset-config/nightly-fsl-ppc.conf
> @@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': =
'ACCEPT_FSL_EULA =3D "1"\n'}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': =
'ACCEPT_FSL_EULA =3D "1"\n'}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['p1022ds', 'ipk', 'rpm', =
'deb', 'toolchain']}}]
>=20
> diff --git a/buildset-config/nightly-mips.conf =
b/buildset-config/nightly-mips.conf
> index c5c24d3..a3d1fe8 100644
> --- a/buildset-config/nightly-mips.conf
> +++ b/buildset-config/nightly-mips.conf
> @@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['qemumips', =
'routerstationpro', 'ipk', 'rpm', 'deb', 'toolchain']}}]
> diff --git a/buildset-config/nightly-oecore.conf =
b/buildset-config/nightly-oecore.conf
> index 4f15f81..f21483d 100644
> --- a/buildset-config/nightly-oecore.conf
> +++ b/buildset-config/nightly-oecore.conf
> @@ -22,7 +22,9 @@ steps: [{'SetDest':{}},
>         {'RunSanityTests': {'images': 'core-image-sato'}},
>         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : =
'i686', 'distro': 'oecore', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : =
'x86-64', 'distro': 'oecore', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}}
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         ]
>=20
> diff --git a/buildset-config/nightly-ppc.conf =
b/buildset-config/nightly-ppc.conf
> index c446b30..06413bf 100644
> --- a/buildset-config/nightly-ppc.conf
> +++ b/buildset-config/nightly-ppc.conf
> @@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', =
'ipk', 'rpm', 'deb', 'toolchain']}}]
> diff --git a/buildset-config/nightly-x86-64.conf =
b/buildset-config/nightly-x86-64.conf
> index ab25610..196a24c 100644
> --- a/buildset-config/nightly-x86-64.conf
> +++ b/buildset-config/nightly-x86-64.conf
> @@ -19,8 +19,10 @@ steps: [{'SetDest':{}},
>         {'RunSanityTests': {'images': 'core-image-minimal =
core-image-sato'}},
>         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['qemux86-64', 'ipk', =
'rpm', 'deb', 'toolchain']}}]
> diff --git a/buildset-config/nightly-x86.conf =
b/buildset-config/nightly-x86.conf
> index 6920cad..75efd39 100644
> --- a/buildset-config/nightly-x86.conf
> +++ b/buildset-config/nightly-x86.conf
> @@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
>         {'BuildImages': {'images': 'core-image-sato =
core-image-sato-dev core-image-sato-sdk core-image-minimal =
core-image-minimal-dev'}},
>         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : =
'i686', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : =
'x86-64', 'distro': 'poky', 'buildhistory' : False}},
>         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
> +        {'BuildImages': {'images': 'core-image-sato -c =
populate_sdk'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc', =
'ipk', 'rpm', 'deb', 'toolchain']}}]
> --=20
> 1.7.10.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


