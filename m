Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60C0FE00B45; Wed, 19 Sep 2018 10:21:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0875E00546
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 10:21:46 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id v10-v6so6557724otk.7
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 10:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mCax5s0MyqWKx/gKkQML46+pcwMRIZgwfueFva7cvO4=;
	b=NaYBFtdStDvCG2Lf4LIoWCHK8sTxr2HA4hX/xNEobKwq5W2PMZhmPlvn9mnSN05t/Y
	1og/ZVDZ38yRgPb/2XVzimspoi2ArgRlX3qzC76piPciEl2G4m+LeGOVdow16/mCVjIA
	Ptc705wjRUVmmfnNX/ELCyH/mDJcxvJJkVFQJDTI47jBykJoL5/ZZ5fHvx0/8Fat+bFZ
	7RwsL1ImwRw0ggfMT3+STz6198PJZpTTR4GSFNlSiT4WuVLZMDHNZ6CxycR6dbWA3CVH
	83wU2iGlK9ymd/Li+eptfdZQPczKvCY2Hqd9V1OXbPJEx2TL18Y6ek5MhQ7M4keBRvom
	AwgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mCax5s0MyqWKx/gKkQML46+pcwMRIZgwfueFva7cvO4=;
	b=ZWlFSiH9cXP8b6p9QR/bo732RypKSf12vJDpvRSN4zYhqnqjAI6YEGyDirqp4p9QwR
	Q4yBN7fcrJYtu92pv8Ahr8uVVx6idSwE8O3uvN2Uqc6Ec+JvIcLvNEfHZvM4I81bG22f
	bQJjbfUe3T6wkZ/85JlIPL+SuMveyMlcYYaCuP/vB1/JYgGCgSHbp4HjSVmJizp0i9Es
	lxW4zlFkw6SsxIaeVOdgeAlPKnkMhv6OMAQrOneju3gezpAnvcgCR2jhYPf5YcCOwo5W
	Z/jjVuEGomrEpsGyWdFh2yiG4qMYBTxxVFlKEDcgrn8QzCYdtf+XHQrmzyzZkResL3+m
	9aKA==
X-Gm-Message-State: APzg51DfIUZwmQOUteKaoJw3SnQakPNwBLzDaR05ck2nmuZYZgGnT/Gp
	7kbdGK13soj+VmEq8Ezlk6btLdUl74lsBdRmhTL5qYS3
X-Google-Smtp-Source: ANB0VdZ5QTMeamJwB9e+6ubCAFSqyluVumgU6zbHKnqmykIxfQVOIRNaCzgAaX0am4YVTB+KbiuURWkXVESZznTQEds=
X-Received: by 2002:a9d:798a:: with SMTP id
	h10-v6mr20160884otm.13.1537377706159; 
	Wed, 19 Sep 2018 10:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <1537304423.12258.18.camel@rtfs.org>
	<CANNYZj8nvG3ty5J0vrapSYK+=VQauNQF71dLnbY8gZAfPf19fg@mail.gmail.com>
	<1537377180.12258.22.camel@rtfs.org>
In-Reply-To: <1537377180.12258.22.camel@rtfs.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Sep 2018 18:21:34 +0100
Message-ID: <CAJTo0LYzacRps6JP9bE6Jqu88+cUhXJp4K09z-EZ0VADX3-acw@mail.gmail.com>
To: f@rtfs.org
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Native yocto compile in docker container without cross compile
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
X-List-Received-Date: Wed, 19 Sep 2018 17:21:47 -0000
Content-Type: text/plain; charset="UTF-8"

If you're targeting just x86 then you can build an image with the
tools-sdk IMAGE_FEATURE defined, and use something like systemd-nspawn
(insert your preferred container system) to get a shell in it.

Ross
On Wed, 19 Sep 2018 at 18:14, Fabian Sturm <f@rtfs.org> wrote:
>
> Hi,
>
> no this is not what I am searching for. What I want is gcc cmake and
> other tools to be installed inside of the Yocto image, so that I can
> compile natively in Yocto without having to hack build scripts to work
> with a cross compiler.
> But of course I don'T want to deliver gcc and others with the image on
> a device. One solution would be to build a separate image that contains
> the tools. But my hope is to use the original image and just add those
> tools later on.
>
> Any ideas how to set something like this up best?
>
> Kind regrads,
> Fabian
>
> Am Mittwoch, den 19.09.2018, 10:07 +0200 schrieb Alexander Kanavin:
> > I think what you are looking for is a Yocto generated SDK for your
> > image?
> >
> > bitbake -c populate_sdk <image>
> >
> > Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

