Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CABCE00D07; Thu, 28 Feb 2019 06:27:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D809E007B3
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 06:27:40 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id o10so6741240wmc.1
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 06:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=2qs3cyfyNsaAtrE/SGfUPI/Y7RGc7yFVsyZOGT/wb64=;
	b=cu2ha3j+JBeaHp2yxYprjxr/KAV8Nr055I3isvm4rvXcsuYj516IaBr4dE5LMTdq4C
	oiWZSddNlgOzwNmFX/7YZj/gOuhdCU6r9hwhE6pX3QkBkdcQKV9jooIttiX4jDjfdsin
	Wa73SjKdq16wbECZb3sZXaBAz1lhYIVutqkYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=2qs3cyfyNsaAtrE/SGfUPI/Y7RGc7yFVsyZOGT/wb64=;
	b=NpGXeIfEE2RvsWM6xer4OrWcr9GCQQKqiQuaRbFNmkJmoyBO5t9w9VJV7S1Di9MxiP
	+Om8lfMefaiaxdMzM3Rlhi1aPpNYYhWhlot1UptJoanElCqHpuA5hq5LJx4+WKEWrgEB
	TJYxXCFhk2wZgeuv/1UZAwzUcLIaJzvTrT5w5zH5jt6tbdKmuvbR2OPeSDF7uBYR5rc+
	Jn4H07TblS5CQTSlgLCgw6Q2yDfta8LSbqXm2Sxo3RMlfBprwMxRLESBAcDwfpGibexB
	gOTBGOCjM3Re9xOakhpZ+t3kjehf4rLs4yurpSW2NI8nEwa1epgmLZGmpcMBdgXyaG9j
	pQWg==
X-Gm-Message-State: AHQUAubNdeYQmkxzFPvzC54N4hMq7E6ow8QWjEnmfag0c0zXv673GPcy
	wbCJR0spBNms2A2wZS4Z684wSQ==
X-Google-Smtp-Source: AHgI3IYIsv0PasQC4WZXUaePwJKEGx0H4cxNYDtMOSxWuTCj2vloMnLh4FgZWkggWT1ezCu7u7jdUg==
X-Received: by 2002:a05:600c:2115:: with SMTP id u21mr887wml.70.1551364060046; 
	Thu, 28 Feb 2019 06:27:40 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j15sm15573022wrt.1.2019.02.28.06.27.38
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 28 Feb 2019 06:27:39 -0800 (PST)
Message-ID: <29f822dba34962a0220b01ab098281a14fdda2ec.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Burton, Ross" <ross.burton@intel.com>, Adrian Bunk <bunk@stusta.de>
Date: Thu, 28 Feb 2019 14:27:37 +0000
In-Reply-To: <CAJTo0LY8H_FGXQ9sqHco4jmuiDxpY0bGE3rLZcc8=16UqRgTeQ@mail.gmail.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
	<20190228051945.GB11051@localhost>
	<CAJTo0LY8H_FGXQ9sqHco4jmuiDxpY0bGE3rLZcc8=16UqRgTeQ@mail.gmail.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Thu, 28 Feb 2019 14:27:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-02-28 at 12:05 +0000, Burton, Ross wrote:
> On Thu, 28 Feb 2019 at 05:20, Adrian Bunk <bunk@stusta.de> wrote:
> > > That's a good start.  For a oe-core packagegroup
> > 
> > I do not think a core-only packagegroup makes sense when the goal
> > is to
> > completely replace busybox (and not just most apps while keeping a
> > few
> > busybox apps installed).
> 
> But a "close enough" packagegroup in core would be a good starting
> point.
> 
> > > I'd suggest dropping
> > > dnsmasq bridgeutils bindutils to keep it lean.
> > 
> > The stated usecases are not "lean" but "replace all busybox
> > commands
> > with the full versions".
> > 
> > For that you need bind-utils (in oe-core) for DNS lookup.
> 
> Good point well made.
> > > Also swap vim for something in core obviously.
> > 
> > It is not obvious how to do that.
> > 
> > What other vi implementation is in core?
> > Is there even any good non-busybox non-GUI editor in core?
> > Replacing busybox vi with ed would be a bad fit for the
> > stated usecases.
> > 
> > There has to be some vi implementation installed,
> > and the "desktop command" implementation is vim.
> 
> I thought we had some other editor in core, but can't see one.  Worse
> case we still use busybox for its vi... :)

This could be an argument for pulling a small number of things into OE-
Core too...

Cheers,

Richard


