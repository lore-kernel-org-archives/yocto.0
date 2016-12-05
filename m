Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71973E0097C; Mon,  5 Dec 2016 10:38:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5118E00924
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:38:25 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id 50so33031588uae.2
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 10:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y26lk5hWJGMF6p2/rY9r7mTxfTbShq12+jIYU+cuPEo=;
	b=PPDs0oMxVWMIg7Dqw80ZzzMxCRFttIz3oFPsAsQQjZ2QViRPoA0redBw7HjlHp0uNS
	C3YTTrUtt7V4ENq7xCgqBlHZ3vIwUoj4Jl9/zXOnKSh2+/XpHBbk42toYAbx82Jhxb2v
	KxEZlN8F/fu7bd675ms3q8sbf3Ruohi6CrqwaG1E6Y9vRC6IyEh7//73sgaDdJSDwc6c
	rTwiJHSpmzGk1FtJNS8c6gEdlCAxNiTHTj76p8b8aXae5o5EL/0ryRVQ9oGkmmTzhTPo
	tZPjxET3g+uHLpV8d8C5nAIhbCWj/Sd0uvs6jA6h1Ek8ArkVrAdmSJhvin8P2KV87Mag
	dq1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y26lk5hWJGMF6p2/rY9r7mTxfTbShq12+jIYU+cuPEo=;
	b=Q8DJf6HLL5ANz8Rd+QWm7GgvTA/2HVvoI2YTPiFTHXjhFQgMo8c2eM3CBCUhkWmg3B
	6RTM/pCFKnMmk+6PeHugaOvWuYKAYFFvzuAv+yYaQtNVlFZJjECcHHCvnsCYsCbirvUA
	TBtFkDCKOHP1RwYVxhCZnTeAVHFt9EMWX4Y0/Bvs8fWs3+cpehFUsXKoWR/Us6cHoiBF
	UWvDrc37EhLsDN6TbiW9q6wv72SVRzDa+DqP1GIzggUaR8p15kRL4lD44aIPt6t/Ewgs
	ItvMzBk5xAJuUb6rCa2nOYe3cyEubuOvAm+/zorfHnBIImaAgWhn+W3EEqoysm/+L42w
	jtTg==
X-Gm-Message-State: AKaTC02DeSRmef8wgwiPcB6lgq28mjx3JMuMAwxdFaAXcyg1xXkKx9FVpTGBbDmuTrx2aWT4yVSONYAT59lNsQ==
X-Received: by 10.159.48.146 with SMTP id j18mr44957950uab.6.1480963104418;
	Mon, 05 Dec 2016 10:38:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Mon, 5 Dec 2016 10:37:53 -0800 (PST)
In-Reply-To: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
References: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2016 10:37:53 -0800
Message-ID: <CAMKF1sqxyrZ2iWFRmH1pdBWnZXPDyPLpuHsv69kEtLqUsmmK2A@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] morty release ?
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
X-List-Received-Date: Mon, 05 Dec 2016 18:38:27 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 5, 2016 at 7:26 AM, Mirza Krak <mirza.krak@gmail.com> wrote:
> Hi.
>
> I have some questions and remarks and hopefully someone here can answer them.
>
> The meta-raspberrpi layer is missing a morty release? Any time frame
> of when this will be added?

We use master as long as possible, when we have a change that makes master
incompatible with prior releases we branch out for the prior releases
at that point.

>
> There is currently a issue when using U-boot due to some updates in
> RPi boot firmware. See [1] and [2]. Which should be noted/resolved
> before a morty release?
>
> To provide some more information about above mentioned problem. If you
> use the current firmware files (20161030 in meta-raspberrypi) together
> with U-boot (2016.03) you lose the console on U-boot and on Linux
> kernel. This is due to the fact that "newer" firmware sets a default
> uart clock to 48 MHz, but U-boot has a hard-coded value of 3 MHz, and
> since we yet do not support to "forward" the patched DTB provided by
> the firmware from U-boot to Linux we also break console on Linux.
>
> The "default" values has been updated in Linux, see [2]. But if you
> use that updated Linux kernel there is a mismatch between u-boot and
> Linux. Should be noted that U-boot 2016.11 does not have this problem
> since it does not try to initialize the UART port at all and only
> relies on firmware to set it up correctly (see [3]).

We should drop 2016.03 and support 2016.11 for keeping it simple.

>
> Hope I made sense here :).
>
> [1]. https://github.com/agherzan/meta-raspberrypi/issues/36
> [2]. https://github.com/raspberrypi/linux/issues/1732#issuecomment-264810083
> [3]. http://git.denx.de/?p=u-boot.git;a=commit;h=cd0fa5bff8052b19bde6967c2734f323c9848568
>
> Best Regards
> Mirza
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

