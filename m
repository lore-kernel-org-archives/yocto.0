Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3662.1605080395622529836
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 23:39:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DGIwq3mN;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A95C638C04F0
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2020 07:39:54 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id b9so1222146edu.10
        for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 23:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t+Vm+8nRu0+aHtI+7umgIQTVcyvoFC1UbPer/pw/c3Q=;
        b=DGIwq3mN+VIWVWIki1h/b+KoU0VfXRzgyWhaFkIhxfK0M5lJMy6K8HdCeKH8aBBYcd
         Zz2iI0UNZWUsg7ej9DSOjyz5XFWrFUo1uF6jX7lx/OjsfGv1FPeJLUmSLA9SCel++JO3
         51BYjRifepGxsYKYbefy9fm48IM/z1XYJa349WytzPhnDBb2lfIEB9JcMp3x3Xd8865/
         h8WrPOR8gec6lwwWNNkk5q9WMgGuHEkXEd+dnNruWJnsc76XarT7Dxti0hAfZ756uoW5
         RLcwER0ktJxKpJ6VESIXX/qlishC54f+oVUvCIHwiLMvVq1mUwCxNdsuZo1xAUxshb6C
         DknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t+Vm+8nRu0+aHtI+7umgIQTVcyvoFC1UbPer/pw/c3Q=;
        b=hcXEp5KoiUqVPOhTtJvou9tYXssUncxTmg2jRQ364QNV8CD0EEM06W6PWIsV+aZF4N
         xfYQ8J0XLP8mbiRrm7D0zjs1HQ8+DC00bhCULIh5wt62wXb90gTLpdASamh9vsHG7pM4
         tqY0Jfq3pjlBtPndW6KyLgvflmcoMCcvxWsoxmksfKP4hXWoJ0dL6yYcQwFdqTrYyaP1
         UQG3NOAvNrS+e0ajR6ZfJ94rfSAE9iz1jVXC/Tbs1D9AhhwWkVKxvSSHfoVNS7RcN7vT
         bo7SmzKhbKV+WvrgNOLl65ABM2QLry0sWB7X0DGI/f/9SDP8ApkfI2RyG8qtSnr8cyab
         cJVQ==
X-Gm-Message-State: AOAM530krEWQby9F+RsUjjciRi5apb+z61g2Y9EqGMITdvy9l9sCwW5r
	GxxNafdMc2MyKevL6WtJ45Wt6M3hUaSNCQRHrikQuX0+c4w=
X-Google-Smtp-Source: ABdhPJzeOImBs1T+/rvQdQXAdw9oi5/QT+Sowo3I8BNPYxJKLSmHcF+mEaPGpVg3mmH9HpdmjaredyqFvR7IyYFUUTg=
X-Received: by 2002:aa7:c2d7:: with SMTP id m23mr3594424edp.230.1605080393144;
 Tue, 10 Nov 2020 23:39:53 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
 <20201111070425.GM1246345@korppu>
In-Reply-To: <20201111070425.GM1246345@korppu>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 11 Nov 2020 08:39:42 +0100
Message-ID: <CAAfyv36zE2VNcK6F6c1nKuYb3ORei5paG1VD2YheWWh-+OhZDA@mail.gmail.com>
Subject: Re: [yocto] python bump
To: Mikko.Rapeli@bmw.de
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 11, 2020 at 8:04 AM <Mikko.Rapeli@bmw.de> wrote:
>
> Hi,
>
> On Tue, Nov 10, 2020 at 07:44:39PM +0100, Marek Belisko wrote:
> > Hi,
> >
> > I'm using poky release thud and would like to bump python3 to 3.8.x. I
> > took recipe from most recent poky version but I'm hitting issue with
> > e.g. meson build like:
> > Log data follows:
> > | DEBUG: Executing shell function do_configure
> > | Traceback (most recent call last):
> > |   File "setup.py", line 25, in <module>
> > |     from setuptools import setup
> > | ModuleNotFoundError: No module named 'setuptools'
> >
> > Are there some other things I need to take care when want to bump python3?
>
> When backporting changes, I find it better to cherry-pick the changes for e.g.
> python3 update from master to the old branch that I have to use. In my case I can
> not update anything which breaks ABIs on target images but can update all
> development tools like python3. Often fixes and/or updates to components which
> fail to build are also easy to find from master and cherry-pick, especially if you
> don't need to build all recipes from poky but only a certain subset. Over
> time this will make your local branch look horrible though, but at least
> merges from stable branches will in most cases work, if they are still alive.
Thanks for sharing. But I'm using official poky release from git so I
cannot cherry pick changes.
Or you have clone of poky repo and add changes on top from newest versions?
>
> But like Alex said, using 3.1 dunfell LTS or 3.2 gatesgarth would be better.
Yes but it's not an option for me to do it now ;).
>
> Hope this helps,
>
> -Mikko

Thanks,

Marek
