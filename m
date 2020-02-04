Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web12.5379.1580818968615135540
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 04:22:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SQLxRCCt;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: jupiter.hce@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id i11so20591213ioi.12
        for <yocto@lists.yoctoproject.org>; Tue, 04 Feb 2020 04:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Zl9i2Sh6pP3H0za6LVEzOD9qYyCQYimyLbjKN+pP4kc=;
        b=SQLxRCCtQumM7XJTjK2o8B8keSaE5FYK95PUxbVTgO8Lo8zIQ8vcRC2zoGxGiLeStd
         LY1F1Zrv6RM0Q0Ma6wWMn1UJyU46Umm3D5/GAeLuuw+M8WW2YT/gQ9J1r76T7QQPnqZH
         z0sT04x73VFxAaojy3XJcRd7WH+jVYObJGu24KLDDl6wleBSuqh8CbwIXwqHm/JAhPFP
         ivS2SO7Vchc7S4JWNUMTpd+KZfeL9gBdmye/hZHyWb7f7Ofv50/82zyJDqdhDNEShT8e
         Ff2MFNJFXbbOFeSiioeveB9sxitlBxfKzRWV0Xs1vcCWXB7UT7XfRKCY4F72p7e0Za2E
         WhlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Zl9i2Sh6pP3H0za6LVEzOD9qYyCQYimyLbjKN+pP4kc=;
        b=DJXZyyEq6NVyge+zK/6okIpuOQtLltA7JpjzaEzsGqQkzSrQPxY5CgASJIBSjvNGWO
         4t4N6DmLUwNHeaeorEr4lIldmMRBcXVDJ1AK/6EZlUoq2ePwTO5aaNJejhH5CbE9mEhc
         eKWpD3VvvLYGpCL2iWN6b5H2d60N3r0bYp5ARKbjrrCu1Q5+qucd33NS0xFMJQkjZgk3
         +eztMqnyT6KbZUqGP8MDLq/sSTQlqOA2KrSN4AqEfBJxO3IdFzQQGZeTMk4A1lEa6lF8
         7/hyDuT0iVDDAb+KNPSxqsBTDX11sak5bNVvqB/yO7j1KIqPEymWMnK0cgw4RMHDMPfe
         1vqg==
X-Gm-Message-State: APjAAAUeAbPnw6FbNoMDojppo10/NYPiElfZL0aZWBQj2bIIMkUzun/F
	Dl5GsKL1JKrnFFeioxTxWtm5a05uMpkXq3960Hc=
X-Google-Smtp-Source: APXvYqxt/WJTWOf3p2szofeGI/jADaumPF2ggnjvtheq21Bc7ggT3Fsh00EEZWm/D2NRQ6aIz4Q0B4MEcQs98QWA7XE=
X-Received: by 2002:a5d:87ca:: with SMTP id q10mr16988284ios.192.1580818968055;
 Tue, 04 Feb 2020 04:22:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 4 Feb 2020 04:22:47 -0800 (PST)
In-Reply-To: <CAAfyv37OF2uz5mhB21XJ+NB6_69VkA2huzovsP3NTjA3hjimoA@mail.gmail.com>
References: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
 <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com>
 <CAA=hcWR6iDJ-fZrVtfiuQsM1U5q9VCW4b62qj-AJoRfp2Qo92Q@mail.gmail.com>
 <15F0304E147F53BD.2867@lists.yoctoproject.org> <CAAfyv37OF2uz5mhB21XJ+NB6_69VkA2huzovsP3NTjA3hjimoA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 4 Feb 2020 23:22:47 +1100
Message-ID: <CAA=hcWR5WTx2yo7WebsZpVteMbxj4xVBri=vzMJ-9B5Yxfd_rA@mail.gmail.com>
Subject: Re: [yocto] Which package for nandbiterrs?
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 2/4/20, Belisko Marek <marek.belisko@gmail.com> wrote:
>> Well did you check build directory if it was really build (check
>> .config)? Or better try to build as module and install kernel-modules
>> and then you can modprobe it.
> Looking at code did you supply kernel arguments for test module:
> https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c#L42

Hmm, tried:

# modprobe mtd_nandbiterrs
[  695.090585]
[  695.092143] ==================================================
[  695.098317] mtd_nandbiterrs: MTD device: 0
[  695.114256] mtd_nandbiterrs: MTD device size 1048576, eraseblock=131072, pag4
[  695.122867] mtd_nandbiterrs: Device uses 1 subpages of 2048 bytes
[  695.129138] mtd_nandbiterrs: Using page=0, offset=0, eraseblock=0
[  695.144888] mtd_nandbiterrs: incremental biterrors test
[  695.150594] mtd_nandbiterrs: write_page
[  695.158629] mtd_nandbiterrs: rewrite page
[  695.163488] mtd_nandbiterrs: read_page
[  695.170790] mtd_nandbiterrs: verify_page
[  695.174887] mtd_nandbiterrs: Successfully corrected 0 bit errors per subpage
[  695.182279] mtd_nandbiterrs: Inserted biterror @ 0/5
[  695.187387] mtd_nandbiterrs: rewrite page
[  695.196243] mtd_nandbiterrs: read_page
[  695.202608] mtd_nandbiterrs: Read reported 1 corrected bit errors
[  695.209115] mtd_nandbiterrs: verify_page
[  695.213192] mtd_nandbiterrs: Successfully corrected 1 bit errors per subpage
[  695.220361] mtd_nandbiterrs: Inserted biterror @ 0/2
[  695.225361] mtd_nandbiterrs: rewrite page
[  695.235261] mtd_nandbiterrs: read_page
[  695.240237] mtd_nandbiterrs: Read reported 2 corrected bit errors
[  695.246384] mtd_nandbiterrs: verify_page
[  695.250771] mtd_nandbiterrs: Successfully corrected 2 bit errors per subpage
[  695.257984] mtd_nandbiterrs: Inserted biterror @ 0/0
[  695.262984] mtd_nandbiterrs: rewrite page
[  695.273646] mtd_nandbiterrs: read_page
[  695.280000] mtd_nandbiterrs: Read reported 2 corrected bit errors
[  695.286230] mtd_nandbiterrs: verify_page
[  695.290489] mtd_nandbiterrs: Error: page offset 0, expected 25, got 00
[  695.297155] mtd_nandbiterrs: Error: page offset 282, expected 29, got 28
[  695.303897] mtd_nandbiterrs: Error: page offset 359, expected a7, got 27
[  695.310834] mtd_nandbiterrs: ECC failure, read data is incorrect despite reas
modprobe: ERROR: could not insert 'mtd_nandbiterrs': Input/output error

Now I am in trouble, what is that error means?

Thank you marek,

- jh
