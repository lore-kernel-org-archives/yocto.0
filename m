Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43555E01481
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 08:25:04 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id kw10so429242vcb.1
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 08:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=0+H1v8+kPuH4EQV1zIVpto/d2vgJtOuFiX4eqPqBaIU=;
	b=SX1I6U2jX6zBbttkLWF5EeohoLVMkqpz5MW+wpwAW1T/gmPe4Lzfq0RoCQTW6SVHeK
	Z7AeRLjemJfcv8ihV+kGELHXaCiZ/17ygaKGIITSQmABdbN2wvh4a1OpKr2+C9TtDug2
	FbcfET/LTlItfPN7o+AGmukZLQwS/FhEwck6wqLOkwgzmKOaMe4B5COLDWdnhpbvgr+n
	blsNi+SCXElMBEwHnTp+dVb1xIkgyDxU7DVKo9GQB6LqrVBsQsJJc85l/pAK2rjjqPA2
	wqE1k5VY/xj06BlipREC7FSkvHwu0NS5KrS/E2kX2xM45o0ijbnIbX7Sf16esVofmH/i
	wa5g==
X-Gm-Message-State: ALoCoQkbvgCse62bzZdtFpIQWJ4N4iIkTbmJOxWmDo0mYcTwLdMW+H4X8dedipqepuEr1L2V0Njv
MIME-Version: 1.0
X-Received: by 10.58.108.74 with SMTP id hi10mr7061205veb.14.1379690703735;
	Fri, 20 Sep 2013 08:25:03 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Fri, 20 Sep 2013 08:25:03 -0700 (PDT)
In-Reply-To: <1379595865-22999-1-git-send-email-alexandrux.palalau@intel.com>
References: <1379595865-22999-1-git-send-email-alexandrux.palalau@intel.com>
Date: Fri, 20 Sep 2013 08:25:03 -0700
Message-ID: <CAPhnLPBkr6vB_Yvs8cmi03BLVsjmQhyd0kenP2=kjuhHZ4i3Vg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Alexandru Palalau <alexandrux.palalau@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] buildset-config: small improvement to nightly-qa-logrotate scenario
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
X-List-Received-Date: Fri, 20 Sep 2013 15:25:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Pulled into master. In production today. Thanks.

-b

On Thu, Sep 19, 2013 at 6:04 AM, Alexandru Palalau
<alexandrux.palalau@intel.com> wrote:
> Replaced DISTRO_EXTRA_RDEPENDS (which applies only for images that
> include packagegroup-base) with IMAGE_INSTALL_append in order to add
> logrotate package to the image.
>
> Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
> ---
>  buildset-config/nightly-qa-logrotate.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/buildset-config/nightly-qa-logrotate.conf b/buildset-config/nightly-qa-logrotate.conf
> index c82206e..1a60bd3 100644
> --- a/buildset-config/nightly-qa-logrotate.conf
> +++ b/buildset-config/nightly-qa-logrotate.conf
> @@ -8,7 +8,7 @@ steps: [{'SetDest':{}},
>          {'CheckOutLayers': {}},
>          {'RunPreamble': {}},
>          {'GetDistroVersion' : {'distro': 'poky'}},
> -        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nDISTRO_EXTRA_RDEPENDS += "logrotate"\n'}},
> +        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_INSTALL_append = " logrotate"\n'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
>          {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'logrotate'}}]
> --
> 1.7.11.7
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

