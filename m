Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
 by mx.groups.io with SMTP id smtpd.web11.1793.1588407715945107025
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 01:21:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=inTSuDjN;
 spf=pass (domain: gmail.com, ip: 209.85.208.68, mailfrom: jupiter.hce@gmail.com)
Received: by mail-ed1-f68.google.com with SMTP id d16so9093517edv.8
        for <yocto@lists.yoctoproject.org>; Sat, 02 May 2020 01:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ksTDw+TuwKJszTt1W52BkCjaBpKvOgjVxbGlI98anqk=;
        b=inTSuDjNrm+DmJKobMi5les7ss2FO/f55C2oiS7J2BFx2mQ+QvIGJj45N4TfirTX7T
         lQ0BL38OGe4SRIesUTG0gpsZ3Pzj2JRklxfn2cYjbW9xIcXSy1k/W8R9KbGtfXgJOLt6
         oVc8T/FXG2bNByzdiXrFfkGm4fM9F6l7SGXCCjmhrLgQsne7/eiLDXhdHvN0xO/vZg5U
         qWDu3UW2gHO6gFCBY0he0tRz6vBDaO7WGUyztgQB1S3ru0OUofikd/dyj8g0meTlPSe6
         ErHE/6AlI6uk2aNXUXDd9LvOjHKNJl6uNSuiWonH2U55IFiqVH4WG0m+Rd2RItefWG6f
         6y3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ksTDw+TuwKJszTt1W52BkCjaBpKvOgjVxbGlI98anqk=;
        b=TIx7Qz2uQ1UrM5SBC26Y9oAeG3pvXnFvIIKP3PlGzl9haI71rFVP5+g3sV6us8E1Gp
         a3A2wYXVESBYDljJZOPf9VUzCsw0Nd40CiIobQbfNHfA+d5Ij7eAGbDXR0zDn9Zz/XCr
         hdTM/n/mbCVnMCVlku40wo/2NIi6oxwtjmYR1z9W+wiRVeEUSh8APAhLxObaAvlNAKlU
         8cTwNaqgaBtgYAZiXUJ1tXua3AsjLbXBoc7XX3MuQzyBzlxT86e+u8JkXxbt1L7JbWKB
         Z23eKMxV868Ppvs4VF8xaM+1/wTjgCfAkl7rto7liAXOpVsOUWrUGokME4yGBXKaJ/Oz
         0ZEQ==
X-Gm-Message-State: AGi0PuYknV6mgsNKWgB7FmTfy+X6L3fsOOEW7s17KM8XxNEZkKFh8l33
	AYyv0ZOc2ZV2e051CUjgpZ0jDoN30qG4hLFx+A9+kJvY
X-Google-Smtp-Source: APiQypJKQXQhq33Bxq+Brk2vPRUTHLr4x4kShd4PTcbMoNWxxcgP+dCeXKEpGIIaAdNg8vEoDM6/QBxjRbZtKsuQirA=
X-Received: by 2002:aa7:d894:: with SMTP id u20mr6276978edq.205.1588407714217;
 Sat, 02 May 2020 01:21:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a881:0:0:0:0:0 with HTTP; Sat, 2 May 2020 01:21:53 -0700 (PDT)
In-Reply-To: <160AC4C4A9F833DA.21614@lists.yoctoproject.org>
References: <CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
 <CA+4=imaKgPkYgm-ks8jh0LnTmqovRrMuesXV0RsEmtWs4fmPHQ@mail.gmail.com>
 <CAA=hcWSFY+hWiHQxx9q8eqcaaFZYJaQ1ZfzZx9cTfFjW2XO5fA@mail.gmail.com>
 <CAA=hcWSXzf7SOc4d3tg97O3aORLdFrrD3q1D4y=z2WtqPvfdCQ@mail.gmail.com>
 <2823ea3424755ef149b90d28c835f64fcb3afdc4.camel@delisys.ch> <160AC4C4A9F833DA.21614@lists.yoctoproject.org>
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 2 May 2020 18:21:53 +1000
Message-ID: <CAA=hcWRvgi5xDsrQt+7pz_xP=CsUoPFwZFiF_3agxUr3CMq+oA@mail.gmail.com>
Subject: Re: [yocto] Which recipe for Linux tools to run u-boot command inside Linux?
To: yocto@lists.yoctoproject.org
Cc: OE <openembedded-core@lists.openembedded.org>, u-boot@lists.denx.de
Content-Type: text/plain; charset="UTF-8"

OK, finally built the u-boot-fw-utils and run it on iMX6ULL:

# fw_printenv -v
Compiled with U-Boot 2019.07-dirty

But it could not run:

# fw_printenv
Cannot read bad block mark: Invalid argument

Here is the configure file:

# cat /etc/fw_env.config

# NAND
/dev/mtd1              0x400000        0x100000        0x20000                8


I think values in configure file are correct:

# cat /proc/mtd
dev:    size   erasesize  name
mtd0: 00400000 00020000 "boot"
mtd1: 00100000 00020000 "ubootenv"
mtd2: 0fb00000 00020000 "storage"

=> nand info

Device 0: nand0, sector size 128 KiB
  Page size       2048 b
  OOB size          64 b
  Erase size    131072 b
  subpagesize     2048 b
  options     0x40004200
  bbt options 0x00000000

Any advice what I could be missing?

Thank you.

Kind regards,

- jh

On 5/1/20, JH via lists.yoctoproject.org
<jupiter.hce=gmail.com@lists.yoctoproject.org> wrote:
> On 4/30/20, Nicolas Jeker <n.jeker@delisys.ch> wrote:
>
>> on Zeus it's very likely _not_ libubootenv that you need, you should
>> try to install u-boot-fw-utils. As Yann wrote, the tools are in
>> libubootenv since Dunfell, which is newer than Zeus.
>
> Thanks Nicolas, I have following error, what I could be missing here?
>
> ERROR: Task
> (/build/oe-core/meta/recipes-bsp/u-boot/u-boot-fw-utils_2019.07.bb:do_compile)
> failed with exit code '137'
>
>
>
> --
> "A man can fail many times, but he isn't a failure until he begins to
> blame somebody else."
> -- John Burroughs
>


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
