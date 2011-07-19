Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 72DA84C80579
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:04:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so5650341pve.35
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 23:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=WkniQijxQdvne3g17S/iws4RTmFZbo3175BNNO7tMjA=;
	b=s5dyitsbs2903s3CapOzLbiIbvlbkvcQnzko86eFzSHfq8MyqwLJGoiuR2thjebkfq
	0BLfySzPRO8hInBlk1MdX7KjxY9e1RVrOv3w7rkUw6aOjlliADfT2mcX3PZwEzPvIsLz
	nyqAPOVbsd6ZA81aqtAG4cABgKOQsEKsH9Iuw=
Received: by 10.68.10.103 with SMTP id h7mr8773679pbb.211.1311055487066; Mon,
	18 Jul 2011 23:04:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 23:04:17 -0700 (PDT)
In-Reply-To: <1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 23:04:17 -0700
Message-ID: <CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5] gcc: Add gcc configure for PowerPC e500v2/SPE embedded floating point ABI
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
X-List-Received-Date: Tue, 19 Jul 2011 06:04:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
> The e500v2 core utilizes a unique floating point programming model / ABI.
> We utilize TARGET_FPU =3D "spe" to distinguish this choice. =C2=A0When bu=
ilding
> the toolchain for this ABI we need configure gcc with --enable-e500_doubl=
e.
>
> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
> ---
> =C2=A0meta/recipes-devtools/gcc/gcc-4.6.inc =C2=A0 =C2=A0| =C2=A0 =C2=A02=
 +-
> =C2=A0meta/recipes-devtools/gcc/gcc-common.inc | =C2=A0 =C2=A02 ++
> =C2=A02 files changed, 3 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc b/meta/recipes-devtool=
s/gcc/gcc-4.6.inc
> index 56064b5..b719155 100644
> --- a/meta/recipes-devtools/gcc/gcc-4.6.inc
> +++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
> @@ -1,6 +1,6 @@
> =C2=A0require gcc-common.inc
>
> -PR =3D "r8"
> +PR =3D "r9"
>
> =C2=A0# Third digit in PV should be incremented after a minor release
> =C2=A0# happens from this branch on gcc e.g. currently its 4.6.0
> diff --git a/meta/recipes-devtools/gcc/gcc-common.inc b/meta/recipes-devt=
ools/gcc/gcc-common.inc
> index 7bf036c..409ad01 100644
> --- a/meta/recipes-devtools/gcc/gcc-common.inc
> +++ b/meta/recipes-devtools/gcc/gcc-common.inc
> @@ -12,6 +12,8 @@ FILESDIR =3D "${@os.path.dirname(bb.data.getVar('FILE',=
d,1))}/gcc-${PV}"
> =C2=A0def get_gcc_fpu_setting(bb, d):
> =C2=A0 =C2=A0 if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 return "--with-float=3Dsoft"
> + =C2=A0 =C2=A0if bb.data.getVar('TARGET_FPU', d, 1) in [ 'spe' ]:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0return "--enable-e500_double"
> =C2=A0 =C2=A0 return ""
>

this will enable e500_double even for e500v1 which IIRC does not have
DFP support
have you tried building for e500v1 with this ?

> =C2=A0def get_gcc_mips_plt_setting(bb, d):
> --
> 1.7.3.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

