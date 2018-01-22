Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEB02E00EB8; Mon, 22 Jan 2018 05:59:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0FA8E00B1A
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 05:59:05 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id z6so9468130iob.11
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 05:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=VBb43wb2KbP89xcYu956cgbJCOoHGKWA6x5q5gu8RIg=;
	b=oRrSymGu68pFnrZ0c6LVBAo3o9jYaVYED2guN06K+gHw7KryVPnAudemD3RoFAUD4J
	znov9TPDitYkwm56R6IuWtVOkFSyJHBdGp4gMH4SY20NdiHGU/rBIViP+h2a+NL1elJN
	Q0bFaI2REf+NPWp4pMxHcvoLCdPCviFUsZie8DpKHjNgMJ/rMk/Z2ZQ6V/HtCt5HwWG8
	OaBLrntJ/65lHzurYYelBmvygD5/oqiEu+JB/PvBK/8DlI7G5fhCP2IU3R9pRA+2iaH2
	vtdE0/QAy5JdVjo0rganA351Zk7Z29pGcH2AYw+l1r222lxXvuq6WCLk92R5cUzfuQz2
	O0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=VBb43wb2KbP89xcYu956cgbJCOoHGKWA6x5q5gu8RIg=;
	b=eGLqT1YXXAepjDnXkdsIxjJWZpaBvvRga816fcMi2ARKo5OGvlMFtDz1WuzICoVsK4
	d9MeRRqQ1zWWvemECUq78qMfYvREDW5HIKCq5K1uiL+oa5pCVRhPkn1XPoYW1vLf0ltO
	o1/eBrGxLsHZ2DPilF1rEWNpMiravz/suUvjka2osBU10NZVPpDZs6kXlgtceEZUGx0t
	OlOOsuluCVC75e5Ym6EK+oQNE0pt3rcxa3vutkD8AFkC1ssCdU1kPcZGti2dpWuS6gPd
	BY+pCHaQnHZBDC9RxiZAhEga4T2vMSL/2c9FRQGlFB2D3Z32N2qSV4kT3coG0YPAuMB0
	EFtA==
X-Gm-Message-State: AKwxytdVi0GqWsokZC5Xs5ntjdHa+H81AtrPHUDoO0pbnuqsbYx0uUdY
	kMo5uaT+RnuqE58KxAT44QM=
X-Google-Smtp-Source: AH8x227MpxJCrg2YYGftwCBOvvEfIukiedwe95SsGu/WkglZTl0Xt1II7CxQTc2FEyGMRsz+rR474A==
X-Received: by 10.107.139.19 with SMTP id n19mr8485376iod.147.1516629545094;
	Mon, 22 Jan 2018 05:59:05 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id 34sm3839034iom.88.2018.01.22.05.59.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Jan 2018 05:59:03 -0800 (PST)
Date: Mon, 22 Jan 2018 08:59:01 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20180122135901.GA2588@linux-uys3>
References: <CAC+thW0g-Sc+K7yNp6BU6ia31RX1Gy4N0v6LQ1qFcTjiXniDTQ@mail.gmail.com>
	<24fffbce-1f44-dba6-aed2-913af75ba525@linux.intel.com>
	<CAJ86T=U4m-J8WLdRP6UFP7T=FxyRRMsc7uXzpOyU9uCoimA1_g@mail.gmail.com>
	<28c69ac5-219a-8718-83f6-5f7f2b51bf10@linux.intel.com>
	<CAC+thW07t_5w-g9aWDTSWeqN_V0zH=mEZBDLrUO_5LD97JG5-A@mail.gmail.com>
	<cf336aca-3cb1-4e1f-e7fc-601311a7d87b@linux.intel.com>
	<21d74a6f-8833-ac0b-c2e7-72063cdf809c@intel.com>
	<CAC+thW30_2-svZ_KUVfxdAgde0rhgLkSnD4kyUVA75FCr5jiAg@mail.gmail.com>
	<584f5dbb-68f9-c856-8145-9c49d6551855@intel.com>
	<CAC+thW3CtPLOQK1W28T2vUoHzC+6Z+5HowTrW5nEQ-JPD9YQCw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAC+thW3CtPLOQK1W28T2vUoHzC+6Z+5HowTrW5nEQ-JPD9YQCw@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Mon, 22 Jan 2018 13:59:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2018-01-22 @ 10:12:27 AM, Andrea Galbusera wrote:
> I'll try to follow up with a patch to meta-raspberrypi and
> possibly upstream to userland. In the end, I don't think libepoxy is
> the right place to explicitly put the change. What's your opinion
> here?

If I write C code, and in one of my C source files I use the function
XOpenDisplay(), then I'm of the opinion that (to be correct) this source file
should also #include <X11/Xlib.h> directly, and not depend on X11/Xlib.h being
included as a by-product of some other #include somewhere randomly up the
chain.

On the other hand, if I call function xyz() (and therefore #include <xyz.h>)
and xyz() calls XOpenDisplay(), then I would expect xyz.h to #include
<X11/Xlib.h> and not expect me to track down the header file for
XOpenDisplay() myself.

In my opinion the libepoxy code would be the right place to correct the
missing header file if it is calling XOpenDisplay() directly.

> Once more, looking at Khronos registry [3], which I learned being the
> right upstream reference for such an header, expected X11 includes are
> there, while, as said, they are missing in userland eglplatform.h.
> Unfortunately userland community does not seem to be very keen to
> update their includes even though Khronos published more up to date
> versions.
> 
> [3] https://www.khronos.org/registry/EGL/api/EGL/eglplatform.h

If you follow that link, the Xlib #includes in that very file are marked
"tentative"! Therefore I think the userland people can be excused from not
jumping on a request to add them.

Besides, let's say we don't add the #include to libepoxy and get the userland
people to add it in their header, then, 6 months later, Khronos votes on this
"tentative" issue and decides not to include them. userland would then remove
them from its headers, and we'd be right back where we are now: with C code
that uses a function but doesn't also include its relevant header directly.

