Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50EB1E00DDE; Wed, 18 May 2016 23:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0923FE00D3D
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 23:28:01 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id e126so10453407vkb.2
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 23:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=iz/0+7qS3UwoaO9qFJvVV9XAxDPMr4JifVyFBrnpFEA=;
	b=D/sJTNLubelvqBBXiM7CJD/Ce6zwEQi1yTzpdtb4lb5fZ9MFtOtlsB4q0d35pGO2lg
	E6LigqC3GKO9CTbXEJP7ChtcUsxwW++kaSwfDGRPRCGDjFaGtx7sRQCZoWlGYK1eGhGT
	/mpWTx2R6dAkvow26L+aBZmZ2JF575jFyvgzuNCAXd6sqfBKzGQ9nu1QBAEBEKxqA305
	5z7sjRngiuUloLgK4/uwL/XFHvGDegUiBV5uV7O1Ad+73vkO8ECCLoOcvT0hWb3vmJgk
	3Ik8Mr4zL9BfBHPMQQgL0/VTDCcT8k6cUSo8TaaiKrihBEw4XcRoJyD0oI8Tgd/7UBwU
	iKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=iz/0+7qS3UwoaO9qFJvVV9XAxDPMr4JifVyFBrnpFEA=;
	b=I7fuguCj6SCMDZ6Ym4DYbePhVn3Kg2cJ0TP1tQJqNH0OvAOO4Jg5HmOAU0XmCM6lOU
	Hhqv0zDQgpsLXmNTdJnM3biA5kKvvOFZGBFx97Fp8pKswAJT0UL9xS57XvRnKy5iXcCk
	71A1Sxf1SvLjw5Ul6J8VBZSdMAMmR+ijEQwwY/WH3/0RMRAJ+/kp90WLF/86bfDLtbPJ
	5ZzB1++lYxU+4+D8CLmwyt38J5aiLOhUt2i5NkZ3gJtvPl9sve8yaY9Oxog9/0MZy7aI
	Vy/ZUux+9Y7vy512nkM6TZSVJByRJ8Bv20XhLwCTrH0E41WxfUuAPoi+QGPZCq3OS0UO
	3RZA==
X-Gm-Message-State: AOPr4FUSIMOxEORpcIpNrDtLfr6WlD15iPf2vOpJGW83scc2NT1ZofdBO4dZEDTp/Z69BrzqO4DFp6MnSpjD1Q==
MIME-Version: 1.0
X-Received: by 10.31.56.211 with SMTP id f202mr6307390vka.135.1463639280942;
	Wed, 18 May 2016 23:28:00 -0700 (PDT)
Received: by 10.159.39.68 with HTTP; Wed, 18 May 2016 23:28:00 -0700 (PDT)
In-Reply-To: <024301d1b18e$5e9cc5e0$1bd651a0$@neuf.fr>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<CALbNGRSPbcfuyxaRxQcux01wKJmtSrG-ViK=sP8q82KM7AwtxQ@mail.gmail.com>
	<024301d1b18e$5e9cc5e0$1bd651a0$@neuf.fr>
Date: Thu, 19 May 2016 08:28:00 +0200
Message-ID: <CALbNGRQT6mBkosf2psOY5qWv9KLdv=3DXXwJNEBHZxS64eGzeA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Thu, 19 May 2016 06:28:06 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 19, 2016 at 7:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi Andreas,
>
> I've been able to do some testing with the latest 4.1 kernel.
> So it can actually "work" in a way, but both the device tree overlay and the driver in the kernel are "old".
> This has an impact on stability: I can definitely start wayland/weston, and it's "responsive", BUT after I started playing out with the demo applications, it quickly crashed...
> So we could either try to backport the newer driver / dt overlay to the 4.1, which could be possible, or we could just support vc4graphics only for 4.4.10+...
>
> Since 4.1 is not heavily maintained anymore on github, since 4.4 is now the default revision on github, and since development branches for 4.5 and 4.6 are already there on github, I would personally be inclined to support vc4graphics only for 4.4.10+...
> And I would also be in favor of moving the default version of the kernel to the 4.4 series...
>
> What do you think is the best option there?
>
No need to backport to 4.1. 4.4 is fine. One question: are you able to
change screen resolution for HDMI monitor (elder sdl fullscreen games
need that)? This was not possible for kernel 4.1.

Just to avoid misunderstandings: I like this patch series very much
and would be happy to see it applied.

Andreas

