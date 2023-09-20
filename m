Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FA1C05022
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 20:37:44 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.455.1695242262488521402
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 13:37:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Yr8ARxA6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-403012f27e3so2535675e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 13:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695242261; x=1695847061; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ka1jyc+ouyU1FQlMOtNy7Ko/upRIezv9IypOiQJXNRc=;
        b=Yr8ARxA65eh/pdPnK41I0jeb5rvicr+SzvUAq1dYuAqYdwGI+xwh50JMpnKwqAOV9t
         eaRjlHtcYiKp5ebf56BuEb1q4twc6/iBpf+0edMqWmH+NvT531cu7mhtBsYObBBlCGh6
         CUFVvBuXbR23p2TpkG/OwWQgx9wRf4J0NrV2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695242261; x=1695847061;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ka1jyc+ouyU1FQlMOtNy7Ko/upRIezv9IypOiQJXNRc=;
        b=h0R9PVsQmUXprFkXWrvXMfUzX0LDOXUqnaBm4XGEjaqCrT85an1jqwUWcmUdlXpZg+
         Cd303RwHgvMchYA7cCqeqQ/0JocVJHpjwGiSP53XU8RRLqCvLzYFVkUnwgbJLafw/V8I
         Cka1tGilbcU80/6VI1nVQpwnTOhtN1iqH4GEfosISNyeIl5Snl8U3qyvqcB3DVVTfOeP
         5I1kL+P67GTgDMfigiBDYDq35htDKS4Wt50FtRpcqghZwmxwyHe/HtZqw54mllD6Dfvu
         66az8bPbyBMj/uU05sk7napzQt8mKAfCYYdcfhf19s3Br6yoSrp//6WDPJek9aP4OnCp
         ffWQ==
X-Gm-Message-State: AOJu0Yy1z4gqHAAevFglRRJSlQ9rFVHaENSIB6JhkO6cgCfYEFzPZbVq
	c2xHXr3bsRTLDOguhYIJKA6irA==
X-Google-Smtp-Source: AGHT+IHnhOeHWvAmF90P93a4043vioFCYbCO22DBxb4cspaxdYUVYJFltHscqMhMqxWztI1T+Qk5pg==
X-Received: by 2002:a05:600c:ad7:b0:401:b652:b6cf with SMTP id c23-20020a05600c0ad700b00401b652b6cfmr3449665wmr.13.1695242260814;
        Wed, 20 Sep 2023 13:37:40 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a109:22f2:cbec:fa4e? ([2001:8b0:aba:5f3c:a109:22f2:cbec:fa4e])
        by smtp.gmail.com with ESMTPSA id q5-20020a5d6585000000b0031f5f0d0be0sm19687401wru.31.2023.09.20.13.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 13:37:40 -0700 (PDT)
Message-ID: <37b8c6f109fa402ddee00eab3e35d8faef9d09c6.camel@linuxfoundation.org>
Subject: Re: [yocto] [RFC] recipetool create to support pypi project
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Julien Stephan <jstephan@baylibre.com>, yocto@lists.yoctoproject.org
Date: Wed, 20 Sep 2023 21:37:39 +0100
In-Reply-To: <CAEHHSvYa+4opuw5QTcEwDWPMjLzcJd12P5rX_jqbMx_Dc4O4gw@mail.gmail.com>
References: 
	<CAEHHSvYa+4opuw5QTcEwDWPMjLzcJd12P5rX_jqbMx_Dc4O4gw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 20:37:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61056

On Wed, 2023-09-20 at 18:48 +0200, Julien Stephan wrote:
> Hi all,
>=20
> In the scope of the RFQ, I am currently looking at bug #14737 (adding
> support of PEP-517 in recipetool/devtool).
>=20
> I am quite new to the recipetool/devtool tools and I have several
> ideas I would like to discuss before going into development that may
> not be appropriate/necessary for the tool.
>=20
> As of today, from what I understand (please correct me if I am wrong)
> 'devtool add' supports the creation of recipes for python modules from
> their download tarball so something like: devtool add
> https://files.pythonhosted.org/packages/e4/29/f1e7113ca4632283a76cdbe40b6=
2be860d268fdc0e8eab7216ffaf2aa0ef/subunit-0.0.0a0.tar.gz
> works, but:
> - the created recipe does NOT takes advantage of the pypi class: the
> created recipe will have the SRC_URI variable instead of using
> 'inherit pypi'
> - user has to find the url of the tarball
>=20
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
>=20
> Looking at the create_recipe function of
> scripts/lib/recipetool/create.py, we can see that code is really git
> oriented even if you use a tarball, you go through a bunch of 'if'
> that doesn't apply.
>=20
> I think we can modernize this part of the code. This would also be
> useful for perl modules and cpan or rust modules and cargo...
>=20
> What do you think? Is this something that is worth investigating and
> implementing?

Basically, yes, it sounds like the right direction to me. Even nicer
might be:

devtool add pypi subunit

which might match well other possible options like:

devtool add cpan <cpan module name>

and other such usages.

This would take a bit more work up front to implement since it would be
in the form "<type> <name>" rather than the existing "<url>" but that
is probably worth investing in.

As Alex mentioned, unit tests are key to keeping this maintainable. We
do have really good test suites for recipetool and devtool already so
we need to ensure new functionality has good coverage.

Cheers,

Richard





