Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web10.3291.1577485516601821629
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 14:25:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=olwo+MmC;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id v12so17660190vsv.5
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 14:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0qZ+bWpNNEhZpEVtRqCMuz6GJMLhDgI6oLDmVL/oaIQ=;
        b=olwo+MmCcH2+JY+zR4UIDI+xjU++1rARzZ40/B2gOpBSMEZLsd6XZ7m1hqyvgoKllJ
         xC7aCRsos5AVqPsNI5kKK4QyhWpUVufKVYhZjLRQXAAeA0d5tL7i2SBvDMc5G/5s2m6c
         uPWz/dGvSBC9x8E5hOi4Q1u9Ab4/XjZcSh1Ya9VRV9VRqsaf3wRtwBCttZyZLkYtfRH0
         oDjVARbybb2iHfPdJR7f3FQxMTtFeR/rLTzpVwFU1T4pJ+T/LbeWuzUowebSoWs1aMKD
         9FaJs5X+m0U4HBwQJavjL3J8E6WhLLgQD0FxtRuwWV3Ab7GdTEazMfQVOEaZdtsPoR5N
         kP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0qZ+bWpNNEhZpEVtRqCMuz6GJMLhDgI6oLDmVL/oaIQ=;
        b=nmfINfuyRnNF6HO3VP7jKarehhHGrTU4y1R8c8KVo5YjKDmAdVi8ANDq6u8LM6r+tv
         geqst+c9YaP/R1bZnCoMnkeYfZmHcqv8t9Op31e0//BH9WjrdjmmV6BCd8Zx1DW4ouJ8
         TJX1WzSGhZBE3BG6z8s8n8ZxnDek2VEq0nxUvw6DBA0sJ0wWe2JKRhzFpr57NcvxRtKG
         nEQfoAy32URAHqeJ2gJwp2h2ihmrSh9VoFDRqQXNxUWyhzsaCLTnczsaCNcqM14RCu3g
         mCSiL6s6bv+SWVxGaXqzGENhmvnv+4X/d8Fk7WTwdMeD00M0F9w+g7mxc4nmgv00X0p6
         qypQ==
X-Gm-Message-State: APjAAAVIgqEMW26JTx87oclsfA8yoxR1eucBpSh0+GNy2EQz9oQ6edbp
	Wh332fnEXpzON+tA3oFNTHi9B4jzzdqAfeE3H34=
X-Google-Smtp-Source: APXvYqwNIqmpyutmwhKMD7BFmF+s/j3dd1vtsvEwP/zUIRvnp2/lOs79NjhimUuOr7qFzg/vgOLhoi7n/59B3c5KggY=
X-Received: by 2002:a67:5f82:: with SMTP id t124mr14726637vsb.184.1577485515594;
 Fri, 27 Dec 2019 14:25:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Fri, 27 Dec 2019 14:25:15
 -0800 (PST)
In-Reply-To: <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com>
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
 <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain> <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
 <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Fri, 27 Dec 2019 17:25:15 -0500
Message-ID: <CAK4PFCXWTUd+Jv7i3uUYibjVeVf226wvXtDTCEzhnUwygPeSTA@mail.gmail.com>
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 12/27/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> To me it seems that the SDK is the wrong kind of delivery to begin with (as
> it is basically a frozen target image configuration without the ability to
> customize the entire system build; Yocto SDKs are meant for application
> development). What you need is a hardware BSP meta-layer with ability to
> integrate the layer into your private build configurations.
>
> If you can get the OEM to agree to this, we can discuss acceptance criteria
> for such a layer.
>
> Alex

I think that was their intention from the start.  they wanted to only
give their customer the ability to produce user level apps, without
modifying the system, but for our enterprise that is unrealistic.

They do provide a meta-vendor layer, but the stuff in it points to
private git repos and stuff like systemd startup scripts, so if it
ends up not in the cache then the build will fail unless the build is
done from within their corporate intranet.

So no, they would definitely NOT meet any real acceptance criteria.
