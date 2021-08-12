Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web09.18834.1628749884178237284
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 23:31:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4uNaHa6;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id z18so9601734ybg.8
        for <yocto@lists.yoctoproject.org>; Wed, 11 Aug 2021 23:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OVMmTbEARvIMwpFzusOIAksXmcmzo46vmIFia9OvY98=;
        b=U4uNaHa6/w7c7FSiFHxHSo/uLxQuKveLSNNqtwtAE/oLD5XH5F/0/LCMXSX9wtoIWn
         iw39TzB6Cg6KkkdvVqVa/oHnObXpJU/UL3SKZ7mQYoddtuh1uPISe3lC0ntej3mD4rFN
         fSljPm7lBrVPGKCTjexfnpSZVZ0ZR2lR/DXeJwSliTMPvapwx7QtZL4S66/2HrODAUGw
         A8NZjM0AtPsPJOwxQ7h/3dbkKhKrQNt/DASsvFe5ttfMW+GqQ3RrcpHUj14s5tB68bE3
         InPDXproNE9C9rzKPCqvho5na2+P1hdH7d1w/K7I45VMh72iPLFAFodlTbHBXkT+jwsy
         uYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OVMmTbEARvIMwpFzusOIAksXmcmzo46vmIFia9OvY98=;
        b=qlPBxiWNbiben1KXw3n3vX+vdZrpXqoocIxD8bv+6iNX9xGFDIJ5nq13qN9w1L5VLi
         a0/3Cp2wzNBuXLScfASWK5LOHWvfTXTbBV19qfa9233hy3utbTqIyEm4Cdje/oYD2Ztp
         gpaURgUzjnCXO9GyS9bPr/pBmggnQYYgSAdpH7FxGPjg8v44Wh8SKm9ToOxwdT4+dL5c
         zmGR2WkUMnyI2AtfL+cJF5zmVOgmUTdO9leG6/jq8+/8ejpjw6upFWZ2Awr9dHQlvUfp
         2mMy4I2QLB58PWgCcwSqh50nVODQE+CFCufFIHCPx4yZWq8WVTdZGG8Ezk3XwXGrcLMl
         qPLg==
X-Gm-Message-State: AOAM532PjvdNuPLSOV/pqb/gMncOLrP3Od3Rp31jdP+ZGsjBHWKRYKpq
	H+Jfk+aYhVLteYaFu9VjpRyB/U3FGWCAoW8WonVVWyzR4VU=
X-Google-Smtp-Source: ABdhPJyxhLD9b2VtOBtC8mfOvkRW6qGGnlejocT+gggGQbUYXtYnZJahIbp7ao92gGrQMMfGpKDZwnsUBJrSEYpGDdU=
X-Received: by 2002:a5b:98c:: with SMTP id c12mr2478417ybq.156.1628749883384;
 Wed, 11 Aug 2021 23:31:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQGUvCofTbwCLA+M2ONFamdZvjWufb7Hy+Zkv5GX0uJfQ@mail.gmail.com>
 <AM0PR10MB310747ECF1307146791C4D3599F19@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM0PR10MB310747ECF1307146791C4D3599F19@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 12 Aug 2021 16:30:47 +1000
Message-ID: <CAA=hcWSzLwpDvQ0LUOQQe=J+39y2zT0V-C22s2dABYjYbrx4rA@mail.gmail.com>
Subject: Re: [yocto] RTC issue
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Matthias,

Thanks for your kind response.

> I have seen the same message on an i.MX6S7
> (https://www.karo-electronics.com/fileadmin/download/Datasheets/TX6S-Datasheet.pdf)
> with kernel 5.10 (in a dunfell Yocto after I upgraded from kernel 4.14).
>
> Since we use an external RTC on the I2C bus, I disabled the internal RTC
> ("snvs_rtc") in the device tree, and did not analyze the problem further.

How did you disable snvs_rtc? My device tree to include imx6ull.dtsi
which don't have snvs_rtc, only has snvs-rtc-lp, so I added status =
"disabled"; to the snvs-rtc-lp node:

snvs-rtc-lp {
    compatible = "fsl,sec-v4.0-mon-rtc-lp";
     regmap = <0x16>;
     offset = <0x34>;
    status = "disabled";
}

that must be wrong, it crashed in kernel booting.

[    9.478754] ---[ end trace dc624b5857965e18 ]---
[    9.483962] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0b
[    9.483962]
[    9.493223] ---[ end Kernel panic - not syncing: Attempted to kill init! exib
[    9.493223]  ]---


Thank you.

Kind regards,

- jupiter
