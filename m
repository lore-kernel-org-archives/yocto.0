Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.4433.1584475464132962655
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 13:04:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMnH5quV;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id a20so28199799edj.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 13:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xMCb3N8+L+3LQzjdfZYmspg/XsdZL9uwUiQDQr6QKAk=;
        b=JMnH5quVCkv81Kv2dWW0yWZXTgkkLn89PgzexLo8HC/0XeUPMUsVwMkZH+hjNYr5Iy
         ycJf+9/p+Bvld/AR7zrkgexaLl9qIIsco/pfzHJB1M2rzcsWY7PtW21ZquvG0DHLnrVP
         uzd+SJ7qWVOl11+BhVGt9EiowEOTM+T8WmnShbJLr3Aqg7LCx6I5NLSAtnkbM0M+DSss
         h/QK5VtKiL77hHhH8wKbzAiFXsh63lSkpBAUTZZ2DC59ohxSYOAGM55CshBtkpqInhwo
         63StI8SuR+Au18bzVHU5UjbJFb20nxW8J1Axs5hooVY885NqyGAwm61Dkjz56f5e12/E
         bQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xMCb3N8+L+3LQzjdfZYmspg/XsdZL9uwUiQDQr6QKAk=;
        b=oFoQu5YG19HaloAk/fgTof2JGFdm8MeEOHnjMudfN+iLd9aXW/jw1VJZFMq/bwenRS
         EKbT6JJlCsnHXZfq3JKMF9K6h3Rv7IOD9XR4jXFMAaXgLyHWxx5l78LVzVtpClfPBMus
         ZAGMdpGycAf0jEEQ7HVxL+B+vSQvAwdP0M6iQVAq+KtbKnU3epFQZfXl4hHbDw2gQp15
         Mqo+t2ZUjEOmNFxWGe8bTYKjNbXii4ZPQWOiLLkQTcEZ4GpbNgnyddQuk1gqid8e3xJ1
         IhCa1l+yrAazzFyiFS7SHwUSUPmLbJxGxIjZNuBdaGWmnL8bOQvrNAzYlXHFnIm2XH3C
         vy/w==
X-Gm-Message-State: ANhLgQ0CWadaXLK0+rPd4xvEVdRoeOg+YpheUhZG8bK5lmVI+TrhaxYH
	1mgcP9XKSnlZgd8g7hn15dBj+4fs4qqYltGD8bU=
X-Google-Smtp-Source: ADFU+vuwmwj9sNrB4wOzYpNXte3Nte187rOnHa/HPDWTpYIBkGBIZuO2lCJJg9qaw0JRd38+C7A5me0mghC4qG2+w6A=
X-Received: by 2002:a17:906:1f47:: with SMTP id d7mr856385ejk.37.1584475462578;
 Tue, 17 Mar 2020 13:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <tyiw.1584470495253597159.He3i@lists.yoctoproject.org>
In-Reply-To: <tyiw.1584470495253597159.He3i@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 17 Mar 2020 16:04:11 -0400
Message-ID: <CADkTA4OLBuB2ix32YaPkDOngJAoBkcgcA7x+mXSatKi1d3uaTg@mail.gmail.com>
Subject: Re: [yocto] Excluding kernel configuration fragment
To: Fred Baksik <fdk17@ftml.net>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 17, 2020 at 2:41 PM Fred Baksik <fdk17@ftml.net> wrote:
>
> What is the best way of excluding a kernel configuration fragment?
>
> I am trying to disable sound support in the kernel.  I can create a fragment for this but then this conflicts with the other existing fragments.
> For example when using meta-intel and removing sound support then you will receive warnings like:
>
> WARNING: linux-intel-4.19.73+gitAUTOINC+a7cb57afb9_ca05e9cd64-r0 do_kernel_configcheck: [kernel config]: specified values did not make it into the kernel's final configuration:
>
> ---------- CONFIG_USB_AUDIO -----------------
> Config: CONFIG_USB_AUDIO
> From: /.../build_corei7-64/tmp/work-shared/intel-corei7-64/kernel-source/.kernel-meta/configs/v4.19/standard/intel/features/usb/usb-gadgets.cfg
> Requested value:  CONFIG_USB_AUDIO=m
> Actual value:

That fragment is part of the BSP definition, and has been defined as
"hardware dependent", which is why you get the warning when you
disable it.

What you are doing, is the right way to do things, unless you modify
the source fragment directly.

There is a way to silence the warning, but declaring it as "non
hardware", aka optional.

Can you send me the exact layers/branches you are using, and I'll
confirm the right thing to do with a local build. This isn't commonly
done, and I'm worried it may have bitrotted and don't want to waste
your time. I'll write regression test for the functionality at the
same time, so it will be doubly useful for me.

Bruce

>
> I haven't had much luck with the documentation finding how to prune machine features and fragments; I may just misunderstand how this is supposed to be done. 



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
