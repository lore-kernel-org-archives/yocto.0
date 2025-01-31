Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4C1C0218D
	for <webhook@archiver.kernel.org>; Fri, 31 Jan 2025 06:48:39 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web10.14386.1738306111352067305
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 22:48:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eOB7OZPA;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6dd01781b56so16427376d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 22:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738306110; x=1738910910; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lkfhax5XPbxhVTUlbH7qHfRLpZ8DGK/QqwHScYeFYV0=;
        b=eOB7OZPAFhMEtALMDaSmG2Pk6eaZzYpNQxdIC/zuBoAM6ql8ow112cePWvy8IBOyvn
         x56tjJ3f8E3hh3TPlrnZieHxhBay84xwDM5lz2hO/1rb5az1rbLrk4cJ17dSKdb91Gus
         gYcyCpviOqJHW0Zaoun/zsvYj3CJ0htEHrGohv9mTerX1fBGEiRzar4SMEXmAgLXR5cN
         JkOBvW++rco6My2lpAV/V3+yeBGPZeRukm2RZVPa4tQBLTtKtXntFXuEg6YGI07Pf40a
         T6XCXQLinftH8mFxY/BACh0meHbksPPiS5pPJ3RGIQ2oCfqT2PpatS03K7ZG4Y5AvwRk
         rHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738306110; x=1738910910;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lkfhax5XPbxhVTUlbH7qHfRLpZ8DGK/QqwHScYeFYV0=;
        b=iyWR+B505ayUkdQAmjydGfLrMjSVqUXWAZMgH9w7IJj/MolO1It+qs90RUzMAKKWcS
         DG1LxwB8h3Lmm1dkoGlN/MuEY/2Vi87UCkmtRjb8Dg6OUJy/m+mO+6ubpKe7L1fcSVOk
         rs0cjyPH7fvGAGjC1o2G2E+6cPp/hpu7Tpn+QwqSd4Z+yui3vUQvmJKLPbzZarBDbVL4
         2z7uNQO4O96FxMY6SMuG/oBTT2UIudZxAVfQP1bJxVWFXH/4CqocCEy4xDuy09u1+chM
         uRvb71Gw42hmM9+WFRLQkrc+dePshvllov8T6XB84AZ24NOpEtkY2GRd9pwPBjVkwoiV
         4OPw==
X-Gm-Message-State: AOJu0Yx9y3GRR5bUS74HzUhyRg+HV88JTv6JEBkAD4L+tuDpD5cBczCF
	9dc6sDEo9GbXbr5sWLiGo2T9sgJ+/5DVea0Y7KxMrVUFCMg1oQGL+FGa6Z4JX+jc53ROVcOPxyc
	yLk2X4+PM6ed7WYWdLBcVfWlVv1Uo/YHD
X-Gm-Gg: ASbGncsx2x9LACWVW1j3SvEqzU+l3u6g8l7/1IHKKi7dtKFx03/VLo0zN5Gz3UOLLfM
	gi9hU2GL3peTdBe5t2wrut2Tkg3ySQ4d5NjW3HABVY/rduE+aBQ8nZGMtGOk+sAFARDtMXdnkKy
	hUnwRYHT3HOzib3Li5/gVEVWWji775ln4=
X-Google-Smtp-Source: AGHT+IGEj5kU42d9KQdHsXLY9JEaofm4zxa5quT0yljIILVeiWxL/U8wYec6eFOXbwlnat4m9T1HlVrJYiu8hKMQ1iY=
X-Received: by 2002:a05:6214:2582:b0:6df:97ba:4f7a with SMTP id
 6a1803df08f44-6e243c5eb6fmr164211116d6.33.1738306110199; Thu, 30 Jan 2025
 22:48:30 -0800 (PST)
MIME-Version: 1.0
References: <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
In-Reply-To: <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 31 Jan 2025 07:48:19 +0100
X-Gm-Features: AWEUYZm8Kg3WXkQw0WdyNPsFHx7gUT36TnMD5lB6WivqqjC-ZuUUinowZD9-b6o
Message-ID: <CANNYZj-w_TNQNgZ1fj-0W6jH9J=4waEQrY9Hi4bp4QWXPwB7Ng@mail.gmail.com>
Subject: Re: [yocto] How to determine distro for a YP-based image?
To: yocto@lists.yoctoproject.org, tim.bird@sony.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2025 06:48:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64689

On Thu, 30 Jan 2025 at 20:48, Tim Bird via lists.yoctoproject.org
<tim.bird=sony.com@lists.yoctoproject.org> wrote:
> It doesn't look like YP populates /etc/os-release, where distribution information
> is normally stored.  Is that right?
>
> Is there anywhere else inside the image where information about the distro
> being built is stored?

Others answered the os-release part. If that package is not installed,
then the only thing available is /etc/issue which has the distro name
and version:

root@qemux86-64:~# cat /etc/issue
Poky (Yocto Project Reference Distro) 5.1 \n \l

It's pretty common that products are shipped with yocto, but there's
no indication of it anywhere. We deduce that indirectly, by looking at
a set of installed versions for various userspace items, that exactly
match some particular yocto release.

Alex

