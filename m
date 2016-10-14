Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78DC2E00E53; Fri, 14 Oct 2016 00:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39FC9E00CCA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:16:49 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id x23so10826130lfi.1
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=1EsWeXod0k3eTJEbeXZGHoSU56wwJ4I60IwHRsIgNbY=;
	b=U4Pign50iBF33OoU4Qsn73qltj/hQqmqpfr0/V/yqbuajC8onp0GcLdMBrH+jzgGqP
	erE8giiVpJgmYsKUPdLS/r01YbcWKyPLqBQmCdad+q6er95GT2/Cd0cnlxJzPtYPZPuS
	2oii7S3+IHBBsa3IgGfTQ5rKvWbpFNu2UZ2JN1l1ewBeJNo7sbe0f8oShDkN+TePJQLJ
	7F30gE6iQpXimR7RWvkasMS3xUnvOAk+GatNrQd2sb5jOa8iC3CbaBHVijlE19Y5YHCR
	cP6z/UVgQTxjbIiwfVVa1BKJXTYPJN8i92IqGO+NFbGCbX0IhyvTs7z87c2nEkeSc31h
	ndNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=1EsWeXod0k3eTJEbeXZGHoSU56wwJ4I60IwHRsIgNbY=;
	b=NWSLy/zmYI1/wkZnIfKxpjWUCtyximZc3zUrYLH8RVxuxxtIfaxkMXleqCGhc4Lh8V
	mdmt+TTDbY22bUgX+sOXrUC4icSZWKxQuV5aJ9NzhG32vIkoyuyggs54yBDZoEWo9Eyn
	oAyZdw3j29B7OS1VxVBZ6smyo8OJylI8naOQ6CUtjpwPkJ9FNBueiibUlkKH2IgeYJLs
	gBJRRIYj6GZ1HTZXZOvTg8zv3LLabNGeAxyWZvJn2Xcp4ztJo+dyBrSQOFRoAbdCtfLr
	AkRRYJiHs8YYzMAuc/BgtLpVM+z+vp+kp6KvRPKQGcV9tU440B1dNcTAh9zJl7kcBWNy
	c64w==
X-Gm-Message-State: AA6/9RnNQPJ6NGmX8uco9elpaKZh7n17WzCiSCogi5JDZHACzlARx6TvyDkI+07Yg/5Gcw==
X-Received: by 10.194.127.5 with SMTP id nc5mr1044135wjb.16.1476429407725;
	Fri, 14 Oct 2016 00:16:47 -0700 (PDT)
Received: from resin ([88.128.80.31]) by smtp.gmail.com with ESMTPSA id
	qa7sm29373016wjc.39.2016.10.14.00.16.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 00:16:47 -0700 (PDT)
Date: Fri, 14 Oct 2016 08:16:38 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161014071638.GA28288@resin>
References: <20161007020906.32228-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161007020906.32228-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/4] linux-raspberrypi_4.4: Upgrade to 4.4.23
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
X-List-Received-Date: Fri, 14 Oct 2016 07:16:54 -0000
X-Groupsio-MsgNum: 32391
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 06, 2016 at 07:09:03PM -0700, Khem Raj wrote:
> Drop upstreamed patch
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../0002-vc4-ioctl-rendering-allow.patch           | 29 ----------------------
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
>  2 files changed, 2 insertions(+), 32 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
> deleted file mode 100644
> index 59d0ed7..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -This patch has been accepted upstream in kernel 4.7-rc3
> -But it has not yet been backported to 4.4...
> -Upstream-Status: Accepted [http://www.gossamer-threads.com/lists/linux/kernel/2459302]
> -Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ----
> -
> -diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
> -index a5b68c1..14b5ec1 100644
> ---- a/drivers/gpu/drm/vc4/vc4_drv.c
> -+++ b/drivers/gpu/drm/vc4/vc4_drv.c
> -@@ -75,12 +75,12 @@ static const struct file_operations vc4_drm_fops = {
> - };
> -
> - static const struct drm_ioctl_desc vc4_drm_ioctls[] = {
> --	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0),
> --	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0),
> -+	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0|DRM_RENDER_ALLOW),
> -+	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0|DRM_RENDER_ALLOW),
> - 	DRM_IOCTL_DEF_DRV(VC4_GET_HANG_STATE, vc4_get_hang_state_ioctl,
> - 			  DRM_ROOT_ONLY),
> - };
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 9a49dc1..4b15f88 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,10 +1,9 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.4.16"
> +LINUX_VERSION ?= "4.4.23"
>
> -SRCREV = "cff67c7e03f4333149f2a8f6eafd3bc44475114a"
> +SRCREV = "c2a1d975537fcac01da80ce34f10bc491620a64e"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
> -           file://0002-vc4-ioctl-rendering-allow.patch \
>  "
>  require linux-raspberrypi.inc
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master the entire patch set. Thanks.

--
Andrei Gherzan

--YiEDa0DAkWCtVeE4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYAIZWAAoJEHO76Gt+erfP2MYP/Aua7mabLw2OC4ZaYvVX146v
sGy8Sj7KNoJfPbxNarDNuZZ7HioMGHNpSpJoZgGtL2/AFdsIkfqr8YyKHx5Hj0pa
LN0niPnGz+3rA94yuRnCPPdU0I+3ClzPQZwAdVgf769IIwQIwG7Bp2go2iaewXCp
8GfjJfnlHGHTto4g43Y19ReAKY5WCHbjIFh8Ci3mYmhatAzU1CV2u81mN+q2jT8Y
zCGcnSatgxEc6NunnGCUEdQamzfSiZPVqr7KDenEXZLzcwm8wirMOiR0BoVlw+fK
Sl2qDy/GYsL3jBYX1w4LBid3/zlATgjkncIfbeggvrZWFoOgJUDQnjTTUm2AGFkz
WKn+PIlV8JA1ndMovbHBC4kHLVT5uZ5MTCnSatbz/hMsUndF/E4igqNL2FG7Wcz3
2lJehryHx4Y41FHOqbmZXCyK8m8vvIY29Xu6MID3k6GCKp+Idlbs3M4JcN/MkSRb
O6k9xpBoeCuad/UfE8KyF3oNf/O8sQk9h0APiPsnjA9wBFeX2dn2NGyNhVfYXwfs
zO/c7RGfWPbqEf2s04/ThK8d2WAB+JluVB0CItCFVM+QY7CtuwXW/CQiUAOTJVu8
tLgxZSqIx13s6hHuJQ50jziNRCbzBxhEqBhlr38Vn0ORYu4c7fyO/jdpN7mjeZyx
QPwCZfWqeTDNYQfWLObr
=OndU
-----END PGP SIGNATURE-----

--YiEDa0DAkWCtVeE4--
