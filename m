Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.860.1614106253235601278
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 10:50:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f2Pw+L/j;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7FCFC38C0894
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 18:50:52 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id i14so26779305eds.8
        for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 10:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JqGqatf+jNUdHxgiVs66qkWsObTdgqpwr2DGY83xVII=;
        b=f2Pw+L/j0oyXHrrisIN5anICJgAOU7GWH1lZfmssloP/tPGecU0aUgt080VvedWlcb
         cq/hY0o/jk67782oyWdJlH5oWuZ85VdEUlF7VIirZJ9VSFoTGM0Q5kSgLuJCvpsqVUkP
         sCrUpAPQXg2iXZOpqdhErWgueMtzfVVKyRKKOeJufIAL7G6vIujbIi0qgF1MDJ9a5e6g
         Z5RCr7Qc/FCzuBHxVY/E2kTdg5UrXNLVxFLuoQ9ykOMsqNk743G5SV8PcstbwbWDZIVm
         6yRcp4Z4y7IyR8co1mpn5rgyEHU05STSKCn4A/v79w+IFEuidKugwFtH50O7qPOFZCKL
         ua3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JqGqatf+jNUdHxgiVs66qkWsObTdgqpwr2DGY83xVII=;
        b=fqYb3SWHipzYcEy5OnbQ26ey4bTvGQ9iR3cSLRnnQmbM7O71K/XQ+JO7KUur0KTWn9
         +0GjGIfZp7aqWut22h1dXGUVFrvWDg0E2NgtYhAn/tt6iXnRd7CJprbnCPYHzRv/f38u
         jw9HL7vOc77IsUAnsDojv69T7Hb+FP118dHK9SegWVDIz/5OFiM0NmhIFIXA2NjfE8KK
         8DDlpktXlqLClLheCAZ/QHc7xi4q6kDGfJEMlui875QQsF/TlNPeUSuTooz+ddZMJ5f5
         uFpAbIyXA+ZJQZ5lEi3QVl4bP8B5XBbBf/96vQFinvlC5BdhcWJE5tTtOChSMlzSALfa
         z6pA==
X-Gm-Message-State: AOAM5321Xb9CFlusikgxrmBk5SHUV7awGRmmOQlCPkaSlvC/cX2LZbms
	CVewZnmepLNOGtRVA4+zSLYe/YeapMPnGvOP6Ys=
X-Google-Smtp-Source: ABdhPJwbeKTvQL+ciOHEWd6mH6mHz0K1aI0wzfrcjZEbsmG3Qui4gqHwgwVhNn53Za5xMMhXLjll9C6GGgew3yy17PI=
X-Received: by 2002:a05:6402:4389:: with SMTP id o9mr29567727edc.164.1614106250885;
 Tue, 23 Feb 2021 10:50:50 -0800 (PST)
MIME-Version: 1.0
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
 <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
 <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com>
 <YDUAklwGAsPCeyVe@korppu> <CAFP0Ok-863pEPRRRsOsZDG1VJ8GZw06qR+mu+_M2yJouJDuB+Q@mail.gmail.com>
In-Reply-To: <CAFP0Ok-863pEPRRRsOsZDG1VJ8GZw06qR+mu+_M2yJouJDuB+Q@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 23 Feb 2021 13:50:39 -0500
Message-ID: <CADkTA4NB8oatgLAg=pNEVbOcEPSXvLb-NSaDrdM_oDA5i5mAnA@mail.gmail.com>
Subject: Re: [yocto] Kernel Header UAPI Issue
To: Karthik Poduval <karthik.poduval@gmail.com>
Cc: Mikko Rapeli <Mikko.Rapeli@bmw.de>, Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 23, 2021 at 9:56 AM Karthik Poduval
<karthik.poduval@gmail.com> wrote:
>
> Hi Mikko,
>
> Do you have an example on how you do that ? Do you bbapend the
> linux-libc-headers recipe file ?
> I have an application that uses dmabuf heap that potentially extends
> across multiple BSP's as its BSP agnostic. I don't want to be patching
> individual BSP recipes and generating headers. The issue I am facing
> is due to backporting the patch from 5.6 to 5.4 so the required header
> isn't a part of the linux-libc-headers.bb recipe. Best would have been
> a virtual/kernel-keaders target that applications that require BSP
> headers would add to their recipe DEPENDS. Why is this not a solved
> issue by yocto project ? Why do individual BSP's need to deal with
> this differently  when the header install mechanism (make
> headers_install) is the same irrespective of the type of BSP ?

Because it's not a simple thing to solve (and there's a bugzilla around for it
already, where the thoughts and issues are captured, but that one seems to
have been closed and I can't find it at the moment).  I do have a WIP
class that provides some different modes
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=5305),
but with corner cases and concerns, it keeps slipping. Feel free to try it
out and comment in the bug (I'll try myself to be sure it still applied, it has
been a few months).

What works for your case, doesn't mean it is a general/supporable
solution.

But generally speaking, It's an incredibly bad idea to have your libc-headers
tied to the kernel you are building. Every time that kernel changes, you
basically need to rebuild the entire stack .. hence the bad idea.  It is such
a common question, that we actually put a warning in the libc-headers
recipe itself.

We do not really want a parallel set of headers in the shared workdir, that are
from the currently built kernel. You'd end up with all sorts of mismatches
and cross includes and potential different behaviour per-application.

We already have the kernel source installed into the shared workdir,
which is what the tips in the libc-headers recipe suggest using. And it
honestly isn't so common the need for sanitized headers that the need for
something like I did in that bug has made it necessary.

Bruce

>
> On Tue, Feb 23, 2021 at 5:18 AM <Mikko.Rapeli@bmw.de> wrote:
> >
> > Hi,
> >
> > I know it's not the best or recommended approach, but I find it
> > hard to avoid merging linux-libc-headers recipe with the actual
> > kernel recipe that a distro is using. At least a static copy
> > of some version of uapi headers from that kernel can be used
> > instead of the poky side linux-libc-headers. This helps to get
> > the actual BSP SW delivery headers into userspace, SDK etc.
> >
> > Cheers,
> >
> > -Mikko
>
>
>
> --
> Regards,
> Karthik Poduval


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
