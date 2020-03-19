Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web10.1961.1584642240570847253
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 11:24:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iVkjSyt0;
 spf=pass (domain: gmail.com, ip: 209.85.219.65, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f65.google.com with SMTP id n1so1567480qvz.4
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 11:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EhuQ/PKujn8DVEEjlugdLmH39pFem5++VH+cdM1Y2tc=;
        b=iVkjSyt0Ue/5i+1puLXH7UmkXhGvdVcXWK7Rj+6DtX/uydoarQkceqb3jwk4WQscDZ
         fml2cdnxVDAPEdHDUJ4v8C09QGTmTPW0qW9JSClYmig+jSzMJ1fwq+HTJ8nSHMPDGnma
         pH3Wo/RdvW3kGJ5066wNDPd2FdMY0Gl6IXQtYxcRHLwf8qhrSm4FOelEy8ZDk0pjl+t9
         d41IruzVEP/Y6JtSp+bD6EWGh0rIbZBM2UNXvdLittw0DVrvlUuYRziDxcbR5PlcTkTn
         OfRrbq7YqWwvaEzGkSkIuKauCT3a8PxL7Fae8hmsZ+F1JvKWjvhkBnZuSKTdycjtq33w
         hQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EhuQ/PKujn8DVEEjlugdLmH39pFem5++VH+cdM1Y2tc=;
        b=d3awbPI0EnivqU+wPfzProHHV4V67D1eNXZp26LSQdkNOU/WRYfwQAmAUVzvvX8kx0
         N70hTRntX7bvWUaFbRjT2ce3q/Gd3SIP3a2S108rAPou5rAbCICZQHCoPfLAEjw80Ozz
         sjI4yNKHDclcgxKyvlJhNWvlqn/hoj1KHvEGXScvA6DgUJ1xPi8Ak8STmmv6ujhdiGON
         39b0LQVm/pB0F/kJxUVZR97nU8fF0f8aCqKTBcOB7o29RrJ396wVt7bxSvt9pK//Ch6f
         UPC3iZ1sRwCtwLhAmH3nztpCmCqKuS8nlvzB+FUaG1p69CFtEwLUC+Rl6WrwvGsIIGKA
         stZw==
X-Gm-Message-State: ANhLgQ3VL/MOy6HMCe0xECYT8GLeKAYl59vDah7ASZntbEg7o+AIYVKx
	wEmlHFfsHiRifuOC1tqKChypVVSHr+GWuoHbFCE=
X-Google-Smtp-Source: ADFU+vuZPu1f/vVtedK34eHpBHehKd1pLJ4W2AwkZB29oznIxn5cO+RBRfDUb3mtslh2eebzM6vODtKVclObPWjuOpQ=
X-Received: by 2002:ad4:45a7:: with SMTP id y7mr4422408qvu.146.1584642239340;
 Thu, 19 Mar 2020 11:23:59 -0700 (PDT)
MIME-Version: 1.0
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl> <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu> <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
In-Reply-To: <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 19 Mar 2020 11:23:33 -0700
Message-ID: <CAMKF1srxf-ocmvsNG9-LJG4geS7opKhE=WXR0sLh_5+ZNHO_yA@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Mikko Rapeli <mikko.rapeli@bmw.de>, 
	Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 19, 2020 at 9:07 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
> On 19-03-2020 12:04, Richard Purdie via Lists.Yoctoproject.Org wrote:
> >> , fetch, configure, package and rootfs tasks.
> >
> > Sadly these tasks are much harder.
>
> It would be really great if some sort of "weight" could be attached to a
> task. This relates to memory usage.
>
> My system has 16 cores but only 8GB RAM. With both parallelization
> options to "16", I might end up with 16 compile tasks running 16 compile
> threads each, i.e. 256 running processes. In practice this doesn't
> actually happen, but the memory load gets high sometimes, so I reduce
> the TASKS to 8 at most. That has kept my system out of swap trouble for
> the time being.
>
> The idea was that tasks get a "weight" in terms of cores they'll use,
> and the scheduler takes that into account. So it would run 16
> do_configure tasks (weight=1) in parallel, but it would not start a new
> task that would push the weight over some number (say 40 for my case).
> So it would start a third compile, but not a fourth, but it would start
> a do_configure task.
>
> Does that make sense?
>

is it something like make -l ? that you are looking for here.

> In builds involving FPGA's I have tasks that take up about 48GB of RAM
> (my machine cannot run them) but only a single CPU core. Attempting to
> run multiple of these in parallel (happened to me when I changed some
> shared recipe content) will bring most machines to their knees.
> Currently my only way of handling that is manual interference...
>
> --
> Mike Looijmans
> 
