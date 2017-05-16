Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D110E00B51; Tue, 16 May 2017 03:32:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FE94E00B05
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 03:32:40 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id f102so90302739ioi.2
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 03:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zLWOqZmFI2BYDM8zrksOdOGCRPgnEzzkEZ/OgC9DB9Y=;
	b=Dz+6Lfylk+9SXV7KYbeWzVQ2v8l0M293zqcROII5C+YTG6Nh6ExDLA4s+pf5xYoNFT
	Jm7hCscD9KchRQo0ouwlgWwEW76RB4r7DoXJx8EoBusUG59KU8isvSpvS0lhjFannLub
	4Y+GuHvy6hG5K7aa35SYlyUvje8E0pyPwqVv3SDoDu2EahrPruLJfw48f0kTjFlW3rV2
	juOqZldxMM33n7EvuBGmbtoPJm6A20nwlT0fWiq0LAF4MbhqLvxAOz/5NXC/3Hkj6Zep
	QZbinES5irifB62HD/ZAfzcl4L/+AIBLkZm7A89cwYnKWxvgdZkqe8PrgRctO0SiqMSx
	E49A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zLWOqZmFI2BYDM8zrksOdOGCRPgnEzzkEZ/OgC9DB9Y=;
	b=NBrhDrI/xFuCHZUnS5i0ut6+6WwUPhONkCKV6sIeh2zTXGIteThOpsz5NjApt+B4Ur
	8EPyVgos0mTU2Hmu5gUdhA8dTGTpYNzJXr4ca5rFnVIxMXa0h5lUidv4QqckZsxbac7A
	Zu7TgAxc3oWdbX+KEKD4fuTczZyzwETxDUWTDWo6ZlmZBUkZq6Wt+7M+Q/fT4WLfhsbj
	nFkCk9KlLMldGASbi+3zBZ+NsjSdm5f2UZl21zkoVB1k+ZmtVsb9YiAbYWenHftI3XxZ
	xWzAahB7xqs3PtCWvQYBK5C7Pm5xP9niHavPdRY4AV20N4gYGn/iXuAER0CVPUkbknOy
	zo7w==
X-Gm-Message-State: AODbwcCArLACaiH6jHMkHfeTRRZ3DPVfIhlYFjNmnJN2+2hJsL9ZNhRS
	5uWnQcPtfYTxwOoaW5TT9TobTTdUgs9tlWA=
X-Received: by 10.107.180.130 with SMTP id d124mr9642425iof.47.1494930759486; 
	Tue, 16 May 2017 03:32:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Tue, 16 May 2017 03:31:59 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAPyrkgxZjwcX0h9KgWDi-uxRbp2k-bGpox00YP66soQz4mSiAg@mail.gmail.com>
References: <CAPyrkgxZjwcX0h9KgWDi-uxRbp2k-bGpox00YP66soQz4mSiAg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 16 May 2017 11:31:59 +0100
Message-ID: <CAK18fxEQEd6KzNR+W+Afp2y4nMim50psaDosDZ+-6XcavC-KOw@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Pyro branch
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
X-List-Received-Date: Tue, 16 May 2017 10:32:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, May 15, 2017 at 10:14 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> Hi all,
>
> Yocto Project 2.3 has now been released so I think it's time to create
> a pyro branch for meta-raspberrypi.
>

I'm setting up today mirroring jobs in jenkins so we can only work in
github and all the other repos will get updated automatically. As well
I'll merge whatever is left in github and start a branch as soon as I
finish with this.

> I've briefly discussed stable branch maintainership with Andrei and
> I'd like to volunteer as maintainer of the pyro branch. That should
> spread the workload out a little bit. Does anyone have any thoughts or
> objections to that?

--
Andrei Gherzan

