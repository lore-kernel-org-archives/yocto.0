Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BA50E00988; Mon, 30 Mar 2015 07:04:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15EAE00985
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 07:04:43 -0700 (PDT)
Received: by ykek76 with SMTP id k76so59970593yke.0
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 07:04:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=QacHgW7P8aGzkXDE9SmN1qYCOvGb3B7BXnab4/QZHY8=;
	b=LMn1pBPpwQQWSKqc4VXAM2lmV//G6AMk76LCur/CK8jK88pMiS90X10Ku4IaDBjbvQ
	rFVnXIwj2bUx9rBpIIdNowMg/KTH+Q8lBF1yi2M+PjNWR/hsJ9MwqOdW2O8zTvii85ZS
	cAxAJYQKlZ/kFhSFJW67ummaUt4nhpCdqFF9tQaD5iMJH8Vq6OCDFxh8ylh0dBYD7Bu6
	k9ItmVZ/J+5vM3ZQPyuDHGPxcEDxB6GZ95IszwbyGF+a6RXMT+ZeBNylkLPoeRecJLwI
	4/MUXNi/tHQ1saN7AHmQnTLhTdBEONLKAeu9HAJa58bFXGVBsfFILOoa+HguL7Emm0/D
	Qf9g==
X-Gm-Message-State: ALoCoQkxHXxnzal1ykN2v+Xwetj+kLDReOyZY1hXcMvz61fhfmn1aV0sfvRCeRdNj+zXDCg+ea5q
MIME-Version: 1.0
X-Received: by 10.52.30.34 with SMTP id p2mr34997409vdh.89.1427724282659; Mon,
	30 Mar 2015 07:04:42 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Mon, 30 Mar 2015 07:04:42 -0700 (PDT)
In-Reply-To: <1427503019-10759-1-git-send-email-tracy.graydon@intel.com>
References: <1427503019-10759-1-git-send-email-tracy.graydon@intel.com>
Date: Mon, 30 Mar 2015 15:04:42 +0100
Message-ID: <CAPhnLPAtk7UxBzb7u1HqnqysSYVQBX+xyorgzmZcp3S5jN9MJA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] nightly-<arch>*.conf: Add GetBitbakeVersion build step
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
X-List-Received-Date: Mon, 30 Mar 2015 14:04:50 -0000
Content-Type: text/plain; charset=UTF-8

Pulled to master. Production post-1.8

