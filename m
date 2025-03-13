Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AE2CC282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 16:50:02 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.20067.1741884596870044643
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 09:49:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lDnHGIux;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6e86b92d3b0so10707126d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 09:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741884596; x=1742489396; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6YMuKip/u1cBtg19TVaLb4ZCg0vXM+dECet+3IfPOCQ=;
        b=lDnHGIux+3B8lra8WtjRrWhiFBpDyBWmLSKya9nbS+Z9v4kYpCMoATrjopJLhSBjW8
         Z4JbU4LEEf3OWJsq9xH12/RgEER7w30MGllFpsXc2j1NatwZnlEM5df23ClpDKEhtMzA
         dHdh2wmDt0DOAjWdJg8LTNr1GnrQbXzvGd6SAXYi8EEZau+Wxr7z4+fiMALSU3p0WTkp
         ljnhzCSzUDNfQMJ7itXmRAcF2/4QG8g2KVj3SEi7IKT+YPPKcBCEmwZ4uG66FtOKOhXB
         e9p0whNd2rYyMQiZcXelmU6GkZ2IgY5HBkV7NUl/1rrxeVQqU5NWK7GwR+yuQ0awBz5t
         1wpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741884596; x=1742489396;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6YMuKip/u1cBtg19TVaLb4ZCg0vXM+dECet+3IfPOCQ=;
        b=h9hZbEAr2KrpM3g70buwCdEsyidOgdM9AKFCo5PxNsWzoD3SuAr3MsjhED6mU+fFj1
         vUJOiP322u07GHecEiBld40Id/N32IQrKQIGVpbqiWW2sVp0tJthbPZ2qEw2ooMmyz3y
         K4wODEOcZA5Wms/dGdJ7i9jyQCPJ9wSatN/XOKdJLCj+50HnAqI9DQH2B5pqlCyQIZdQ
         7WJZSFfp27C8MfwJtH+M/VapHGoXs/JvVSpfZvK1Uddfe34+iToCW85vmDpEEvg2iQ8E
         kTq7zrRx35WIeFPfWGFzK8f3d8QEV619aDMN2iZJvmU3OXJcJk1R2xsI/5y1l7zCkZ+O
         Nu4g==
X-Gm-Message-State: AOJu0Yw4XNfx/nG4nMeFnHhj65ud/CjqCiDWYWo3qplbWNEk/naPv5oH
	OImhXrRn80iZglXvikaaOyH23bt7CoaF39QLRQl3Kx1howPWgHdxvOYvxjMHwXoVtghAVyxI2Ay
	H8DXUQgWvJUFqWSuQG7GRss4UTc1uuCY7
X-Gm-Gg: ASbGncsc/EVWIYeYSu+m/phE4avlEhFk/JcffWMes+pYeeFBDsI/OtQMap8KMU5XyKM
	IPgMe2FLJEOsuMpWmE8J2CXgMKGU5anwiJE9ks0031E1HvosqkJiaqkQJcNslo4ym4eaDq5qOet
	87smW+DJWxlO9LcTVQZw8UpzEjm8gyDDZjvfccfjnSLXcKaAr/rHkExBMRkZOFLXkt9k8TO+8=
X-Google-Smtp-Source: AGHT+IF3bJMJonJSBU1fFaGgEVl9k01ej2mFLOAjnIPd7i9fQ9eMvQvqUE5CgSM3MB9wPPLT6fRhXAylmwVLjqN6+Ss=
X-Received: by 2002:a05:6214:1c0b:b0:6e4:2872:45f5 with SMTP id
 6a1803df08f44-6eae7a50c37mr6197826d6.25.1741884595678; Thu, 13 Mar 2025
 09:49:55 -0700 (PDT)
MIME-Version: 1.0
References: <myL2.1741884397359241204.Zyqi@lists.yoctoproject.org>
In-Reply-To: <myL2.1741884397359241204.Zyqi@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Mar 2025 17:49:43 +0100
X-Gm-Features: AQ5f1JoBCjYyaWCJqP--3qhpq_-0PYll7YvbMjwekOb22Mk6ET5yieneptBs7Kk
Message-ID: <CANNYZj9uw-yh2wbmtieNR-aa1XRTOHTiLRvJCJi-4AOmZmvq_A@mail.gmail.com>
Subject: Re: [yocto] jzlib hosting website down and hence build is failing
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 16:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64951

Is it this?

https://github.com/ymnk/jzlib

Given that the last commit was 12 years ago, you should not be using
this at all.

But if you insist, convert the recipe to take sources from github.

Alex

On Thu, 13 Mar 2025 at 17:46, emailaddress.ashish via
lists.yoctoproject.org
<emailaddress.ashish=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi Members ,
>
> Its been few weeks that the website http://www.jcraft.com/jzlib  is down.
> Can senior members please help and share what's the approach to handle such cases.
>
> Currently i have the tar from other build which i am manually copying to my current download folder .
> Since we have customer release lined up , manually copying the tar will not be an feasible option.
>
> So wanted to check in community :
> 1) Do we have any alternate hosting website , i can create an patch and push the changes
> 2) Is there any template to copy the TAR in download folder ?
>      As any patch we create will be from WORKDIR , not seen any implementation where recipe is touching "download" folder
> 3) Generally whats the suggested mechanism in Yocto to handle such scenario
>
> Thanks ,
> Ashish
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64950): https://lists.yoctoproject.org/g/yocto/message/64950
> Mute This Topic: https://lists.yoctoproject.org/mt/111683564/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

