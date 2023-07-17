Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1C8EB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 21:08:22 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.6359.1689628092886761504
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 14:08:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=bMKdL9Tw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-3fbc656873eso51736795e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1689628091; x=1692220091;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eO7wo4QNBN0rvgjvXR3UHgt2sDIVQB5IM8maxoZ3AFI=;
        b=bMKdL9TwWLami1PSSDEgChEZ447fRKOMrAr/lbNBJgRFk9tHF0eIqkuaI7yRdEkKke
         T3qV3w6tvCC9PmkJAVZtfNNlSWQtfR9QZ/Tr+A+BEUCQn+Jm51kMwYMD4iHMiYVOURIP
         RLXjaH/ARDPTvM/hSOQ1OnQ0N/hrLkbw1jq4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689628091; x=1692220091;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eO7wo4QNBN0rvgjvXR3UHgt2sDIVQB5IM8maxoZ3AFI=;
        b=Jn+ZJqgz/rLQvUctPRh9eEcmttCmHl62H20kqD3qBLZpCPkB0QUAvK9mS8G5oYLmgp
         j755QqQaoQxNUYl3jZyzVtXZRx1a3p1gH/3HYg76bBMGXYrzYu1qRGFFH/yX/pJQ0DKl
         /bzbT2zyDbscLsP6A6Oe819PSCGRheuGGOhiHVkir42t20AlcMIEhVo8cKIPNhvXJ2fN
         BzaIWPeoNgKYzAl4ivY6u/B7c93AHf3ON42ryDFqTW1ROT40IGAsSZqPwzqpd/lnBcQC
         wRvZp981HcyL/ZLWWeZhNiA2wsgyhCAbX3l+7XiJTVtXmkthNlSEPfJ4W+55tnOhMazZ
         3kzA==
X-Gm-Message-State: ABy/qLaFtAZ0wo50A9BuK/PufIqhzcK9AbxTnRBk94Hdi3L5j3smm+c2
	/dBVFFsCVsx9oN1xOA5qiUCGVg==
X-Google-Smtp-Source: APBJJlFvf4t96Kj1HvFLFRNjw+7gA16DlHQKKtvGwPNxCWsuJuWsdQlEDq3cCMIolcZEtZ2h5fypPw==
X-Received: by 2002:adf:facc:0:b0:314:c7d:78aa with SMTP id a12-20020adffacc000000b003140c7d78aamr13589727wrs.62.1689628091136;
        Mon, 17 Jul 2023 14:08:11 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:363c:9ce3:3c57:ed22? ([2001:8b0:aba:5f3c:363c:9ce3:3c57:ed22])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d51ca000000b00314398e4dd4sm431936wrv.54.2023.07.17.14.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 14:08:10 -0700 (PDT)
Message-ID: <f223eb9fa2c757969d466b5f88dfa0f285373895.camel@linuxfoundation.org>
Subject: Re: [yocto] Request for Quotations for development work
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Mon, 17 Jul 2023 22:08:10 +0100
In-Reply-To: <CA+EiEZ+6M-Jjw_-WzFJvRNVjzz5sN=9QGCxAx94MKJDTjsh7YQ@mail.gmail.com>
References: <176A63496CF306FA.4070@lists.yoctoproject.org>
	 <fa7853d50f03bf291f69d0482db808a6fdc89038.camel@linuxfoundation.org>
	 <CA+EiEZ+6M-Jjw_-WzFJvRNVjzz5sN=9QGCxAx94MKJDTjsh7YQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 21:08:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60596

On Tue, 2023-07-18 at 09:00 +1200, Tom Isaacson wrote:
> I read this and the linked articles and one piece in
> https://www.linux.com/audience/maintainer-confidential-opportunities-and-=
challenges-of-the-ubiquitous-but-under-resourced-yocto-project/
>   caught my eye:
> > One question that comes up a lot is the project=E2=80=99s development
> > model. We=E2=80=99re an =E2=80=9Cold school=E2=80=9D patch on a mailing=
 list, similar to
> > the kernel. New developers complain that we should have GitHub
> > workflows so they can make point-and-click patch submissions. I
> > have made submissions to other projects that way, and I can see the
> > attraction of it. Equally, it does depend a lot on your review
> > requirements. We want many people to see our patches, not just one
> > person, and we greatly benefit from that comprehensive peer review.
>=20
> I'm an old=C2=A0school engineer but I've never used the "patch to mailing
> list" model so I find it quite difficult. It seemed like someone must
> have solved this problem already so I've been looking around and
> found=C2=A0https://gitgitgadget.github.io/ This is what the git mailing
> list use - you create a PR in Github and it sends the patch to the
> mailing list. You then respond to comments and update the PR. Finally
> someone merges your patch.
> It seems like this could be implemented alongside the existing
> Patchwork solution relatively easily and provide an alternate route
> to those of us who prefer the modern tooling.
>=20
> For a complete solution you could add the same functionality to
> Patchwork (I assume you
> use=C2=A0https://github.com/getpatchwork/patchwork) to make it bi-
> directional - patches from the mailing list are created as PRs in
> Github, and PRs in Github have their patches emailed to the mailing
> list. This then solves your Patchtest problem - the tests could
> instead be implemented as CI builds in Github Actions (which is more
> maintainable) and the results fed back to the mailing list.
> Alternatives to Github are of course available.

I think it probably could be done, I've wondered about this myself. The
challenge is that even getting patchwork working reliably and then
having patchtest on top of that back and operational has been a
challenge. The next step is to get our testing back and see if we can
keep that going this time. We still don't have great automation about
updating patchwork patch status for example either.

If patchtest is successful, there are things we may be able to build on
top of that. I suspect the challenge will be "permissions" both on the
mailing list side and on the github/whatever side and whether it can
show/link the "real" users or not.

> Is the Patchtest source code available anywhere?

https://git.yoctoproject.org/patchtest/
https://git.yoctoproject.org/patchtest-oe/

Cheers,

Richard