On 28 March 2015 at 00:36, Graydon, Tracy <tracy.graydon@intel.com> wrote:
> [YOCTO #7519]
>
> Add the GetBitbakeVersion build step to nightly-<arch>*.conf buildsets
> in buildset_config.controller to enable toaster on autobuilder.
>
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>  buildset-config.controller/nightly-arm-lsb.conf     | 1 +
>  buildset-config.controller/nightly-arm.conf         | 1 +
>  buildset-config.controller/nightly-arm64.conf       | 1 +
>  buildset-config.controller/nightly-fsl-arm-lsb.conf | 1 +
>  buildset-config.controller/nightly-fsl-arm.conf     | 1 +
>  buildset-config.controller/nightly-fsl-ppc-lsb.conf | 1 +
>  buildset-config.controller/nightly-fsl-ppc.conf     | 1 +
>  buildset-config.controller/nightly-mips-lsb.conf    | 1 +
>  buildset-config.controller/nightly-mips.conf        | 1 +
>  buildset-config.controller/nightly-ppc-lsb.conf     | 1 +
>  buildset-config.controller/nightly-ppc.conf         | 1 +
>  buildset-config.controller/nightly-x86-64-lsb.conf  | 1 +
>  buildset-config.controller/nightly-x86-64.conf      | 1 +
>  buildset-config.controller/nightly-x86-lsb.conf     | 1 +
>  buildset-config.controller/nightly-x86.conf         | 1 +
>  15 files changed, 15 insertions(+)
>
> diff --git a/buildset-config.controller/nightly-arm-lsb.conf b/buildset-config.controller/nightly-arm-lsb.conf
> index 261a1e3..f950b6d 100644
> --- a/buildset-config.controller/nightly-arm-lsb.conf
> +++ b/buildset-config.controller/nightly-arm-lsb.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky-lsb', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
> diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
> index d705bbc..ae73381 100644
> --- a/buildset-config.controller/nightly-arm.conf
> +++ b/buildset-config.controller/nightly-arm.conf
> @@ -14,6 +14,7 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
>          {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
> diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
> index 9595b3b..0b15ec8 100644
> --- a/buildset-config.controller/nightly-arm64.conf
> +++ b/buildset-config.controller/nightly-arm64.conf
> @@ -14,6 +14,7 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' :'i686', 'distro': 'poky', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
>          {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
> diff --git a/buildset-config.controller/nightly-fsl-arm-lsb.conf b/buildset-config.controller/nightly-fsl-arm-lsb.conf
> index cccb7a1..4599247 100644
> --- a/buildset-config.controller/nightly-fsl-arm-lsb.conf
> +++ b/buildset-config.controller/nightly-fsl-arm-lsb.conf
> @@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
>                              'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
>                              'devkernel' : False}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-arm'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'CreateAutoConf': {'machine': 'imx6qsabresd', 'SDKMACHINE' : 'x86_64',
>                              'distro': 'poky-lsb', 'buildhistory' : False,
> diff --git a/buildset-config.controller/nightly-fsl-arm.conf b/buildset-config.controller/nightly-fsl-arm.conf
> index a133f3c..e5ca381 100644
> --- a/buildset-config.controller/nightly-fsl-arm.conf
> +++ b/buildset-config.controller/nightly-fsl-arm.conf
> @@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
>                              'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
>                              'devkernel' : False}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-arm'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' : 'i686',
>                              'distro': 'poky', 'buildhistory' : False,
> diff --git a/buildset-config.controller/nightly-fsl-ppc-lsb.conf b/buildset-config.controller/nightly-fsl-ppc-lsb.conf
> index 65cdc22..e9fccc1 100644
> --- a/buildset-config.controller/nightly-fsl-ppc-lsb.conf
> +++ b/buildset-config.controller/nightly-fsl-ppc-lsb.conf
> @@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
>                              'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
>                              'devkernel' : False}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-ppc'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'PublishLayerTarballs':{}},
>          {'SendErrorReport': {}},
> diff --git a/buildset-config.controller/nightly-fsl-ppc.conf b/buildset-config.controller/nightly-fsl-ppc.conf
> index c10913c..f506d0e 100644
> --- a/buildset-config.controller/nightly-fsl-ppc.conf
> +++ b/buildset-config.controller/nightly-fsl-ppc.conf
> @@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
>                              'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
>                              'devkernel' : False}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-ppc'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'BuildToolchainImages': {}},
>          {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : 'x86_64',
> diff --git a/buildset-config.controller/nightly-mips-lsb.conf b/buildset-config.controller/nightly-mips-lsb.conf
> index d1c5362..78c49dc 100644
> --- a/buildset-config.controller/nightly-mips-lsb.conf
> +++ b/buildset-config.controller/nightly-mips-lsb.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>           'distro': 'poky-lsb', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'CreateAutoConf': {'machine': 'routerstationpro',
>                              'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
> diff --git a/buildset-config.controller/nightly-mips.conf b/buildset-config.controller/nightly-mips.conf
> index 998e0d5..7d63da0 100644
> --- a/buildset-config.controller/nightly-mips.conf
> +++ b/buildset-config.controller/nightly-mips.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
>          {'CreateAutoConf': {'machine': 'routerstationpro', 'SDKMACHINE' : 'i686',
> diff --git a/buildset-config.controller/nightly-ppc-lsb.conf b/buildset-config.controller/nightly-ppc-lsb.conf
> index a736fea..179121d 100644
> --- a/buildset-config.controller/nightly-ppc-lsb.conf
> +++ b/buildset-config.controller/nightly-ppc-lsb.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky-lsb', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686',
>                              'distro': 'poky-lsb', 'buildhistory' : False}},
> diff --git a/buildset-config.controller/nightly-ppc.conf b/buildset-config.controller/nightly-ppc.conf
> index d07165e..b91732a 100644
> --- a/buildset-config.controller/nightly-ppc.conf
> +++ b/buildset-config.controller/nightly-ppc.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
>          {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
> diff --git a/buildset-config.controller/nightly-x86-64-lsb.conf b/buildset-config.controller/nightly-x86-64-lsb.conf
> index 07a23d8..35319f2 100644
> --- a/buildset-config.controller/nightly-x86-64-lsb.conf
> +++ b/buildset-config.controller/nightly-x86-64-lsb.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky-lsb', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686',
>                              'distro': 'poky-lsb', 'buildhistory' : False}},
> diff --git a/buildset-config.controller/nightly-x86-64.conf b/buildset-config.controller/nightly-x86-64.conf
> index 9a81ab2..bbd0e85 100644
> --- a/buildset-config.controller/nightly-x86-64.conf
> +++ b/buildset-config.controller/nightly-x86-64.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
>          {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686',
> diff --git a/buildset-config.controller/nightly-x86-lsb.conf b/buildset-config.controller/nightly-x86-lsb.conf
> index 654de1f..dc22f80 100644
> --- a/buildset-config.controller/nightly-x86-lsb.conf
> +++ b/buildset-config.controller/nightly-x86-lsb.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'buildhistory' : True, 'distro': 'poky-lsb'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
>          {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686',
>                              'buildhistory' : False, 'distro': 'poky-lsb'}},
> diff --git a/buildset-config.controller/nightly-x86.conf b/buildset-config.controller/nightly-x86.conf
> index b5a0b36..5053136 100644
> --- a/buildset-config.controller/nightly-x86.conf
> +++ b/buildset-config.controller/nightly-x86.conf
> @@ -15,6 +15,7 @@ steps: [{'SetDest':{}},
>                              'distro': 'poky', 'buildhistory' : True}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
>          {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
>          {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
>          {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686',
> --
> 1.9.3
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

