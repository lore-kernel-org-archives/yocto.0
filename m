Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C15C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 08:27:07 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web08.5616.1664353622955533906
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:27:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Gk5Evdnv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id l18so6576200wrw.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=AQYKt6KyKrwOkAuLEIHGamYNWbxg1k5biDKAtHBpDr8=;
        b=Gk5EvdnvueRvV29CHWximHIdzGNXJsHTsu73Iin9N4OVXbs14OYkipr5PMSZ99lVxV
         XLeZjvjJk2F20Ue6jXpn5NNynHv3zMO8/DwLPX04PHWJLPruB+eMGN48F5Q+0PaikSKN
         gUWMLUfoy6HgsPtEXCxowetdx5syn9n4nobIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=AQYKt6KyKrwOkAuLEIHGamYNWbxg1k5biDKAtHBpDr8=;
        b=PUqele3w3WRaKDhD4uKtbwjcBQtNpEWA5hl0ml7w4W1TY41ci0uEQ2NwJDRwca0DhB
         sS9pFtwyloN6sd1s1cUA/BY28eennJ127nhG2AmRgWy5NthDlrwoPgvnVHT68p0//h0y
         x21zXDyA9+9gF6WxZHsYkirf1gmN7LjTSrpT/WjKM+LaPnCdHMeHbp2vJnISXAAkjAKt
         T3kYTBL+Jj8nXwk4jXGys2b+BbqbSbJTy3HC7T3DpOhk/+q4TrK7OVYPuD9R462ElBz+
         Nxd1PsFjoAW61wSLIbV/zbS/hJXGNtd22sahixrJ1Fix8IFFcS5DkPgCjY0ewW/tUR4q
         IHQQ==
X-Gm-Message-State: ACrzQf3MnkY/Dvkv88WbAH9u0CaeLJdbYDhlR5sGgPcmFKxB0HSEjs2i
	09Dzl79ac8HBVWX3b/2p8g4zLw==
X-Google-Smtp-Source: 
 AMsMyM5HwtVpRO9yet2/yy7xddrNAwWfqpmjnww06gVQ4/+sc23Qzc1o6J5MrnOfK/EMwbXd23qGgw==
X-Received: by 2002:adf:bc13:0:b0:228:6d28:d2cb with SMTP id
 s19-20020adfbc13000000b002286d28d2cbmr19768237wrg.375.1664353621289;
        Wed, 28 Sep 2022 01:27:01 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:33d9:6235:54b:97be?
 ([2001:8b0:aba:5f3c:33d9:6235:54b:97be])
        by smtp.gmail.com with ESMTPSA id
 j1-20020a5d4481000000b0022ae401e9e0sm3539735wrq.78.2022.09.28.01.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 01:27:00 -0700 (PDT)
Message-ID: 
 <716fbe79b91a412cf842e8994c725fa2a0c966a3.camel@linuxfoundation.org>
Subject: Re: [yocto] Builing Gcc fails Poky
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 28 Sep 2022 09:26:58 +0100
In-Reply-To: 
 <CAMKF1srEJ4D4=yYvygt49mWutmHErcKPtJhmDBp0MAEiCJk24Q@mail.gmail.com>
References: 
	<PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
	 <PH0PR84MB183560163B152E0F72D6CA8EC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	 <0124314022d5ab2c61ecdbe42819b6d5b9f2a950.camel@linuxfoundation.org>
	 <PH0PR84MB183582080EA5499AA5B93CF1C7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	 <CAMKF1srEJ4D4=yYvygt49mWutmHErcKPtJhmDBp0MAEiCJk24Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 08:27:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58199

On Tue, 2022-09-27 at 19:02 -0700, Khem Raj wrote:
>=20
>=20
> On Tue, Sep 27, 2022 at 3:41 PM Edgar Mobile <heideggm@hotmail.com>
> wrote:
> > Yeah building gcc alone worked.
> > Now I'm concerned about the health of my machine.
> > Thank you!
> >=20
>=20
>=20
>=20
> Your machine is fine I think bitbake is extremely parallel and that
> might be issue that it=E2=80=99s eating up all the memory. How many cores
> does this machine have? And ram ? Usually it=E2=80=99s good to keep 3-4gb=
 ram
> per core for default operations you can also pin how much parallels
> tasks and -j settings bitbake should use during build look for
> PARALLEL_MAKE documentation=C2=A0
>=20

Khem may be right and it may simply be running out of memory. You could
have a look in dmesg and see if the kernel did report OOM conditions.

What worries me a little bit is that things corrupted. It is possible
that OOM could do that but that would mean exit code checking isn't
happening properly somewhere along the line in the gcc build system
itself (which is possible) or there is some other issue with the error
code paths. The underlying software build systems are really outside
YP's scope though.

Cheers,

Richard



