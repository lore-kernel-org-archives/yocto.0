Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web09.1851.1626808744062786473
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 12:19:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U6fBvf7x;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id m68so21097733qke.7
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 12:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SlrSzfwvIhjOGcQyBO58Zhv+XCqZIfkuNNqHOuL8pac=;
        b=U6fBvf7xiKyxGNGDU0A/P/TdDjwLi5r6ldcwEkUilSbPKdN8XCfWML8AgDsAxwfXLl
         ijsAo7CGgcBG7r87xA0LwSX9g/93iRlgQleVVJIwbV1d3HdNBsR503Z0pO1AFPcoNA+u
         O6PoN/CBGHZSlMZ7DwQvV9uOpAkjxPPf2GFBX0nFuBPhUP327ayFcZ40/QbKVnoES+l5
         SpSoCkcgfApYkJhtwsTZmJ+3WrSwqjDf8wv7nEBYjsYq253/3tLoQSxm+P4VGqyzPJJ0
         OAWyljq45ev/4YlNhc3GPG86FSf12e/GJjMyZivPAF3eDQERwXrfU4VTdcST4V+ZbSQz
         XaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SlrSzfwvIhjOGcQyBO58Zhv+XCqZIfkuNNqHOuL8pac=;
        b=Mabdw7KHfFQFtOSkbfeY2QKGm0CC3Q/cJyQzEKcslRNIV7XnI9iIavHtqzHahcRZG6
         WDf5VaNEB3V/dNIocCEfvtQuQzKse1j0cByyAfl/eLS/U6kJOtnvbhnuAJTCrO4PgLb2
         hTuy1Q3IszQpXyBjSheenx4+bfSJic2k1cAplp4v1PHYwkVkW54W4y6SCti+B9aWobZS
         Lk07hje6CEf8i7TUzwVwX7l/1mMEjHozaPHVdXak0cYb8ZsMgEiLjZfUgkXKQavenWWi
         eAL+003HbLVcDFxXvAO3oQgm3IwZl3qKunnr+ENeLHZXB9RaDvf/Jzg3NZ1aCXDgyqOd
         2fHA==
X-Gm-Message-State: AOAM530kxxcIFWIOAGBqMznU5JonCK0LWCDHLg2o9e16UgauLSBJnhBc
	4I22+dTGQTotKRl63YkGgAyBit9y67nRBtfIP5M=
X-Google-Smtp-Source: ABdhPJyhfscohyOh1SF4U3nYkMclqosMv8vMihGf1f/ebZB+aIMW36kruEByDWcVkruRgDXY9l6lIfIV5w213/POfR8=
X-Received: by 2002:a37:bb82:: with SMTP id l124mr30448498qkf.119.1626808743120;
 Tue, 20 Jul 2021 12:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <Iod9.1626794732357180855.60UC@lists.yoctoproject.org>
In-Reply-To: <Iod9.1626794732357180855.60UC@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 20 Jul 2021 12:18:37 -0700
Message-ID: <CAMKF1sqhWDQ8tw5DgaoK6du+6d_2cvxv0O8scwinAYNeWLpchA@mail.gmail.com>
Subject: Re: [yocto] c++ dmalloc library versions not building for Rocko
To: steve@echodyne.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 20, 2021 at 8:25 AM forstevers via lists.yoctoproject.org
<steve=echodyne.com@lists.yoctoproject.org> wrote:
>
> Trying to produce c++ versions of dmalloc libraries.The dmalloc recipe dmalloc_5.5.2.bb looks to be configured to build the c++ versions with:
>
> 'EXTRA_OECONF += "--enable-threads --enable-cxx --enable-shlib"'
>
> But in the log.do_configure I see that the autoconf fails to find a c++ compiler, and I end up with the 'c' versions of the dmalloc library.
>
> configure: configurations for the dmalloc library
> configure: build utilities
> checking for aarch64-xilinx-linux-gcc... aarch64-xilinx-linux-gcc  --sysroot=/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot
> checking whether the C compiler works... yes
> checking for C compiler default output file name... a.out
> checking for suffix of executables...
> checking whether we are cross compiling... yes
> checking for suffix of object files... o
> checking whether we are using the GNU C compiler... yes
> checking whether aarch64-xilinx-linux-gcc  --sysroot=/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot accepts -g... yes
> checking for aarch64-xilinx-linux-gcc  --sysroot=/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot option to accept ISO C89... none needed
> checking whether we are using the GNU C++ compiler... yes
> checking whether aarch64-xilinx-linux-g++  --sysroot=/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot accepts -g... yes
> configure: WARNING: could not find C++ compiler
>
> Any suggestions on how to get this recipe to build the requested c++ versions. Is there a dependency I can add in an append file to force it to recognize the compiler?

there should be a config.log generated in this component's build
directory which should have more information on what check failed and
perhaps some more errors to tell what went wrong.

> 
>
