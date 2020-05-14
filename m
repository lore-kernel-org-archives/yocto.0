Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web12.8247.1589443961435274954
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 01:12:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=0tk+iSHa;
 spf=pass (domain: burtonini.com, ip: 209.85.208.176, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f176.google.com with SMTP id b6so2532714ljj.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 May 2020 01:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sQ5/fDPB36MaCvasnHWyQEVlEXQJb0V9EXQi3R2TNgg=;
        b=0tk+iSHadoP11n5ycYd2FO3699hiu3j6x3LsqbAo91eZ8cbBKdifVLLnbeB9AKukOf
         /aXbrmMBgbunE6mDykQStKfiPwqBy/jWrdrP0j7S0q1c1KL1RH9OtCwix9X6OuRSSP+y
         BVLhEsMzV2wpVjlqKDK4+OXXxOpUbPJAspMNr1hwrEuOwcev2dNBRuzaBn6RF//HeCp4
         LcDClLr6VMPmeXaQTk6mHAfwcfdmkE2bz5aqT/EvlPFY1zY6fY603wf4esqZdAWjFvE8
         kXxlk3N/A8NFBhGAEFNIMjtX7H1WHQT3RRy7Y/jyInZqfsQsiTgJrOpDW0c5zdXOFzuo
         Kjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sQ5/fDPB36MaCvasnHWyQEVlEXQJb0V9EXQi3R2TNgg=;
        b=mI1qQfb/RC5ko1IXbNQHQu6wqUVyb8eOEvsUtLAYmz+TZs2hwLFSulUKHuV/DK8h+N
         UMiSsS0A6sl9Svjnp5e5MJq2eILe0JvQU/muhm1aCF6Tc8wvgxNJtlc+jA3uGZmCOFup
         +4YrGoXmLvGHghmIAKZJTKBKCKrNQ2fD8D9lCGE0Bt89w0tPDCT4Gqo10YqG0dtKGNNP
         0CDO6awPhLScGKd7j55vHjGU0708ZyQ08I4UAtwJm5DMA4bdqhcxlTRDYJ8I7qLTVy3v
         rIKJ5hxxCoLYTN0eQOVdRsjP9q6BoWATy+ssCCE6gmRBeihtmWAah1OhSk82uLQNHHey
         RwqA==
X-Gm-Message-State: AOAM533+VzlBfJZb8N2oF8VAuOydO2pxwAwE7/3WvNgMwAPrjn9HDLSB
	K/QExmbOYC1EjRhzUvQd+Oljv0o91oVIZjTfuraEbN7TANCak0iB
X-Google-Smtp-Source: ABdhPJzcyOY021r0hNRVBkbn/yCcT5dPvG+F4WSYHNL5NoyxODUFUKhVOQotg/3Wv3v5226w2y95TZG0EMvZNWcvdOg=
X-Received: by 2002:a2e:8017:: with SMTP id j23mr1853285ljg.22.1589443959782;
 Thu, 14 May 2020 01:12:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
In-Reply-To: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 14 May 2020 09:12:29 +0100
Message-ID: <CAAnfSTtCsmpv7osDEE9CG6F_J50CcNuzsBpmLVz6MyBucy4zuw@mail.gmail.com>
Subject: Re: [yocto] PREFERRED_VERSION
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 May 2020 at 09:06, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
> Should it be possible to set PREFERRED_VERSION in the image definition files?

No.

Ross
