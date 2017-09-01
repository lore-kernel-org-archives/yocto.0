Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19462E00CD8; Fri,  1 Sep 2017 07:08:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 125D4E007EF
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 07:08:38 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id u26so2191883wma.0
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 07:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zqghud3qEvQ3mseYhKnNUXV8B+T80GMlYTOc/RD6ZHk=;
	b=cp6n/XS7N0kcs/AiNj1kWm9ZmHg8TOKdGiXHlmlpOQGH1AsaYLqMBZGoyXbMOgf8x/
	OFe5kt2HVXKMIHQbxN3CdgTvoCKsYlaDYv2VOAvGd5G+A5p02JBQgROShQ0xaAj9LpDX
	Jq8w/KG+Y83QOMjavlSFAtIrfRDxZObmgr4hziC5+QBgry1ieo7Lnbvd/tn4Lnz2yKJ5
	C8g0FOvHOu6bxfrLCllzQWf8Dbg+ie52whJKSbdvXAu/T/rYoG0dFTegt6m8DV+HhTDr
	xCMlcFM4m6oMT+4FilZvhe1Fqj7gAEVXhGOe3ctIgMQV2CGM/TXFnPJtmWJEeh+BJSLa
	jerw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zqghud3qEvQ3mseYhKnNUXV8B+T80GMlYTOc/RD6ZHk=;
	b=rRshNW5BZXE8bXoImO5gQTNXWRKf/ncNKMHemfKj06tAXjJRpuK1vGlNfya0iKDzZI
	hiMiF1EcPxPadF8U2DU7IL8w3lBPmDRGvvizZSQ451jCsIXRTDl5IRvh1c/uccybIbN6
	55pTRInDnSstrhrf6sjRwWrqaZkBAQK0vmi7V8tIDtdEaHEqBO6O/aQnH93fEU4ABj4K
	OE8KG0fJ0Nvg48wYRtr/KHDgLqDidgZUfwisWNeIEztj2GgfhGi/u87t5LtdRagXMMSU
	a+syXz9Jzvgr/24NPUiz50FzLiu3G9aGRB0OiN8p4G4cCaB0CTsEamhESlaU8pAzScHJ
	UWLQ==
X-Gm-Message-State: AHPjjUgLeg9z0C0tO8VbqyEdY7FNZeZK6C9tV4vrqNuWeASIc3gXZIi3
	lvYzm7We+ZmLXbymDy6EyQgJbur41Irw4pc=
X-Google-Smtp-Source: ADKCNb59dciyn8qQsR3WoR41pxg0KwMmm9y9nlbOrkadjglEXxqSmPWdh58CcOZTFjt0Z7FNCJmQW5QlrQ49B53EWZc=
X-Received: by 10.28.180.134 with SMTP id d128mr502508wmf.109.1504274917593;
	Fri, 01 Sep 2017 07:08:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.58.12 with HTTP; Fri, 1 Sep 2017 07:08:17 -0700 (PDT)
In-Reply-To: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Fri, 1 Sep 2017 16:08:17 +0200
Message-ID: <CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Fri, 01 Sep 2017 14:08:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi!
>
> I was trying to share sstate between different hosts, but the consumer build
> system seems to be unable to use re-use any sstate object. My scenario is
> setup as follows:
>
> * The cache was populated by a pristine qemux86 core-image-minimal build of
> morty. This was done in a crops/poky container (running in docker on Mac)
> * The cache was then served via HTTP

Make sure that you use a decent HTTP server. Simple `python3 -m
http.server` will quickly choke when the mirror is being checked. Also
running bitbake -DDD -v makes investigating this much easier.

> * The second host is a VM running Ubuntu 16.04 where I set SSTATE_MIRRORS to
> point to the hosted sstate cache like this:
>
> SSTATE_MIRRORS ?= "\
> file://.* http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=PATH"
>
> * I checked with curl that the VM can successfully get sstate objects from
> the server.
> * Then I start a new build (same metadata revisions, default configuration
> for core-image-minimal) and each and every task run from scratch with no
> sstate cache re-use.
>
> Here are the two configurations from bitbake and /etc/lsb-release files:
>
> On the container used to seed sstate cache:
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2.2"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>
> $ cat /etc/lsb-release
> DISTRIB_ID=Ubuntu
> DISTRIB_RELEASE=16.04
> DISTRIB_CODENAME=xenial
> DISTRIB_DESCRIPTION="Ubuntu 16.04.2 LTS"
>
> On the VM that should consume the cache:
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-16.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2.2"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>
> $ cat /etc/lsb-release
> DISTRIB_ID=Ubuntu
> DISTRIB_RELEASE=16.04
> DISTRIB_CODENAME=xenial
> DISTRIB_DESCRIPTION="Ubuntu 16.04.3 LTS"
>
>
> To me, the only differing bit that in my understanding can lead to sstate
> cache objects invalidation is the value of NATIVELSBSTRING which is
> "universal" inside the container and "Ubuntu-16.04". This sounds strange to
> me, since both underlying systems are Ubuntu 16.04 (although not exactly the
> same dot release) as confirmed by /etc/lsb-release contents.
>
> Is the different NATIVELSBSTRING the root cause for everything being
> re-built? If so, what's causing them being different in the end and what
> does "universal" exactly mean (to me it looks like a more generic and
> incluse term than any distro label, so I'm confused...)?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Maciej Borzecki
RnDity

