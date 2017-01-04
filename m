Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B850CE0091A; Wed,  4 Jan 2017 04:29:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85EADE007BA
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 04:29:57 -0800 (PST)
Received: by mail-ua0-f172.google.com with SMTP id y9so17899356uae.2
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2017 04:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZO2oS2kWmQxPTtgKzgRo/80n5oMcxeSNw/VIDGT4uzE=;
	b=E0Rk0cy9i9j8uBGgohM9gDvVWDmP4xt69BrXtVflmylinP7GFWCcpjtdTs5Oxnxuy0
	xWkLlBuo5zy7aDDxEMUUnFfUuySAfiC+wY/9tO2zvoMAXpmqNbNu3twISsj+IRyK+7Ud
	uc6y9ZXnH6Eag0/GjNJhhJ2xwEJLwqkYjlCrkc14eajziv6cufA8Ay14f1n5Gai87uqG
	O6OxpAsH/1kl0E/a6qG1TYJYOvdLWnU8D7AttaxF909+1TLbv+/dA+TZfduztQAaCOMG
	nK1psfrwTNhS7SWP/vn/KqsnMlq5jb94xMoJzBuFCFRnOWf76LPaNC3+Z4yoCywqrkk0
	6Pxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZO2oS2kWmQxPTtgKzgRo/80n5oMcxeSNw/VIDGT4uzE=;
	b=YhwvoAsmxWa+Qi3SAQARKLi9mMldDDGVNNiL0IiHMyVDhvdjW8GRkXPwHhv/ZLLDKb
	IfefW5RFKBqL66y5+Z1E+zX+h2mWf3sObTYMcntjMVBud5HpzQTGHGweIHkjsxqO2P1O
	Gxg1nj+sDthaoAiQ+cR+g3SrroJlOxOGarjALLaK2jUm02wpxkDLK/OQbKCYAhhoXM9l
	RHO2/NAMJ9Ye8XLQgSD80e2tf3fvF+PJDrqHVf9wueFWmavLd/v9TuH0YMRQ2YINlE/g
	FO+v4UG5normVsacYbdIqwqgotAizMpd9MGuf8bsu6LsmiRcp/h4I0OcSOqP41S0k0ag
	zI2Q==
X-Gm-Message-State: AIkVDXIYPpDymNr/pbx45h3ETFq4hPQMV2E7nRhfBsr0BzJ1nSwCuYIrKF9cD91f74A49kJYxXV/bwO0WjydYw==
X-Received: by 10.176.84.156 with SMTP id p28mr40033538uaa.76.1483532996402;
	Wed, 04 Jan 2017 04:29:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Wed, 4 Jan 2017 04:29:56 -0800 (PST)
In-Reply-To: <CAMKF1srLVA7oy=8J+T1MrsoVV=sLQApvD4+h+bVnWusy5aWZ6w@mail.gmail.com>
References: <20170103193831.16829-1-twoerner@gmail.com>
	<20170103193831.16829-2-twoerner@gmail.com>
	<CAMKF1srLVA7oy=8J+T1MrsoVV=sLQApvD4+h+bVnWusy5aWZ6w@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 4 Jan 2017 13:29:56 +0100
Message-ID: <CALbNGRQ5xHtZ8vwxqvyET5pCOWGDVUioW6K0B13bx9EUicJiMQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-rt: add
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
X-List-Received-Date: Wed, 04 Jan 2017 12:29:59 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 4, 2017 at 7:43 AM, Khem Raj <raj.khem@gmail.com> wrote:
> perhaps the defconfig can be made smaller. If you regenerate it using
> make savedefconfig in a prepared tree and using the resulting config
> file which will be smaller in size
> when compared to fully expanded .config.
>
Just a suggestion:

In meta-raspi-light I made rt-kernel an option set in local.conf [1]
so I have to maintain sources and kernel-configs for one kernel only
(ok - offtopic: I support 4.4.x only for same reasons).

Do you think it could be a solution for meta-raspberrypi too?

[1] https://github.com/schnitzeltony/meta-raspi-light/tree/master/recipes-kernel/linux

Andreas

