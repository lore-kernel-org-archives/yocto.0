Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.673.1589402783776968742
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 13:46:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=nNxMNvN9;
 spf=pass (domain: burtonini.com, ip: 209.85.167.47, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f47.google.com with SMTP id s9so719872lfp.1
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 13:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=04jL662pnkdMvvxPvVjjCvsKmggWdHKap6Ttgnh2/lk=;
        b=nNxMNvN98l1pcrpBi3N1ioGr+7gq5UPBDY4ButctLU/f4V1aB8IcICExTrmBZa25Vz
         IipTs0WPd9ABv88dNA7CSZaHqKxzm3fhEEhGeMUGeZJZhObvFPgFd51NGlNpR+wOjszL
         2oAsXkSMEHfPgm5qM1dlk/ILNAanO0njb3wuKj3MpQmu3FMVpoMt5qfVdqpOcc1letJd
         ocikqRkjFx9z0jYl+fFfkrRnmRCD2tV8Q2Px8P8TA/YcrxjyfJUBZtb+HgLsOlIBakcN
         mtfx7Z2LRpyUM6YdNo+6+DVLyECo+y2Bi5J2HhZ3mXYEPp/MR6p5XsffZg7ALuzW558d
         MTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=04jL662pnkdMvvxPvVjjCvsKmggWdHKap6Ttgnh2/lk=;
        b=PMEQ9m4QnLQlNZjLgv+Wnl3pyw82r88A9fZRTVye/Tm6/aPbuZyNBM8WWL3Ee5Zybi
         DdCBmUZH/wIMM2kcrXU2gnggGzi+P+thPvLAAF/HvyE0yhvk8jq3QT7AAqNOqKrihJwZ
         Q3sh8StOK4n/YhBD7f8kHdqfnFPQd/dw2xr5Gg2LnDQJ/m5oFkM0vN4G677nXMiFuz85
         Dh+nh0LacbN7nn0MdP/FwLSwLhFoBFr/BPOhIsc/WJKn0kqVMV3OrihspGunAl0r1bzQ
         w+q8r/XHYp6Ejfc8uu5nrVUS5GzS4yVFQbOtdtdcgtZs1zxi2A+UAz0uOsX2EuMx3iaS
         Ju1A==
X-Gm-Message-State: AOAM533BtVK9blXDqcvYiAK3gu5ltbhb0bU+kP0uxiEqnE6y46LR45pA
	3jSDd+WKJCGvmbZptzNH3QsjQQ+6wiMSOSKcwAqELQ==
X-Google-Smtp-Source: ABdhPJwUPa1FJ9ULJDDbzk080TNP/h9UxcSfCH5/IPDY4c+KgRes/+JmzkNXzJFze8Bvt6T2IN15aW2gncyQulTdH50=
X-Received: by 2002:a05:6512:108f:: with SMTP id j15mr851699lfg.19.1589402781986;
 Wed, 13 May 2020 13:46:21 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
 <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com>
 <CABKMkPJOBH+b=7DmpSvYH6By+3hXQmxrQ702D7basQAae2q78w@mail.gmail.com>
 <CAAnfSTs5S3+f1CJsbW5eiPj-Rr4ZawhnOXsbC3617CGNMm9kCw@mail.gmail.com> <CABKMkPLjwNPvDrCxOx_XC-Gy4iKtLW_OZowpQ3b6tjAwOe+tBQ@mail.gmail.com>
In-Reply-To: <CABKMkPLjwNPvDrCxOx_XC-Gy4iKtLW_OZowpQ3b6tjAwOe+tBQ@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 13 May 2020 21:46:10 +0100
Message-ID: <CAAnfSTuKs3drhr7gO2XWFn488TF0RD00Wsz_KNbU3xWHwhYjKA@mail.gmail.com>
Subject: Re: [yocto] project that builds target and host
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 May 2020 at 21:05, Joel Winarske <joel.winarske@gmail.com> wrote:
> What are some nasty hack options?

Putting files in the target sysroot that are in fact native binaries.
Don't do that.

> The major surgery would be less maintainable.

Can you not work with upstream to integrate the changes?
Alternatively, if the native parts are relatively simple, you can just
build them directly.

Ross
