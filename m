Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDC8EE00B27
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 12:57:18 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hu19so10779314vcb.1
	for <yocto@yoctoproject.org>; Tue, 01 Apr 2014 12:57:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Rxjrd5YR61LBjQ+PENsiRO41oSwUE/AJf3BFKB1Oeng=;
	b=Pf0NmNRp+TVy3S5RjKyP6DhA60VH/wx3cX7xkMTG0cf2xLV1wHL+Z8LgzaSdb/p6Cj
	hl5ig5wGZEll/4ALIMhRgEGktLxnNIEB6pgCfCj28VR0K4KQYbDSAV9TNuV50aNTaAEQ
	E0P04zPk9dBUf7GEpkpFHYzrC2VYApaMQPaFGsXwhPDvOcekMb+gWHrtVRYDVWVqZdkD
	LBliQVnjl3P3oJ/FNPUGaRUacmMqBL8gsye/cgE3Ftck/NNf0FKYErl4fqrQ0fru3jOd
	ujLJ5/ZZjC9O6/TRRtTjCZNUlldflvtMnB8TtsaVj71fPhBlc1gI0NcsCTjN9z1WMw0R
	jb8g==
X-Gm-Message-State: ALoCoQm44fmcZ929HFvqEHaMAcLh4V+1YKjaC7QIZD7Bf1ZPsx4WSzHGVudNy2LJDNa3iLqpBPer
MIME-Version: 1.0
X-Received: by 10.52.249.105 with SMTP id yt9mr2360823vdc.34.1396382237313;
	Tue, 01 Apr 2014 12:57:17 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Tue, 1 Apr 2014 12:57:17 -0700 (PDT)
In-Reply-To: <1396349224-14532-3-git-send-email-stefanx.stanacar@intel.com>
References: <1396349224-14532-3-git-send-email-stefanx.stanacar@intel.com>
Date: Tue, 1 Apr 2014 12:57:17 -0700
Message-ID: <CAPhnLPDAidcScPf5xMsACZ3btQ06USYXA=gjgiDHv3M-OsDhsg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] nightly-multilib: don't build lsb image
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
X-List-Received-Date: Tue, 01 Apr 2014 19:57:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Pulled into master, thanks!

-b

On Tue, Apr 1, 2014 at 3:47 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> We shouldn't build an lsb image here as this isn't a
> poky-lsb build.
> There is a pending patch on oe-core that will break this
> build if we don't remove it and it doesn't buys us too much test
> coverage anyway.
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  buildset-config.master/nightly-multilib.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/buildset-config.master/nightly-multilib.conf b/buildset-config.master/nightly-multilib.conf
> index b5dfec3..49e6ea7 100644
> --- a/buildset-config.master/nightly-multilib.conf
> +++ b/buildset-config.master/nightly-multilib.conf
> @@ -25,4 +25,4 @@ steps: [{'SetDest':{}},
>          {'BuildImages': {'images': 'core-image-sato'}},
>          {'RunSanityTests': {'images': 'core-image-sato', 'suites' : 'ping ssh connman xorg multilib dmesg auto'}},
>          {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'multilib': 'lib64', 'distro': 'poky'}},
> -        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}}]
> +        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk'}}]
> --
> 1.9.0
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

