Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66FA8E003DB; Fri, 20 Jan 2017 08:26:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B699E0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 08:26:17 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id m98so8487768iod.2
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 08:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3jBKvr6xvmw4u6deKX9hvW7mtJf+1QR+b+cr9UTE8v8=;
	b=F+yeOGHKnqboagL/v5nntIo3rq05GaxuzBlKzbYUcNNMleorknAdhfMdb7LYilWxQW
	CEJk6pdJNxMMQ50RlUFtKla/L2xg07YLp3MpxJXp/dGfJUto/X0UpIJNNvN+WDQB7TYI
	e2kZivdQrVjXDK6H6wrttUuGyPQE88g9ozemhXZvi3597teMbrwLerSq3NvIRYq6YbMG
	+yzIC2MGKeGTgpoGZivr4K5sAkj3f7BauoQtVz+4jFu1hraCU4r8Dgvdpkl45+1ZfapF
	e7lxMaJICb5timIB7jjpgGwYNLPHC88Y8OZzUYv5EWIjVrMVpTNmFxCNP87+DiCGi+s2
	Ut7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3jBKvr6xvmw4u6deKX9hvW7mtJf+1QR+b+cr9UTE8v8=;
	b=Wmfr0MfqJeVvrOZtzbWQdBWV2CtPGk7mtkrt6nRErW+sK77kIYk100nQE1AkgkzKIK
	vnSxUI7MwchaopG5MweQF1gg6ypGwauNtXoT6shABBFshTSiLt259f/UZQTZLZ4U9sVv
	iIApUvlJ2qm1mK6TrJp2g/VUpmtxO3ZjW/G41POXjMKa/KDtgqujbyUtrel+GIFr+f2X
	nCsMcqHJjPu03albp7zGXkkUZz8XSJL82820UOsMReq3oXEK0GWGCemh0NtpV0mxc+1r
	mzdTz7/G5OTmPB0BPJTlqDcmigGJYkZ2HOAQ1EdpwaILaqZVAHvTCZcvB2stykRhhwX2
	24Nw==
X-Gm-Message-State: AIkVDXJN80B/BHcfMrMr1ctcQTRf0BjDIRaGrE9ev3mutKss0SONSH9PFcvPzKyJIdK523UMZb7ZQuIFnP2hjg==
X-Received: by 10.107.44.74 with SMTP id s71mr15345065ios.111.1484929576891;
	Fri, 20 Jan 2017 08:26:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.195.69 with HTTP; Fri, 20 Jan 2017 08:25:36 -0800 (PST)
X-Originating-IP: [82.22.166.118]
In-Reply-To: <CAMKF1sr3FmoMT5hzWjqn0dXpBF4cMBbjj9SY016TVikPYAZTfQ@mail.gmail.com>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
	<12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
	<CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
	<CAMKF1sr3FmoMT5hzWjqn0dXpBF4cMBbjj9SY016TVikPYAZTfQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 20 Jan 2017 16:25:36 +0000
Message-ID: <CAK18fxGB=3S4Pu0WPRWkKOg1bD1VYG0uG0vWVMTf_AW-8pkTEQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 20 Jan 2017 16:26:21 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 20, 2017 at 6:49 AM, Khem Raj <raj.khem@gmail.com> wrote:
> 4.8 will build until rpi kernel folks rebase the branch :( moving
> forward, we should only keep stable branches which they dont rebase
> hopefully and 1 more recipe called linux-raspberrypi_dev.bb to track
> the latest upstream release, so it will be clear that this is a dev
> kernel.

I like this idea. So you mean having two kernel recipes from now on:
1. one current default of ilnux-raspberrypi
2. and the latest one as linux-raspberrypi-dev
?

