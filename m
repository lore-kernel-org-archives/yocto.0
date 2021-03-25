Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.8414.1616681274802085688
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 07:07:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=QCoc1+fZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.45, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f45.google.com with SMTP id p19so1264691wmq.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 07:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eeCoDq0B/Eh5UGEmeSitMGG1+1lviTK2yFJtaeqLhRg=;
        b=QCoc1+fZ43PkFYkLAGtU13jXJnjRFO5+uD2IA2doT1LCobMcQbZstjmtrzWNluwT82
         u/m7D3/yJXwT08U2UMdLxgmx7HoKqVxbND3RXajPeZKUJTkFTQaL1bn6nu+kMXqNmC3y
         Zx14/+tEVdd5lj2XufhgsAzp+ovgvfIfBTE72wYsEhlFwA1FkXk2t6dYqGYiP80TcoYW
         VD+PXGEhvyIXJjxw2yKpN6CwJBQSJY22/ulGFkgtX7pH+RNkt8sI8pITZ3WbEweyvk+Z
         Gy8cDwMcY64sAkBBJ2ye2R2KrtH0p7owNrzdzxdb+s2DllvCiyM4wdYE5vSUy96tqUKI
         qcjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eeCoDq0B/Eh5UGEmeSitMGG1+1lviTK2yFJtaeqLhRg=;
        b=Hiph7S9Qh5a3Lfc70l7VD1cS9GyV8N3BEP25zEEM5UXz9INeTcbyFh3Rof2DDD09d+
         BwuJysrAUuEEP5mcO/9lCcDD078dPunPYaCgYYLEiUIfydpr+10RhmFrf81CpJBVytT6
         GHClfOBRUU4t9ySpZjEnlZamGt+SP+Zo89+qEzciEioVpWvEnzXj2xzdJS0rpTF5VcCE
         NKAPRwSTxZEMI9jwRNkH6QETqld86UBLMpULzP4bThDZr3cx1wVj1B6lwzVPbvm0YgDe
         Ek8NucpGNujT2Ac4EOORl3kQ2fcBfqSIj4WKKv3WlzRvwqFBpG4251AFeP2GAwkWoMDt
         0eMQ==
X-Gm-Message-State: AOAM532yGfpTOYxMfEaW5JbnJgB2TLiy2s+D0y5P9gxUfdcauN9cyJA6
	8m2sV/v2cvf6uy2FoKoxKxpMjk4d3egqjQ2C6ZXxRg==
X-Google-Smtp-Source: ABdhPJwWPrFLKvRbuK7zNb7Hgb3Ce+x08dWBeS3viwmGKu1n19LlKSjVvQGv03qKThCOcjs4GuCoMSswNCspHK8mrkM=
X-Received: by 2002:a7b:c931:: with SMTP id h17mr8339816wml.4.1616681273112;
 Thu, 25 Mar 2021 07:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616625264.git.steve@sakoman.com> <fbd459aa8fcd8fdbdae57f41e7f47ff0de78bbec.1616625264.git.steve@sakoman.com>
 <e27a13decf2b85b8aeb4f6c427fa07d3e2c8591e.camel@linuxfoundation.org>
In-Reply-To: <e27a13decf2b85b8aeb4f6c427fa07d3e2c8591e.camel@linuxfoundation.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 25 Mar 2021 04:07:42 -1000
Message-ID: <CAOSpxdZOpfEzvfZ53K4gDn8PUh-X8U6Cn6Jxz8t93swFjmtbTA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 20/23] config.json: Use buildtools tarball on debian9
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 25, 2021 at 4:02 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2021-03-24 at 14:39 -1000, Steve Sakoman wrote:
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > debian9 has python 3.5 which doesn't work with new qemu versions. Its
> > the only remaining 3.5 distro so lets move to a minimum of 3.6.
> >
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > (cherry picked from commit 62b3f5553e9c215cf94798ae4694ccb97f6e85dd)
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  config.json | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/config.json b/config.json
> > index cedcef7..8eb05e6 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1006,6 +1006,7 @@
> >      },
> >      "buildtools" : {
> >          "debian8*" : "${BUILDTOOLS_URL}",
> > +        "debian9*" : "${BUILDTOOLS_URL}",
> >          "centos7*" : "${BUILDTOOLS_URL}",
> >          "perf-centos7*" : "${BUILDTOOLS_URL}"
> >      }
>
> I suspect you don't need that with dunfell since you're not using such a
> new qemu?

Yes, indeed.  I'll drop from the pull request.

Steve
