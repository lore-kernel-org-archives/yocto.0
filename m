Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.20507.1605678037866479777
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 21:40:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EdUy/ICg;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id y197so754371qkb.7
        for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2020 21:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NudfG68/X6uMPQSSoaItVcT7yF+ASKz7XUGaHGj9zL0=;
        b=EdUy/ICgTNT3s+18nL1yY2/OlpLrfrkxKWP4aYKvbpm3AUZJOUX+I5wBzW9x+3GIgT
         9VUMYIx9BSpBEtvNWrUjGlPnM01uzVu/LTtF8cjPO9EomJJ3J8yhoL2w9RlgTLdJcCkq
         wMjK64G/ldS8AYibyenhDkIdSO4UPOxsm4+APcDvAOkoQvkl1AiCK1v10J9yIWOFpgg1
         BrzxtCU/D+ZujIA+YZvucrQ+8/wk/Msp/CjdqvXpmjcZXCus0PPLbuOFMFgRTaD2+I/h
         ON4zFpyOwCnhQD1VV5VzfYuFYh8S7h5B1VuAkwC3cmGnnt4uZl8JkoN4095ZMusCuulW
         YU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NudfG68/X6uMPQSSoaItVcT7yF+ASKz7XUGaHGj9zL0=;
        b=KsrxrvmIt51lV3q6cU7rjCL38mYduhMst6OecTG9Oo1k2V3Kz1nyv43anayQJ8bbmn
         652muKYPJOhm8kmS7le9ZFeQhb1pBnCOAdP8wKxJrq7904lgdRlnuHSitQwG3a0NhwFP
         SdcdrhAmcIJ7FrLUWSFEsEm3h2G9lgvWvp47IlS2n79w1kjkF9Ad0sqtgFn1OCL/BY5N
         mw4EQdVp5tIxr6ZgeQF53kV4j+jmwzFkL+jSa46IoqjwXm9UwMpSKvzxjZlh1wQuwCtG
         kYjJNZXDTuMnCvddysph7JJbnaBmzDBIgYdd9dV9JL0jjN0+w1ySXHSNaN+iQWiseCm1
         lsVg==
X-Gm-Message-State: AOAM5332ejLiFGCZWJa5JvWrIu0WK7H/0m6sAqLQ1Qpl8qHC4a91xkPG
	HGcth3H3E1XCV8bZ0rJqneeUP6mAsgAoLlIuLcc=
X-Google-Smtp-Source: ABdhPJwt3IMXMiWqyypq9XXvKuTrz820T2mGre0iX+O93FqqzlXFZE2qA9/TovhAsOmsbpal2+sJyrbcWfmHwGcg07k=
X-Received: by 2002:a37:9441:: with SMTP id w62mr3313091qkd.474.1605678036940;
 Tue, 17 Nov 2020 21:40:36 -0800 (PST)
MIME-Version: 1.0
References: <aWty.1605668341566593814.GDqu@lists.yoctoproject.org>
In-Reply-To: <aWty.1605668341566593814.GDqu@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Nov 2020 21:40:10 -0800
Message-ID: <CAMKF1sriFvsJbpDYGdQOxTuMtXLBBCbDNxO=c+E2zcxPSp_ogA@mail.gmail.com>
Subject: Re: [yocto] qtwayland compile issue 5.15 #dunfell
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Find  QSizeF

newSize(qMax(width, 1.0), qMax(height, 1.0));

in src/compositor/extensions/qwaylandxdgshellv5.cpp

and change it to
newSize(qMax((double)width, 1.0), qMax((double)height, 1.0));

and see if it helps.

On Tue, Nov 17, 2020 at 6:59 PM sateesh m <sateesh0457@gmail.com> wrote:
>
> Hi Guys,
>
>               I am getting qtwayland building issue using dunfell version. can  anybody help me to solve this issue.
>
>
>
> Regards,
> Sateesh
> 
>
