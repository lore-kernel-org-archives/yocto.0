Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10825.1614092175782522294
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 06:56:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r1h1csTG;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: karthik.poduval@gmail.com)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 23F4D38C062A
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 14:56:15 +0000 (UTC)
Received: by mail-vs1-f49.google.com with SMTP id o186so8528554vso.1
        for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 06:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sft/TKV8LwKn4pNxUiluDfmPELe7CbcLL2Hqnv4q5CY=;
        b=r1h1csTGP1ygvVsL3luOuK9PDFOVhLAhJXFAT5/OmfLd2fZOT6jdeZITeG5e7iyAGk
         VBjLsgG8FN/lqiJZg/7Q5tNiF+ykuuayvdzB1Ax/9gdfqmq8ev1zGDm+7XS6xqvMWkHR
         A+YBdOweHWRSLw3YXsrFBQaqeP3NkFYHtfDSr2+PutNxNh52DEYAd/CfalkRlalziuUu
         U99lC8+AgkP4082zPELqxfcUJIzUAhkoO6HVyMwMSqItqH6HUqavYSGTM/7xgeetA46d
         JZENumMKbnMZRpml11QVYOqBmlT8lKZJ1CwMVLKrMuPtcHecEfdW0Mh6wtlRtNaXiDYW
         TEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sft/TKV8LwKn4pNxUiluDfmPELe7CbcLL2Hqnv4q5CY=;
        b=t/D35wOOMNGVFZ0WBZtc3K3Phkrr6FOrruNJNuK8ZxbAi5aGaIm/0V5l5ImcpPLy1y
         GSyw+8PIXouFfTuE54sBTE/DF7DEIf0okQdB4HZFwH4J5gS09gRVHIKEdKCYYxljKhZl
         cIjQstX2rhxURbcLX4ANjT471L2lDK7EWV0uB6GGP2WLJVTGTat70tNEuD1zUdqVInlA
         iKGTFj5HHNWXl2X3lHPnhM8thadksYQweuZffREWCY5lDWDzQ9MaH7TQdXvQBiXOjDYU
         ipXK2JC4tbLTbqbUqii+svfxDK8inXR0mzlXFeBYq4vbcNF4JBbUzT5Sy61DMCZCHqYw
         u74g==
X-Gm-Message-State: AOAM533jYp/c0HrO5vJ9IH7kYay+/lHpQ8jAyX7c3Pu3pVb3VoIEwLIj
	KMTF0AjjKNQLw59UVaGJ9PRGMAa1jy39URown0c=
X-Google-Smtp-Source: ABdhPJyKvsPz4SKiIzrskDLpVPZIoedawMxZ5IRNpUM3+U6UGYvldW9L3vA5VckTJX0QIRJm69U0pv9ndF35tiklWto=
X-Received: by 2002:a67:ecd8:: with SMTP id i24mr16773617vsp.28.1614092174021;
 Tue, 23 Feb 2021 06:56:14 -0800 (PST)
MIME-Version: 1.0
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
 <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
 <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com> <YDUAklwGAsPCeyVe@korppu>
In-Reply-To: <YDUAklwGAsPCeyVe@korppu>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Tue, 23 Feb 2021 06:56:02 -0800
Message-ID: <CAFP0Ok-863pEPRRRsOsZDG1VJ8GZw06qR+mu+_M2yJouJDuB+Q@mail.gmail.com>
Subject: Re: [yocto] Kernel Header UAPI Issue
To: Mikko.Rapeli@bmw.de
Cc: bruce.ashfield@gmail.com, Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Mikko,

Do you have an example on how you do that ? Do you bbapend the
linux-libc-headers recipe file ?
I have an application that uses dmabuf heap that potentially extends
across multiple BSP's as its BSP agnostic. I don't want to be patching
individual BSP recipes and generating headers. The issue I am facing
is due to backporting the patch from 5.6 to 5.4 so the required header
isn't a part of the linux-libc-headers.bb recipe. Best would have been
a virtual/kernel-keaders target that applications that require BSP
headers would add to their recipe DEPENDS. Why is this not a solved
issue by yocto project ? Why do individual BSP's need to deal with
this differently  when the header install mechanism (make
headers_install) is the same irrespective of the type of BSP ?

On Tue, Feb 23, 2021 at 5:18 AM <Mikko.Rapeli@bmw.de> wrote:
>
> Hi,
>
> I know it's not the best or recommended approach, but I find it
> hard to avoid merging linux-libc-headers recipe with the actual
> kernel recipe that a distro is using. At least a static copy
> of some version of uapi headers from that kernel can be used
> instead of the poky side linux-libc-headers. This helps to get
> the actual BSP SW delivery headers into userspace, SDK etc.
>
> Cheers,
>
> -Mikko



-- 
Regards,
Karthik Poduval
