Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60BDE71D40
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 15:02:09 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.19762.1695999725198196405
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 08:02:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=YZFVpTZL;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.51, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9ad810be221so1934581866b.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 08:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1695999723; x=1696604523; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BdwrQlTuOb8F4lf3fkeLYTdpeOkE1WDGQgVtyQUKdZo=;
        b=YZFVpTZL1LNitw9G4729l9XY40ELqLO3I8m5W6d8XXywN6maVpBj+iVm5htqWez9FI
         MfaehUnuA+v1a8xLolFycWZT+cLe8CP782eUTRIli9D4B4tbaBZmFaWmSWdf5drKR9rN
         t1znO8Pg8MuPt5C7I/Y1yjnFaiSFUQ1kbJDEKE2WxU8ozF01lxcSDo61eKBIuLDfG6QR
         6MjII5MyNripJ+8edtfJKayOUYWUOzyq+QSqypLisq++2uBeTefNtury2Qho/GYjjpN3
         CDo7Durb5MR7AjsM4Mwitl1TG+t7v4PFTAcWJaLasWkpM0CKSgqe+ta6JuFj49uvG+LW
         yyPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695999723; x=1696604523;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BdwrQlTuOb8F4lf3fkeLYTdpeOkE1WDGQgVtyQUKdZo=;
        b=bbpl/FVP34fNqjmVpd9VmfHkxiDZIH6ymkunu8pmf/4CQvf4gwk4CEN+U1tXrsDqQE
         y8wAz71P8bxfnkEbOOIyuoyYib3kDftuHyGW4YoGUKQP2P1PnvRbqQvSGkfb39QEiIWl
         ZL9oZ7OLHsLdaPraZFgfqUbyPVsL+PrSMH81PI6xwEi+OAU7B9vVBFVt67It0ADmermC
         xP6vjfgYeqWXX4Ekkkkv8t3gScduHNQ2Oxa+8Ltp867oC3jqVfIl1BqkN1LQeC2tqhez
         Ytj3S6W3axETshHE1QVHPJEad0rW0nQGROyUCKNkZQ1exyqpgN+pGBZxUSKsG7vYY6Au
         Bblg==
X-Gm-Message-State: AOJu0YxGmbiBKW7CVVsLju3ZzcMC3sJDvUPg6M7GRuQjpqxxjKbs6vUl
	cLDqxuEmCwQqBeYYrtryNuUv+9uMgKWjki2grDaTqhRnJShtTnyI97GnuA==
X-Google-Smtp-Source: AGHT+IGNhOUDDwUAo0YxGSBbQ8skUjOk0ZoJPD5Kw2A6ruqbmLoAs+NEHyEA92SN5tCJlv3ahR+DARMVCmSldR0+CBE=
X-Received: by 2002:a17:906:108f:b0:9b2:b71f:83af with SMTP id
 u15-20020a170906108f00b009b2b71f83afmr4218132eju.20.1695999723031; Fri, 29
 Sep 2023 08:02:03 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 29 Sep 2023 17:01:37 +0200
Message-ID: <CAEt6NwoJUjoLFKhXsDWp53qh9Wm2YZAB9YHVZrGGAL+1goxKCg@mail.gmail.com>
Subject: Yocto Project Summit CFP closes Monday, October 2nd
To: openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000007e74c060680b50f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 15:02:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61167

--00000000000007e74c060680b50f
Content-Type: text/plain; charset="UTF-8"

The countdown is ticking! At the moment the CFP for the Yocto Project
Summit 2023.11 is still open, but will close on Monday, October 2nd, 2023.
So made sure to submit this weekend!

https://summit.yoctoproject.org/yocto-project-summit-2023-11/cfp

--00000000000007e74c060680b50f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The countdown is ticking! At the moment the CFP for the Yo=
cto Project Summit 2023.11 is still open, but will close on Monday, October=
 2nd, 2023. So made sure to submit this weekend!<br><br><a href=3D"https://=
summit.yoctoproject.org/yocto-project-summit-2023-11/cfp">https://summit.yo=
ctoproject.org/yocto-project-summit-2023-11/cfp</a><br></div>

--00000000000007e74c060680b50f--

