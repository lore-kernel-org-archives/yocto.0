Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E9DA4C80A86
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:01:46 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-pz0-f46.google.com with SMTP id 3so4788711pzk.33
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 23:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=DWVWvD0GGC4sY2mpnxIu14uMVrIrrJ9ZzITlBdgx5eE=;
	b=tys8dvGKm4QY9DntFQUqcU+TZVmR7MuTRBw9yiCv9s8pX6zCHb5zWYydW469ERDK5q
	m9mPYNkY3dqG2uWvGiciQgpmetmqTozb2IpxAhdLv7ZHclFtHbAQHD99zMJcYNl4MuH9
	pHPmN7Co/o1octmVpeITvrV21DbQqUv5kCU/I=
Received: by 10.68.33.200 with SMTP id t8mr8507466pbi.144.1311055306057; Mon,
	18 Jul 2011 23:01:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 23:01:16 -0700 (PDT)
In-Reply-To: <1311052872-10569-4-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-4-git-send-email-galak@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 23:01:16 -0700
Message-ID: <CAMKF1soqFsRFB0pmPegTSND7JYb-sHBFWdDCOBy+sRn-3BPcCQ@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/5] tune-ppce500v2: Add a tune file for PowerPC e500v2 cores
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
X-List-Received-Date: Tue, 19 Jul 2011 06:01:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
> ---
> =C2=A0meta/conf/machine/include/tune-ppce500v2.inc | =C2=A0 =C2=A05 +++++
> =C2=A01 files changed, 5 insertions(+), 0 deletions(-)
> =C2=A0create mode 100644 meta/conf/machine/include/tune-ppce500v2.inc
>
> diff --git a/meta/conf/machine/include/tune-ppce500v2.inc b/meta/conf/mac=
hine/include/tune-ppce500v2.inc
> new file mode 100644
> index 0000000..9901045
> --- /dev/null
> +++ b/meta/conf/machine/include/tune-ppce500v2.inc
> @@ -0,0 +1,5 @@
> +TARGET_CC_ARCH =3D "-mcpu=3D8548 -mabi=3Dspe -mspe"
> +BASE_PACKAGE_ARCH =3D "ppce500v2"
> +FEED_ARCH =3D "ppce500v2"
> +PACKAGE_EXTRA_ARCHS =3D "powerpc ppce500v2"
> +TARGET_OS_powerpc =3D "linux-gnuspe"

I think TARGET_OS is unwanted here


> --
> 1.7.3.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

