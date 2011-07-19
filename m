Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F1744C80579
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:08:56 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk3 with SMTP id 3so4793938pzk.33
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 23:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=mG87bXrMdT62NWUiCltJW0Un7VXKJsdfJunrfdcsOrM=;
	b=G2jBgMUMFfW4y9iFbTWYmbAeMAXfxMBKiFtdqYvL+r30wpMzyBnqzjZyniXCqObEUI
	09lN9mAz4pV4/5cIotQjQdIMlw2tcAJPIEA/pzLZn4C6vIm3HD0CnmYzZHINdNlTK9IY
	bZmOzOkE6PewXOOCaLVGu17OFn0SSM1zHp6TY=
Received: by 10.68.28.1 with SMTP id x1mr8339557pbg.77.1311055736067; Mon, 18
	Jul 2011 23:08:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 23:08:26 -0700 (PDT)
In-Reply-To: <1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 23:08:26 -0700
Message-ID: <CAMKF1srAsQWs5LCwJtyg852EF3wmMboeLBBcdb6Y3iKB4-eb+Q@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/5] tclibc-*glibc: Utilize TARGET_FPU for gnuspe setting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jul 2011 06:08:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
> Its possible that BASE_PACKAGE_ARCH isn't set to ppce500 or ppce500v2 whe=
n
> we build native toolchains. =C2=A0So we can utilize TARGET_FPU being set =
to
> "spe" to determine if we should enable the gnuspe ABI.
>
> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
> ---
> =C2=A0meta/conf/distro/include/tclibc-eglibc.inc | =C2=A0 =C2=A02 +-
> =C2=A0meta/conf/distro/include/tclibc-glibc.inc =C2=A0| =C2=A0 =C2=A02 +-
> =C2=A02 files changed, 2 insertions(+), 2 deletions(-)
>

similar change is needed for tclibc-uclibc.inc as well. something like

TARGET_OS_powerpc =3D
"linux-uclibc${@['','spe'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in
['ppce500', 'ppce500v2']]}"

> diff --git a/meta/conf/distro/include/tclibc-eglibc.inc b/meta/conf/distr=
o/include/tclibc-eglibc.inc
> index e070aad..0cddcd4 100644
> --- a/meta/conf/distro/include/tclibc-eglibc.inc
> +++ b/meta/conf/distro/include/tclibc-eglibc.inc
> @@ -5,7 +5,7 @@
> =C2=A0TARGET_OS =3D "linux"
> =C2=A0TARGET_OS_arm =3D "linux-gnueabi"
> =C2=A0TARGET_OS_armeb =3D "linux-gnueabi"
> -TARGET_OS_powerpc =3D "linux${@['','-gnuspe'][bb.data.getVar('BASE_PACKA=
GE_ARCH',d,1) in ['ppce500', 'ppce500v2']]}"
> +TARGET_OS_powerpc =3D "linux${@['','-gnuspe'][bb.data.getVar('TARGET_FPU=
',d,1) in ['spe']]}"
>
> =C2=A0# Add glibc overrides to the overrides for eglibc.
> =C2=A0OVERRIDES .=3D ":libc-glibc"
> diff --git a/meta/conf/distro/include/tclibc-glibc.inc b/meta/conf/distro=
/include/tclibc-glibc.inc
> index 5e7afc1..22f7d29 100644
> --- a/meta/conf/distro/include/tclibc-glibc.inc
> +++ b/meta/conf/distro/include/tclibc-glibc.inc
> @@ -5,7 +5,7 @@
> =C2=A0TARGET_OS =3D "linux"
> =C2=A0TARGET_OS_arm =3D "linux-gnueabi"
> =C2=A0TARGET_OS_armeb =3D "linux-gnueabi"
> -TARGET_OS_powerpc =3D "linux${@['','-gnuspe'][bb.data.getVar('BASE_PACKA=
GE_ARCH',d,1) in ['ppce500', 'ppce500v2']]}"
> +TARGET_OS_powerpc =3D "linux${@['','-gnuspe'][bb.data.getVar('TARGET_FPU=
',d,1) in ['spe']]}"
>
> =C2=A0# Add glibc to the overrides.
> =C2=A0OVERRIDES =3D. "libc-glibc:"
> --
> 1.7.3.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

