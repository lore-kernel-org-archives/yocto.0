Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.43002.1593976829144625570
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 12:20:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=rrduK4hX;
 spf=pass (domain: burtonini.com, ip: 209.85.208.170, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f170.google.com with SMTP id e8so8540706ljb.0
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 12:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kaA7JjcmqSnVQe8KgxblizUWjyRHDd3YZwbYGbz2J/g=;
        b=rrduK4hXCYk2znfgEDfw7imRkA0aEAH8iL0DVc4kHU5IUB2irqUy7ng9HjNFMLuWC3
         HZJN1wrAjQwvnIyMvHpzv2X3MxEQ98fzDglrTJ13E1BBBEX68Ki33ruwyeWOKIPJ+sZw
         7lpnqZfvZAsSNVh3CJUB8xM8AmCFFHtkBNasFUYDD2fjs60YfkFvTqvuCAukxZHsU1PG
         iWCtXaSRq4puD75n98ZbBBRvYPsebWEu1D+UvQh9LaJ/Oq0FAfMmqaM8v/T+ctZdAP7Q
         fSkLKS+ZPQlZwsiaeOngWNLQ0mhdk9U1yGA70xuE2NPBsA4ggMAkNZ3FcBN4QDWMw0ig
         2vyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kaA7JjcmqSnVQe8KgxblizUWjyRHDd3YZwbYGbz2J/g=;
        b=KvALl35O/DOTYBvnGY8Bu7n18KYHhdUDZrFqw1AYBtQ2VBiPMP3pfENXTEXB+qRBsM
         RbkYpVnPIkDNod0OUd3sS2sM6LXmns4mHMLdD6KaagySDnMDc4mU66CMco6qeZYX6+NR
         8Nu1Ec321nHnxgTv8Hi/vgng82RzE53yJS+EAcDsdCZFPbxYQpTm4zpOxoM6bZR6PmUR
         kefSwCl62FmMZ05OP2cUzZF81smipjHWZLb9LRVYEOCLN63nHj3+KljuK52l9OYzB8xN
         tdwsdfWG+9DTZkuEl/33jsJjkn3s975WEF2mtEPoE3PzJVPVvPhMV7/Ty6hpJKUUu2CN
         4YyQ==
X-Gm-Message-State: AOAM531bWpF7h4JWshIgQSw9JEQ78MqQ5L7glHZe3+DZ9pByntt16/78
	6MXdKj1ZuVolbUIhqTm0WuxnnzC38soqyDhLq5A/lw==
X-Google-Smtp-Source: ABdhPJy3mxO9ODv60f7I8MHSXbxpxlB3anleBVgpFFdNLl3sGW5El8PgX0JkCOqBC/R/hro2GsYo4gPxdHfE/+iCfYo=
X-Received: by 2002:a2e:3211:: with SMTP id y17mr13320974ljy.340.1593976827017;
 Sun, 05 Jul 2020 12:20:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
In-Reply-To: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
From: "Ross Burton" <ross@burtonini.com>
Date: Sun, 5 Jul 2020 20:20:15 +0100
Message-ID: <CAAnfSTu2mMMifGdTc0OtGfN8wXNQKddnZ9udTY0gbV0fQAvRRw@mail.gmail.com>
Subject: Re: [yocto] how does "bitbake meta-toolchain" map to a particular "image" when generating SDK?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 5 Jul 2020 at 11:50, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>    however, one can also generate a standard SDK with the generic
> (image-independent):
>
>    $ bitbake meta-toolchain
>
> which clearly does not identify an image (all that recipe does,
> really, is "inherit populate_sdk"), so i *guessed* that using that
> command will generate a standard SDK based only on what can be found
> in the various .conf files and associated variables (MACHINE, DISTRO,
> etc.) without being tied to a particular image.
>
>    just about to dive into the details, but is the above at least a
> simplistic way of looking at it?

At the most fundamental level, you've asked bitbake to build
'meta-toolchain'.  Looking in meta-toolchain.bb will show you what
that entails.  It's basically just the compilers and a few other tools
that were added as needed over the years.

Ross
