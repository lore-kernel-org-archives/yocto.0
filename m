Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EBCBE00CA2; Wed, 11 Oct 2017 18:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679E6E00C82
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 18:01:14 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id x7so2681641pfa.1
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 18:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VEUREQdM1SslGuZjUWWY1Jvs0jqGRroUup/pl9T/Geg=;
	b=NXkYq77F2Xy8BeWcqYpIES1CLvuT/tN8DbtLGMremoq733kYVXgONR7uQuwQsJ5M1n
	MTVtC2oieD+DVUYzCGaClJfTO1XzYmgPrgFClCrSxWHIBcZNCOQpsmEgCaft2q4Fh0Te
	z/pkUAxB2iCT3FqVIt2y9TOHi3DVsUnYMNBZajP+nFgyTrp8m1Mx8y8msV13RiAVKX0H
	Pf4jjqg3qI788RqRQM95bMP7nkSKp1bJConKNxcQJ+ZIQ55kX+2njjKs5JGhwnrlVHXm
	HHb9Ct6bSjxVhcO+4/OtW8/98guEk0Nqf+tRC2F+QMN64Gf+J2T4bkhqMpQ6LWaydOno
	kOJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VEUREQdM1SslGuZjUWWY1Jvs0jqGRroUup/pl9T/Geg=;
	b=bMMy7Y3u3pdBPcRH3NVapajuIapBfPPjJvq1+FhhffXpqm0qD+cZdocwXuBIvtVWN7
	CiHq1XLyax+xH4eh2Ghb9/bhGLMHYUFkzjOWhgs3U1Fw2lg2yt0JKDDXIJpvOIs8RNne
	AejWf1f6zi9OmEJF+617/DSpurGgnGRLG9zr12eLc9aT+w4r5mNMmcX6NOBDLT68mECg
	BnsHBfM00teJOIeX6U9CAcZcpZLRKW424WzBux3UEVKfJ4e8R5V+GsZTO5lv0Qk1HdKZ
	FnXRWax0kHdvqnucGyFBaeZJAuqChrVCFNK7z+iRs49TRfYapDFUaxmrhHelVVPhXjYO
	2JQQ==
X-Gm-Message-State: AMCzsaWwiZWwOzhLe2UiqRp2Ctpi/QV0xD/x3Sw/0D6FFBF9AqYupTAB
	aaccvKZAExV/3dra1+x4JqvUqOT9+RYb91vG4hw=
X-Google-Smtp-Source: AOwi7QCE04z2QVNYNRmpH/p8gWh9bDpRV7xcY2dy2gavdyufoHFh+VJvaUUwwzBWcGR6yH9uGS7CsYQdN+8RaCS9/n8=
X-Received: by 10.98.194.215 with SMTP id w84mr666580pfk.255.1507770073653;
	Wed, 11 Oct 2017 18:01:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Wed, 11 Oct 2017 18:00:43 -0700 (PDT)
In-Reply-To: <TU4PR8401MB104097E5404DDCE3959D9401994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR8401MB104097E5404DDCE3959D9401994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Oct 2017 18:00:43 -0700
Message-ID: <CAMKF1sox3ztaxD5NRMHKemO0WMWgiZ7C+EEECXhdpa9N_tSSgA@mail.gmail.com>
To: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to use two recipes to satisfy different PROVIDES -- gpu support
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
X-List-Received-Date: Thu, 12 Oct 2017 01:01:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 11, 2017 at 3:15 PM, Gutierrez, Hernan Ildefonso (Boise
R&D, FW) <hernan_gutierrez@hp.com> wrote:
> Hi,
>
> We have a GPU in our system. We created a recipe to satisfy all the dependencies for core-image-weston (virtual/egl, virtual/libgl, etc.), except virtual/mesa, which is not provided by our GPU recipe.
>
> When one builds core-image-weston, the image requires mesa to build as well.
>
> Our approach to satisfy dependencies is very similar to what Freescale and other vendors with Mali GPU support use, which is through the following statements:
>
> PREFERRED_PROVIDER_virtual/egl = "my-gpu-recipe"
> PREFERRED_PROVIDER_virtual/libgles1 = " my-gpu-recipe "
> PREFERRED_PROVIDER_virtual/libgles2 = " my-gpu-recipe "
> PREFERRED_PROVIDER_virtual/libgl = "my-gpu-recipe"
> PREFERRED_PROVIDER_virtual/mesa = "mesa"
>
> The way to remove mesa support for virtual/egl, virtual/libgles1, etc. is by adding a mesa_%.bbappend where it states explicitly to remove those provides from mesa recipe.
>
> e.g.
> PROVIDES_remove = "virtual/libgles1 virtual/libgles2 virtual/libopenvg virtual/egl"
>
>
> The problem I am running into is that bitbake complains stating that virtual/mesa is not satisfied (Nothing PROVIDES 'virtual/mesa')
>
> When I do bitbake-layers show-recipes, I see that mesa recipe is skipped because it gave priority to my-gpu-recipe.
>
> How can two recipes be used and let bitbake satisfy parts of each recipe?
>
> Any hints will be appreciated.

there is no easy way to control providers once a recipe is pulled in.
you can refactor mesa recipe like we have done for mesa and mesa-gl
which will mean adding a another recipe which just builds the needed
portions of mesa in each recipe, if your GPU driver provides everything
you need to run weston, then you can let it provide everything that mesa
provides and bitbake wont pick up mesa at all.

>
> Thanks,
>
> --Hernan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

