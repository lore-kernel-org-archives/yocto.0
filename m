Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web10.219.1613518331466222736
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 15:32:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=udpNNMuK;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id b14so11244032qkk.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 15:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uJYE+vmkTn5PyqW++OJPFSJ7TboKUqPpRD15Pgg4TJ4=;
        b=udpNNMuKqxXgto9VnsSZKtGtAUeroVKdxjsASstnRZpXti9SguPrzlaryDr3rEfanE
         b3Eaya7WtE4dLJMhHPkBwmVScFcSRiJV/wtxsejS2RpgvIM2lGkcJf1qrqC1p6jVJzVZ
         Y6kSDsjID5888d7MDcxrBrGTkaacBg6RqtwrG3wbUkTq1CeasiNk8Ex46CgwxoiI4iu9
         3hdwobE+eMacnB8W4EhOt6kUBNnURFi63G/euweBqeBJoOLy5G3Nyfig5U7MtUXOkFF1
         TyYHU6daldsaDF7awWH3Pop44QPZfh8Dyc6a5vyAiqUECJ6cJfLDZmerixkPev/3RAn1
         Nbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uJYE+vmkTn5PyqW++OJPFSJ7TboKUqPpRD15Pgg4TJ4=;
        b=Q21SvZbBLcWnxs62MLj5jNg+KCS58oMj9OChdA1lfKjiLQISg8L5jHRPsq3TEeHU3P
         Cw/tsUt0Jt1Y8H2ap3EAE9P7UJdGbFZ9Tnk2LzuJdyUYfWFESs0cNghrJcz7mJzdUEa7
         YqZse54S+LPO12NWKnAm8Wz5kFjNh+OtqeHbHJVGj6bPXRdWziHyR8FHuC52b1Qpe0+N
         0+bhMuwb8BB4P4x9SMqgozlBmi4qJ4kHTbESPSBRw/BPxWdytVYhum3B795RG66CivM6
         dMgh6nr0PzK/4LqRRsFVBkP2TJ4z3plKmQZfTjw8I9NCkCBQ5V3zFJmsVKSIDfPRfJHc
         MVTA==
X-Gm-Message-State: AOAM532pEZRy4A/ztZwppjPBgjjNeYQ56IzCmYztxd4p2CXWcwSb0HFr
	BwxMhTLf/wFWR3CkJrC1gw0gnA7XQiD2HwuZdYY=
X-Google-Smtp-Source: ABdhPJysqWL0EeSWKcargWhc22jZc+kwUBCedpCOMa5sMPpLIXat8e7Fz65T5KSMd76N9fAuIIdTL8vHz8L7qHrGEwI=
X-Received: by 2002:a37:e13:: with SMTP id 19mr22193041qko.119.1613518330584;
 Tue, 16 Feb 2021 15:32:10 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nGKD+YCsmxH4-B43JjDAToWe0CysMh78Z9m6R5Wq_p4Dg@mail.gmail.com>
In-Reply-To: <CAEyb4nGKD+YCsmxH4-B43JjDAToWe0CysMh78Z9m6R5Wq_p4Dg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 16 Feb 2021 15:31:44 -0800
Message-ID: <CAMKF1spDGqiU=L7s7o9NGtq-9b=1Ad_v4_+V3B7qSkdJFQo32A@mail.gmail.com>
Subject: Re: [yocto] Keep .bbappend for older Yocto version
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

perhaps you should create a new branch for this layer which will be
compatible with gatesgarth, you can seed it with dunfell branch
and then make needed changes

On Tue, Feb 16, 2021 at 3:02 PM Jonas Vautherin
<jonas.vautherin@gmail.com> wrote:
>
> Good evening,
>
> I am using Yocto Gatesgarth, and I was just updating a layer that was wr=
itten for Dunfell. In the `conf/layer.conf`, I can simply add "gatesgarth" =
to `LAYERSERIES_COMPAT_pocketbeagle`, like so:
>
> ```
> LAYERSERIES_COMPAT_pocketbeagle =3D "dunfell gatesgarth"
> ```
>
> However, this does not seem to work for a `.bbappend`. Let me use this p=
articular layer as an example: it is a BSP that defines `linux-yocto_4.19.b=
bappend` for Dunfell. In my case, I want to define `linux-yocto_5.4.bbappen=
d` for Gatesgarth. When building with Dunfell, I would like it to use the f=
ormer, and when building with Gatesgarth, I would like it to use the latter=
.
>
> However, if I keep both `linux-yocto_4.19.bbappend` and `linux-yocto_5.4=
.bbappend` and try to build with Gatesgarth, it fails with:
>
> ```
> ERROR: No recipes in default available for:
>   /path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend
> ```
>
> Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.
>
> Is there a way to keep both `*.bbappend` and have Yocto ignore the ones =
that do not correspond to its version? Or would that be bad practice anyway=
?
>
> Best Regards,
> Jonas
>
>=20
>
