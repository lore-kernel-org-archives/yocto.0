Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EC2E014A1
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 03:58:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Jun 2013 03:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="311997145"
Received: from unknown (HELO helios.localnet) ([10.252.121.221])
	by azsmga001.ch.intel.com with ESMTP; 04 Jun 2013 03:58:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 04 Jun 2013 11:58:41 +0100
Message-ID: <8731013.X4s1gPWXY4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t3MbEC=vDykz0djfm3U4b++OtQLADFOeUz=sCwuospR4A@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<3376326.FccA9gDt9x@helios>
	<CAAGt+t3MbEC=vDykz0djfm3U4b++OtQLADFOeUz=sCwuospR4A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 10:58:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 04 June 2013 12:42:12 Zafrullah Syed wrote:
> previously, I successfully build *gumstix-console-image* and I have created
> *meta-bebot* folder for my recipe.
> 
> My Yocto tree as follows:
> 
> Yocto
>  --build
>    --conf
>        --bblayers.conf ( I added /home/siguser/yocto2013-05-08/poky/*
> meta-bebot* \ ) path
>        --local.conf ( I added IMAGE_INSTALL_append = " hello" ) under
> *Additional
> image features*
>    --downloads
>    --tmp
>    --
>    --
> 
>  --poky
>     --bitbake
>     --build
>     --documentation
>     --meta
>     --*meta-bebot*
> *        --conf*
> *            --bblayers.conf *(I added  /home/siguser/yocto2013-05-08/poky/*
> meta-bebot* \ ) path

If I understand correctly from the above that you have put bblayers.conf in 
conf/ under your meta-bebot layer, that is not correct. bblayers.conf needs to 
be under conf/ in your build directory as usual.

> *            --layer.conf *(I added BBFILE_COLLECTIONS += "*meta-bebot*"
>                                              BBFILE_PATTERN_*meta-bebot* :=
> "^${LAYERDIR}/"
>                                              BBFILE_PRIORITY_*meta-bebot* =
> "7" )

Are you also extending BBFILES and BBPATH in your meta-bebot/conf/layer.conf?

> *        --recipes-bebot*
> *             --hello*
> *                --hello.bb*
>     --meta-gumstix
>     --meta-gumstix-extras
>     --meta-hob
>     --meta-openembedded
>     --
>     --remaining other folders..
> 
> 
> When I try to build image *bitbake gumstix-console-image*
>                       again it throws this error: *ERROR: Nothing PROVIDES
> 'gumstix-console-image'*

BitBake uses BBFILES to find recipes; each layer's layer.conf typically extends 
BBFILES to find the recipes within the layer. If you are receiving this error 
it means (as you might expect) that BitBake cannot find a provider for the 
specified target. This is either because your bblayers.conf no longer adds the 
path to meta-gumstix to BBLAYERS, or because BBFILES is being reset so that it 
no longer includes the path within meta-gumstix to find the gumstix-console-
image recipe. Please check that you don't have a duplicate bblayers.conf (as 
mentioned above) and that your meta-bebot/conf/layer.conf is appropriately 
extending BBFILES (see other layers for examples).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

