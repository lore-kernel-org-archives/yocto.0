Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16FEFE00CEC; Mon, 25 Jul 2016 20:31:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8CDEE00CE5
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 20:31:50 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id o67so181695707qke.1
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 20:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kO0b+TVhf3EViNMoorpeYBAzfkGQBzBIOptL3v30X/Q=;
	b=SPpQ6/Q7cOmL30TFYpK9YhkmDF0YzFcg96pRFCkQ0g2Y/hvgYp1YrnhiLbFxZREuYP
	Qc+a4TyT/dX4mf7C2EjOhU3u7Ie9B1E8bnWJ5fHZvihs4SYT0DCtZLd1/h5d07/WKXIP
	AZrRM0JoCfgh5gKLC1eKx9VYIBcfgevdLexVLK89+YWUjmUayujqAU/oCDqKr2NteAQB
	PViLtx5QdFWRklmv+6PLBUY+JqX4SM5eQEhor2LfJBI8ccIVLop4iRjUbJJPYR/iXe6c
	1detfrNI5EAE83TbMDE0T7UfgrzLbAughazEwTwyCFOk5qseEKPPHaW671Xs87QYZ9EW
	olfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kO0b+TVhf3EViNMoorpeYBAzfkGQBzBIOptL3v30X/Q=;
	b=Zhao+n1CBuqhQc6dhvZS1zKwLCuA1PgEs0ouM81ircxwhvTsz9cb3qsXBrDYtUmN9t
	GWiqXMfU9evYDHR8YYAYqLx/nS5Z3vTRxR9FFuNkj/0XKf0Hdj7IgdLbafEwUunY1KIM
	BCrhDm9v4RauLy7Umffu0Xp5HJrB3YFVp783hoBO1zGAH2DDAh7EbWFRVgy7EC8yvWzw
	gP4eGaBLpiSb9T5bnn4vsJxQKppz+A4V9VBb+CRqrN7dqFabXeWRnmkM20WUQL6tGrTT
	OXmsl/dNm38fGZXa63pCYt2QAeghq3BVp59kDrsi74xxYuz4f5rDPZgYuxOoAfPt9t3w
	JeeA==
X-Gm-Message-State: AEkoouvyy7rAxbmLRpxlo1ZhCSaREtHqTQfiZSYV2iN6fyNkj4UVIvxpIsT4gN74QicnwtPnaSXSqZX9I4QBbw==
X-Received: by 10.55.7.14 with SMTP id 14mr25699674qkh.135.1469503910123; Mon,
	25 Jul 2016 20:31:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.99 with HTTP; Mon, 25 Jul 2016 20:31:49 -0700 (PDT)
In-Reply-To: <CAP71WjwJ7MZSjT70shU7Y3HiZhHQZS6_bQ=UXQH+DX7We672xQ@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
	<CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
	<CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
	<CAMKF1srfGGE29S1qNYDmg+OqGWVgUSbuz5ODu0Rw+q2uYr+34g@mail.gmail.com>
	<CAGMdoFmv_bWWtNB1QMz+G24Ezd_Y1bdx15sR_9qkHX5GK_yVCA@mail.gmail.com>
	<CAP71WjwJ7MZSjT70shU7Y3HiZhHQZS6_bQ=UXQH+DX7We672xQ@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 25 Jul 2016 20:31:49 -0700
Message-ID: <CAGMdoFmxkfLMO0nDqFQOkor2xmzhegGnYJvj4VnYXiwUy_3jbg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Tue, 26 Jul 2016 03:31:54 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 25, 2016 at 1:27 AM, Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
> hmm. you shouldn't set DISTRO in conf/layer.conf, that doesn't sound
> right. DISTRO needs to be set in local.conf (or any of the other build
> specific conf files).

I agree, I don't know why I had it in conf/layer.conf.  Just
beginner's mistake.

I moved DISTRO to local.conf (changed the existing DISTRO ?= "poky" to
DISTRO ?= "mydistro") and it still works.  But if I remove DISTRO from
conf/distro/mydistro.conf, DISTRO will revert to "poky", even though
it is set to my "mydistro" in local.conf.  So it seems I have to have
it in both places.

