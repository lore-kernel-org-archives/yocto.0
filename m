Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 838A7E0149F
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 00:41:07 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1137368eek.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 00:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eMawVCvgEuzH3CsLlt4WlDigzGIK+Y24AtuVB5M0W+k=;
	b=pB+GKtFZs0hix2JN2Czq0FEiQQTSJqzfoHMdfx+wiGga6HFv5rPVwF5z7IB1SBAgLr
	Nzp+NW6lPi4RLJQzyGqVv6W0o1WICmRV2sC73sa+WTgNXQJYiufoKcohfQZboH6A3+03
	iQyt+mPwt+kLeAt4tSJ3YiTfCbrz1ezMIc+Rsmpot5TuvfMpBbWW/S3PpJGQq4g6T4zh
	TRljad9bsvse8q0ASeR0l8Gy/ocPI74gnsAv/20TElQS99MOTw2kI1hf5btx9dmw0Go8
	JkE1N49EjPnauaZVJ+mH551fxDMUIL6a2OaHK0hK5fNeBxYT7XRj2oCrp599+FaaMWGX
	HV/g==
Received: by 10.14.218.134 with SMTP id k6mr29526914eep.14.1347435666429; Wed,
	12 Sep 2012 00:41:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 12 Sep 2012 00:40:36 -0700 (PDT)
In-Reply-To: <1347433590-8481-9-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-9-git-send-email-b19537@freescale.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Sep 2012 00:40:36 -0700
Message-ID: <CAMKF1spSfEGfkXcfQ7Q1CHdiohSuJmPLd7yCFwW19B46SRe=tA@mail.gmail.com>
To: b19537@freescale.com
Cc: yocto@yoctoproject.org, Matthew McClintock <msm@freescale.com>
Subject: Re: [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1 release version
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
X-List-Received-Date: Wed, 12 Sep 2012 07:41:07 -0000
Content-Type: text/plain; charset=UTF-8

NAK

On Wed, Sep 12, 2012 at 12:06 AM,  <b19537@freescale.com> wrote:
> From: Matthew McClintock <msm@freescale.com>
>
> Signed-off-by: Matthew McClintock <msm@freescale.com>
> ---
>  recipes-tools/rcw/rcw_git.bb |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-tools/rcw/rcw_git.bb b/recipes-tools/rcw/rcw_git.bb
> index 4487f9e..0aaf794 100644
> --- a/recipes-tools/rcw/rcw_git.bb
> +++ b/recipes-tools/rcw/rcw_git.bb
> @@ -1,7 +1,7 @@
>  DESCRIPTION = "Reset Control Words (RCW)"
>  SECTION = "rcw"
>  LICENSE = "BSD"
> -PR = "r4"
> +PR = "r5"
>
>  LIC_FILES_CHKSUM = " \
>         file://p2041rdb/LICENSE;md5=96dd72f26e9bb861de5c76c60e35e1bc \
> @@ -16,7 +16,7 @@ PACKAGE_ARCH = "${MACHINE_ARCH}"
>
>  inherit deploy
>
> -SRCREV = "394db85c496f6e41dd7e29e54dab3db2b380b187"
> +SRCREV = "v1.2.1"
>  SRC_URI = "git://git.freescale.com/ppc/sdk/rcw.git"
>
>  S = "${WORKDIR}/git"
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

