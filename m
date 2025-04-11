Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AADC36010
	for <webhook@archiver.kernel.org>; Fri, 11 Apr 2025 12:15:30 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.24360.1744373720530137333
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 05:15:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dOT2ZxVk;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c546334bdeso157380485a.2
        for <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 05:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744373719; x=1744978519; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81KWNaXwRLYQkj+JqMi/vdxnrZG6d5ALzzCdiq/gJ2g=;
        b=dOT2ZxVkV98DWKpogCU8RVQOmw9ZsfGgfvDLQQJVKcmuJ73Ynr2pakL+RNNJxLDlHe
         RVsQd65Ayjde6uutibOoWN47PySRPlXjYhVDwsi7/7RHD2qYOBI9J74y3nmJrVhTn2Yb
         nwOJcafepsyGlt1SuzwjawwzFI8pqimtULZM7nUh58j/LFqwhEug/70qHOwYtV3V6Vpk
         FwEmPrCSJv9790wNgvwh1j2z3kKAkablDhVZGg/czSQEguo2TDyCedhfXPnf6HCB93EH
         8JzQjkwyyt4EZ61O3XUUirW4JeYhkHaei7sOADI1jKHeZLrTljoIZRUAWlCL7nypNYYF
         8NNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744373719; x=1744978519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=81KWNaXwRLYQkj+JqMi/vdxnrZG6d5ALzzCdiq/gJ2g=;
        b=ZRQhQ+X5qPnsj1A3CvIepUpiGqg9xfqyMcBsYCrrdKaLaxh7vYsmuj1h7RxzVR9Cvo
         HUBsxojjtm50G7KY+8B0lXudIal7vVtXcH5JUMPKlzQzPyRIMKSesdQ1UVOkWCDg+sRH
         nGUSrE/blm4QMCWi/I9k4CmVt0/aCoebJHF7dRKzEL+isEfhGtUls9DjL2ano/vv+iN/
         cetgcG3UgeCjmBAjjMDNIN+cu0N1VXFe7R9/Aynw8Pq0KMT/SyeslbwxPj2DxFJCF8/D
         i5ULZBiqsTLxmQ2kB2js1kjqklXDJ+PnUz3wIqFqMUu+VKopUjrqcUchFtAXKF5iDEuT
         jLHg==
X-Gm-Message-State: AOJu0Yyoe5OfaBU/u2/tep7NhczUIv6qpX53Z9J6p4Z1AEjo/fkrW8gy
	a2hjv94MatfkEkb/KrwDXtPuej7TzV8IHnTEslVrMe4PA8M2oP5AbBfEurxhesKl/uI4zi0qrbS
	TBRvkri7gJXEHRqnYGnlWVvHq6mXc1w==
X-Gm-Gg: ASbGncuIlUrTUIJC5ypnU9JL+OrmnE0lvNLaWjdnGS1BvaPbL89KZrKcdZbagBXB9+w
	ADk6c8N11fDLAgmtjYCCu18PRZBJdN/z74kSxsZ3YtPKTjnmtCbbA5XAjwNlSoPYz8+LC54C5MB
	ZC5WeDK3838DI9E3DT8S0G5YVIjNNL8Lo1mZLsttfNucXx7zh/xcgSSMzN
X-Google-Smtp-Source: AGHT+IE652LOuT1GDbjZhhmBNywVDzCBL0Fjxz65t+anbpWV9PCeHXEpQDPGn2qF+qEzwe5X+oQ0ycrrEFVsMRIf6hY=
X-Received: by 2002:a05:620a:430b:b0:7c5:4788:a14e with SMTP id
 af79cd13be357-7c7af1e44efmr375186485a.39.1744373719567; Fri, 11 Apr 2025
 05:15:19 -0700 (PDT)
MIME-Version: 1.0
References: <27168653-ce9a-417b-8f89-5efc9466ab9c@gmail.com> <2395.1744373336201661750@lists.yoctoproject.org>
In-Reply-To: <2395.1744373336201661750@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 11 Apr 2025 14:15:08 +0200
X-Gm-Features: ATxdqUHmxg8CDGzk3bB2P7_7TxUE5050m5OMKHA4ns6-x9vnaToiqJxJLcAYN-Y
Message-ID: <CANNYZj_+OJiYJknnRR_hZnWfCGSp-RF9p6_R9uMyxaKjbMS9Uw@mail.gmail.com>
Subject: Re: [yocto] A new member
To: yocto@lists.yoctoproject.org, nguyenthaithuanalg@gmail.com
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 12:15:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65142

On Fri, 11 Apr 2025 at 14:08, Thu=E1=BA=ADn Nguy=E1=BB=85n-Th=C3=A1i via
lists.yoctoproject.org
<nguyenthaithuanalg=3Dgmail.com@lists.yoctoproject.org> wrote:
> Let me paraphrase your hints by the steps below:
> 1. I fork a new one from "master" as: https://github.com/thuanalg/poky
> 2. Add my new recipe into "meta-openembedded"
> 3. Send mail to the Admin about my recipe. If that which email? Khem Raj =
raj.khem@gmail.com?

Hello,

I would suggest something different. First, create your own layer,
e.g. meta-myproject, and add your recipe to it. Then you can publish
this layer (with the recipe) on github, without having to ask anyone.
And only then we can consider if the recipes in it can be moved to one
of the official layers.

Alex

