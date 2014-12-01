Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A5CBE008F6; Mon,  1 Dec 2014 14:39:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17BC7E00860
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 14:39:33 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id le20so5129043vcb.40
	for <yocto@yoctoproject.org>; Mon, 01 Dec 2014 14:39:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=RfPaz6K2ZHi4jE2/ErNAAighMmOnL5OBI0A3RkKsaAU=;
	b=fGf17meQZ4XrZnDuawVcTE7kyszRCsGFKpeyvwmvtFb3SD6H04krwuV2idyqZfHOCq
	rVcS2E1GRi0p3BTY+Viqpo4dZJNxM+flFJq1O2qfugjdvjxJ0Og+OXoK8viOCVtL5G6T
	Zku+p8IhvHkLRz8ESpIbJYfSCBsEghaeqQkFkMejcCx4eJAR2O5cFQXI3Wtu7gHmcqVi
	FW7u9acFlQR98Ow7EVft5aBjLo+04zfL+lKQfrm9FaJGK/giK7Z1pWFawdGEjvCvU8Y2
	sKsj/2kbbBiPEM4IolOnE7Xq6NVfn12va09Lx0LSZynYXAjmLH+YCay/Kbt9MO6vygC8
	RtIQ==
X-Gm-Message-State: ALoCoQn87s9aWuxK8jyiQhhkfPEibTvcmoz9jIhArK613bz+XfBilltFMAnMsHE592NQjp6MATJE
MIME-Version: 1.0
X-Received: by 10.52.27.10 with SMTP id p10mr25148140vdg.89.1417473573207;
	Mon, 01 Dec 2014 14:39:33 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Mon, 1 Dec 2014 14:39:33 -0800 (PST)
In-Reply-To: <1416504504-20259-1-git-send-email-ross.burton@intel.com>
References: <1416504504-20259-1-git-send-email-ross.burton@intel.com>
Date: Mon, 1 Dec 2014 22:39:33 +0000
Message-ID: <CAPhnLPAOP_zqsP2Obows-X9nyqoDU6OLQWypw7R_6=krZ4qqjQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Ross Burton <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [autobuilder][PATCH] buildset-config.controller: add nightly-arm64 target
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
X-List-Received-Date: Mon, 01 Dec 2014 22:39:43 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master, I'll bring it into production this week. Note: it
will not be part of nightly, so if you want it kicked on prod
autobuilders for nightlies, we'll have to do some extra work for that
(LAYERVERSION bump, and code in the buildstep to skip this build to
ensure backwards compatibility).

thanks!

-b

On Thu, Nov 20, 2014 at 5:28 PM, Ross Burton <ross.burton@intel.com> wrote:
> This is based on the nightly-arm target with the beaglebone builds removed.
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  buildset-config.controller/nightly-arm64.conf |   27 +++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 buildset-config.controller/nightly-arm64.conf
>
> diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
> new file mode 100644
> index 0000000..7c2524b
> --- /dev/null
> +++ b/buildset-config.controller/nightly-arm64.conf
> @@ -0,0 +1,27 @@
> +[nightly-arm64]
> +builders: 'example-worker'
> +repos: [{'poky':
> +            {'repourl':'git://git.yoctoproject.org/poky',
> +                'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
> +             'branch':'master'}},
> +        {'meta-qt3':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
> +             'branch':'master'}}]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'RunPreamble': {}},
> +        {'GetDistroVersion' : {'distro': 'poky'}},
> +        {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True}},
> +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> +        {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
> +        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
> +        {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
> +        {'BuildToolchainImages': {}},
> +        {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
> +        {'BuildToolchainImages': {}},
> +        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
> +        {'PublishLayerTarballs':{}},
> +        {'SendErrorReport': {}},
> +        {'PublishArtifacts': {'artifacts': ['qemuarm64', 'ipk', 'toolchain', 'md5sums']}}]
> +
> --
> 1.7.10.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

