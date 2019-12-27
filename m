Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com [209.85.217.68])
 by mx.groups.io with SMTP id smtpd.web11.3506.1577487656346956440
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 15:00:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KWMIAXip;
 spf=pass (domain: gmail.com, ip: 209.85.217.68, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f68.google.com with SMTP id g15so17723324vsf.1
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 15:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1Ginu/zJD+nEoS0uidLIwtZgZ4s6ccc2cxV0DTgiWHs=;
        b=KWMIAXipXfqqZ4VXTJDUkhSDmnkhzdSgoITjVbXe3o7j7h+azzc9rcOxlI3cZ1FoMz
         AvFO079SOOpDdst9TyjqPyjEpSOx88KfG7nNGLwFrFqn0juWtO7WZm6gRIXDcziI9zXj
         tvvZBrX7mIlUPftCnZJ6aSSYmSpHWATdrlvy9IhMUCerpxhmPBZPBLl6d+njyiO7saE3
         xY4eKDNkmrOHgIRUVEvvGP+0SscRFIFwKxtwe3y0LFkZqDHw7OGGIzktUuLUEjyCy7Du
         /39kfUb8/HUNUdekRPeoiiAhIUib1Gnt/D0V4ROzCm4RYfYHEWtCtpX3OwiV+yt8WZqq
         4rSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1Ginu/zJD+nEoS0uidLIwtZgZ4s6ccc2cxV0DTgiWHs=;
        b=EPkWCcrfHd8c+W9huYdwOmdYgmaqExCwikEDh5tJHsPV2qSAHL0ZfREW7NNjBUdFPD
         cruqqp5v4hbGHU16eEoqlLu8+3v9g+EYYQoJM0QzeJWGvCWSq0YRgjPAxO7tVkkejIq+
         mAQxyaMSl3FKk9cIZz+ZIvJI6yjeRtmb3Rx/svxc9RH2RvPlbRod8YAN/qdxk9mSbAjl
         TM0C6ocSMlqFf+1AhFoq7/CIO7hnLIEq39sndjG+UQy8dykoeJpqz4Tgg/CjfcdlLjG6
         a09d0PD0QoskIYnaattiPDh7ke1cYqIYGacXn1vLh+gFP8OHX2dFWKUTIq+GUwrxD99k
         RU0g==
X-Gm-Message-State: APjAAAWZ9Od11S3nTgbRD0rACxnh9xtIhQLl9l5+n17Kza3gTvKFCdc0
	bX2Ro/LHI8wxUuBfi6cp1HiI9HXP/e3rKqh2wq4=
X-Google-Smtp-Source: APXvYqwMWl24TSHkRIN+dGRq51lH6mDrLJELdQRoN3WYaTdF7XPbc1rWO6DMVTFCuCMlZylfxdMmYmr7kBIaxHxwC74=
X-Received: by 2002:a67:b911:: with SMTP id q17mr15176349vsn.230.1577487655276;
 Fri, 27 Dec 2019 15:00:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Fri, 27 Dec 2019 15:00:54
 -0800 (PST)
In-Reply-To: <CANNYZj_cCm6ce9A+KAHvczHOOYMzotdwbeG2q7f9jhH=8iCU3Q@mail.gmail.com>
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
 <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain> <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
 <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com>
 <CAK4PFCXWTUd+Jv7i3uUYibjVeVf226wvXtDTCEzhnUwygPeSTA@mail.gmail.com> <CANNYZj_cCm6ce9A+KAHvczHOOYMzotdwbeG2q7f9jhH=8iCU3Q@mail.gmail.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Fri, 27 Dec 2019 18:00:54 -0500
Message-ID: <CAK4PFCVHjkHCGxJHwZwenqHpbpNFUyJBN3eYoF5Ny-+qqztkWg@mail.gmail.com>
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 12/27/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:


>
> There are ways to adapt such a proprietary layer. If the intranet location
> is set with a bitbake variable, then you can adjust the variable to point
> to *your* intranet, and mirror all the needed pieces. But I can imagine
> that you first need to discuss with your management what the problem is,
> then explain to the OEM what you, the customer, expect from them, and
> somehow codify it in a signed contract kind of thing.

Agreed.  That is kind of where we are at.  Yes, these closed source
layers/packages simply point to closed source repos.  I need them to
prepare pre-compiled archives for these packages that can be overlaid
into our rootfs, and to make the build process use these local
archives instead of attempting real builds on those packages.  Then I
don't believe it is any longer an issue.

They gave us the kernel source but there are sysadmin apps and
libraries that talk to their FPGA that they haven't shared the
contents thereof.
