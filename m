Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 380BAE00BFD; Mon, 23 Apr 2018 05:35:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A79E00A1E
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 05:35:09 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id t192-v6so9263965itc.1
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 05:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ARoCqQKLWZ2XMgY2sR4EBqPAxg6BHY41/n+zBzijAb8=;
	b=BFqpabVjpIjyUAuzl9nr/QSj/NbVQuSdPjrcuqmx+Jx7qDcySRxICloTNURuy1+rUz
	UKwbNTlwyeXg6uQB/0W4C1lIYlxwblJ6BvgDlZSgAtyeD4vXyYi4CmJyC6uykzZRe6Pq
	1e8AOpFpB3mhzCiLoVykmD36/D3oqbwL09b5jk4NIGe1g8xipjsBG+4bUOq96sxHcAWP
	JS2ICFYbpVqP5rgXRUsEjr3aynE7bYvxu8b1y6cZTSP1OjHxR4YmPH0YPCe85JIMMkM1
	WsaL+P2PQHPzVe8QrX9Mc/tx0WmeB8YQqgKvaF29P8yocq1T4qggPSEKoL+iYBPfFKXT
	dMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ARoCqQKLWZ2XMgY2sR4EBqPAxg6BHY41/n+zBzijAb8=;
	b=RTmKwfZgNAe9OaBPDo61ViW7ud5wOI1mHCWtmKbIsshJaRiTI6u8R5lvDeoruKJasb
	Lid2Qe3ZqC9Q1dt2rk0bzCKJ/JExDVlQq///VvnOtUAOuokL4+1VmIkG9AICB2alb52y
	vnQRxvHns4IGTVJBRSH73PcFGc617QcFBSLRsP3N1uCWVe3AmkEmlouo+A9KP3t5ETae
	Qa8fYSkLDOwJ+lwYDiuFLre5aJoByeVKuvanU9854YsEEBhbKjH1pcC/8d4TGVMzJP+n
	j9nxlfNS2hxKjtXPLESxGMUlaXPU0+6tYmnjVO7MTFZ+MvteHrgxjlfFZnsP+kDEoUmw
	sV/g==
X-Gm-Message-State: ALQs6tAAbWaZq2bZEY+tX7WMl1Lgv737gKOH8OM8/oj8tbFcVIWxKF8S
	gLL4LIfbl6pz+hcnfzlKluCMdFaPBgLlHyPcBIsB0w==
X-Google-Smtp-Source: AIpwx49qKg+u++lPb4qT92BUQpT2hWK8YKPtCCEvpbYnvyUt3SfkUkJNP75mROcGYshjkiSzXeswtPL+CeskBkbNMqM=
X-Received: by 2002:a24:730e:: with SMTP id
	y14-v6mr14596061itb.45.1524486908676; 
	Mon, 23 Apr 2018 05:35:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Mon, 23 Apr 2018 05:34:48 -0700 (PDT)
In-Reply-To: <20180423105656.32099-1-pkj@axis.com>
References: <20180423105656.32099-1-pkj@axis.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Apr 2018 13:34:48 +0100
Message-ID: <CAJTo0LbTbCFHO0yhksGtZqU4HdiM=-uSsEM+Wyp_dFNH=8Y_mg@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][sumo][rocko][pyro][PATCH] coreutils: Update a patch to avoid fuzz
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
X-List-Received-Date: Mon, 23 Apr 2018 12:35:10 -0000
Content-Type: text/plain; charset="UTF-8"

Merged, thanks.

Ross

On 23 April 2018 at 11:56, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> Change-Id: I86ca76ca762da515fb6dfc95e2afd14cfe802fff
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch b/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
> index 58074c0..b9cd52e 100644
> --- a/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
> +++ b/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
> @@ -8,8 +8,8 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
>
>  --- coreutils-5.2.1/src/who.c.overflow 2005-05-25 09:59:06.000000000 +0100
>  +++ coreutils-5.2.1/src/who.c  2005-05-25 10:00:31.000000000 +0100
> -@@ -75,7 +75,7 @@
> - # define NEW_TIME 0
> +@@ -78,7 +78,7 @@
> + # define UT_TYPE_NEW_TIME(U) false
>   #endif
>
>  -#define IDLESTR_LEN 6
> --
> 2.12.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

