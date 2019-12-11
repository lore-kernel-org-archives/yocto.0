Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5303.1576079507293435903
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 07:51:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=TmiAA43f;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88649E00E3A; Wed, 11 Dec 2019 07:51:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35343E00E0D
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:51:43 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id v201so17046951lfa.11
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tO1oa5XLnECBfa6jiLHEAequ7YXj1wKT21zPtf1aB5o=;
        b=TmiAA43fxZmxOj335nSA4VkMuw20yzGX+t+QyhlpNiZINVBaE7Au5PoZJX4ibrvo52
         X5AjThB2OuPlthFClgZ7CeTJKSdgptNiB6pnfK6cNixfXo8RwWRuajXF6dtmn6Bvqt+L
         YGU/TeQLiui5MvXyUhVKbn8SIBFB5LeS3frYJ7TsqM9GjuWReqBqnT7aFe0c3g+ReG4g
         aWAuBmoktYdG1SUkRHLENm9D/oZeincYhmgBTORMUrHToHToxfIkwlEdd6Ql5erygwwe
         Odm2IF809UD3ldyu4ecTA60qpRRC5VBzPXgYyVWC9yyWGlf8c/GADG6iYJWfVsgJGHd7
         zbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tO1oa5XLnECBfa6jiLHEAequ7YXj1wKT21zPtf1aB5o=;
        b=Aj+NKwA4Ifv7MsJX5D+Pt+zt/1BdhQZlPXmeBDzfUzcu1BJDkHruYGQJRjJZNM+eAR
         /uTuXgKYVicm/+oy+45hgc7cGSAc/kSXMmzxlWdYQZB6KPCI7ToCSNJ7tT3ShpJOUpAe
         KtmI16fV5T/Opln2aY7nwKyLWgUYzg5Iv5r3/ZIq1Kn+mwYT12CHRHLFbyZuMrRMZSbP
         N+RgyLZ2Nja2CTI9FWDWecFpCZxdc9OoxN7VoK0/QwAOebYhf8rRwOzM9/2y6Qu7PN0L
         bSOeBehPQOPK7qax2DxjshZzvPSEZWyf20uwl60PJwI6WdN5dhbLXHMXIjD+t9jb3JOJ
         mSQA==
X-Gm-Message-State: APjAAAXIxxJAvXIfZ3NP4MMDxetHERLBLE+BMU16Vqql5pPrcwi+/ND+
	zMSNQd1k6VhSRuWw16cuQX6VsLya88nn/oWTpdhxbw==
X-Google-Smtp-Source: APXvYqx5GcmxRJ8kNmJWaCM0yb4PQvYl/+F/YrcFGmN9koeyK2RhZBPSydrSRgIx7qDPVVxiB6NXolc29hcyRmSKc30=
X-Received: by 2002:a19:6a06:: with SMTP id u6mr2692847lfu.187.1576079502974;
 Wed, 11 Dec 2019 07:51:42 -0800 (PST)
MIME-Version: 1.0
References: <20191211071807.GA32639@linux-uys3> <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
 <20191211153955.GA5676@linux-uys3> <a9e3cc548a4794e2497f350f53a7a915ee71fc2d.camel@linuxfoundation.org>
In-Reply-To: <a9e3cc548a4794e2497f350f53a7a915ee71fc2d.camel@linuxfoundation.org>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 11 Dec 2019 16:51:29 +0100
Message-ID: <CAP71WjwvrJfCQ_zRg2WgVyuButd5L=DmqNHaSxw3BtgoC3Bq4A@mail.gmail.com>
Subject: Re: [yocto] variable and task/function timing
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Trevor Woerner <twoerner@gmail.com>, Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 11, 2019 at 4:48 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
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

right... so my array is not 2D, but 3D then! but as i just said, i
missed the addtask in the first email.

>
> That is why the setVar in a task has no effect outside that task.
>
> Cheers,
>
> Richard
>
>
>
