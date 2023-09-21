Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD041CD5BDE
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 12:05:15 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.14963.1695297912817312273
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 05:05:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=vHFf2C7y;
 spf=pass (domain: baylibre.com, ip: 209.85.218.51, mailfrom: jstephan@baylibre.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-99c3c8adb27so104314666b.1
        for <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 05:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695297911; x=1695902711; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c80jQ4OVYcQa4u/6d2X/Ysrqy3Kl2FekwnkeCmtqM4A=;
        b=vHFf2C7yMsTdgVecA183uikTf9X7iiDD8u0Jbl0tacvE+6F33vvy+UFmn7qfR2sBX9
         8/8SUByRF3h5syt7fW0edU4hmTCKdFokyeQEQbIp+WPUzrQ1cJypw2VfbI8s9yqWN5KU
         mNrskMNCoxwG/8Sfc20QcUp7WKHM5eWs20qxI24RzSi3WTYpmWhlj+2WKcmKz+YwzOqJ
         THLnhS5fB6CN9c0Se9b4AY5fVHqTCL4gyHiAfPAK8oajSe2IRAJ+lbY+fs2+mGDbM4Vf
         Th9eS27T/qZyEHkFsjZrDKNbgOVZIJuEjm1hhC0EBG9ORe2kpN1Zz5QifnwjOoe3Y2WC
         O8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695297911; x=1695902711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c80jQ4OVYcQa4u/6d2X/Ysrqy3Kl2FekwnkeCmtqM4A=;
        b=PWLN8L7w7tKiq+OiCsPAziTNCYKAHkqQ3+D+LD3kzHkt/xEpjhpGpf/pNs7qsRzTY2
         G7oU4zM/HCaLfYyaHv4ZJIXYxtFQhJixhJC+Uf91iShzr8RPaVMePPCvdS0WdA+IxqrY
         7hSXPIly9rcUGW8ImB0Bzhvt7wZkzbt5aplsyeyN9ED6StgOljwkwdbX6tS1R5np7/hh
         NiY+3rM+gf2V3Aypao2I1ySmkq4RiHyMD+ug+Cp6TN3PYMLwTt4U7VuCzEMmipcOmQQa
         1vDqK2J5owFyexMmV0ELNuwHysuf00GCOPRevoVozLbK4D6xEg8V17ROCS9Qp4x6ZG8I
         HT8A==
X-Gm-Message-State: AOJu0Yy0kLIDKF5v4m8doKUWyVlKZ3/QANQm8atFCaJ3qgDrcawOGy+W
	ikGy5Ro1JPVem/rUF6xnTf2WIChEBmPcZMqHbzuNqg==
X-Google-Smtp-Source: AGHT+IHxqH/d6eT7vjsCxZObaacko+mYWX+XNBWTbVgEmh+wfw0M/41jLK1LFVzuThZ2J1dkg0G54dScAiipIS5bRwk=
X-Received: by 2002:a17:906:254:b0:9ad:a86b:2337 with SMTP id
 20-20020a170906025400b009ada86b2337mr4974169ejl.23.1695297910879; Thu, 21 Sep
 2023 05:05:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAEHHSvYa+4opuw5QTcEwDWPMjLzcJd12P5rX_jqbMx_Dc4O4gw@mail.gmail.com>
 <37b8c6f109fa402ddee00eab3e35d8faef9d09c6.camel@linuxfoundation.org>
In-Reply-To: <37b8c6f109fa402ddee00eab3e35d8faef9d09c6.camel@linuxfoundation.org>
From: Julien Stephan <jstephan@baylibre.com>
Date: Thu, 21 Sep 2023 14:04:57 +0200
Message-ID: <CAEHHSvaYsP-sf4BNFQkTewP_Ps81wyEo=iC+0Ak4_v+08qjDgg@mail.gmail.com>
Subject: Re: [yocto] [RFC] recipetool create to support pypi project
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 12:05:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61066

Le mer. 20 sept. 2023 =C3=A0 22:37, Richard Purdie
<richard.purdie@linuxfoundation.org> a =C3=A9crit :
>
> On Wed, 2023-09-20 at 18:48 +0200, Julien Stephan wrote:
> > Hi all,
> >
> > In the scope of the RFQ, I am currently looking at bug #14737 (adding
> > support of PEP-517 in recipetool/devtool).
> >
> > I am quite new to the recipetool/devtool tools and I have several
> > ideas I would like to discuss before going into development that may
> > not be appropriate/necessary for the tool.
> >
> > As of today, from what I understand (please correct me if I am wrong)
> > 'devtool add' supports the creation of recipes for python modules from
> > their download tarball so something like: devtool add
> > https://files.pythonhosted.org/packages/e4/29/f1e7113ca4632283a76cdbe40=
b62be860d268fdc0e8eab7216ffaf2aa0ef/subunit-0.0.0a0.tar.gz
> > works, but:
> > - the created recipe does NOT takes advantage of the pypi class: the
> > created recipe will have the SRC_URI variable instead of using
> > 'inherit pypi'
> > - user has to find the url of the tarball
> >
> > I think it would be really easier for the user to just use: 'devtool
> > add https://pypi.org/project/subunit/' This will have several
> > advantages:
> > - easier to use
> > - fetch latest version automatically
> > - easy to fetch specific version with --version
> > - can easily detect 'pypi.org' on the url and inherit pypi
> > - can easily parse the webpage for several informations such as
> > author, summary, homepage, bugtracker page .. (I know some of them can
> > be extracted from  setup.py / pyproject.toml, but not always)
> >
> > Looking at the create_recipe function of
> > scripts/lib/recipetool/create.py, we can see that code is really git
> > oriented even if you use a tarball, you go through a bunch of 'if'
> > that doesn't apply.
> >
> > I think we can modernize this part of the code. This would also be
> > useful for perl modules and cpan or rust modules and cargo...
> >
> > What do you think? Is this something that is worth investigating and
> > implementing?
>
> Basically, yes, it sounds like the right direction to me. Even nicer
> might be:
>
> devtool add pypi subunit
>
> which might match well other possible options like:
>
> devtool add cpan <cpan module name>
>
> and other such usages.
>
> This would take a bit more work up front to implement since it would be
> in the form "<type> <name>" rather than the existing "<url>" but that
> is probably worth investing in.
>
> As Alex mentioned, unit tests are key to keeping this maintainable. We
> do have really good test suites for recipetool and devtool already so
> we need to ensure new functionality has good coverage.
>
> Cheers,
>
> Richard
>
>

Hi Alexandre and Richard,

Nice, I will try to come up with something and post it as RFC.

I will take care of adding selftests.

"devtool add pypi subunit" looks good, I will try to look at this

Cheers
Julien


>
>

