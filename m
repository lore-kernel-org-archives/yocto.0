Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24264C64EC5
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 14:57:22 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.85516.1675781832571536585
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 06:57:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=azpC+qMS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id f23-20020a05600c491700b003dff4480a17so993743wmp.1
        for <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 06:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NQp6HxNV6R5puf//1yuMMLcHga2FhNmnx60eRNSy8lo=;
        b=azpC+qMSj1dUbk5/PJoFc7A7au2TdO2do45jr8eQgU3CFK+mN+fBAvDNHYl0/Nplxv
         5V4eEobQ628qYlnqHhvx2/IcI3R6gl3BtXkMURs1TG/JsqjFLrIrLwnsmqW2ZjerGs0R
         14Qcoioe4/h1Ten6+ijuubDwayg1x9u71IS3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NQp6HxNV6R5puf//1yuMMLcHga2FhNmnx60eRNSy8lo=;
        b=N7oyyOp0aNRZKLPEviH9oh0/DrfmwkC/8Cmycw9fomYEff+nwVaUNAEImJP9VrxTog
         Q7U1JXfeI5hdEed4D4DuVMflS2m9xXMigZgkrfIk0ebMHjnBK+jejR9anbkVQWNa8avS
         XWIWjmgTaZt6H64ZKSPyMqy7I3vcyL7lnl6r0ViXmwRKRA0bxguUalG91l2vLW7AuXqG
         v850a+UGovuIXcmp0PZqJkywdLtpqi5dWNnR6sT9qP307B738qaS/mK+EloT3Fv/eA16
         g4dUuwAU68KtcDjGAeDxrDafZ9zu1rHw9mtx2Xf49aXnu0/hDuumkdO07eQa+cU83AKJ
         kRnw==
X-Gm-Message-State: AO0yUKXOQUUXWH/o3ufUyN0hK+ocS7SNuweV5lV0nKMhMfRiHQwvftXS
	18ErkUPURmR5CAr2F3AK8cwPpA==
X-Google-Smtp-Source: AK7set9OaVYEHC4AUPBH1RUy2QXoIkLl6wptbKNb1TsFNcu+EHs/PKMgzenArPbrMFYaGvDMqyMWIw==
X-Received: by 2002:a05:600c:2ac8:b0:3dd:638d:bc31 with SMTP id t8-20020a05600c2ac800b003dd638dbc31mr4070984wme.26.1675781831039;
        Tue, 07 Feb 2023 06:57:11 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:52fa:55ec:3791:f6b5? ([2001:8b0:aba:5f3c:52fa:55ec:3791:f6b5])
        by smtp.gmail.com with ESMTPSA id u2-20020adfdd42000000b002c3ec1fbc0bsm4303002wrm.94.2023.02.07.06.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 06:57:10 -0800 (PST)
Message-ID: <dc981e68a7b2988dced0ee58e6e3b5c12ba8f3a7.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH 0/3] ease send-qa-email usage with
 older history
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexis =?ISO-8859-1?Q?Lothor=E9?= <alexis.lothore@bootlin.com>, 
	yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Tue, 07 Feb 2023 14:57:09 +0000
In-Reply-To: <d354eaf6-17d9-d69a-666e-adb0bfb09207@bootlin.com>
References: <20230207141217.33892-1-alexis.lothore@bootlin.com>
	 <766584aee3b3db7d526098ee3027e5ed2dbf7908.camel@linuxfoundation.org>
	 <d354eaf6-17d9-d69a-666e-adb0bfb09207@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 14:57:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59194

On Tue, 2023-02-07 at 15:52 +0100, Alexis Lothor=C3=A9 wrote:
> Hello Richard,
>=20
> On 2/7/23 15:42, Richard Purdie wrote:
> > On Tue, 2023-02-07 at 15:12 +0100, Alexis Lothor=C3=A9 via
> > lists.yoctoproject.org wrote:
> > > I assumed that no tool is currently trying to parse the regression re=
ports, so
> > > I chose arbitrarily the metadata format.
> >=20
> > The reports have never been useful enough to parse so that should be
> > fine.
>=20
> Good
>=20
> > > @Richard : on a side note, the broken From field in my previous email=
s was probably
> > > due to an accent in my name, it should be fixed now. Please let me kn=
ow if you
> > > still have issues with this, in this case I will force the --from fie=
ld.
> >=20
> > It still shows incorrectly for me. It is an issue with the bootlin mail
> > setup and DNS, not to do with the character encoding. My changing the
> > accent, it is now duplicating the signed off by lines so I'd avoid
> > doing that!
> Well, that's a shame, sorry for the annoyance. Once the patches are appro=
ved or
> lead to a v2, I will resend with "From:" forced, except if you want me to
> re-send it right now.

Patches look otherwise ok to me so please resend!

Cheers,

Richard

