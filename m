Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.16730.1589558752843077225
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2020 09:05:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=i3fe2osW;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: daniel.diaz@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 807C0E01B6D; Fri, 15 May 2020 09:05:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B74FE01B6A
	for <yocto@yoctoproject.org>; Fri, 15 May 2020 09:05:48 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id u6so2813982ljl.6
        for <yocto@yoctoproject.org>; Fri, 15 May 2020 09:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uPAUg1hqRcRY5R6N+giZ/EdWLpEifRyjheSZH9bmjT8=;
        b=i3fe2osWMy51Q58EjaC3CSaoBXxXn3+wH3c4jhJcdFbb0EQAjYibVs4CnCn0X0gSjj
         COBQjig99lPsI6hSL82K+VpCvxnVmqd4AmYNTsS4A2iWYFYXUaiaGyN2Pk9RtDMikoP8
         ZZfMT2bn1S8vW/mPQkmMLdH6KYKN+QJ0bA+K5IOJJmLn2FlMqV5oiQ66MmlIX/51WrL9
         m73zrRiAKY1w+skmlGkTfR9LrHGgBKJnbO66RU2H5j3leVeR2+CoeX4PJcpa9UhCnaRk
         tVIs6B1wkyaI2P35ZeDsFgbz/rO5z5gHo/Crc37xBdjqgySb1yUhH3jvwnCyxCrbDkJo
         DYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uPAUg1hqRcRY5R6N+giZ/EdWLpEifRyjheSZH9bmjT8=;
        b=le6ZNDmJ2RK0g6RnA+S5t80d9PZdanX1xGLcO3xAskeeOHmQ/OxSwN7nK8dnJr6Ojm
         ftq2Qmxx/rw+6o/UTOumNYfWx4N2pmjXSfSJd02vdzOoWXwc+OEDsYLUpV9r8qH0ENm4
         fYxuWK3Yaqh7sn6+Dlo73xYgUm1vvhT4s2yLtrJKQFoT5OVzWPdNC221yo7uvKRNqJUQ
         9GxaC4LGjursPorAQT5pZvGg7XCy5QOCZv2n3t1Km39BA4yXhEAGlTVsSNoZ9wxPEYzt
         wu1aiNBH1caRf+oT7DGU/9HZbK4KXGDrvH3A36clujgQzqE0lmIj7fRePqwvqxhh56O2
         pnjg==
X-Gm-Message-State: AOAM5322/2j3JCPDNRvu+GWNJMw8OPFBv66esyFH5IK4XBdINrHUlFHf
	TAAx2pxHlxy1Z6/EarnhratBEBv4nzb3JYy+CjGxOW6pLUzRKg==
X-Google-Smtp-Source: ABdhPJyCFW8wuyPVAAtPpR6XFyr23wRHYDs/NEkcGl4iJ5cn6VgAH9xG0UuRa6EGtMD6wCEtCtrxq0klLp4e2dX2lkk=
X-Received: by 2002:a2e:6c08:: with SMTP id h8mr2656036ljc.48.1589558747511;
 Fri, 15 May 2020 09:05:47 -0700 (PDT)
MIME-Version: 1.0
References: <f756b087-c3e3-3a47-171e-bc72421ff48a@balister.org>
In-Reply-To: <f756b087-c3e3-3a47-171e-bc72421ff48a@balister.org>
From: "Daniel D?az" <daniel.diaz@linaro.org>
Date: Fri, 15 May 2020 11:05:36 -0500
Message-ID: <CAEUSe783rDYWD6we-OLpU2=eM1HTJ0=zars+RJOBYW0c8NFveQ@mail.gmail.com>
Subject: Re: [OE-core] OpenEmbedded Happy Hour
To: Philip Balister <philip@balister.org>
Cc: "openembedded-devel@lists.openembedded.org" <openembedded-devel@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-members@lists.openembedded.org" <openembedded-members@lists.openembedded.org>, 
	Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

On Fri, 15 May 2020 at 10:56, Philip Balister <philip@balister.org> wrote:
> I've made a wiki page to track these:
> https://www.openembedded.org/wiki/Happy_Hours
> Then next one is scheduled for 2100 UTC on May 27.

Ah, just in time to watch live SpaceX's launch:
https://blogs.nasa.gov/commercialcrew/

Greetings!

Daniel D=C3=ADaz
daniel.diaz@linaro.org
