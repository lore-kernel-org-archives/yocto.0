Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3D07E00CEE; Wed, 27 Feb 2019 15:59:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96B1AE00AB0
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 15:59:54 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id 9so3346462iog.8
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 15:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hB8yDyeBUYPadHq/zEolmpaLoP+p+iw2U2dvWH2NSjg=;
	b=saAoDP+T//p7+0UZZH/5z1FsGf6GzeOV+1D13jVBsWInHEJ5VbqAiZFESDaGRgIwLP
	rUB6EWOLzAeiVOrSSrkNwAblTPMzjiVm1LaufePomPV4yvkrF74phFCGxNMGUZRsZbMO
	OCX1XqI/9FWbbIRwj4TM0IkD1wbCqPratzLjU9jOau+GRTOFoqwDutnNUr8BlEDU+FPE
	kT6i4ZkPU2+HjIUE3uFSYs6w3zRGf2RBgCfDCJUDzCW9WclELHwlDvhVf0kND9reLIz1
	si5eFPzjRuFgPF4xjZQTbtzn/4170JasTpB3tb78bxWFvSAJodlXsoHmNJBfZ4Y7JuK3
	9vDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hB8yDyeBUYPadHq/zEolmpaLoP+p+iw2U2dvWH2NSjg=;
	b=mYOFNiaqBORhbyAqFE6PfNPWK/9kcBkUnkECynMBYVJUdJm8izP14X11H8dJXDFHzY
	YnHotybTHxH5Tp41vp5+fQ+bpKsGrozYdJehU8UgKhU4LAAnS26zLE1RXTmT9E48IUTy
	ZqvRs9zHNvsIGNc6v3tmUik3fnvV/mjBOt4+7LoTVp5qu9riIctFIsHn+5zYzN736PJo
	+JRM1h/HIW2DRHGIv60KVExqYrkcvN2aAfgI4L/kelk9Ylv9qprVTgPc8E58bUJcullC
	UWNdTBsmyMM2nG8XCCDNRw+1flmJ2ginLlyCfCB37Z7+EGEtYNOcnua8VYLc4YdFhRcP
	HsZA==
X-Gm-Message-State: APjAAAW3ij5vqdOEZJxVHIPhmPWhUfOvH0IcxKUgXr3ReRARcAGDAED3
	8aAIT4JB3+sCZ2zYyt4xbBmtUqZXqxafbVtfacJGtA==
X-Google-Smtp-Source: APXvYqxqxbDtcZVm7Uz//9wbxtgI1DcnenaGj9FDRFMaqJfCLuUKMTfbm7aM9Cs28TI56R2uaWdMkZXXYb0Wz6n8d4s=
X-Received: by 2002:a6b:ee1a:: with SMTP id i26mr3490330ioh.201.1551311994060; 
	Wed, 27 Feb 2019 15:59:54 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
In-Reply-To: <20190227235448.GJ12046@bill-the-cat>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Feb 2019 23:59:42 +0000
Message-ID: <CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 27 Feb 2019 23:59:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Feb 2019 at 23:55, Tom Rini <trini@konsulko.com> wrote:
> My current incomplete list is:
>     bind-utils \
>     bridge-utils \
>     coreutils \
>     dnsmasq \
>     e2fsprogs \
>     e2fsprogs-resize2fs \
>     e2fsprogs-tune2fs \
>     findutils \
>     gawk \
>     grep \
>     inetutils-ping \
>     inetutils-ping6 \
>     inetutils-traceroute \
>     iproute2 \
>     less \
>     net-tools \
>     parted \
>     pciutils \
>     procps \
>     sed \
>     util-linux \
>     vim \
>     which \
>
> And it's also incomplete as there's more stuff under inetutils I don't
> need (but others may), and I set aside patch/diff/ed and some other
> stuff I don't need.  And since some of that stuff comes from
> meta-openembedded, it's indeed really not clear how/where a packagegroup
> would reside as we need things out of meta-networking.

That's a good start.  For a oe-core packagegroup I'd suggest dropping
dnsmasq bridgeutils bindutils to keep it lean. Does that remove
everything from meta-networking?  Also swap vim for something in core
obviously.

Ross

Ross

