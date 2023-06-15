Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EEFEB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 13:41:51 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.18709.1686836510410864135
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 06:41:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=iTfNQCSM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-30fca48b473so3516462f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 06:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686836509; x=1689428509;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=smVwELORLYgqjIf1m4FKGUVK0nnaEGe1++Jqs5RbFBI=;
        b=iTfNQCSMWuBP6/vf3CkzsWHcwEO91Hyq2xsHp1cf53IfnbsgHPGlZg6YEzp7ZN0VTf
         IZV/H/G/Yszu1lYGL6LCDcm//sHrsHFkKLefzumEGlMEbPrUzXLnYv7pC1QQm6q5LgoA
         gUth87F6Qhd+olWJ4j+L6HnJ1Orv67PtemtPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686836509; x=1689428509;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=smVwELORLYgqjIf1m4FKGUVK0nnaEGe1++Jqs5RbFBI=;
        b=D/f7n9G0afb8bmJ0xGzSl0c0pcnFWDKE3iAGDS3+UbjO9soOv/z4hZnc5O7brzgc4z
         Kt7hadVbZgEj7e81CdOl5VQEvuFJyWpZx7ob1BoC1SX7pkMBELYRx079Gem8mlP9h+lJ
         EWLZTasEphqtE1PMtFTPwkVH6ZZYrWZQ0l3gWjyeSTAYXwloZ8wd/mKAPMBFaXfJdOyp
         6/kf0fxT/BbeQU4jYVdWVkZEEmDBPEPisYTnOwoeb/dHuyvdZC1ciTXmycfUX6EbLPyx
         FTixgEiOJdXCE3PrC0k7oWtz+lgxvHhRnN/iANqj8Fj0A0Heg77bxbb8HEhKZjHWdMxO
         aovA==
X-Gm-Message-State: AC+VfDyrWTPlkFi3F9kaER+MBxgai1igtvlbDUt9TZGpBWZRoYmjlEv7
	VJdW1eIYywkmeAa+SPON6TvW48C3V8lrM6emrew=
X-Google-Smtp-Source: ACHHUZ5Y3UZVnNLf0klCEeE+pACejL/L3ddbkrCdZlItn1mrnLvZi78ewQy+QiOzzdQLDt7M3LTOng==
X-Received: by 2002:a5d:6092:0:b0:30f:cd58:1012 with SMTP id w18-20020a5d6092000000b0030fcd581012mr6320639wrt.11.1686836508790;
        Thu, 15 Jun 2023 06:41:48 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:441c:bff7:bd09:d1e1? ([2001:8b0:aba:5f3c:441c:bff7:bd09:d1e1])
        by smtp.gmail.com with ESMTPSA id g9-20020a7bc4c9000000b003f7f249e7dfsm20877920wmk.4.2023.06.15.06.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 06:41:48 -0700 (PDT)
Message-ID: <dc91f7ad96c8bfdc64aafca6e412f827790def6a.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Alexandre Belloni
	 <alexandre.belloni@bootlin.com>
Date: Thu, 15 Jun 2023 14:41:47 +0100
In-Reply-To: <20230614085614.27951-1-alexis.lothore@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 13:41:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60309

On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothor=C3=A9 via lists.yoctoproje=
ct.org wrote:
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

Thanks, I've merged this as it is a good first set of steps.

As I mentioned, I think we should hardcode poky + "not ending with -
next" as the test, then we shouldn't run into this issue again.

I'd also like to retroactively push the test results for 4.2 since we
have them and should be able to merge them onto the branch. I'd then
like to see what the revised 4.3 M1 report looks like.

Cheers,

Richard

