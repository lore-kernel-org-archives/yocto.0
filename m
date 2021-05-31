Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web08.40826.1622441088202836521
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 23:04:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WnTNJ5OG;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id pi6-20020a17090b1e46b029015cec51d7cdso6061602pjb.5
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 23:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6sgSEki8aNNV09Y8nIOt87U6B7XHMl19GfN3wd/Igzo=;
        b=WnTNJ5OGWcWz8D9WwAzeq0nZsAKd4s4Aq4pJFpYkUrC2jdZz++W53rITlp2UoUykDG
         bUXAF2gH3XBCx/pPczI1ug7FlvQ7cluUxuELw51U+hTMdIauK00eW6Ipzn3aBcswqm93
         FO3Ts9I8llLPfGKSIaD9zcm3EYouIfz8arp7iJMyThLcO5c7RYKRRDeB2jG8WZQMa8lW
         exqKYNv9GM0+yVmGG4LEOhILva+kJV9f9ZwdJiaCfmhmnOWpktUCLKD4ZaWPVOXsHRp7
         UXr0ZLdeZkm1g+veEsJKUSWZ6bd64kMMV4M669+M8CxTz9tAc7+S7VZg0vcUxR+zeCnH
         DYrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6sgSEki8aNNV09Y8nIOt87U6B7XHMl19GfN3wd/Igzo=;
        b=YXtNUwDs8/9WJnxpqLgLbOhv3Y4bBzZK6mGkRdhnauP8YpXa3fbeLL/JNO/orMJJoh
         k0zhCWBadPpYndws/aw2y85C3LZ31h8E7gOhGdQw1V7WX2NkGMTcYK/Yj4o/m3+s5DkH
         pgfWYlm6rQTIgyRmCgYWVwkkmInOMTywfNSL4t/3pMAiWSZQeHEpcDYpbFtw0Lvyu8N4
         FN8mV8JWdadsIAlUAcOu7l07/yPHRDFiMeFpEetGIOqj/eLUoTZCbkcxN+QkCE1P5Qla
         wLnUOf03FRwzKYCmah/caIts8Xyl+UFYwwjjaBhpCGrfdJBEE3sUcxdLkcJ871wFxyL0
         +qmg==
X-Gm-Message-State: AOAM530zWQskj1EvxHSGRU1RRlW4qk6kfosGaoojSO8DApZ4wQeyqsSS
	bKyMWUe9WcsKwF8RRlc40oGvmEvpa0yDkUwzd9wvagfTEhexpQ==
X-Google-Smtp-Source: ABdhPJzEuWHXyEd7zUQ/Rubqxcqer2f1LBdkMiBh3Yay+OAohRpMUaUPhqaTjPpb7mv2aJuM7ZWVfuulUK9ATG8vJhw=
X-Received: by 2002:a17:902:8695:b029:fd:6105:c936 with SMTP id
 g21-20020a1709028695b02900fd6105c936mr19188609plo.25.1622441087551; Sun, 30
 May 2021 23:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
 <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com> <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
 <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com>
 <bb2c2342-d737-84dd-6f43-c4c515fedf23@crashcourse.ca> <CAGAf8Lwsnn36EbURP_UKi=x6z1N-by+FBvTjOzr1SL3D5eq1kw@mail.gmail.com>
 <CAHUEwNYCxdMWHzyec6TWOGcLWMA=Fyv1g6QErbxcxRj=UHkSmA@mail.gmail.com>
In-Reply-To: <CAHUEwNYCxdMWHzyec6TWOGcLWMA=Fyv1g6QErbxcxRj=UHkSmA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 31 May 2021 08:04:36 +0200
Message-ID: <CAGAf8LwoY0hj5PdaVGayG8JjzRzsp1oQUXdW2RXrV8b7=LpQGg@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

What about the following:
https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection

To be enhanced/added with the following:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-hardknott/README.md

Best Regards,
Zee
_______

On Fri, May 28, 2021 at 3:02 PM Swapna Nannapaneni
<sayinswapna@gmail.com> wrote:
>
> Typo. No leading space  INIT_MANAGER = "sysvinit".
>
> Thanks,
> Priya.
>
> On Fri, May 28, 2021 at 8:55 AM Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>
>> > you don't want the leading space.
>>
>> I got the idea from reading
>> https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection
>>
>> But this is exactly why we need some explicit examples. :-)
>>
>> Zee
>> _______
>>
>> On Fri, May 28, 2021 at 2:45 PM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>> >
>> > On Fri, 28 May 2021, Zoran wrote:
>> >
>> > > > Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf
>> > >
>> > > Is it INIT_MANAGER  = " sysvinit" , or INIT_MANAGER  = "sysvinit" (no
>> > > blank at the beginning)?
>> > >
>> > > Thank you,
>> > > Zee
>> >
>> >   you don't want the leading space.
>> >
>> > rday
