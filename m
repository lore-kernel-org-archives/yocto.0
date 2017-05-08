Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD593E00AFD; Mon,  8 May 2017 15:07:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66513E0080F
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 15:07:06 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id k91so59399347ioi.1
	for <yocto@yoctoproject.org>; Mon, 08 May 2017 15:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gRF4TE85b6xmdYyhizTQhuDtWb9LGz2gcrOfsyig1uE=;
	b=yC1L8LRYXb0lMyU03ldFhb3G2empSEpgFnR/ywuzJv0LrSXXpysyGIrMQdcDft0D8L
	X1Xucr4gjUlu3TgXACV4U01KA3j1XIx5jgePx5K8/rz/EqyhrQhn/c6i5HaTZfunHZll
	KndNvCw4hfF3JbOhPRciyAp40cx+p1hLHa4pZyYH0P+ZPBP+MiJuT1ZsGlK6MGFBUvH6
	YHGR0RnY/AKjhMRP/gKOnnla47un9AchF1hjHnQpATiC3ofUCx2mVZga/TjAM/zeFkzT
	298y8efevBU752SGFZItPc2BFxjtCbxzmzG2Zf0I/AGH0C8dCdEGEysQ6WxPLOJbrql/
	jbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gRF4TE85b6xmdYyhizTQhuDtWb9LGz2gcrOfsyig1uE=;
	b=uGZYMOIJaanpvysye9l/nO/MbLsrceK4j6y2JYpljJ0L3TdQaQCn4Umckw56h5yBqw
	AEC4Tkif2GvOa74gkqYDYhJV/lq9td4hoOrKkOeZrgwiPY0JehBmPJhd3EntrZIwF046
	WyT3FUl4ruSEncFgUdzgYvaS4MnJmQKGH8P/PnSYkJWqaPuOUGJau485U8OatDsV6oKx
	hEMC81JPXCKGTJzIykIA9FU5JdlA/AA/4fqygMOxxwdrl80P5basVVPOG8or1XOpEL/4
	j30U6jr8yTxHyL4MioDbmPlZpf1cuBmNt9QJB6IsAc4HW5NyGYlXG0h2ructxkOzVcEh
	YUSA==
X-Gm-Message-State: AODbwcDST6upwXyOFTd4/j21a8jBLDOWdITatMhngnjxfYfLAPpMS/6U
	GUgK1OQi/W6X0VpQ5o16LnPIDALMQ28JA1c=
X-Received: by 10.107.180.130 with SMTP id d124mr10360284iof.47.1494281225447; 
	Mon, 08 May 2017 15:07:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Mon, 8 May 2017 15:06:24 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
References: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 8 May 2017 23:06:24 +0100
Message-ID: <CAK18fxFRgLYyN5CJdafwg65Z9J0A-LXz6tGy3eo8RsvMNLmFxA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Stable branch plans
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
X-List-Received-Date: Mon, 08 May 2017 22:07:10 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

On Tue, May 2, 2017 at 12:19 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> Hi all,
>
> I've now got a bit of a vested interest in the next meta-raspberrypi
> stable branch as I'm planning to use it as a demo platform for our new
> Oryx distro.
>

I like that most of the people around meta-rpi have direct interest
based on products they maintain / develop. This makes us all closely
evolved.

> In the past, the stable branch hasn't been created for a while after
> the corresponding oe-core release. The changes made to the stable
> branch after this haven't always been as conservative as I'd have
> liked as well but that's just one opinion.

I think we all agree that this is a trade off. We went down the late
branch off strategy because stability was not of highest importance.
And to be honest you can always "know" where to checkout even if you
don't have a branch. I recommend an aggregation repository with
submodules if you want to seal a specific setup.

On the other hand I saw many times people getting confused on what
branch to use. And I do think that the general trend is to match the
branch name across all the layers you are using in your product.

>
> I'd like to propose the following for the pyro branch:
>
> * We should create the pyro branch within a week or two of the oe-core
> pyro release.
>
> * After the pyro branch is created, changes on the pyro branch should
> roughly follow the oe-core stable branch policy
> (https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Policies).
> I don't think we need to be incredibly strict but I do think we should
> avoid making changes which may affect the behaviour of existing
> recipes/bbappends. I would like us to keep doing stable-branch kernel
> updates and adding new MACHINE definitions where possible without
> affecting existing MACHINEs.
>
> This would make the pyro branch perfect for my use case. But obviously
> I'm not the meta-raspberrypi maintainer and I'm not the only person
> with a use case. So I'd like to know what others think of this, is
> this a good plan for meta-raspberrypi stable branches or should we be
> more relaxed?
>
> (I raised similar questions in response to another thread but I think
> that email may have been missed by a few people so I'm starting a new
> thread here in expectation that the oe-core pyro release is imminent)
>

I would vote for this too. Early branch off using stability branches.

