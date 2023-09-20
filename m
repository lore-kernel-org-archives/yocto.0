Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78D8C04FE5
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 18:36:39 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.3370.1695234993129497673
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 11:36:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SMLB6Ua4;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2b9d07a8d84so1554711fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 11:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695234991; x=1695839791; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Tw1PKOBMRgKZvwRnA61OsmdOde8U54TmpfG+9/1vDo=;
        b=SMLB6Ua4Lw8aJJjaz3szHC6WBqlFDxDccUxTdeH+lYvRFZWPPVkDGiv/357oTSeFkL
         FJte3SD4x6HXSZXuUAa11Br5mu/TnkXeDOtvf77quJYVgl5e4oT5Ei8HUiW70YH83jPY
         zpYDUC2dDWLPiGkMzn3w/kT3XthXcb6uws+alpyUvUIJs/7wLFE2sF8JQsY0kPkJyzAj
         bHkwAJU+68oF40siSFR5BSvL8weKH72mMFG8QL+IwFvRS5SAhrSQhktmiBIaYw/81yR6
         1OkZwjPvIAGMz2X9B3RaRhWcLXQYCiU/PtQnmugLjQ3so0aIyWH2kcte1IJbmQYY68bO
         mNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695234991; x=1695839791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Tw1PKOBMRgKZvwRnA61OsmdOde8U54TmpfG+9/1vDo=;
        b=MSP3VrrEVL2giwz8dfl6dbVYQZx+qwX1mxiTlc3DKn19xgW63t70U2+sxL23oxb4g5
         +EWB3JesRsbxCI2kdT81YNkvZkVXUIygPOGn4Dag9jl03YHfpR882PwcO1b4+zhsATi5
         +22hu0f8Xi6VOW7Ip7u+dOKz5S+zgJLHqsOFFa4kdy76UruGVHL9B0RB09Z4r+8Jq0M0
         PxQC9JAbFR+6MrkHnJcWDmCjsv8PnZNxw8kYJgILlgUJq06Ad+qsdEbTP5ONAxJQirfu
         aOEp7Vk+rzaGOoY9Iyw5oXFbe2NXooXzXGbo00AlMZ13camD0cE2QAdDTw7JWSg8AlDt
         xr1A==
X-Gm-Message-State: AOJu0Yx1H265sIDYaYq4N7uj0pNA3mvrWUbiKZzYHosZlkCUbzx5UBbI
	lrOfhbJF2PoZnOZN+WcSO3oNbJ9HXyXcK/B+fCU=
X-Google-Smtp-Source: AGHT+IEj+6uUyJwq+zdcosbUUYFl/DjEtfzZOcbmbxGsGX2ZwSo27HTvBv0CcHzjOtCfA6em5vWEAraV6iw2pSGSlic=
X-Received: by 2002:a2e:8ecd:0:b0:2bd:1614:d47 with SMTP id
 e13-20020a2e8ecd000000b002bd16140d47mr2999880ljl.42.1695234991008; Wed, 20
 Sep 2023 11:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAEHHSvYa+4opuw5QTcEwDWPMjLzcJd12P5rX_jqbMx_Dc4O4gw@mail.gmail.com>
In-Reply-To: <CAEHHSvYa+4opuw5QTcEwDWPMjLzcJd12P5rX_jqbMx_Dc4O4gw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Sep 2023 20:36:19 +0200
Message-ID: <CANNYZj_JccmXn7B3v_O+WoOCpC4gOC131JRfC06RHyqMF2A4gQ@mail.gmail.com>
Subject: Re: [yocto] [RFC] recipetool create to support pypi project
To: Julien Stephan <jstephan@baylibre.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 18:36:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61055

Basically... yes, this is fine.

We don't really have anyone taking care of devtool/recipetool at the
moment or even knowing how the code works, so you have a lot of
freedom in how it can be improved, the only request from me is to add
tests to devtool and/or recipetool selftests for any new functionality
or otherwise improve tests as deemed necessary (it's a good idea to
study what there is right now - they're in
meta/lib/oeqa/selftest/cases/).

Alex

On Wed, 20 Sept 2023 at 18:48, Julien Stephan <jstephan@baylibre.com> wrote:
>
> Hi all,
>
> In the scope of the RFQ, I am currently looking at bug #14737 (adding
> support of PEP-517 in recipetool/devtool).
>
> I am quite new to the recipetool/devtool tools and I have several
> ideas I would like to discuss before going into development that may
> not be appropriate/necessary for the tool.
>
> As of today, from what I understand (please correct me if I am wrong)
> 'devtool add' supports the creation of recipes for python modules from
> their download tarball so something like: devtool add
> https://files.pythonhosted.org/packages/e4/29/f1e7113ca4632283a76cdbe40b62be860d268fdc0e8eab7216ffaf2aa0ef/subunit-0.0.0a0.tar.gz
> works, but:
> - the created recipe does NOT takes advantage of the pypi class: the
> created recipe will have the SRC_URI variable instead of using
> 'inherit pypi'
> - user has to find the url of the tarball
>
> I think it would be really easier for the user to just use: 'devtool
> add https://pypi.org/project/subunit/' This will have several
> advantages:
> - easier to use
> - fetch latest version automatically
> - easy to fetch specific version with --version
> - can easily detect 'pypi.org' on the url and inherit pypi
> - can easily parse the webpage for several informations such as
> author, summary, homepage, bugtracker page .. (I know some of them can
> be extracted from  setup.py / pyproject.toml, but not always)
>
> Looking at the create_recipe function of
> scripts/lib/recipetool/create.py, we can see that code is really git
> oriented even if you use a tarball, you go through a bunch of 'if'
> that doesn't apply.
>
> I think we can modernize this part of the code. This would also be
> useful for perl modules and cpan or rust modules and cargo...
>
> What do you think? Is this something that is worth investigating and
> implementing?
>
> Cheers
> Julien
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61052): https://lists.yoctoproject.org/g/yocto/message/61052
> Mute This Topic: https://lists.yoctoproject.org/mt/101482623/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

