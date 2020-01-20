Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web09.1474.1579557484282719192
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 13:58:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAQk3P5E;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: schnitzeltony@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id f5so719140ilq.5
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jan 2020 13:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AoN+g0bwwbZpGkOlg/PwYViueHj2/9q1hMCZLrrJcX0=;
        b=CAQk3P5EXRE7sjsyiBiURG4WVPFYc2Dmn92S1X8UXSRNb7/p+lynv/3yIAyfzFMD74
         jY7UZM20A5fxvMQa4f9wE5KrQCB3MRXpHpSYlG/4s80CssvzV3tIVjkE6lQo3aRzbPoy
         owQ8iKT+B0tWdfgkuBqbwiuv6Y84YaP4guBggSkpVjrOefCAMfJTpJ9SRXSXutLOiXPQ
         kucKu+21gvmWL7Jx6EpGA0zRvXCqy4ni+lNXzN64diNB7noWm/uoGnaOEsIfu0/weyIA
         htfNgj7tYaf0o8ld7bxWgqVSTC6SoLUM6ECcULaJyF+fJ+Kr91mIGt/qJjGdYwtd4yOX
         YEug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AoN+g0bwwbZpGkOlg/PwYViueHj2/9q1hMCZLrrJcX0=;
        b=ZHFs+i813S9PjKVmmy9WX8m1bjxeBfLgwvRo0D6+w9w3J/w6IkrGVpwwWUXXQYetZy
         kJwRg3KLpx8nhJbuqqv3qgzLqDRnbYAKVt/8+ayEnvFpIZqMGHIV1qYe8xY8hJMOduqK
         JfKh+VLZDJblbAhcUkyTLwsdxT+JX8e1HP2IJPyuOj5KR4kKJscCG8sYq95RWQumA1Vl
         9Dt96pWXu8Wgxh+jw/LmXBoe7S5gkomsSr8Vqa9DfFzdlgxCjDv1k0jr0JqYdFYeCSQc
         iTiLCEMpkK7oApQISEJ+cUApDCvoDmLAfdhAupgBqRXM+j0BE61oyZgDDf4vXftrUwj/
         WwFg==
X-Gm-Message-State: APjAAAUZTTseYgzYOs+pgcFUohhqg1ti6lh57TEMTthyTApLyH3inQRg
	aM7enfdC+HMy2qsoeuil2zWMs7tXet5piUqZl74=
X-Google-Smtp-Source: APXvYqzn5ICp2EZOhtPVrFCJthZGCcaDF9K4RUiPb4NaJR4/r0H5amNQKiuW3lRYKvD1nWr0X/N+DPh2eeSt6ADnqQo=
X-Received: by 2002:a92:cb09:: with SMTP id s9mr1070850ilo.224.1579557483636;
 Mon, 20 Jan 2020 13:58:03 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org> <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
 <20200120181524.GA4735@denix.org>
In-Reply-To: <20200120181524.GA4735@denix.org>
From: "Andreas M?ller" <schnitzeltony@gmail.com>
Date: Mon, 20 Jan 2020 22:57:52 +0100
Message-ID: <CALbNGRShOxy9_C4=k7osOuEGBsZDVrfxKBMNR7tWc7ShCLVdnA@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Denys Dmytriyenko <denis@denix.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 20, 2020 at 7:15 PM Denys Dmytriyenko <denis@denix.org> wrote:
>
> On Fri, Jan 17, 2020 at 09:55:55PM +0100, Andreas M=C3=BCller wrote:
> > On Fri, Jan 17, 2020 at 9:21 PM Denys Dmytriyenko <denis@denix.org> wro=
te:
> > >
> > > On Fri, Jan 17, 2020 at 09:15:09PM +0100, Andreas M?ller wrote:
> > > > On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote=
:
> > > > >
> > > > > perhaps add them to meta-py2 first before this lands
> > > > Just a question: What is the plan with all those recipes which are
> > > > going to fail (most headaches I have with old waf): Will meta-oe /
> > > > meta-networking..., depend on meta-py2 or kick them out or?
> > >
> > > What, not calling it the worst patch of the year? And the year's just
> > > started... :)
> > Denys
> >
> > 1. Would you accept an apologize for that one?
>
> Don't worry about that, let's file it under "overreaction due to stress"
> category, shall we? :)
YES :)
>
>
> > 2. I did not ask for stopping this - just asked how to continue and I
> > did that for certain reasons: For example: Few minutes ago we saw a
> > series for npm rework on oe-core. Unfortunately npm as is requires
> > python2 and many modules. Or the waf stuff: That means somebody has go
> > to all the projects and ask them for waf upgrade or prepare patches
> > there (and that means not just upgrading waf). So again: How do we
> > handle/get rid recipes requiring python2 to build?
>
> Yes, all good points. I would agree with Khem - let's drop it and try to
> fix as many issues as possible, while we still have time until the releas=
e.
> Distros can have own dependency on meta-python2, but meta-openembedded an=
d
> openembedded-core should not depend on deprecated components, IMHO.
>
> --
> Denys
