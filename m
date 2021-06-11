Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.9884.1623424714046976887
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 08:18:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=b0318UIh;
 spf=pass (domain: burtonini.com, ip: 209.85.128.48, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f48.google.com with SMTP id 3-20020a05600c0243b029019f2f9b2b8aso8760057wmj.2
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 08:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=581Y6rFDnpombWvWxyA8pL5OHH9Ap3qB/K/D1p8yV8M=;
        b=b0318UIhDDNPrZlKTF9BkbGk/tvzQoj11462puQig07x8AyeZtwWSTOpO08tryqwyu
         YHPKl7/C/BV1S355Jvc9p0YSMzVnV0I5LJ35jK25o71RgT2lurO3zatHCpVspAj9f4O1
         CRpIkyrhxpzRqcMvCyE/JgIqM+zsNQsXvvOC9x4Ipcu2mosZd+bMb40yY8A7GtrE5HCz
         9eB6S5BOIOFfhwMsuROmIWirSz/Cf6G96H1iK9uww/bkbGTVcfeZIEVdNXrXE1QEhwcz
         UTu0CbNf/fdEavgv2me3oaljDrlvkdbzAQViLx0+oVpS3BMW1G2mvZPSsNHIMgubC6wu
         XspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=581Y6rFDnpombWvWxyA8pL5OHH9Ap3qB/K/D1p8yV8M=;
        b=ULgWpyle35eG/ZCotJHEEbOpF8n7fqdurOSeFgN9c+jX5FbXPmw9wUSJLU6jhT7Rcj
         MmdKsRbAzXaRz1265iGDLb4cNVzotaxCl7ESX0x1Sxlw8Y5tyOVIYIcVwt51vetyzodJ
         K4Xf9nlj3zW7MqCI1k6gro+m3cqkIWdFbytdmFV2UwBlxQGuK7BSaunr0RJFjNKMWgMW
         nWLdStYGjL2hQR1RjRd1bGvwFSqt7pH3vYMmAZnHtSaMQhdDP1TNcTPaRef4Vw9kqjdO
         A2L1l3s58Pv3S+f+HPwi+SMv5Sy0eU9nnclYGaAsSYqObCkwkv9AZBzM9QqMg1grpuvB
         8qqA==
X-Gm-Message-State: AOAM533L69uVmVgm2iSQcyVwp/c8DBKuDE1Ky0235rTj47vdZin6mMB1
	DTmp9fkiEvqwjkH6lyxFBVKQ6hN9D+1bZYrWhmb9XQ==
X-Google-Smtp-Source: ABdhPJyOgREuUgnnb/tchXfwxBa6xcCzJxtek2RWGHLSu3x3ts5QvVWCXK+5kRcw9zl69BrIhSKmMWaM+MeEHB4vaKk=
X-Received: by 2002:a05:600c:251:: with SMTP id 17mr20715350wmj.137.1623424712086;
 Fri, 11 Jun 2021 08:18:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
In-Reply-To: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 11 Jun 2021 16:18:21 +0100
Message-ID: <CAAnfSTsEsgc7cAdikFhiZFZDfCX6HZ0mfq49yrrTcgYBS2sC2A@mail.gmail.com>
Subject: Re: [yocto] QEMU Size Increase from Yocto Thud to Zeus
To: Aashik Aswin <thisisaash9698@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Are you installing qemu into your image though?

Qemu did get larger as it is built with more architectures enabled,
but unless you're installing it in your image it won't make a
difference.

Ross

On Fri, 11 Jun 2021 at 11:40, Aashik Aswin <thisisaash9698@gmail.com> wrote:
>
> Hi Experts,
>
> I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) . After building I could see a significant increase in the size of the image.
> On checking with buildhistory enabled, I could see that qemu has nearly doubled in size.
>
> Thud (4.19) - 223084  KiB     qemu
> Zeus (5.4) - 474757  KiB     qemu
>
> Is this size increase expected or are there some additional configs that might have been added as a part of the upgrade ?
>
> Appreciate your help.
>
> TIA,
> Aashik
>
> 
>
