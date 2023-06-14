Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23D52EB64DA
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 10:31:35 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.8324.1686738691992279847
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 03:31:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=h70r20GA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-30fb7be435dso2838722f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 03:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686738690; x=1689330690;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kMeY+PKwOTbsIqpbMRVRvRO3yUzjqM5RJwpZPGSYXIo=;
        b=h70r20GAPMGFmRVU/sIUifKspghxzYOoelH8IuSyBnBV6+5LQZjBM6XCJAS0UTU3WK
         UWkA7dsnSRaFLyxmRBXjuI+RJh+sY404zsY1ya9oZ76SpoIeAdnMkhfHn8PGlYXf1c06
         ofYEm1E+TcELXiY6DzaJsastDyrbY6cP65iu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686738690; x=1689330690;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kMeY+PKwOTbsIqpbMRVRvRO3yUzjqM5RJwpZPGSYXIo=;
        b=S72boTl+jZSgNSIoV5FC8qIpF8z6lTZavV277kpVEKjhGGO0bJbBGeWcb7iJd6IHY2
         jBqvZCwVYCxtrWVCQYp++44EsgGTANifHBdgUaZs8RQzMgiXG+714hi+Zaff6a8XU4PP
         g9b9BAGcFgm+ZIxOUHXyf+3Cw0m3kI3WuYXH6PhGW9XAhi0dGPEf0xMoxrR5YB6NnAoE
         b8DF1GY+URbYwHsikinlVAICpj3FT6949chR6/fmNR8IaNFZJ6DsG3WguB3Mvt0/wuTP
         W0vOZBEuFbXwbrVEbwCcJJEOl+hDTPuHpU5UZFiqSJTQ9KR7YGI174UojmweqqdZB9Y7
         YL0g==
X-Gm-Message-State: AC+VfDx0z7YbLiK4H37HgKxJpgJNIq5GfB7sYtHJtj39SjNOUOSD/lQZ
	T+JLkbNOh3bT0qSm4NZl+aNP+A==
X-Google-Smtp-Source: ACHHUZ5qcjENTy6Ch1LtzGH+d/T9VnHLoD6Z4hhm/OdoWm+ct7WSlih86qU32UN8USXcvz0TxUrHwA==
X-Received: by 2002:adf:ee0a:0:b0:30a:c2c4:7133 with SMTP id y10-20020adfee0a000000b0030ac2c47133mr7483787wrn.49.1686738690011;
        Wed, 14 Jun 2023 03:31:30 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b? ([2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b])
        by smtp.gmail.com with ESMTPSA id e10-20020a056000194a00b0030497b3224bsm17830566wry.64.2023.06.14.03.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 03:31:29 -0700 (PDT)
Message-ID: <895aca2cd720d61c4a1f5a5eabaf606c00117546.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Alexandre Belloni
	 <alexandre.belloni@bootlin.com>
Date: Wed, 14 Jun 2023 11:31:28 +0100
In-Reply-To: <20230614085614.27951-1-alexis.lothore@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 10:31:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60297

On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> From: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
>=20
> This series is a follow-up for the 4.3_M1.rc1 regression report issue.
>=20
> It has been observed that the report is empty. This issue is linked to
> configuration description in yocto-autobuilder-helper, and has been
> identified through the following steps:
> - empty report is supposed to be a comparison between yocto-4.2 (4.2.rc3)
>   and 4.3_M1.rc1
> - yocto-4.2 results are almost empty: we only find test results from Inte=
l
>   QA (pushed _after_ the AB build) and not the AB test results
> - tests results are managed by send-qa-email.send-qa-email uses resulttoo=
l
>   to systematically gather and store test results in local git directory
> - however, it looks for basebranch/comparebranch to know if those results
>   can be pushed onto git server, and those variables depend on config.jso=
n
>   content
> - yocto-4.2 (4.2.rc3) has been built on release branch mickledore
>   (https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5212=
)
> - since mickledore is not yet described in config.json, send-qa-email
>   considers it as a "work" branch (contrary to a "release" branch) and do=
es
>   not push test results
>=20
> As a consequence:
> - first commit brings in python logger
> - second commit adds a warning when such case happen, since we are able t=
o
>   detect it
> - third fix actually adds mickledore as a release branch to properly stor=
e
>   again test results
>=20
> There must be a more robust rework to do (because the issue will likely
> happen on each major delivery), but I aimed for the quick and small fix t=
o
> quickly bring back tests results storage without breaking other things in
> the process
>=20
> Alexis Lothor=C3=A9 (3):
>   scripts/send-qa-email: use logger instead of raw prints
>   scripts/send-qa-email: print warning when test results are not stored
>   config.json: add mickledore as direct push branch for test results

Thanks for the analysis. I agree we need to somehow fix this properly.
One solution might be to always push for poky if the branch name
doesn't end with -next?

Since we have the release artefacts for the release, could we add the
test results after the fact now?

Id' be interested to see the 4.3 M1 to 4.2 comparison rerun with that
added.

Cheers,

Richard

