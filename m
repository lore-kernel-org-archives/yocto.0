Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com [209.85.217.67])
 by mx.groups.io with SMTP id smtpd.web10.1559.1583281775585685675
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 16:29:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M7mp1l2z;
 spf=pass (domain: gmail.com, ip: 209.85.217.67, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f67.google.com with SMTP id n27so57966vsa.0
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 16:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1UTbh/Wk+NietXMCRwG1PwQri1T/P6iu57/Vb+SLNbc=;
        b=M7mp1l2zunKngR25C+S/ME+lA/xuqOfrpBKjw5QWr2qSLDgBawdAaaZzshiA4MkuC0
         81lbldKBXmGD3nOPeAJxXAgq85BvX04oTl1VzMQJeiCgbJuc00X9CtAN+sJfQ7Otvn2o
         /Mwol4M5R3a+0m/fGELBjFtPYrWg+IkrAWkIOuwr4eqzVMGpvkFP6WkJtDWGAJ58KPCm
         X2lIV3BNOVDG1ofBBngCvprKXnXKHJi5dOIC/ilMDiAzcHlS5HB09e6CHJh2J90J4Ne3
         ZhXx7QG8ygqVGo8WNGli4JDxoBYXB272eejZMUQfa/QKnrN716zAyZ+m26UCvc+/n6ao
         UPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1UTbh/Wk+NietXMCRwG1PwQri1T/P6iu57/Vb+SLNbc=;
        b=XCUi33T/Z/sfXFg5DJYGz5W19jz1U2iQow0BoewPm/0DtK8Of01+zLmarFxcrKk7zy
         a//NPG3xyl8N+vzUkueZGmRHUrwcchYMV+qQ5uDzIEJC2A3YlLhK+UzzhjHqD4RQdTtu
         dszDDbvLIP+U95sb6Ce7MSCC7HyWmoj7jokj7Ufq7hJ0BkEjcudSS2F6LQRRijcjq9uM
         rREV4ylOdcQvJ8qS5lawKvntI6zy+qN6JhpVyvhLwyILatJLkuWF6jdpXyUo47ldX6Ep
         j38DOM1ZkZoJ4pIk6FQsmGTrRS7Atwc/QD8DWmek1dG5aEisBqaYoOFUKg1CyKEWj+RS
         DATQ==
X-Gm-Message-State: ANhLgQ0Idsq8T+hSvpiLp6jiVkv3L4PZGyfu4QBcMT2fDD1N2QEwimvt
	XQa6nYP4w+9zFPj0da5ndZAzcXaVJm1YxwTC4XDU0WyMtAE=
X-Google-Smtp-Source: ADFU+vtwh/yk7pphLrObo+EsFis8KCJwkcg8cbwV+gTrActGMXudaSxztSoGVVShR3wEw6WyKEE5HSVpJ08TaIubyZM=
X-Received: by 2002:a67:f641:: with SMTP id u1mr360010vso.86.1583281774526;
 Tue, 03 Mar 2020 16:29:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:7455:0:0:0:0:0 with HTTP; Tue, 3 Mar 2020 16:29:33 -0800 (PST)
In-Reply-To: <CAFSZm+iYmsh4GA1_CqDAw13EK2L7H0z-DxokgOZtrRfYP9S7PQ@mail.gmail.com>
References: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
 <CAFSZm+iYmsh4GA1_CqDAw13EK2L7H0z-DxokgOZtrRfYP9S7PQ@mail.gmail.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 3 Mar 2020 19:29:33 -0500
Message-ID: <CAK4PFCWYu4JwH7kD36OB_cRPuwxuwQL325wct4a8e6y4zA+fVg@mail.gmail.com>
Subject: Re: [yocto] way to make do_devshell changes permanent?
To: Aaron Cohen <aaron@assonance.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 3/3/20, Aaron Cohen <aaron@assonance.org> wrote:
> devshell is good for playing around, but I don't know of any blessed way to
> just have it somehow modify recipes and create patches magically. I'd be
> interested to hear if there is something like that.
>
> The closest to what I think you want is the "devtool" workflow
> <https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#using-devtool-in-your-workflow>
>
>
> Basically:
> 1) devtool modify <recipe>
> 2) hack source in $BUILDDIR/workspace/sources/<recipe>, test as desired by
> using "bitbake <recipe>" or "bitbake <image containing recipe>"
> # Once satisfied with changes:
> 3) git add $BUILDDIR/workspace/sources/<recipe> && git commit -m "Added
> cool changes to recipe"
> 4) devtool finish <recipe> <your_layer_name>

I'm not sure that the git add is relevant for all recipes though.
Some of them are simply tarball sources and others are shallow git
archives.  Should I be confident that yocto will know the difference
and treat each case correctly?  or more likely I'll assume that
something was registered and then it doesn't find it's way into the
build but slips through the cracks?

So the question is whether devtool finish is smart enough to save the
changes, regardless of whether the source repo is git or tarball.
