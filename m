Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C067E00C91; Sun, 13 Aug 2017 09:29:29 -0700 (PDT)
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
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE32E00A9C
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 09:29:27 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id u5so32753513pgn.0
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 09:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RDUt5+CFBEoGb4htdNGTKAxJD8Mi+XwiEFlNYzg8WE8=;
	b=bwMseSQ6PzWhhyFueMKraxvC2YzUbLM4+VGiNVlB7e/vBsbEwkrzseKSP5fEyK/iGO
	0owhXHGnSIZvbSkpVBt86K96qQW7hfV0U73O3jbOi5fzrW8Se7jPZkYQb5IBc0OuTNR7
	ONx/TQ/QoUPLMExuDIisxC5iY06rrr4wHqb3shwzY924OIB0iHBld5//E52Hi+w2fclV
	ymnbko741U23O+TQPE4FCUKyQYF2uibH4jlEsGG2U7orfK9ZNv1r34Nuxfy7orkssZMo
	EraSqmBpIbMfPXQTNXyC8w8QblOUa5rURRir9VrpHcoOJpZzgG6CJICBvOdGiw/K494Y
	6LeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RDUt5+CFBEoGb4htdNGTKAxJD8Mi+XwiEFlNYzg8WE8=;
	b=F8ny58kPmifUj93n1SH3Nho9Nztsr2hQoDHqXJaun0trvy9OIbHQGVWHC3LdhqCs95
	sldE4GQkEvTA+dLjzmmowQUgzd0JeeYZBD6I5GFYMfXQyfHpVLbL0fOws0S81E2PW2SP
	WP0qILTvXlCg+yoecKevlBof+l8094lg7yhM2xDo6CtpF0EAk9x2Sa4YOxK4JNdIASRe
	4i5AAqdl3+jMV5bclIkEzZtjOVtJ8dUTkoU8Aq8qwyAKTaM3ByMmcqsSl9EWVDWYZAdG
	NEHqCvybx1i2asjZWIhQ+GbS7Si9vWg5VKDavESJ8YL48bZjMnabMK1wlylT8O9JMRcG
	1KeQ==
X-Gm-Message-State: AHYfb5g2F6ADJKKWH41rFypLtyE2sE+3ZAc9nFBhLxDtT47ugIQbT257
	JhCHCCUkrRKLuqpRyRv043HVnLgi2x4J
X-Received: by 10.84.216.24 with SMTP id m24mr24602597pli.444.1502641767471;
	Sun, 13 Aug 2017 09:29:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Sun, 13 Aug 2017 09:28:56 -0700 (PDT)
In-Reply-To: <1502606525.7630.13.camel@technux.se>
References: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
	<CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
	<CAGsrAHd6UirSR5A0pzG+wpYWvHSmzPbi13LwzFHRwz-Tkism1w@mail.gmail.com>
	<CAHiDW_E0POkBdC2Ss9jeUNFrN=LFP0ygcqCkf0vvkaL7muDHgg@mail.gmail.com>
	<1502606525.7630.13.camel@technux.se>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 13 Aug 2017 09:28:56 -0700
Message-ID: <CAMKF1spVyE42CTQvbk0gzHoyUtqAYRyGdcAO3GcwLjts2T=0-Q@mail.gmail.com>
To: Petter Mabacker <petter@technux.se>
Cc: yocto <yocto@yoctoproject.org>, mohammed aqdam <mohammedaqdam@gmail.com>
Subject: Re: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Sun, 13 Aug 2017 16:29:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Aug 12, 2017 at 11:42 PM, Petter Mabacker <petter@technux.se> wrote:
> On Sat, 2017-08-12 at 15:10 +0300, Jussi Kukkonen wrote:
>
>> ERROR: Nothing PROVIDES 'libav' (but
>>
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
>> restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
>
> Searching the Yocto reference manual for this term will lead to
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#enabling-commercially-licensed-recipes
> which should have the details you need to resolve the issue.
>
> Jussi
>
>
> Hi,
>
> This info is actually also present in the meta-raspberrypi documentation, in
> 'docs/extra-apps.md':
>
> $ cat docs/extra-apps.md
> # Extra apps
>
> ## omxplayer
>
> omxplayer depends on libav which has a commercial license. So in order to be
> able to compile omxplayer you will need to whiteflag the commercial
> license in your local.conf:
>
>     LICENSE_FLAGS_WHITELIST = "commercial"
>

it is better to be cautious about it and enable what you want and
ensure you can do so from licesning perspective.

LICENSE_FLAGS_WHITELIST_append = " commercial_libomxil "

e.g. will enable only for libomxil and keep adding to this list the
licenses you want to white list.

>
>
> To make full use of the documentation I recommend that you are generating
> the documentation within docs/ in for example html format and make use of
> the searching functionality in there.
>
>
> BR Petter
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

