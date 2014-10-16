Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 565DDE00790; Thu, 16 Oct 2014 13:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18998E00744
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 13:49:53 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id b13so3827891qcw.20
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 13:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4hAByZcDO2+aygUMmhnqHtH2M8TV794Y1X/ELx+9SEs=;
	b=FInTERAgaFGEnBkahCdcczMFbad8e9SC0D+bWXz0N1jqAdpXXo0CnJ/vBrIXc3KP2O
	94PS3iwZL3/kFI9PX6594zYz7EzquRweHtMhRIjaV6AMRu1QXIFmM5LXqBwj0LhYY1kw
	AbynSAHfBHIuEwn9YUJOIJ9C0cHdTOwiCyGnObqqhZ9sZlktbEdWUFGZk0fm84ZVczD4
	ffZvkJnQqMCaWGRcDAyq2IbGi2/NSZOerdXDmKr4cPUOwn+WlpbnY++2tZnDrKcma7e1
	FyACKMRK+xn0vHdD3LEd5IU1NyPrgu2Cgo2EMLqa9WIz72O3AHQ1jVwm6odAmEA+wYtq
	z7nw==
X-Gm-Message-State: ALoCoQn5PVg9AVlVu7hBtOcrXWqYCBEZxl5dhkbR4O2mNytdG6qur2xCCnXHCidPx2WMRZo/xr1X
X-Received: by 10.224.2.135 with SMTP id 7mr6235530qaj.64.1413492592938; Thu,
	16 Oct 2014 13:49:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Thu, 16 Oct 2014 13:49:32 -0700 (PDT)
In-Reply-To: <CAOd_LFwg_TBgDqzGLNpVTC2aY7YySzXKRtSbGsGK39i75VPf9g@mail.gmail.com>
References: <CAAPegz0mkfnopK_s8PATfn5G6-ym365g3xwpR7szS98-4YR2_Q@mail.gmail.com>
	<CAOd_LFwg_TBgDqzGLNpVTC2aY7YySzXKRtSbGsGK39i75VPf9g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 Oct 2014 21:49:32 +0100
Message-ID: <CAJTo0LbBz6V2DovEgm48oHj-Mf_=xawNfvTBOXtv0kk6P1mxTA@mail.gmail.com>
To: Cliff Brake <cliff.brake@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gitsm recursive submodules
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
X-List-Received-Date: Thu, 16 Oct 2014 20:50:01 -0000
Content-Type: text/plain; charset=UTF-8

On 16 October 2014 21:44, Cliff Brake <cliff.brake@gmail.com> wrote:
> It seems the gitsm fetcher should be modified to do a recursive update:
>
> http://cgit.openembedded.org/bitbake/tree/lib/bb/fetch2/gitsm.py
>
> replace:
>
>         runfetchcmd(ud.basecmd + " submodule init", d)
>         runfetchcmd(ud.basecmd + " submodule update", d)
>
> with
>
>         runfetchcmd(ud.basecmd + " submodule update --init --recursive", d)
>
> Alternatively, you might be able to add a task in your recipe to do
> the submodule stuff.

If it really is that simple, a tested patch would be much appreciated!

Ross

