Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39EEC021AA
	for <webhook@archiver.kernel.org>; Sat, 14 Sep 2024 18:41:09 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.101055.1726339265652731125
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Sep 2024 11:41:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=NuEX9xQR;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.218.52, mailfrom: michael@amarulasolutions.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a8d6d0fe021so498121166b.1
        for <yocto@lists.yoctoproject.org>; Sat, 14 Sep 2024 11:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1726339264; x=1726944064; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lG3Ivupy3xWBS3cFnmv/kaxW4UHsASKBr70rCsVhqas=;
        b=NuEX9xQRV+b5SbTKdBDapDzBuawEZkGtY/pEuTyeHPvvTyc79fHdNyHNoheSgN6mhy
         yqPEObNejGe6UNYlSI2QSS0o28sIYXIQz2V7R2NfjCLbrkwBrJi+7ejnEhlgHYKSFyx/
         +2ZKIefQGB6N04/7a0d+Df5GT6CKbcqc3Bt1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726339264; x=1726944064;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lG3Ivupy3xWBS3cFnmv/kaxW4UHsASKBr70rCsVhqas=;
        b=sQxb+pcpkuAEbQh7glmrb1d1BDRYvsKk38LJL7yEJfj2CnYr5rIPpzer1V0ZvNW+gF
         Hf9m0akJ6qRbEUxxkHeJ88QWm/niCPbVnyQ5AEKtSAkktIb8djSNE93YNqeSQbbpBh5o
         gIzqToluiIOgYisAmAODZJ6FR2A27AvFWNiuxMZszHJVlUpmD5oZWZpA/QfCyvIu9R7L
         fP6yD1mguffkmR+9uKVZEg/MzL3EdsJSDES4fsQJykOvRg3MaS8mq1BslqcVOSzP++SS
         ZEW+NG7BBRMpGqjtYoltrZRfjc0eC4c8KSjjC2PeOlyGGrNcp/DJHJLpIfZygidLPeqE
         4nbA==
X-Gm-Message-State: AOJu0Ywidql5uWwPEEshRFu2ehc47tjfiQT83ofUkJgEPonoSvpKM15/
	AliHm3I0A/u4Ku1IHmtx7J9Ri2YxWR3qd2iFW9jfL6e5z110yqHqK1i0KWMySQ4wOZm7CE3iqW7
	atgjDbllCXB3KILYttpw3hEaRaiXfvtY8wm4yXPqkoqTp+J5Lk/A=
X-Google-Smtp-Source: AGHT+IHA78xiVaccppYb1q5YU4d0R0tcAOqpdia2j7sG7faXt5Rl7nIyEpa4o04sj0Cm24JlVwunb1M/as8G8hS/kaU=
X-Received: by 2002:a17:907:d867:b0:a8a:8de6:a610 with SMTP id
 a640c23a62f3a-a9029617a48mr1053284166b.40.1726339263043; Sat, 14 Sep 2024
 11:41:03 -0700 (PDT)
MIME-Version: 1.0
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sat, 14 Sep 2024 20:40:52 +0200
Message-ID: <CAOf5uwkeGHLaV5xoq0PG_yOrX_B62QzXaaTGQP-BqLmUB-ytEA@mail.gmail.com>
Subject: Jenkins warning-ng icon for yocto security report
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Sep 2024 18:41:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63836

Hi all,

I have sent the patches to be included in warning-ng to support yocto
security scanning result and looking for some icon representing the
can result

https://fontawesome.com/icons/categories/security?f=classic&s=solid
In the free section. Can anyone suggest one?

More info here
https://github.com/jenkinsci/warnings-ng-plugin/pull/1824#discussion_r1759750853

The analytic model was already merged but now I would like to have the
proper icon there

Michael


-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

