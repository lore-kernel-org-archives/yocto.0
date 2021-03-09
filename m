Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10091.1615301716641361663
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 06:55:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=dVHTYYEs;
 spf=softfail (domain: sidebranch.com, ip: 198.145.29.25, mailfrom: leon@sidebranch.com)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D458238C052B
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 14:55:15 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id o1so10349244qta.13
        for <yocto@yoctoproject.org>; Tue, 09 Mar 2021 06:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=41EwGkfOlDYVzctMiS8KzKhVsBikH4YjRBDIv9syaOo=;
        b=dVHTYYEsDPng7Ms6CURWNTn6MDw7wcPuBls39LIcps4xuk8S3hCg19rWCII1BOf5P5
         yHPRGMmJQ7feHJQ0XPv32M2J39ex7iH6hsllmcQ2/HylDIWntceyljHfOo5OVxIPw5qa
         T1ZmIZll7vRV5C4tSY3iTdheWCxAB2GFT1zozPZ6343+F/G5VfnEKZSpyIT6KbwMt1es
         bw2ueA66uezGfyH1m4ZRg6SfFHoGp0KIxfks00bdCeYl7Ic3S8CKVyPiaSE5C+9lp8qE
         KZTICQlAjaGG0HiYEstGF8ZqC4bVUord44LhrYbboktHkQgrI/6Gzmi2UODZKNCRWkix
         qT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=41EwGkfOlDYVzctMiS8KzKhVsBikH4YjRBDIv9syaOo=;
        b=JguFE/hTXN4/3NwF9NkKG5Hd22hPXIif7YA7P+oAn34OsgAWbq1njpdOnqVYT9W/Xa
         6LI8E69HuB8/YH8QSKpLFrpGM/ERHtQZeGIxOBa2JuwNcWQEgsyvODGRP4PuAT8pGbJ2
         qokslMxmObAMvNRO9jfyuzyjVxeEvTQrFj3TulLo4MyUL0EiuKIyGVB4oTwKgwiVG+uv
         3NaKcjEZHvnuNhovSp+MtsXvZP/GYP8KRcugApOsx6g5btraCV/vtxPhCFTb5wO5qsU+
         zbEye0dbqZH3nbNHunt7i8eLN9B3L0eXcN3xTkJ1anCJWjWqS2m+E+btT5uGnMCh6AxX
         R5XQ==
X-Gm-Message-State: AOAM533+XnS+tIoM3dVtMDrHFQDMMWH8F4hQfmYJXrE4XW86KYTLa7MN
	DEskch9RkbdKGnUxLjskrrrvwBd/2X7G9X5Zuj/eaXjLY5UGAjjF
X-Google-Smtp-Source: ABdhPJxPJHdpHSno6n6aI2BPjAV049JbW4ypi5whXAcz1awrlXlytt7YWuTZ2CU4eQnkmrqJeVwD4VutxoxCIj9IM74=
X-Received: by 2002:ac8:73c4:: with SMTP id v4mr3657135qtp.208.1615301714686;
 Tue, 09 Mar 2021 06:55:14 -0800 (PST)
MIME-Version: 1.0
References: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca>
In-Reply-To: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Tue, 9 Mar 2021 15:55:03 +0100
Message-ID: <CAMjhiJgF_c+Q1--wyTvLwnO36n=dNgU=ii7yN6G7c7Tksxyw0w@mail.gmail.com>
Subject: Re: [yocto] how often would one use "VAR_someoverride_append = ..."?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Robert, all,

On Tue, Mar 9, 2021 at 3:39 PM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> is there an actual practical usage of, say:
>
>   VAR_x86_append = "huh"
>
$grep -re '[A-Z_]\+_[a-z0-9]\+_append' poky/meta*
poky/meta/recipes-support/gmp/gmp_6.2.0.bb:EXTRA_OECONF_mipsarchr6_append
= " --disable-assembly"
poky/meta/recipes-core/images/build-appliance-image_15.0.0.bb:IMAGE_CMD_ext4_append
() {
poky/meta/recipes-devtools/python/python3_3.8.2.bb:RDEPENDS_libpython3_append_libc-glibc
= " libgcc"
poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdb_append_linux
= " glibc-thread-db "
poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdb_append_linux-gnueabi
= " glibc-thread-db "
poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdbserver_append_linux
= " glibc-thread-db "
poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdbserver_append_linux-gnueabi
= " glibc-thread-db "

which is appending an override variable conditionally with another
override condition. (If I put this correctly.) Is this a valid use
case where += would not work?

Other appearances without an override condition:
$ grep -re '[A-Z_]\+_[a-z0-9]\+_append' meta-*
meta-openembedded/<..>/libnma_1.8.28.bb:EXTRA_OEMESON_mipsarchn32_append
= " -Dvapi=false"
meta-openembedded/<..>/libnma_1.8.28.bb:EXTRA_OEMESON_riscv32_append =
" -Dvapi=false"

Could these have been replaced with the following?

EXTRA_OEMESON_mipsarchn32 += "-Dvapi=false"
EXTRA_OEMESON_riscv32 += "-Dvapi=false"

Seems like a good test case indeed.

Regards,

Leon.
