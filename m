Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDC64E00D18; Mon, 31 Oct 2016 07:12:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B47CAE009D8
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:12:01 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id c17so18615838wmc.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YRenl+Eoy+fuNgCtne9rXNAOqiMAL5hULrPmfsLj4Y0=;
	b=LV/4xIqGkY6DICX56J2XZsBQiKVYDupzOM/lFEkph8etKdi0kM2uoq9IegDF+bAZt+
	xdmGDNbvdSyDlUtNMvm4F9ns4lSBiUIb2IpDGbgbCqW0OBeq/rEoi4QgRqhoVfy3/TfY
	4hGWdgW65+x2sYQ+DFw3k2g8QuJq7A518hr8opniP/6Lq5PwB2WSYocFNCOlTBVI1+Na
	wG2ELhftbRZ6o6FdmE0DjowObtZTQTGyFRgKeT9rFGNN6br4ps3Oo+m1lrKBNs0xmQU/
	6YiMbHcU3fhpc0TFvFtQEqkWEgsjMctAj2EFcZcOtn/KvE1+pJ6CNFMsig1TjcNvh3Pb
	+nbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YRenl+Eoy+fuNgCtne9rXNAOqiMAL5hULrPmfsLj4Y0=;
	b=XWK6UZVlEZM/L78riADqbCctw+zFNrc/rDhKeSVyRqdIUEERYAFW23/I7GlbZqVh4e
	8bOdCbOm+YEg8X1Wd10t5BdRhzoALKyhavM0OQkqNKUCgxcx9km+Xkfj/B4zfBx7FVH7
	VECWzUjbaEOvq2fBZv+iHPMpxYeUIAg3tygyNxmCoXwIL8gjjMe7GXixDbvGY8Jamjnv
	NmclsoxFuVLEo7JRA5SXeEVTpGbY0Maym3zR6/+2I0aaj9gR+F9JfqA888E+VTv8Z8wm
	xhHRR1wmYKcmcEEWvJ0btHTDkgnK4GKEQwrjWr92XqIwWua8sbIdsHCk8fTwpo7nEF1L
	X5Ag==
X-Gm-Message-State: ABUngvdXCmuxDxjhuK/GNE1mC8q+zKnPevl3gW/NAHfpa/0DgVeOx9reaoNQERTgkc7OZw==
X-Received: by 10.28.212.17 with SMTP id l17mr10220213wmg.64.1477923120819;
	Mon, 31 Oct 2016 07:12:00 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	i10sm8277747wjd.15.2016.10.31.07.12.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 07:12:00 -0700 (PDT)
Date: Mon, 31 Oct 2016 14:11:59 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20161031141159.GB9939@carbonA>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
	<1474523274-3883-5-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1474523274-3883-5-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/6] linux-raspberrypi: update to 4.4.21
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
X-List-Received-Date: Mon, 31 Oct 2016 14:12:05 -0000
X-Groupsio-MsgNum: 32686
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UHN/qo2QbUvPLonB"
Content-Disposition: inline

--UHN/qo2QbUvPLonB
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 22, 2016 at 07:47:52AM +0200, Andreas M=FCller wrote:
> This version contains vc4_firmware_kms [1]
>
> https://github.com/raspberrypi/linux/commit/598f79fb5a7ea1a6fbd37b9849e09=
7dd0bea70fc
>
> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> ---
>  .../0002-vc4-ioctl-rendering-allow.patch           | 29 ----------------=
------
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
>  2 files changed, 2 insertions(+), 32 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-i=
octl-rendering-allow.patch
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-re=
ndering-allow.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-i=
octl-rendering-allow.patch
> deleted file mode 100644
> index 59d0ed7..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering=
-allow.patch
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -This patch has been accepted upstream in kernel 4.7-rc3
> -But it has not yet been backported to 4.4...
> -Upstream-Status: Accepted [http://www.gossamer-threads.com/lists/linux/k=
ernel/2459302]
> -Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ----
> -
> -diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv=
=2Ec
> -index a5b68c1..14b5ec1 100644
> ---- a/drivers/gpu/drm/vc4/vc4_drv.c
> -+++ b/drivers/gpu/drm/vc4/vc4_drv.c
> -@@ -75,12 +75,12 @@ static const struct file_operations vc4_drm_fops =3D=
 {
> - };
> -
> - static const struct drm_ioctl_desc vc4_drm_ioctls[] =3D {
> --	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0),
> -+	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0|DRM_RENDER_ALL=
OW),
> -+	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0|DRM_RENDER_A=
LLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0|DRM_RENDER_ALL=
OW),
> -+	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0|=
DRM_RENDER_ALLOW),
> - 	DRM_IOCTL_DEF_DRV(VC4_GET_HANG_STATE, vc4_get_hang_state_ioctl,
> - 			  DRM_ROOT_ONLY),
> - };
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kern=
el/linux/linux-raspberrypi_4.4.bb
> index 9a49dc1..81e32c0 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,10 +1,9 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?=3D "4.4.16"
> +LINUX_VERSION ?=3D "4.4.21"

Current master already has 4.4.23.

>
> -SRCREV =3D "cff67c7e03f4333149f2a8f6eafd3bc44475114a"
> +SRCREV =3D "9669a50a3a8e4f33b4fe138277bc4407e1eab9b2"
>  SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branc=
h=3Drpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
> -           file://0002-vc4-ioctl-rendering-allow.patch \
>  "
>  require linux-raspberrypi.inc
> --
> 2.5.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--UHN/qo2QbUvPLonB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF1EuAAoJEHO76Gt+erfP5+YQAL5xKq1KRBVO6hKVLUA+92Xv
tHApXq1N4Xx0mDTSSlOPOXqBWx4xBqCvG+aSTT1829OmlAVt5gnq2DsQgQYlP2W/
encL4SAFYSrbGSZNQDsHa4HFxa05B1IVUuaZk/gT1a232U/8P60FUw/bx4tynGj0
FtC+nIS+bZXP9e9xk+XeVzVnDs4TK1BS4AWsdH2QFuzdZSuoC9mNy9zLy6anzN+O
7Ys+Tpnyb/B1mkAv8ba5CBg/jJRCmszh/DzKKlLu1JxcBMO0NWicI7KqCwyjj+Kj
mZ4QT/Qoq+PlPNLPBs0kPLGUZTQkNlhVGYiLLmkHfka9AlwTRkwLfrIM6jzj5tYX
7G4RI016iFhCwu67+0IimoJJJEfTKC1rp6J5/SpqHiS+3F63MauPwb+TtPGCY/IY
fJ1UJ7m0ELcqPRcVZS5uHnCataFPqG3cJwGS7k//riEsTkWCi6vKxM+5vbdPHbKE
GP19GQm1rqv1WFeAmsF9aJqazOPZukzG4Vi1EFMADhN3IebV2noxE1r5M20nK58p
oPeWuAeO5On4ixxG6p/2Ojcxrlqv3I399sN/oXgmJkm1kADQBoAQ9tL72tTuzbuX
zGbzSbgNug8PCs/9o2TO4qXmGNXyaRJqfKVq4TOGJTwby8PZWySxW2oAHcmr0PXz
ykRGhn0mZTkXCrcDxcxr
=om1b
-----END PGP SIGNATURE-----

--UHN/qo2QbUvPLonB--
