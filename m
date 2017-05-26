Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A53ADE00C1E; Fri, 26 May 2017 04:27:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E126BE00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 04:27:39 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id 7so125272783wmo.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 04:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FPMB1yVBT613MssFMbYE4L5jDZTm22wxTPBGx0RN9D8=;
	b=VhsGSOsRvoeJ5tpA9z6T+s7vxQiuwQ25bTzXUaJD2T2XYWtHHwqGPtCd98Fev5qyjy
	35Zj0ShnMsJopBsNv38pfZUdDJrYhfoec28mlmAQfY9NdWdPnWcsziPX3qxpkc41rlu+
	6ckv9Nx8Eos90n5n4rPJbHgjmjsORsPlBOsz3VAayShPK34UZa03Njw6ETQOVNq5t5WT
	qeJkeEXAOdCs5ib98syeLuRWr1FWGN01IFUIteti/64Mao8HsEClWkO6owTBms2wLaom
	QPnR3O1nXNFcJKwZcN/IjAtoT7r0DA122nw4+dczRPg5qCbFphPUS7vvKF/DgguMLuER
	+x/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FPMB1yVBT613MssFMbYE4L5jDZTm22wxTPBGx0RN9D8=;
	b=j87cyz2G/uqtXfIPRZY3DHoYCy3ziYRmf6UUbZf2J07tb2lHZmCjFLFKdiyP+O6zr7
	UEN2vYXM+iTtPcs99BBB+cZzcLj84/Z4BvCjZg7YNCUgWKOe5euigXnDP7xMnL55MdfF
	peQkrSc6BtaccNyVheCnnqUBbUV8s6f73XqilgqL5sGRZRs6oe6gP2uVArsIEgQbIpEE
	lWJu+vLIw7A1F/W7ySjLWYBMHBdOsp5y1a7uLVFgVyU79BKynSsqWo5z5ycHhCNjP5pm
	Ktn43Sqz8AhDODgnIFdzSMJIEkg/JfIDnWCIZvt6pdGSlTN2i/ftMHBlmEiogsKb4YBG
	nRiQ==
X-Gm-Message-State: AODbwcBQSysvQI4jnd9bV2iXGUktrjErFyljGfr9+Ou/MlJqXJmo3JvW
	JT4feZGeeh0x2SSgYRwfqQsxnGEOCg==
X-Received: by 10.80.185.3 with SMTP id m3mr2019699ede.41.1495798058540; Fri,
	26 May 2017 04:27:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.143.164 with HTTP; Fri, 26 May 2017 04:27:38 -0700 (PDT)
In-Reply-To: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
References: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Fri, 26 May 2017 13:27:38 +0200
Message-ID: <CAAQYJAsD1B=Z1pFfVS8VhW4aKXcVShye2sLYqf0gsLFta+uifg@mail.gmail.com>
To: Gerard van den Bosch <gvandenbosch@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Warning: unable to open an initial console
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
X-List-Received-Date: Fri, 26 May 2017 11:27:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 26, 2017 at 1:05 PM, Gerard van den Bosch
<gvandenbosch@gmail.com> wrote:
> Hello,
>
> I have build my vendor custom kernel 2.6.20 with yocto daisy.
> Daisy is used because seems to be last release supporting this old kernel.
>
> I tried building core-image-minimal and core-image-base.
>
> The kernel boots and the rootfs is mounted but then I get:
>
> "Warning: unable to open an initial console."
>
>
> I found on the internet this is because "/dev/console" doesn't exists.
> The dev folder in my generated rootfs is empty.
>
> On internet found can do the following commands:
> "mknod -m 600 /dev/console c 5 1 "
> "mknod -m 666 /dev/null c 1 3"
>
> But if this is the problem how do I add this to my recipe?
> Or is there a proper way to populate this devices?
>
> Cheers,
> Gerard
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Hello Gerard,

if your old kernel lacks devtmpfs you need a "device table".
You need to set at least
IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"

This is a default set in image.bbclass before and after daisy...dunno
what's happened with this release.

Cheers
Andrea

