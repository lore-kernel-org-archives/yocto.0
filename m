Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6011.1576081583249450297
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 08:26:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t/kM7wKy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22915E011FF; Wed, 11 Dec 2019 08:26:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3430FE0078F
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 08:26:21 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id z15so6767629qts.5
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 08:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xRiyPzozGzaLQJYVK42TUNFiOz5cYnl/4T4xTeNhUOU=;
        b=t/kM7wKyC0ZGhX3GM8C9rikbpTHSx1w8jjnhjCOPqTxF3wgYK3RQ5AXiN9uy80v79W
         0YLX90Aw3rrQY8ONLHBQr/tVNLVcm0kP77jACJZ6OPtH5wKuxp3iweos9HZhRyhhUOA7
         hVathaHVqDszTejAy2O2b+flp7d/NL2hujrOSj7KIWsOSw9lHlvCYZdRtJhrQFdPT4mE
         GF+mHK9PAX0yzwsb55sJC0sVm7xr6ZMvggMJTPhh+pAu9zqTCYe3oQOOm4ppTXdTgeTQ
         oaZctuvjUcZ/51NStZ18dQiy03t0/PiwjTaALppdksfOsRX1wheB0iGHR3JERPFS98Wt
         jHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xRiyPzozGzaLQJYVK42TUNFiOz5cYnl/4T4xTeNhUOU=;
        b=i0X21tHKYmka9/6gJci8Jq5hRou6ou6FcEIQxbPxyQhPztcbWs9zKcTRtZhc5IeLmd
         ZD8wWIbXr3Kd796pRtHEh6Drwdr5GW5mUIaDMqqFd1yHYKN2hsGBQg7fxxnX/MzXw55l
         hMG1c1DXHeBLFnJlRDV2gFD29FSCgoEA7w7IX0uTGj8mrroKqyw9f7wDmdaKw4/myOP1
         x+gpbvOUynWxnyHJfS2FVr7uhC0ZYNWwR7ZweXeidvSA3tC3BuU3XMrshfIX9DVYUnRo
         qh+TmF5fxiRHxR5DmqsLUjTafCbbkrsr3Vth5YWKXUCNCLuU9cfJL7S6cbMq5ncZSKIx
         smSw==
X-Gm-Message-State: APjAAAUga7dHTS7iohDRrAO9hmxyMyoX0/1DR0ZKDwqfuY8sZOJdxkBw
	3nIkFxb6+usFQfUKxccqHx4=
X-Google-Smtp-Source: APXvYqyEAqSr2sHVCvb3K8PUE7mt3gj3Zx5qnSLytKluhtH5FMMLjBYPCQeezcVz0OTSxFQyigK78g==
X-Received: by 2002:ac8:5059:: with SMTP id h25mr3473492qtm.20.1576081580508;
        Wed, 11 Dec 2019 08:26:20 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id e189sm792243qkd.126.2019.12.11.08.26.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 08:26:19 -0800 (PST)
Date: Wed, 11 Dec 2019 11:26:14 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] variable and task/function timing
Message-ID: <20191211162614.GA13170@linux-uys3>
References: <20191211071807.GA32639@linux-uys3>
 <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
 <20191211153955.GA5676@linux-uys3>
 <a9e3cc548a4794e2497f350f53a7a915ee71fc2d.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <a9e3cc548a4794e2497f350f53a7a915ee71fc2d.camel@linuxfoundation.org>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2019-12-11 @ 03:48:51 PM, Richard Purdie wrote:
> On Wed, 2019-12-11 at 10:39 -0500, Trevor Woerner wrote:
> > On Wed 2019-12-11 @ 11:06:44 AM, Nicolas Dechesne wrote:
> > > >         +python do_check_build_type() {
> > > >         +    _buildtype = d.getVar('MESA_BUILD_TYPE')
> > > >         +    if _buildtype not in ['release', 'debug']:
> > > >         +        bb.fatal("unknown build type (%s), please set to
> > > > either 'release' or 'debug'" % _buildtype)
> > > >         +    if _buildtype == 'debug':
> > > >         +        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
> > > >         +        bb.plain("setting meson build type to
> > > > debugoptimized")
> > > >         +}
> > > >         +addtask check_build_type before do_configure
> > > >         +
> > > >          EXTRA_OEMESON = " \
> > > >              -Dshared-glapi=true \
> > > >              -Dgallium-opencl=disabled \
> > 
> > Whether I move the above to before or after the "inherit meson..."
> > line makes no difference. Probably because the variable is being set
> > by a task (which, I assume, is too late to have any effect, which is
> > a large part of why I wrote this email: when do these tasks get
> > called with respect to how variable are being set by all the
> > different ways they're being set?)
> 
> Tasks run in isolation, if you change the datastore in a task it has no
> way to get "seen" by other tasks. They're separate processes.
> 
> That is why the setVar in a task has no effect outside that task.

Excellent, that explains a lot, thanks!

So in this case, the answer to the question of "when" is: never :-)
