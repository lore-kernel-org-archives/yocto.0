Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.4821.1612325657417530613
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 20:14:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjgedH7q;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id w20so14481696qta.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 20:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wR2QnnG45v/wSft8ii1d/z/hmbeRU0locuMdriiZyJg=;
        b=kjgedH7qqSvfoaqKSmhYOOJOlLpxJIQBLy3gZiyOFyT7T34KLtIcPt5qnW0kHHqYV1
         KvqpklDRmnxTb/agcL5ulYvee24ddOqD1If/Y1H288+QVq3oq42kV3IKgPPXvK71SY8U
         OHkGJcN12PFYqwlR1aTWExLQenq788XjwO2j0kH2/9BbRENWcQ95yHo5lsJUpLtXLxXy
         951HOKkk2cidrSswG8B2vgld9AfrXA9rZqL4S0/xw+A2wAPDMQ3RQ13beDvEiH14ajjL
         Di3A5edjidPRMdAs6DZ/kXyucvd+3uSOSHmvPK78YAdao0vB5wVGgSefW1Kie/5wW49h
         JZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wR2QnnG45v/wSft8ii1d/z/hmbeRU0locuMdriiZyJg=;
        b=YSCPO38MimwK50q0T/aLihOkA2enq+h4klHH/IjwQix+SR9MyHtKIocLQsOE4BHU/8
         FdrU6GohiM0Yev+xoplwYri9Hxqib2Ojbsa12UjBp/ypk/aGhBqPl5LT2KJAd2sVWsl3
         j+Lq+VAX7XqLilvNP2qzqtoppCYEHHunCNz0AG2lgfs/IlobQPCQQOzX/2fyCrzP1a8B
         8OE/LRuOZwskSS2cSrozuO59kepMKGBkdLTjojX5zh+zCFYis8OfV3s1OLqUiuszmtZW
         /bKEeXWzROHwHuj6xEbc3SIpBdL7HEq1TZLA2br56ZQuqHm2450Vqh/Hws/jPkiYoZDb
         AnzQ==
X-Gm-Message-State: AOAM530G0dUNlyRXF6cdvNA9wWwGPNqums9EBZakbqCVz2dprb1mSdSi
	x06O4j2eUnSOYr+prNklISe41iZmm8k3gQkktqg=
X-Google-Smtp-Source: ABdhPJyjCxOKqF17h0mzSGRRI8Eg8qDlDoN4yTLkCz/hB84y9NqvQLXabEJQ9TfC2uUUKuTnLui1Er62Aiw1N30sA6c=
X-Received: by 2002:ac8:5490:: with SMTP id h16mr1036124qtq.378.1612325656541;
 Tue, 02 Feb 2021 20:14:16 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dV8QYoF1i7kq_scLejiQfEfpGBoNz5vNj4op1_dMSxoAw@mail.gmail.com>
 <CAMKF1sq8nK+vq8339h3F_Os2DoCaVRRzEk2L-wifSqOJ=hN2kg@mail.gmail.com> <CACX=-dXWJeD17ME4sO5dja6yR4MTXpz23kc+T85BcCV8VMPxCg@mail.gmail.com>
In-Reply-To: <CACX=-dXWJeD17ME4sO5dja6yR4MTXpz23kc+T85BcCV8VMPxCg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 2 Feb 2021 20:13:50 -0800
Message-ID: <CAMKF1sr1+q5Rb4azm4+6igyG+LSLYjtb2Gh6uVQYWecmb7yNog@mail.gmail.com>
Subject: Re: [yocto] Regarding YOCTO
To: U RAVI KUMAR <uppadaravi2511@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

also look into

https://github.com/OSSystems/qt-kiosk-browser

On Tue, Feb 2, 2021 at 8:08 PM U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
>
> Hello Raj,
>
>          Actually i want to customize the browser,using the above browser we cannot customize it. I want to build a browser in the QT creator and then embed the browser(after customizing) in the core-image-sato. Pls help me out.
>
> On Wed, Feb 3, 2021 at 9:13 AM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> Look at something like
>> https://github.com/meta-qt5/meta-qt5/tree/master/recipes-qt/qt-kiosk-browser
>>
>> On Sat, Jan 30, 2021 at 8:13 PM U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
>> >
>> > Hello folks,
>> >
>> >  I want to build a qtweb browser using the QT creator, And embed the browser in  the core-image-sato.Can anyone pls suggest to me is it possible to do that. If yes pls guide me.
>> >
>> > Thanks,
>> > RAVI_UPPADA
>> >
>> > 
>> >
