Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.490.1588271430121025170
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 11:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mwsxeGl9;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: marek.belisko@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id s3so5507242eji.6
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 11:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zitANp/w6T3RfQfWpNKYgnZ/eABa8hAVn2H7eeeDC4M=;
        b=mwsxeGl9hppR/aLw0MpyKjlI4A8ZtJMquaDIZazfWoKuYhW1B5aXqf2MHvGltjtFZE
         aswrB31dMaf+1x78/qJsPr6Z6DuA3miXmm/JYVV5wYoNoXqUqy4RN1t3SB9Lc5Qfy9nX
         WSBVKzKq3aHjYGA97+d+nS2h2N9JmD4/5q2LYyuM8jKHqociL2rr+8ZBkJ/2mFEvZySj
         1QOouDqETA4ZNcOCLBE1jfaDfdgEM967tQh9NBEZrr+8bEwndMaTkTJgVWdnPCmlDKtg
         NTI+Y7u9SyuMT+GRXJ+zfBeVPnQFRPPzCx+Vz+jRfFNSvJ8VY+RCUjKP7QkLVDEgS3pc
         45Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zitANp/w6T3RfQfWpNKYgnZ/eABa8hAVn2H7eeeDC4M=;
        b=DtfwVLsDBrJ4YAl2v22SL8unCbE1jjg73NgbNvC6AgBJXoDW9fFZn+Fz8XBm+5Z967
         RF1cmpAFRuj5WMLPhhRaCFzfBiLZgfb/WIqvN3tOj6QPN2Zqsla5UmHsAdO1/W187ZHY
         o2kAKm+LVk+Xdb/i7Z4/2nKD5QdoISqkuBH8t5v6UWbd0j3psDeyZYW+AuhiT35+lVVZ
         f6Wj/JbHMyWv5UGStbIdoKHzZx7HjdzMPb5Pxw9sBCqdfEN9JGLoL8McWnPqd4b2B+UD
         rht4DfyJl7fF2Bk46fBEPnIEtMCq4CZcGTMtPj2sHxHcm8n618IRt0mlSD7ktq5vaw18
         oySQ==
X-Gm-Message-State: AGi0PubNeRulKtVA9TTPbmAt1dE2xdypvjgYpXjVpx/m7fhaLm6/Q3XZ
	tJDFaMsIM88q+5f7h/HHXIAAwKvDY+cjVjxr4ZWvbYG+tqc=
X-Google-Smtp-Source: APiQypLv8VEvvRRq7A/73hkDYVeigvfHW2SwjhNaWZgRad+pYYLZKAl/jfiroB2PeBxn55Spacv5YiWg75J1KV/EhKI=
X-Received: by 2002:a17:906:c44b:: with SMTP id ck11mr4205141ejb.110.1588271428306;
 Thu, 30 Apr 2020 11:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com> <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
 <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com>
In-Reply-To: <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 30 Apr 2020 20:30:17 +0200
Message-ID: <CAAfyv34CZUjDZZu0jeGmAZfkNkJDaDyTrNuYp6Mf2m97M2NtYw@mail.gmail.com>
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 30, 2020 at 8:27 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 4/30/20 11:25 AM, Marek Belisko wrote:
> > On Thu, Apr 30, 2020 at 8:23 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >>
> >> On 4/30/20 11:16 AM, Marek Belisko wrote:
> >>> Hi Rudolf,
> >>>
> >>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
> >>> <rudolf.streif@ibeeto.com> wrote:
> >>>>
> >>>> I was looking for a way in a wks file to have wic grow the last
> >>>> partition to fill up the remainder of the disk. Of course wic does not
> >>>> know how large the disk is but that could be a parameter.
> >>>>
> >>>> The alternative way is to use fixed-size and do the math manually but
> >>>> that would not allow wic to grow a partition based on content.
> >>> You can use https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
> >>> which grow partition to the end.
> >>
> >> can it grow a mounted partition ? since that will be the case when
> >> growing rootfs partition.
> > It will grow last partition in first boot only.
>
> my question was will it grow a mounted rootfs parition if that happens
> tobe the last partition, I understand it will grow last partion and do
> it as firstboot service.
I usually use it in case when have dual rootfs (A, B) and data
partition which is expanded to then end of disk.
I don't have experience with growing rootfs (I think it can grow only
not mounted partitions)
>
> >>
> >>>>
> >>>> :rjs
> >>>>
> >>>>
> >>>>
> >>>
> >>> BR,
> >>>
> >>> marek
> >>>
> >>>
> >>>
> >>>
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
