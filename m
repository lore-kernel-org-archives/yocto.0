Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F0CDE009A5; Tue,  7 Feb 2017 22:48:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6D2E008D0
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 22:48:43 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id c85so185469644wmi.1
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 22:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mrgIVN4gth3029LBZV9+rFR8pFisSCZD6o0qqrf9HFY=;
	b=bGVaNUNaV5syJhO4lytyj9EAcxHT5psx4c/9Y8z6VqHAg2fX0Xr/QsxtqoTFk1CfMA
	WYI0dmoPkMsCZpob3JpU3b6k4z6miOHgXzofMtCqf4jJeCSVmRecUw/ic9dIfm5EvXce
	t6GsAkm//jw0JUCa5z92j6MxLIwP4g1+zduxQJAYunIeHiJ1HpBsQE4EEtA9Q1s+r5nO
	SQ6vEDtsZAMYI0CKvENlK7iw4t+WjOoWYr8NEByrRmuKr91PaOo6FjQIwTsW7Mn+q991
	NZYjpbSTiBhOXlv949xl3PvNZ91oSyoWIM5KstD0twt/u+BU4O2+M+s5D2eV8dwm7yqV
	IjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mrgIVN4gth3029LBZV9+rFR8pFisSCZD6o0qqrf9HFY=;
	b=U4NYSGpbDf/te1jnTWFEO9fwkIGONzAUpiya8L74r2fCK3JHyTlZ85DkyyVPVOVY+C
	8b2fODgXCC1skbsDd/PnXOoHDkSlii9TqWGcayOgx53UoW5YT1FZRRHFIBcanifwbDmu
	O6ZseR89sWDe6a4zDON10n6jTUswklzNlDaojPLdx2Uvd4MynDW6bMhm201u9144lXIo
	w36HTtGzyMQPSw/K1mCUJLTdHLEJxwwJvCEt1/974/ZdQyy379NHGCSZNDZQZjYs1bKp
	Lnzz9zoMRrv83GPMIbIJkE6M9Im0VAwq0DjJoYzSQK6Akh/2Afb5fQw4uvXRGgHnxi/O
	V41w==
X-Gm-Message-State: AMke39l/h2Fk4LH+xKr1hU+LdrCzkxB+132u9d5yA1mCF3TA4JlsCGcxGPAtpsbpj+PSYsyHpjn5dRX8tmGNSg==
X-Received: by 10.28.20.209 with SMTP id 200mr16529421wmu.64.1486536523069;
	Tue, 07 Feb 2017 22:48:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Tue, 7 Feb 2017 22:48:22 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Wed, 8 Feb 2017 07:48:22 +0100
Message-ID: <CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a list somewhere of OE/YP-supported system perf/monitoring tools?
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
X-List-Received-Date: Wed, 08 Feb 2017 06:48:47 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   colleague asked me for a list of OE/YP recipes for monitoring system
> performance/resource utilization/profiling, i'm unaware of any single
> list that tracks that sort of thing so i'll just ask what people are
> aware of. just off the top of my head:
>
>  * sysstat
>  * atop
>  * collectd
>  * netdata
>  * rrdtool
>  * dstat

* pcp http://pcp.io/

-- 
Maciej Borzecki
RnDity

