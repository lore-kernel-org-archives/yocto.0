Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.378.1588271148001784430
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 11:25:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CpSYA1Vh;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: marek.belisko@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id p16so5310771edm.10
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 11:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gIbe9eTC3ezmxM5VepVlBloTEsCkvB7rMJ9ynU0QkO4=;
        b=CpSYA1Vhw1BSP/mZN/ka2BfXDDKCYJH7z7kZdNxwUAQoBKCZ9nc97JvWz0CwIIRozY
         9oGQQBUzF9NeLEObVAGm1XfMEqsoyRoTKlUfR7T3aHmcCfFLXuU/UHrLuG4XWAoV+i6g
         acpdfgoUbGI0aH1vLDdxnZmkd2EMWHQ3Enx5PG/rcVAgSM9ftzIjRSWFGF4OVVwYjMJA
         XURXly8KUXlvG/Lyf89kxibj8J0iWTmzc5ns8t7RpVVYI64eeBO1bHZ6czdO9GoeqXAI
         TnQhdsvY68doQR8EoUNfG7hnznE1LLrM3PaZAlmRtZ7BRtRNH0/1rGTlC9K2AWcx+Jl0
         DNGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gIbe9eTC3ezmxM5VepVlBloTEsCkvB7rMJ9ynU0QkO4=;
        b=uBNSdqjWSZ7Zs6kEKF9sDLNjgcbavzzOm0qoH47lQpNxRL3m+OSeG69zuqtEC4RmQi
         UBZwfsufx4IDrx7G0hApP1qtA9ySKc2spgEGAbFee7iILFrHep5RB+pCE5Ag0sKwGWYN
         f2/tswKdHqepI4oOgxdoDrJnNpAWbMUZpBCpbFtwNp908SPcxcA2qua1B1mzDpBNmDCk
         K0D3m2KH9zf8s4o/UGtvJVpX9l5Y4i6i214T+7tlcrt7iy9vuWssYyANalo6VRH4eQy1
         hYDn1sV4j5t0xthq7qiy1sTG+ea1xO6v1Xfgu4pY96SnjcVJZSIst5Nrz8uNBZGSUDdZ
         x/sg==
X-Gm-Message-State: AGi0PuYWhuX9pHbUF0HZJZYz12aB1Mnf8QfjBELuEt98nvYuhEDwGV23
	N17pfy14r8ApjmwJxMw+r7POSR7b31/gjQ++lNaeMVYeD4g=
X-Google-Smtp-Source: APiQypI9gtAQpZAI1jd1zn5tSZzT06Gd82ukpkHumt2HMHkTOnrV7SAo/wra10kKG/2zcxdd8zuaXVPl1IJiR9S95AM=
X-Received: by 2002:aa7:d4cd:: with SMTP id t13mr308951edr.30.1588271146033;
 Thu, 30 Apr 2020 11:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com> <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
In-Reply-To: <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 30 Apr 2020 20:25:35 +0200
Message-ID: <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 30, 2020 at 8:23 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 4/30/20 11:16 AM, Marek Belisko wrote:
> > Hi Rudolf,
> >
> > On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
> > <rudolf.streif@ibeeto.com> wrote:
> >>
> >> I was looking for a way in a wks file to have wic grow the last
> >> partition to fill up the remainder of the disk. Of course wic does not
> >> know how large the disk is but that could be a parameter.
> >>
> >> The alternative way is to use fixed-size and do the math manually but
> >> that would not allow wic to grow a partition based on content.
> > You can use https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
> > which grow partition to the end.
>
> can it grow a mounted partition ? since that will be the case when
> growing rootfs partition.
It will grow last partition in first boot only.
>
> >>
> >> :rjs
> >>
> >>
> >>
> >
> > BR,
> >
> > marek
> >
> >
> >
> >
> 

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
