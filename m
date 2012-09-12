Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68B5AE0148F
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 00:40:47 -0700 (PDT)
Received: by eabd1 with SMTP id d1so743811eab.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 00:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QZB7PZPMBy+g8m131rEyCdvqGNWnLD2owsmtUGJNJo4=;
	b=nm269A5I4cx/CRp5bpjQSVKW1GKwquZ04fdyqqpkG3BRlYc7yFb2zHpyYaxPo1CiFt
	pfOrPfchq8VF2SYCS/7vS3KBFE3wGYpuMCWET984ohKiqdMVYTn7uXRmNrqQlzQbYOd0
	4k7J33LHaxcGe2xc7DWTSZdZnjivSttoNLX4vubIzyTyZu6B3+KzxFK+8BziFtsJCEYW
	MVdS8So8pGomSDFaRyLF/D4enRS1SBsNTHlAXED8Q48WLJZYmbIpJX4naxZmPqpuiAjF
	svPaHM15AI9x1ze21+QRaMkMRUTraVeKg2fUw73TlC7xMPYq/CZ/LTnS0J2ZDHqJyUbE
	8bxg==
Received: by 10.14.173.131 with SMTP id v3mr23639202eel.15.1347435632111; Wed,
	12 Sep 2012 00:40:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 12 Sep 2012 00:40:01 -0700 (PDT)
In-Reply-To: <1347433590-8481-13-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-13-git-send-email-b19537@freescale.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Sep 2012 00:40:01 -0700
Message-ID: <CAMKF1somnSTNqjmLQMgSKEaijtWonn=0M5RR2wyuTcXa+wd+LQ@mail.gmail.com>
To: b19537@freescale.com
Cc: yocto@yoctoproject.org, Matthew McClintock <msm@freescale.com>
Subject: Re: [meta-fsl-ppc 13/16] Update recipes to use release tags instead of SHA
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
X-List-Received-Date: Wed, 12 Sep 2012 07:40:47 -0000
Content-Type: text/plain; charset=UTF-8

NAK, it breaks BB_NO_NETWORK useless.

On Wed, Sep 12, 2012 at 12:06 AM,  <b19537@freescale.com> wrote:
> From: Matthew McClintock <msm@freescale.com>
>
> Signed-off-by: Matthew McClintock <msm@freescale.com>
> ---
>  recipes-tools/hv-cfg/hv-cfg_git.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-tools/hv-cfg/hv-cfg_git.bb b/recipes-tools/hv-cfg/hv-cfg_git.bb
> index e137575..d3786c5 100644
> --- a/recipes-tools/hv-cfg/hv-cfg_git.bb
> +++ b/recipes-tools/hv-cfg/hv-cfg_git.bb
> @@ -18,7 +18,7 @@ PACKAGE_ARCH = "${MACHINE_ARCH}"
>
>  inherit deploy
>
> -SRCREV = "102ab848d94f3c04f364ed273d0e00b21b0266f4"
> +SRCREV = "v1.2"
>  SRC_URI = "git://git.freescale.com/ppc/sdk/hv-cfg.git"
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

