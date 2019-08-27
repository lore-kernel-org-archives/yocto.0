Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 447FCE00D8B; Mon, 26 Aug 2019 18:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2F4BE00D53
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 18:47:16 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id t16so17086477wra.6
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 18:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DaGxAoNV4V17rZkiN6yym/fY7cAH9KpsTvDa2k3S3MI=;
	b=KIzK9RrvEymHAUPVDeq2w5CHHr+MG4KfRvipjmu6hyqR9xFlcc0DyYliQhwNU6wdfJ
	1WvTFZdE2mzlc2t0OFcgSKihtojbKP7eu3vXvug0g/FgPSN7zgWij3LlPKcQydpz/rGL
	sRxElXSjooDj0IQkm2T8VMZpVI4TTkPISmrTTQDWVB+8r0jHwxe3xa+YmB2etLH1itbp
	O6wghZBXrbZY3d72U5b3OjTZdFygU/e1GS9qHdiRGUF0AldnRJU6rDc+KEkFLYO94guW
	5c/RxnfLlUcMbJoB511NIk/3MO2MLcqtABiZ0bOFWh3XTA0vsi364kkf08qG05S46z4G
	yRlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DaGxAoNV4V17rZkiN6yym/fY7cAH9KpsTvDa2k3S3MI=;
	b=rLWXIWsvIHpdyYDov7wAERGo6ZCe23OKSNL6exu52+p+jhnhJQhfOuHQ/+BzvWs6a8
	XTKW9hHTNEXXuEBGFXGo/cfQ0r2dgLJj8SLjf4ukjn2m//uCddEnU118+JnW/26gbm60
	RZY8BZ0Qtqgfa6+t+g6L4i9AsC5NBZVoN3g0YYAWavn84NZ1IEppT0P31HwQt57ZbFTj
	5Ix8bPj87CencO/sE+NISAtZEj+Fj8kecHXIpIT+kSeITDFc7NG7+VjkBSXvnIlwGyr3
	pj02a5xVfAL03LP4rCSTpxlXScd7o6JV/z44yHON0aUDTP0vLxT15xwRm33r72mC202x
	e+iw==
X-Gm-Message-State: APjAAAWjSeIAljhj0KwhWBwbCH95wGHDV3tmap/+vVGzw7S49wsPOahh
	GOTHk+Ey22dcQQa/BqPx6IYzyeZCtGGNdYc5kdE=
X-Google-Smtp-Source: APXvYqy2EHXdBqNMKft8GQ7ExP0WdaburBMMQPYWh5Ny1ivnIcoqn2owy+yet47F59ikyJZyLbBnKzqMwQ3K2k5Ati4=
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr26020823wrw.185.1566870435797; 
	Mon, 26 Aug 2019 18:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <d0118f7f-8e31-1cd6-5804-b199c755e639@kernel.org>
	<da7b54f0-2e00-0d58-7cd8-8fc5f5c46e2b@gmail.com>
	<98d43ab8-b934-a4f3-ea07-98cabf948dd0@kernel.org>
In-Reply-To: <98d43ab8-b934-a4f3-ea07-98cabf948dd0@kernel.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 26 Aug 2019 20:47:04 -0500
Message-ID: <CAJdd5GZ7OMN-hUZz6U-SoxC5Ot+NPu0wHa7amuHhMmawpE8zmw@mail.gmail.com>
To: Sinan Kaya <okaya@kernel.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw] QEMU on thud mingw SDK is broken
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
X-List-Received-Date: Tue, 27 Aug 2019 01:47:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 26, 2019 at 4:47 PM Sinan Kaya <okaya@kernel.org> wrote:
>
> On 8/26/2019 5:33 PM, Joshua Watt wrote:
> > On 8/19/19 7:30 AM, Sinan Kaya wrote:
> >> I noticed last week that qemu packaged into mingw sdk is broken while
> >> the qemu in linux sdk works fine.
> >>
> >> Qemu crashes very early while launching the kernel boot.
> >> This used to work fine on sumo.
> >>
> >> Does anybody see this problem too?
> >
> > Doesn't look like it. I wasn't aware that QEMU even worked in MinGW in
> > the first place :)
> >
> > Is it included in the default SDK, or did you add it manually?
>
> It is included by default similar to Linux SDK. The difference is mingw
> one doesn't work :)
>
> I tried cross-compiling QEMU 3.0.0 against mingw32 and didn't have much
> luck either.
>
> The only thing that worked is mingw64.
>
> I don't know if we can mix and match ming64 with meta-mingw.

No, I don't think that is supported. Just to make sure, did you try
building with

 SDKMACHINE = "x86_64-mingw32"

to try building the entire SDK as 64-bit?

>

