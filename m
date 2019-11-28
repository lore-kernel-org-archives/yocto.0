Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1825.1574908842942869066
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 18:40:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=a+ySI2Im;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64410E00E85; Wed, 27 Nov 2019 18:40:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69BB5E0085D
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 18:40:40 -0800 (PST)
Received: by mail-il1-f175.google.com with SMTP id u17so22878674ilq.5
        for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 18:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ufIwhoTkrpyxZykUmq2pmvPbPe6VuyVkxwdu0fD04oY=;
        b=a+ySI2ImKZbuZsPSjzB8pyS1HHwnPxYYRocJJYKWDAmccO2JKnCy/OnlJcjjfYSpop
         2cgEsWh+Sz7EbqkiH6SiNYVm9Q/+npWW0UJRuP+jeBlroEu9T+fGN1If7jCQpjAprZNV
         l9q4kgaymif8tatA42ornw4FJP90NbfDN3ThXccOflp2gxO7x9e+qjYELtsQ7igKDYYP
         FelJtiKlDWlKKndT8boRnwbN8Vewr7owfLT1yGtBlzn7Fd20DcLpHhhQGZLXO81NHRFW
         iK/csfX18OedxTodDCU+xqkP/Wj8BpMQUQxLN2h+JJU/Y/m66aEbKcHZUkLHprTGC5Ym
         0d6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ufIwhoTkrpyxZykUmq2pmvPbPe6VuyVkxwdu0fD04oY=;
        b=hVawSW+3+0Ogav+947HfmETwXOZ/OhWVyfjG8OGTQ37YP7aO7rJPZQc9IPmPHnr1Lu
         aguyb3ilTSfxG4vLulUFeDJxIgPFuWY98a4o1o9iSfn4fWCR2XSme3iLSM6raj5LOoow
         wKEfo1fr4GZcq+8xc3E2H5o4x0g7KYWTQfMLju7gXOtvJALr5PGV54hlOu/ni+HVYSQZ
         Cv91ZsqnioTQljZ9UGxPPW+Z2AbgB1/ATP2nZ9r7LQDaQLZ7oE2WPExUB0rkItUmYVLd
         mntjgslrLe16XdjgtTFqTHrCPwQeu79UmhXr0ry4NZLVpFbtV8c/nHDs3OluGCxccTAC
         MAJg==
X-Gm-Message-State: APjAAAU0sCQZ3xL0IgWXaHeALS5E7bueOWxFN2wA+1ZVxi1gZAdeibfV
	2tXjzjqRQzzyA76KKDy7s7BTc68brPbYxm4jcV3tag==
X-Google-Smtp-Source: APXvYqz+i8KpXd753hb94eNGiHvyr4+kMeGPm2RiCguxbsGvd2ixMpsVmq7kBzobQbhEtvMFWFqMZM3JU/BfOiNExQs=
X-Received: by 2002:a92:cf46:: with SMTP id c6mr28097876ilr.159.1574908839616;
 Wed, 27 Nov 2019 18:40:39 -0800 (PST)
MIME-Version: 1.0
References: <CAPoiz9w9qWwEqMipK7iF-VLP5dFH21nZdTCpeLNncsqHHpFJxQ@mail.gmail.com>
In-Reply-To: <CAPoiz9w9qWwEqMipK7iF-VLP5dFH21nZdTCpeLNncsqHHpFJxQ@mail.gmail.com>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Wed, 27 Nov 2019 21:40:27 -0500
Message-ID: <CAPoiz9yEp0xESQQYjBqAOoQTbv+CtkY+uw50_bBtV+ntQL2xPw@mail.gmail.com>
Subject: Re: OpenEmbedded Workshop at FOSDEM20 CFP
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 21, 2019 at 4:12 PM Jon Mason <jdmason@kudzu.us> wrote:
>
> We are proud to announce the inaugural OpenEmbedded Workshop. It is
> being held on 03 February 2020 in Brussels, Belgium. The day after
> FOSDEM.
>
> The Call for Participation is open now. For more information, go to
> https://pretalx.com/oe-workshop-2020/cfp
>
> Early-bird tickets coming soon!
>
> Thank you,
> The OpenEmbedded Board

We forgot to mention that the deadline for the CFP is December 15th.
Please get your topic in before the deadline.

Also, look for early-bird tickets next week!
