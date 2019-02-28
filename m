Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F02EE00D05; Thu, 28 Feb 2019 04:05:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D77E00CEE
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 04:05:14 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id e24so14286157itl.1
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 04:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fGTghmm+TJ6+AFHZZ8en//GnuuwxyBXrt9+2js8mAVE=;
	b=syCObMj35lZX9xyEh4Sw3Wk8jDplZ1OhtGRDbgQzY9F0CCOQuwUgzMLVlReKLJObQd
	2SFBbRoHPlfW1H32IPUzaE0SszqpkkXsFiXdWO39993qAaVTtoJifvkjGDB0A5qqNVft
	O005eurZBAwdQqhX3gYng0/5kyZeJ//N31upBgat7vaVUg7V2diIEnZieh6o3qzif8ts
	t/+iMiRcpjBPYsEft8+4zzhbWrc+7JBqa1bKdQ0L2V1HMT14B56WQD/kOy6fVgPFfl48
	IgLgvlzkJAzMhgB/m1z5xNmRshdkldfsD4Bqphq1/n6D2iIgLgn5xBJgvqQQTVfTAy1e
	H/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fGTghmm+TJ6+AFHZZ8en//GnuuwxyBXrt9+2js8mAVE=;
	b=hRbEvxl6utKKN0r6ApiodA+9BPyXW17xzM5g5KAOKLjwg5pjSmll4EcMRx3+meoRu/
	FzyuZKNquHdj5uL7IDgKP3n8nXw9JBwffavCc2peVMGnIk2vKgJ098PXJkNf9KEy/rON
	dUlj7yjpghcYi1nqQEUxEhjeBAWKgZ7e09aa4fzlTOBOWHf2UyzY606yY6Kn0W5z3w1C
	P1dfPDMNCW7b9xFA2hDXx1s+mbiXKi2qXPYPtjbYzoJOJV5mR9dhFfeNVq6jR/+TTIvd
	E+a1Gn88qywPctZn7IHiWW3ibb5f/RYiDszxCpjJSvOsPT8FceE3Jwb7xFY72MpteH+8
	G9Iw==
X-Gm-Message-State: AHQUAubRdoe2ukJW3rsTqOAztRpjqYYEi6WZT6RDleQfE+0g3PZy2Pgl
	I1W/8dizEh5gaFTAn3gLFfAFdXG6ESDmWhq6vVUKrw==
X-Google-Smtp-Source: AHgI3IYb75qpBjbojbSONutvwI2CcNrz+H1JmWbpv4h6zYRb3Wb5rJJx10twcAC5epbkrzhe8Q2xA7oj2IIPOVTcIpI=
X-Received: by 2002:a02:cd11:: with SMTP id g17mr4489552jaq.79.1551355513630; 
	Thu, 28 Feb 2019 04:05:13 -0800 (PST)
MIME-Version: 1.0
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
In-Reply-To: <20190228051945.GB11051@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Feb 2019 12:05:02 +0000
Message-ID: <CAJTo0LY8H_FGXQ9sqHco4jmuiDxpY0bGE3rLZcc8=16UqRgTeQ@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
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
X-List-Received-Date: Thu, 28 Feb 2019 12:05:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Feb 2019 at 05:20, Adrian Bunk <bunk@stusta.de> wrote:
> > That's a good start.  For a oe-core packagegroup
>
> I do not think a core-only packagegroup makes sense when the goal is to
> completely replace busybox (and not just most apps while keeping a few
> busybox apps installed).

But a "close enough" packagegroup in core would be a good starting point.

> > I'd suggest dropping
> > dnsmasq bridgeutils bindutils to keep it lean.
>
> The stated usecases are not "lean" but "replace all busybox commands
> with the full versions".
>
> For that you need bind-utils (in oe-core) for DNS lookup.

Good point well made.
> > Also swap vim for something in core obviously.
>
> It is not obvious how to do that.
>
> What other vi implementation is in core?
> Is there even any good non-busybox non-GUI editor in core?
> Replacing busybox vi with ed would be a bad fit for the
> stated usecases.
>
> There has to be some vi implementation installed,
> and the "desktop command" implementation is vim.

I thought we had some other editor in core, but can't see one.  Worse
case we still use busybox for its vi... :)

Ross

