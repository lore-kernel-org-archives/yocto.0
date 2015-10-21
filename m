Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D4F6E009F3; Wed, 21 Oct 2015 05:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF875E009D9
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:32:21 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so88941241wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:32:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=XQZ8lJKCS8MSIvvFvo71X/KhL1ZMTqLHGZe+bwUAJpM=;
	b=OKYt51yVEumCrMWDW9Wig9Q2QV8mcQjj93RZw3zYHxlvCxe9zgGahGyPmE2JjyfVoK
	bNPm+IpX7GUWVWymGXPD/RZDZ4rMLVPdvVuXK/nzhOVO9ARSvs0mNcR2GKonOMdHoZkP
	bd0GZws65VTLV1QatUylGshTaWgCqojP69ifxSMKikvOFZkFEsjrrMjlDqmF5Ff02fB+
	2LqPhyHaz2yV1mqBbrf2CJSuky1Yd2nB+4wfb4WId/6VmZuy9fLlJmL0BR1DkyJUxEsX
	RZIk3vUq8/FsQ57nnAGUDFNnPODk19MS3c5qBzj4MgmYXgr247h/yQV5q67Q9xqMCI++
	N2kQ==
X-Gm-Message-State: ALoCoQnmnzVCUG9hsmBnjT2C84jADCQuUicM5/Kbh3RNanJtA+twwy0EMpIxMSyGET5f19JDIILQ
X-Received: by 10.180.206.230 with SMTP id lr6mr11324209wic.69.1445430740389; 
	Wed, 21 Oct 2015 05:32:20 -0700 (PDT)
Received: from resin (220.204.eduroam.dynamic.rbg.tum.de. [131.159.204.220])
	by smtp.gmail.com with ESMTPSA id
	v9sm10131032wjv.45.2015.10.21.05.32.18
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Oct 2015 05:32:19 -0700 (PDT)
Date: Wed, 21 Oct 2015 14:32:16 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20151021123216.GF5610@resin>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
	<55D1B054.2050403@osg.samsung.com>
	<55DB7DBA.7030902@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <55DB7DBA.7030902@osg.samsung.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Wed, 21 Oct 2015 12:32:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Javier,

On Mon, Aug 24, 2015 at 10:25:30PM +0200, Javier Martinez Canillas wrote:
> Hello,
>
> On 08/17/2015 11:58 AM, Javier Martinez Canillas wrote:
> > On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
> >> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
>
> [snip]
>
> >>>>
> >>>> +2.O. Graphic stacks
> >>>> +===================
> >>>> +The Raspberry Pi boards can use one of two graphics stacks: The userland
> >>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default userland
> >>>> +is used since the vc4 is still experimental. But this can be changed by
> >>>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
> >>> providers.
> >>>> +This is explained in the conf/machine/include/rpi-default-providers.inc
> >>> file.
> >>>> +
> >>>
> >>> you may want to add pointer to the commented out code that you have added
> >>> to select them
> >>> in rpi-default-providers.inc
> >>>
> >>
> >> It would be nice to have some detailed info on what and where to comment
> >> out the configuration.
> >>
> >
> > On patch 3/4 I added that documentation to rpi-default-providers but didn't
> > add it to the README and instead pointed out to rpi-default-providers to
> > have a level of indirection in case the providers change and to not have
> > duplicated information but I will add it to the README as well.
> >
> > Do you have comments on the other patches in the series so I can address
> > all of them before re-spinning?
> >
>

Really sorry on this late reply. So my only recommendation is to move things
you wrote in 3/4 in the 4/4 (README). Basically you would describe what a user
needs to overwrite as providers in order to use VC4 as graphics stack.

As well, how do you handle the devicetrees for 4.1? Aren't changed in 4+?

> Gentle ping about this. Thanks!
>
> Best regards,
> --
> Javier Martinez Canillas
> Open Source Group
> Samsung Research America

--
Andrei Gherzan

