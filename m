Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3252DE003DB; Fri, 20 Jan 2017 10:21:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13485E0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 10:21:43 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id i68so8219305uad.1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 10:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hV3WaYoNcD2uUAKdLhP0V1O95IBlerQxvLkEmZs4qtc=;
	b=eLhg8pWM3D10dvz9ZYFLz99vxhmpqAL7I8GnJL79sWlaWaaQdQa4ZPPaRjkFyvrshJ
	x+DsKsnd+pwAr1qoLTka653msH+g4/gL4qX0/EBxp9RMIScaGpXnr4o5cUYuQF5NUAmf
	zsyMHCY8/ASmlNq8VVdmMcV4wQVD6NgjA6fomo+CZy+3FKUjCxs0IM8mtcgMOOP7+vCP
	ccNfPIht2lLJTfhYyfX8i7h6W4aT5D/5aUG11fm67Y8gmxdb4KKdK8226lHAK60Pwtcu
	5Xpbqs+FYasB4Jz8LMksLXMtwyAw69SHQVL1AXyVtJcD1kU2QTrZtkQ6BMvyIaNSM7wT
	DqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hV3WaYoNcD2uUAKdLhP0V1O95IBlerQxvLkEmZs4qtc=;
	b=iBNERz3o7bq7NPirSngd+OkgYAZgCxebV27FGSFkoMeyyBmIirorrmBO8h42MVNazJ
	9vyposc0BFXFloVWC4Ep3FtGT1gH3tqIV9DUx4Wdx97c5dIcN3znySTHlNVB8SO5zG9B
	wgBM/6duoPhIhHw4xVdOXz8XZNbCzAG32RgT6/Z0TdjKwnrMHnoZdjRcxQCVzSX9wda9
	N86pCeB7zvRiDSGf00Uwa9FjfUy8h6W1otjikMk6rrevfnSF3eSK304KvPflF8+fMaN0
	T7AAYgoJD2LnI9BoxTz83HGvTsgKMz3I6JwkDZD70Q+uRVjLWscjgjXq886piNuFzjQA
	EMFw==
X-Gm-Message-State: AIkVDXIhTCVkHBCK6hdhLSkVJsNyt1Ll5dgFT4EkIJq75nohMnglxKMiiW3Ehco8suHGqv8KV9b5LpC7F2+76Q==
X-Received: by 10.176.90.144 with SMTP id w16mr8579643uae.101.1484936502859;
	Fri, 20 Jan 2017 10:21:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Fri, 20 Jan 2017 10:21:12 -0800 (PST)
In-Reply-To: <CAK18fxGB=3S4Pu0WPRWkKOg1bD1VYG0uG0vWVMTf_AW-8pkTEQ@mail.gmail.com>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
	<12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
	<CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
	<CAMKF1sr3FmoMT5hzWjqn0dXpBF4cMBbjj9SY016TVikPYAZTfQ@mail.gmail.com>
	<CAK18fxGB=3S4Pu0WPRWkKOg1bD1VYG0uG0vWVMTf_AW-8pkTEQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Jan 2017 10:21:12 -0800
Message-ID: <CAMKF1spczvaF1RBAADQ542qi7Yv532r0su=eyCpVcaBSze9EqQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][morty][PATCH 4/6] linux-raspberrypi: Drop v4.8
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
X-List-Received-Date: Fri, 20 Jan 2017 18:21:52 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 20, 2017 at 8:25 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, Jan 20, 2017 at 6:49 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> 4.8 will build until rpi kernel folks rebase the branch :( moving
>> forward, we should only keep stable branches which they dont rebase
>> hopefully and 1 more recipe called linux-raspberrypi_dev.bb to track
>> the latest upstream release, so it will be clear that this is a dev
>> kernel.
>
> I like this idea. So you mean having two kernel recipes from now on:
> 1. one current default of ilnux-raspberrypi
> 2. and the latest one as linux-raspberrypi-dev
> ?

yes. We can have multiple stable kernel recipes if needed but I would
like to avoid that too if possible.

