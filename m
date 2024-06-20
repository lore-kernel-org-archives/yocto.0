Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C613C27C79
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 08:01:59 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.42678.1718870516406811167
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jun 2024 01:01:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E+f8Xb6n;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b78ef397bso1501899e87.0;
        Thu, 20 Jun 2024 01:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718870514; x=1719475314; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g07MGiR00neiPwtgaXc0JmK9v2rKBLuOuobB6zw9AmE=;
        b=E+f8Xb6nJnRJlpJ/3RV1Q3vu5KiQGUGW2EF0Zbu5aL8dC5QAS4TgzkRAhJSFhpON6X
         d80BP32WxBYjwfrC0FdMHAtqZQQfuMVkDPVbfM2tkdrq2ReRxYKzvjj8ocCaikad7pXS
         5coYI3ATs4KhBleg6+SSaPNrdPMWfDY8uKoqKAIciBOI/J6V9eZfSR1cNJ34Dh97LF+D
         STe1S9M8jz7maaMmuqT2SqwvWgG4lFo8WyOIkM9uQcTD5Xz2q3+iS5irW+JOkLus2riH
         /SOUTxWY1ipkxpvs80+n6I/1jxAEoXN0/YqJ4K/93IAR3V6XoYMwEoz5i6xhhT/HESAJ
         7ytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718870514; x=1719475314;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g07MGiR00neiPwtgaXc0JmK9v2rKBLuOuobB6zw9AmE=;
        b=a4/u/324HUi4shD7f9Il2dWZyjJ8yBkYOCl0pWoZk8deT65CB3gaoKwK5ElqcKU/tZ
         EK1grHF2jef8YfgCI0kGUywJfRLc9c1HEUHPddYIBZTe6v7vD8eN1u5+qet4P8CCHge2
         EyDfWxWZVrGr4Zq+3dFLktxIlYE6S1ZbMiPq9FgUPEWV6E1SaE/GDcTwTVE+WwTe1gqw
         5Qg4EtU9GFdYZ4/PkL3jrwuy9YMzbuTqV0qsQN4iGHGzc819NEWRbXCPCRGvXiH5OuaV
         AsErSbssZ5YjmAnrMgA57MWkeMjzhuSSJH+M8esbvsLi84wldiHzkC6Vij0N/+qAlGWz
         CiWA==
X-Forwarded-Encrypted: i=1; AJvYcCU0hewf8NQS9Q6+GHQvrGD6MZ/8nNRD/sYiZDkNApu3OncoxgZCR8MjQwgzsJgnp3anclyq6OgdDjNB8zPJfJou8xDzHVT9gfyHVAueR12xVzQOvRQn
X-Gm-Message-State: AOJu0Yyzz6nnpdRjBvZco3PRL5hAiO4jeOe+56fmu1PtjRLZVM9Y/5h1
	agCOSMj9mmAKotchRkiY6zNNgqwmbTQX1t0ZpWxcmYhSD+o7cOj/uXIfYFePRFCa75YTMISYzXj
	0dI22KrCnu9Nnnk67juQu/2bJNpQ=
X-Google-Smtp-Source: AGHT+IEP3erI6cCWUR2xEHL8/34KXSXayW2J/uLnJiLCmNFleIgkagLYJyygDsz6570ozfU43JQaea82BtTR8vAE1kU=
X-Received: by 2002:a19:9111:0:b0:52c:ab61:5945 with SMTP id
 2adb3069b0e04-52cca1b979bmr1319890e87.5.1718870513936; Thu, 20 Jun 2024
 01:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
 <000001dac26a$bbe3a070$33aae150$@gmail.com> <CAApg2=RBWRoVd3pGXKqDUoM18pa4HLyEzQd6TsM+BdWBM2ZFSw@mail.gmail.com>
In-Reply-To: <CAApg2=RBWRoVd3pGXKqDUoM18pa4HLyEzQd6TsM+BdWBM2ZFSw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Jun 2024 10:01:42 +0200
Message-ID: <CANNYZj9Xr0n-CwR4PfMwme=ZGnkR7n9cbaJahczENLmXDqu6uQ@mail.gmail.com>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com, 
	yocto-security@lists.yoctoproject.org, Steve Sakoman <steve@sakoman.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 08:01:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63372

On Thu, 20 Jun 2024 at 09:07, Marta Rybczynska <rybczynska@gmail.com> wrote:
> For LTS branches it would be good to enable ECDSA in addition to RSA at least. Steve, what do you think?

In my opinion, no. It's a new feature, LTS aren't eligible for that.

Alex

