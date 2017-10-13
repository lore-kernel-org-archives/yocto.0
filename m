Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76534E00CEF; Thu, 12 Oct 2017 20:50:51 -0700 (PDT)
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
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0EA4E00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:50:50 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id z11so8027206pfk.4
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=BI2OhgZssvP5jO0JOA34hn4gLKQ1NM9DVYSbq70ivq8=;
	b=qOgqelL0RNzJFxc+QdbLRIg6af6JiFROOJ85bizrwjwIjH3SvUs0bJXuul9smkQsGF
	H6WZyxKA0qsmxejxdtMUmDydLHriE5ZKdgPTdknOnt0mdrGXpMT7cNYW2DhgylRXoDhv
	OfttPkkBk9pu0J+2ZEVlrfpu9cvvsTq+VIfvwAfeDt48kd9lZSSP6+V0GJf0MLwrd8Df
	3cXjXsVBqV1/MnH1nZUine3kaSM84Vvoa/Ss3lcsaYfOsJOQi8FIP87pzdP56hmNSqAV
	Te7vJXqlWoN7KgrES32hzVvA1jsWEdjJ+4KaBpxNQisFJ1CXb2yl2z0Whu7XcEUZR2EM
	6WAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=BI2OhgZssvP5jO0JOA34hn4gLKQ1NM9DVYSbq70ivq8=;
	b=ZuqId/qdUN+2PhPPTIpreNixbSADVfR6GI3kSzhYF2n3eI32TjYvI1lxcYlNIq/X2X
	XsNPjz8Ynq2W5MZVkc1FI/cTfK+/YzIiWDk9qe9oBBDKCCkILTIfTuDVbBgk1RTA6SXM
	F8Qhur7iPC9BR6LxmBjeChV9heC+ZdMt3sFqvnHtOflrpQWynYh9VqJTA8YAdajw7VI6
	39jDsK9Tjy/rRT0V+spyzyc82dRN7J+t8UsaFiEW4/wY+P7gWlWq8bHZSzJM8chs6vtq
	cw3VS6PW9NZLBJarrWtOhv2v6y/zOGl7fY5+sSD0Xt4bMo3sI3RTY3p8SLK/vSOWXCyI
	6jmg==
X-Gm-Message-State: AMCzsaUJ8c/aE1QbK4gxxXcUzVcsThBWe/UXLkfpmSjn6sflptXVXxuS
	ZvE/5OUaIg3PmOmYfC65xGg=
X-Google-Smtp-Source: AOwi7QA7Xfpb5X7jNKOtRCe8Y/TmbVAY4dKK46wIGA8jnSYvBBBsmoDHvbLxnPIS1QtWYt5iDw/36Q==
X-Received: by 10.159.207.131 with SMTP id z3mr85882plo.191.1507866650129;
	Thu, 12 Oct 2017 20:50:50 -0700 (PDT)
Received: from apollo ([2601:646:8882:b8c::74e7])
	by smtp.gmail.com with ESMTPSA id h10sm49828pgn.73.2017.10.12.20.50.49
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 12 Oct 2017 20:50:49 -0700 (PDT)
Date: Thu, 12 Oct 2017 20:50:48 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
Message-ID: <20171013035048.xa25jylyhigzf4ih@apollo>
References: <TU4PR8401MB104097E5404DDCE3959D9401994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
	<CAMKF1sox3ztaxD5NRMHKemO0WMWgiZ7C+EEECXhdpa9N_tSSgA@mail.gmail.com>
	<TU4PR8401MB1040E74F1B4A2945C4F846A9994B0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <TU4PR8401MB1040E74F1B4A2945C4F846A9994B0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
User-Agent: NeoMutt/20170912 (1.9.0)
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
X-List-Received-Date: Fri, 13 Oct 2017 03:50:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 12, 2017 at 03:33:53AM +0000, Gutierrez, Hernan Ildefonso (Boise R&D, FW) wrote:
> Raj,
> 
> Thanks for the response.
> 
> Is there an example of what you mentioned below which is open source?
> 
> So far my two references have been Freescale and Mali. I found mali much simpler than Freescale, however Mali GPU doesn't really have a refactor of mesa, they only do a simple bbappend to mesa with 
> the PROVIDES_remove statement I stated in my original note.

you can also look at meta-raspberrypi


> 
> For reference here:  https://github.com/ARM-software/meta-mali
> 
> --Hernan
> 
> 
> 
> > -----Original Message-----
> > From: Khem Raj [mailto:raj.khem@gmail.com]
> > Sent: Wednesday, October 11, 2017 7:01 PM
> > To: Gutierrez, Hernan Ildefonso (Boise R&D, FW)
> > <hernan_gutierrez@hp.com>
> > Cc: yocto <yocto@yoctoproject.org>
> > Subject: Re: [yocto] How to use two recipes to satisfy different PROVIDES --
> > gpu support
> > 
> > On Wed, Oct 11, 2017 at 3:15 PM, Gutierrez, Hernan Ildefonso (Boise R&D,
> > FW) <hernan_gutierrez@hp.com> wrote:
> > > Hi,
> > >
> > > We have a GPU in our system. We created a recipe to satisfy all the
> > dependencies for core-image-weston (virtual/egl, virtual/libgl, etc.), except
> > virtual/mesa, which is not provided by our GPU recipe.
> > >
> > > When one builds core-image-weston, the image requires mesa to build as
> > well.
> > >
> > > Our approach to satisfy dependencies is very similar to what Freescale and
> > other vendors with Mali GPU support use, which is through the following
> > statements:
> > >
> > > PREFERRED_PROVIDER_virtual/egl = "my-gpu-recipe"
> > > PREFERRED_PROVIDER_virtual/libgles1 = " my-gpu-recipe "
> > > PREFERRED_PROVIDER_virtual/libgles2 = " my-gpu-recipe "
> > > PREFERRED_PROVIDER_virtual/libgl = "my-gpu-recipe"
> > > PREFERRED_PROVIDER_virtual/mesa = "mesa"
> > >
> > > The way to remove mesa support for virtual/egl, virtual/libgles1, etc. is by
> > adding a mesa_%.bbappend where it states explicitly to remove those
> > provides from mesa recipe.
> > >
> > > e.g.
> > > PROVIDES_remove = "virtual/libgles1 virtual/libgles2 virtual/libopenvg
> > virtual/egl"
> > >
> > >
> > > The problem I am running into is that bitbake complains stating that
> > > virtual/mesa is not satisfied (Nothing PROVIDES 'virtual/mesa')
> > >
> > > When I do bitbake-layers show-recipes, I see that mesa recipe is skipped
> > because it gave priority to my-gpu-recipe.
> > >
> > > How can two recipes be used and let bitbake satisfy parts of each recipe?
> > >
> > > Any hints will be appreciated.
> > 
> > there is no easy way to control providers once a recipe is pulled in.
> > you can refactor mesa recipe like we have done for mesa and mesa-gl which
> > will mean adding a another recipe which just builds the needed portions of
> > mesa in each recipe, if your GPU driver provides everything you need to run
> > weston, then you can let it provide everything that mesa provides and
> > bitbake wont pick up mesa at all.
> > 
> > >
> > > Thanks,
> > >
> > > --Hernan
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

