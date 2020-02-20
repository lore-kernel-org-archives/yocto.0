Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6719.1582212139498688051
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 07:22:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Qmj4yzxU;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21060E006B4; Thu, 20 Feb 2020 07:22:19 -0800 (PST)
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
	*      [209.85.210.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70DB0E003DB
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 07:22:18 -0800 (PST)
Received: by mail-ot1-f66.google.com with SMTP id b3so2792532otp.4
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 07:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wMfK4xI8+uu3jjmq7EjwO+COQrr6KL0ZCMBvuWXZ3R4=;
        b=Qmj4yzxUDGNX0FcwYsxp5otavJ0mMrRDe+GQGUwsU4AF9Ed/3028hn+p7pcqdDXgxS
         glN2yJu2TYV9/gey0NUDw93OTa9CG3nlmtGOl1zZSdb4k/6k1ZjnlM9GTqRHa9Jka3cw
         x8DP2FWqgNmGJz+YPdR8n2oVkE1Y15Bb1VW5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wMfK4xI8+uu3jjmq7EjwO+COQrr6KL0ZCMBvuWXZ3R4=;
        b=h//TqtnEwmPZMRym79ly5rjxsGt92cBwmmqB9wnKN949j37ZNb+lphTCvFIZYNq+VL
         f4baaMBYwy/SaeyamvEu6xtqCaqkx5MFt9cjyydaxr37h2kQnjd5xAmc/IPiYBcHxFZF
         fy9axIAjP1kIoPoskgYEtGMcvO0yyuw77ZOFEyTfgkQY4u+TPp69M618O2miIuxZtQ5N
         Dw1zlYSbiEBxVZ8x+m03GBuIyfqDboY+EspGSfPGhsCCyd+rERpDu2Okhjl0wLYtoEvt
         vXivo3K/d6rSd9dRyPlJKlKpgnwXkdBaV3h9XYdr2337ghya2YVDUstfHzLDNuycDaSD
         C5+A==
X-Gm-Message-State: APjAAAWVCEGsTKdjjfUjeXCddeL1mRzZ5EE0ftIxtjRSFdsbE55yE9Ys
	EBrkWtBIbvmy/0hsCelfZcAgKGwB8g1W64w6pAibbIMm3yU=
X-Google-Smtp-Source: APXvYqyjtMW1zQpbAsHVGTDTBk1cRvFmpq7qRFeAFnbBYvF8S3yjrWWCJxaueIVHyKJthXs1XIKm+ScJuiOyAFbravw=
X-Received: by 2002:a9d:6a06:: with SMTP id g6mr22140439otn.305.1582212137750;
 Thu, 20 Feb 2020 07:22:17 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
 <bfe6eb79ff352439c3ed5d53757421dce5e0b17d.camel@linuxfoundation.org>
 <CAM9ZRVv2Xoq=GBjQOXT+VBunhYG3n_dCw7Bv6XECTdRhdvzg9w@mail.gmail.com> <b5158d1f6ef3cebc4bff046b28c8851ba7db29ac.camel@linuxfoundation.org>
In-Reply-To: <b5158d1f6ef3cebc4bff046b28c8851ba7db29ac.camel@linuxfoundation.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 20 Feb 2020 15:22:06 +0000
Message-ID: <CAM9ZRVu-yX0M41SBY5kDzEVL-+EaTfCZiX4dascQQtvuhichdg@mail.gmail.com>
Subject: Re: [yocto] Bitbake returning non-zero due to sstate errors
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Feb 2020 at 12:04, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2020-02-20 at 11:59 +0000, Paul Barker wrote:
> > I'm now looking into this...
> >
> > In sstate_checkhashes() we mark sstate as available if
> > fetcher.checkstatus() succeeds. Then at a later point
> > sstate_setscene() calls sstate_installpkg() calls pstaging_fetch()
> > calls fetcher.download() to actually get the sstate artifact. If the
> > artifact is removed from the mirror between these two accesses (due
> > to an sstate mirror clean up running in parallel to a build), or if
> > there is an intermittent download failure we could see checkstatus()
> > succeed then download() fail.
> >
> > I don't think we should ignore all setscene errors but in the
> > specific case where it's the download step that fails I think that
> > should be a warning. Or it could be an error by default with a
> > variable we can set to turn it into a warning. Does that sound
> > reasonable? If so I'll work up a patch.
>
> Thinking about the code, I'm not sure how you're generically going to
> tell the difference between a setscene task that fails as the file
> disappeared compared to a setscene failure with another real error? :/
>
> We could make all failed setscene tasks warnings but I think that
> buries actual real errors.
>
> This is probably why I've not changed the code before now.
>
> Special exit code values? :/
>
> I'm open to proposals.
>
> I know we could put in some configuration option but in general I hate
> these as it just means more test matrix combinations and more ways for
> people to see different behaviours. They have a time/place but I'm not
> sure its here.

I agree - I really don't want to have to add additional complexity
here. But I do think we need to fix this in some way, others are
affected by this as can be seen from previous discussions. And in the
case of a public sstate mirror we can't control when users decide to
run builds, there will always be the chance of a user running a build
on an old commit while old sstate artifacts are cleaned or starting a
build just as the mirror is taken offline for some maintenance.

I think we might be able to make this work if we can avoid adding any
new conditional logic to the fetcher itself. I can see that almost
every call to logger.error() is followed by raising an error - perhaps
we could rework the code to include all the relevant info in the
raised error object and allow higher level code to catch the exception
and decide what to do with it. Because once logger.error() is called,
knotty counts an error and bitbake will exit non-zero even if the
error is safely handled. Once the fetcher simply raises exceptions in
the case of failed downloads we could handle this neatly in
sstate.bbclass. Would that be a viable way forward? Or would that
break the other fetcher use cases?

Thanks,
Paul
