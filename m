Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F25E00CD5; Mon, 25 Feb 2019 02:09:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 599F6E00AA9
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 02:09:55 -0800 (PST)
Received: by mail-it1-f173.google.com with SMTP id d125so17286333ith.1
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 02:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=bxcCWYMESeAsxjyoSZdTbKH3hkgHgWdRxhzg4lXCQ+4=;
	b=uP3BC4HBv1/Lrf9z7oQqZgUyW4/04R/bhlzCmjJm8iRAZpmi3BiV6zQ+NLwQwV8idQ
	gZd1FF+rvedgE9KRDOY3NaDZrhgDb8a2F1GU2QQhwV033ajvuA91I1JX81zpzYffsPjx
	H9PbboZHZrG9GjNU3Y6Svlx/Sby7gzK7MMGeSlUVGOXwK4sQt1vq3FzBzbTiUq94dQve
	8RsxIUmK91E+8acGvMeMhtNTrQ45266YOvn55pOpHpgF8R8nkXb/O8LdNWJ51Hn7YWW2
	lKPcr0bglbAfyin48Wbu9OaL4opTgGA/XAcBa3cBBhRbUL1eeEWY60LCKr1slC9MfWm0
	Aksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=bxcCWYMESeAsxjyoSZdTbKH3hkgHgWdRxhzg4lXCQ+4=;
	b=iJICoxjpigWuOyxHwkxbwBxTiYRQ/zsVn0MMsD9fk7Oxh4IkwaF9Ha/yKpdiIWWodJ
	kywc89z8WZAd+5jhhpEXnyrz6/NuvVmQ7ORHCBwOHLfBHJ2XqkSd5iP+5Hp1t8xVvy6q
	NZcwWY/sj9uUUAI3fPw0bHqPbf8hoatVvuJeYyMnIx20XjQH0uSA+hFnSj8qnjpN5i1A
	2LbXnO3DUTfUSrcm6BF8guN5XbuoY0sMr4K0h9bQe+tGGrIBfK1MM9L4HkgvU/sNUy//
	EvThvNgdKJsD95EMopsH9gyfVtkxNnpQqvsvbQLbg704Ysc34Ai32vJT62xcAiFYXpea
	/xIw==
X-Gm-Message-State: AHQUAuZJYdUbD2RidXjjdp636udQjV6u3xxJr/JFr6Mf51twmq1+QAwB
	jj3WYczlG+o6rEPGk+Ypb6LqHuzm86VLkXGQVpLNLA==
X-Google-Smtp-Source: AHgI3IbMatzu68Vi6uXo+G8WvVlVLmeZnfKjYjsYYiI35w7TLAFbHCPaRyR9qnUGDkqshvnL6DSGlfMWOqMkbTu/cfU=
X-Received: by 2002:a24:13c4:: with SMTP id 187mr9806805itz.130.1551089394814; 
	Mon, 25 Feb 2019 02:09:54 -0800 (PST)
MIME-Version: 1.0
References: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
	<TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
	<CAJTo0LaB0Ca1n+nAe0bCiSDMnA+SkZEYPfydAZMd-s_gbhFf4Q@mail.gmail.com>
	<CALVd-wOkq6wwojJ+U6o=X9aMa4MA8PfJfVFgvp3DrWiZTnfsGA@mail.gmail.com>
In-Reply-To: <CALVd-wOkq6wwojJ+U6o=X9aMa4MA8PfJfVFgvp3DrWiZTnfsGA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Feb 2019 10:09:43 +0000
Message-ID: <CAJTo0LY=6Q7QV29hbAvkxDE1Dpzv4xm8LiQKMoB9va13KQN_cg@mail.gmail.com>
To: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Install Third party rpm packages
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
X-List-Received-Date: Mon, 25 Feb 2019 10:09:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 25 Feb 2019 at 00:45, chaitanya cherukuri
<ccvk.chaitanya@gmail.com> wrote:
> Thank you for the clarification.
> In do_install(), I used rpm2cpio.sh to extract the rpm and then copied the rpm contents in the right place.
>         $rpm2cpio.sh *.rpm | cpio -idmv
> I hope this is the right way to handle RPM packages.

Put the RPM in SRC_URI and bitbake will unpack it for you.

> RPM has a post-installation script that I need to handle. This script executes after the installation of RPM. Could I know what is the efficient way to run the script?

Easiest way is to just copy what it does into the recipe.  Assuming
that a postinst script for Fedora will work on your Yocto distribution
is a risky move, just like you wouldn't expect the script to run
without errors on Debian.

Ross

