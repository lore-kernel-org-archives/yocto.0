Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17699E00A10; Mon, 15 Oct 2018 09:57:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7C9E003D9
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 09:57:22 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id q50so19617620otd.0
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 09:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7ZJhAhQMeBhErlVNkEnjeACyH7TMIJvELn9fDyLUfSU=;
	b=Knh+MqjNQ7kfNroXRd1HFjPOcYgQrJf9eKoZCmZelE44KarjJzOhnZNjmjbKkZW8L8
	W/fIuUHLiOmKa2jIutJyw+0W43rbJDpEG0r0vQqxlG/wp3kqEEDbMB2enqVkG06ROeC8
	pYrfrq7XSDffk+UMY/L1uPUgRxEVoDkVxRdVCHc7xJVqCJrwTFq/e0Ez6xcZnR0UsQI0
	RPo4QXokIH7zVzScb2my9bgx0cLmvEVfexLnNymnTUyziL1hLLDx7/P48eaNX+QbFqlX
	Edp+lyI5/3S/lE6HQH4IPAGwCPrp/nedtPQJTL6n6GhPF5jGNAD/thJqmlmAepgVRAdN
	J6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7ZJhAhQMeBhErlVNkEnjeACyH7TMIJvELn9fDyLUfSU=;
	b=OYFT9et2IynAHrsJ+VaVAnpJaS4nWQjcECR1l1iYy84UnZnHnf0YbRBGw0du72kC3c
	4MZXxDEj4OFaacpYPhEWtdQM9xtn/O947AhFCYvgrPodvDCcOTIw4Tunbtxq4OwbzhD/
	UUwCiF9RA9SOfrUDE5OfQqwL6BINtn2Xqi5+JD/z4XcmKnJ/jLZasYtOpCVcCowQDqT4
	XhiJqfBeNvdtyaX+LpGjDFbR5tW4zi3O6yIpPx9tF8lwiuyAGYSFVuJ+4dCtvis2oiMB
	yh2l9h6S2FCyJIy28NtrNM50Y0lJuhza9SPPokLfdKs+AnXciSWQmidQaQcTw24UGPav
	eEmQ==
X-Gm-Message-State: ABuFfogBtT9bq1YVCLokBFqXPXr+O5qgNslbBUwoODUzvDyIx/IEvsI/
	Pc5wqVtUmpUTNouAn5WmDdPQGX2JXLo37dSMLs6yrqpS
X-Google-Smtp-Source: ACcGV606Qpwc4L2BCvpMO22vc6JPGcfgGymwkFnFsu4S3H79L3m04rbe+dManx2aeogBibSKRc0U2Emk+2pMnow774I=
X-Received: by 2002:a9d:30ae:: with SMTP id s46mr12443725otc.132.1539622642193;
	Mon, 15 Oct 2018 09:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <20181015161520.GA17645@zazen.local.albeus.eu>
In-Reply-To: <20181015161520.GA17645@zazen.local.albeus.eu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Oct 2018 17:57:10 +0100
Message-ID: <CAJTo0LYgWV2UxHEpMJ7DVWLsTZ19uDfdS=6weowdQ2m5+um71w@mail.gmail.com>
To: alberto@albeus.eu
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Add python2 as native package in openembedded sdk
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
X-List-Received-Date: Mon, 15 Oct 2018 16:57:24 -0000
Content-Type: text/plain; charset="UTF-8"

Add nativesdk-python-core and nativesdk-python-modules to
TOOLCHAIN_HOST_TASK (using _append).

Ross
On Mon, 15 Oct 2018 at 17:30, Alberto Eusebi <alberto@albeus.eu> wrote:
>
> Hello,
> I need to cross compile python2 packages using openembedded sdk. The sdk
> resulting package contains only python 3.5.3 (in older version it contains
> python 2.7.3 as well).
>   _________________________________________________________________________________
>   # ls -l sysroots/x86_64-angstromsdk-linux/usr/bin/python*
>     lrwxrwxrwx 1 root root    9 Oct 11 21:39 python3 -> python3.5*
>     -rwxr-xr-x 1 root root  267 Oct 11 21:39 python3.5*
>     lrwxrwxrwx 1 root root   17 Oct 11 21:39 python3.5-config -> python3.5m-config*
>     -rwxr-xr-x 2 root root  15K Oct 11 21:39 python3.5m*
>     -rwxr-xr-x 1 root root 3.3K Oct 11 21:39 python3.5m-config*
>     -rwxr-xr-x 2 root root  15K Oct 11 21:39 python3.5.real*
>     lrwxrwxrwx 1 root root   16 Oct 11 21:39 python3-config -> python3.5-config*__
>   _________________________________________________________________________________
>
>
> Is there a way to add also this native python version to my sdk?
>
> Thanks.
>
> --
> Albeus
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

