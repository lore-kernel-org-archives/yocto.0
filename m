Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web08.34145.1611566676107989898
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 01:24:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zwaqo3H5;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: erik.boto@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 3so14438370ljc.4
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 01:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JUNOzinmYg0D2u2ilCvL6i4Jl+Rg9l3xhpqX7wb9fRA=;
        b=Zwaqo3H5xmyLb0SVcLLM2qCbMSWU1+a12WgHFXNDSlhetq/38z6WnMeEqAvKpiT8s9
         Ox4O+lsfbjHAe+xOM+aYkS+H11xJ05FiEOBY3xVlyoAgHKXHSiO0wTuHPwrx+DvqFrJ/
         YYaJyhYkWEASh4IG5rac8PoeS/37IoOPEdGrhSd5tz/537eeYFKWfKIeU5KJiMfaMaJg
         1rH9JaIZAxhGewahm9+KRRZ2gN695+8gY5xeyo2ptO8wFv1sxPgJUwul0qKu3MX7Hogp
         BwYIFtH6LpdLIPktI+PNoVcL6fbjgpdjLrINPRkmqtisApYncXLb5lWvoEKUHhpZ4huA
         FU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JUNOzinmYg0D2u2ilCvL6i4Jl+Rg9l3xhpqX7wb9fRA=;
        b=cJM+Iik5oiHLeNWSxpT9WBjyr3juNA0CP6K2rEG/62DXMcjlcMt6uA5NvtDt2ApVrx
         s9bPTg0mS587HnU3knxnXWA60yry9UL/ABxezSmxy8JmFxUTEDCv+YP8qOlamWmrZ0Or
         ClfdTjqU5ByVPtdDJC3AHcyF7kc0eDCQpeeQ9NZu3jEYhh9pdhS+pBfXQW0AQ9Y13A8+
         4JnulsltDVdqIJqQsgGxfMjLejsMQp4o+Nj0i68ntW0LsagfCy7Qdmh+jXjOtqlEjbdG
         n6TRQYAvmwMX6/yQyahqIPDB3GbD0+L4tqNPzXmUqj7lY0huuj0kv2b4NYEYe6nvPpiT
         mi7A==
X-Gm-Message-State: AOAM5326obOMBzXZCc4egWuNR2Tu2TN/qvzmsjCxtisNi10qj7PpEdpJ
	EJiCO3VBArgcy+E3I00qu4aXLu8aZhQHHh73IY8=
X-Google-Smtp-Source: ABdhPJxiaklWCHeV6EJs9rhhb0Wiw4rRjcMnMcp1OHecEooEkuVbfMpvU2YvXFUTdz/XjWlHsveY13JeT94aOHDErbo=
X-Received: by 2002:a2e:9195:: with SMTP id f21mr118312ljg.191.1611566674293;
 Mon, 25 Jan 2021 01:24:34 -0800 (PST)
MIME-Version: 1.0
References: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
In-Reply-To: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
From: "Erik Boto" <erik.boto@gmail.com>
Date: Mon, 25 Jan 2021 10:24:23 +0100
Message-ID: <CALNvYWNiPq_4vp9oGVRp=wCC9+xXYXDANtHkkMHRH1iNf58d6g@mail.gmail.com>
Subject: Re: [yocto] Points to consider while moving to new yocto versions
To: amaya jindal <amayajindal786@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I'd start by looking at the relevant documentation section,
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#general-migration-considerations.
There you can also find a per-release summary of changes that are
worth knowing when moving to that release.

Moving from krogoth to e.g. gatesgarth is quite a jump, so I'd expect
that it might require some effort. If you don't intend to follow along
new version, you might want to consider using dunfell which is the
current LTS version.

Cheers,
Erik

On Mon, Jan 25, 2021 at 9:07 AM amaya jindal <amayajindal786@gmail.com> wrote:
>
> Hi All,
>
> We are planning to move to New yocto from current one that is krogoth yocto to some updated one. We are not thinking to move to gates-garth or some other major release but the releases than can have easily support for arm.
>
> Please support and help.
>
> Points need to take care to port to new yocto version.
>
> Regards,
> Rohit
>
> 
>
