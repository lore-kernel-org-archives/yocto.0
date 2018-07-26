Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BD64E00CE0; Thu, 26 Jul 2018 08:50:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848B6E00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 08:50:24 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id s9-v6so2461643wmh.3
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 08:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=zWfk0GNndZSx/2rt5Jzkh5O8avDI9zqvDfNei/AY0mI=;
	b=IYDWHtq79kyn9rePd1OU3friJ40Ig7iff1LDpI16+P0i8QFLRNVmnGeh7/VFIuAJB7
	tjqHzcmMZzt/kwIDvKxA/dVzpBd84afr7IEyD+CPKmMcThCIL+wkvFHv3W4J11SVNBpv
	oh3lLJSC+kFqNOcjwF58TDEfcDQdVrKLRe93Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=zWfk0GNndZSx/2rt5Jzkh5O8avDI9zqvDfNei/AY0mI=;
	b=BlNwoB5GiBr5DP4UfcO/gTs/TAZ8bSlUyHiIVBufVsYiAALau759mSHCWYmDjQSFK4
	waGK99ovQhc9VqQf/kPgnY6HjNU2F4laJK6OjrXvf/wypN2AnCaXKNrRdmY5ZWfLfC7S
	Wz0Lw8Nq57lsOJOWYT0GcZ0AFD7S/vd7nIpz2EgXvsebuD3zmZ19amC+WW3zy0ckfjPo
	1GwujsK3H9/8WlZnMcH8MkGI97gVB3ZMSWgxZ1kK7hCpXFZATJmjREZovUHR57Nodtuc
	XCiSOxT6Muh4FwgisUAnGZPCV/MPuXZF17IZXcodvdueqgy3i7nF+298FB5BsaHlC4va
	Y4wA==
X-Gm-Message-State: AOUpUlF34smMAEQQjvqMKLUp1BBnJU2YbNIm5QcS0vF9WKq32PNLqM6G
	jWnWf/PJ6SxoXlMp0bAtwL0UZg==
X-Google-Smtp-Source: AAOMgpd6khGNcYkuVYzO+Px1A5rAoggP2cJdnu05/NLMH1TXVy0Uid0pNNShkePD1qO/A/oKEQeF7Q==
X-Received: by 2002:a1c:ad50:: with SMTP id
	w77-v6mr2024878wme.54.1532620223355; 
	Thu, 26 Jul 2018 08:50:23 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	m207-v6sm2449015wma.31.2018.07.26.08.50.21
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 26 Jul 2018 08:50:22 -0700 (PDT)
Message-ID: <78646d0251ac4e0317533ddf135084751ffb7f24.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Matt Hoosier <matt.hoosier@gmail.com>
Date: Thu, 26 Jul 2018 16:50:21 +0100
In-Reply-To: <CAJgxT3_kmGREWd_0kuULP-NMCd1U39YbT+c9YAeZ+=aikK0aWA@mail.gmail.com>
References: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
	<CAJgxT3-Jrr2baQz8Y6c_VzNf0Jn6qSEfgNbDYu7xGN4g1PRT=A@mail.gmail.com>
	<18ef0e1f0af7576bbdc5841c8eaa064bc865e0ff.camel@linuxfoundation.org>
	<CAJgxT3_kmGREWd_0kuULP-NMCd1U39YbT+c9YAeZ+=aikK0aWA@mail.gmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, bitbake-devel@lists.openembedded.org
Subject: Re: Ordering of anonymous Python functions and task signature calculations
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
X-List-Received-Date: Thu, 26 Jul 2018 15:50:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-07-26 at 09:22 -0500, Matt Hoosier wrote:
> On Wed, Jul 25, 2018 at 4:58 PM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> Your advice about BB_DONT_CACHE does cause reparsing to get
> triggered. I can see that in logs.
>  
> > and that the
> > task dependency exists. You have the dependency above and that is
> > the
> > easier piece to fix.
> 
> But this part I'm not seeing. The variable's value is always
> recalculated (sometimes more than once during a Bitbake run, but
> that's okay because it's idempotent), but the task only re-executes
> if the payload of the .bb file itself has changed. The blurb I wrote
> above:
> 
>   do_install[vardepsalwaysdirty] = " EXTERNALLY_INFLUENCED_VARIABLE "
> 
> is just some nonsense syntax I wrote there to illustrate my point. I
> don't think there's any var flag called "vardepsalwaysdirty". Did you
> have this line in mind when you were saying that I'd already gotten
> the task made dependent on the variable? Or were you just noting that
> the syntactic use of the variable inside of the task should engage
> the normal hash-based task-dependency calculation logic?
>  
> > If the recipe is reparsed, the anon python reruns and the task hash
> > recalculated.
> 
> Is there anything extra I need to do to cause the reparsed variable's
> hash to cascade to the task?

I think I understand what you're asking now. The key thing is:

conf/bitbake.conf:AUTOREV[vardepvalue] = "${SRCPV}"
conf/bitbake.conf:SRCPV[vardepvalue] = "${SRCPV}"

which makes SRCREV/AUTOREV work.

For your specific example you'd want:

EXTERNALLY_INFLUENCED_VARIABLE[vardepvalue] = "${EXTERNALLY_INFLUENCED_VARIABLE}"

which will add the value of the variable to the task hash.

Cheers,

Richard


