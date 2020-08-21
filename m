Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.124443.1597968297467696720
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Aug 2020 17:04:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kyd6TOKk;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id y11so17382qvl.4
        for <yocto@lists.yoctoproject.org>; Thu, 20 Aug 2020 17:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GoonzSc+q8HsFMAMwgo8eSwc1eB59dD/4p2c62mAApE=;
        b=kyd6TOKkeCNHTbaNRHTcNmDIHF/z00VHjFMqozDch9FqpeMaj3t53QX5TiofMSE/qY
         ZVLFiQ74m/nAkc+6+TpnzeY48X3PZMLt3YqR5rp78Z3p4af5WMiajksXrWYvlc/4oPo/
         sGLz+80t1Cd/+LkgHQ9BbyPk6UaR5+RGAwE66JtMtDLlp4ZoAd4GSYSmJm11Six77KnQ
         Rb8sFQGjr1bmA/HD73A27AXmNvVcvflIV1Ert/u5C9COqXxacLaK9Sj7H9IH76K9XM+T
         +pjeg93hAf/++fU5f0zLMFB31WYGRJoEQDDBJ6+pOLRQUbODHFdTfgNQpxYK/KECwZrH
         qW6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GoonzSc+q8HsFMAMwgo8eSwc1eB59dD/4p2c62mAApE=;
        b=JS7LgarW5DKrV9sG6BeB7uTH1MBucJsMZYz3HrwJI2KA8v7mx0WuD38S9nmKyDtRdc
         zgxuqDVq4/0IiKIk9ou0rrJu4C6K08mBIA1caCWDo1nKqW89+sRgML9ppxnQVHz7IR4y
         n42Vq8W+c9DHXcihqzK44qt2pHzD0+h4HlganjBzQpn9SffxL+Gt4+yvq2tlx2QqB1y6
         UyPSGGkIFyCIeVHd7DvMK+x+lCxruDZuEnDTlcLimewLPoDChU5l2binr/H2qHBw2uCm
         ebWIHDVkQatt/2ssNUSnAV+sasc6aiTGCscynvRE+sgCtVdQAGt0sE9N/tXGMRsIPmOR
         1klg==
X-Gm-Message-State: AOAM533JfUaTbE7p7bRSkwEW5GTBdRnai7EU/xgGs26q3exhKRi5h7fq
	WlBHdeHmPxN1IcMU9eU3By2jQuiWAig1NWXiTgc=
X-Google-Smtp-Source: ABdhPJzlpA1uZ/rt7bOJ4HS1Mp1FtVF5FElp0k5sOGAfl9uOcEbRKKkuFvDcP7XGcHuHLDnFipanggQXEmHApojpBbk=
X-Received: by 2002:ad4:4365:: with SMTP id u5mr224046qvt.109.1597968295679;
 Thu, 20 Aug 2020 17:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <BFF4.1597831628584042378.2lCW@lists.yoctoproject.org>
In-Reply-To: <BFF4.1597831628584042378.2lCW@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 20 Aug 2020 17:04:29 -0700
Message-ID: <CAMKF1spzPrsr=Wcz0zcYiWuPhQgYA2dmxziq=dKg_q4ErKHa4g@mail.gmail.com>
Subject: Re: [yocto] ABI Version for MIPS platform changed from 0 to 5
To: MikeB <mabnhdev@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 19, 2020 at 3:08 AM MikeB <mabnhdev@gmail.com> wrote:
>
> Reposting in the hopes of getting an answer - I'm stuck.
>
> I'm in the process of upgrading from Zeus to Dunfell.  For my MIPS platfo=
rm, the library ABI version has changed from 0 to 5.  I have some backward =
compatibility issues that require generating at least some libraries with A=
BI version 0.  I've tried using -fabi_version=3D0 in my CCFLAGS, but that s=
eems to be ignored.  Can someone tell me how to set the ABI version back to=
 0 in my image and SDK?
>
> I'm building for a custom MIPs platform running on a Cavium Octeon II in =
32-bit mode.
>
> TUNE_FEATURES  =3D "o32 bigendian fpu-hard octeon2"
>
> A current Dunfell shared library ELF Header looks like this:
>
> ELF Header:
>   Magic:   7f 45 4c 46 01 02 01 00 05 00 00 00 00 00 00 00
>   Class:                             ELF32
>   Data:                              2's complement, big endian
>   Version:                           1 (current)
>   OS/ABI:                            UNIX - System V
>   ABI Version:                       5
>   Type:                              DYN (Shared object file)
>   Machine:                           MIPS R3000
>   Version:                           0x1
>   Entry point address:               0x1630
>   Start of program headers:          52 (bytes into file)
>   Start of section headers:          22488 (bytes into file)
>   Flags:                             0x808d1107, noreorder, pic, cpic, 32=
bitmode, octeon2, o32, mips64r2
>
> The same library built with Zeus looks like this.
>
> ELF Header:
>   Magic:   7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00
>   Class:                             ELF32
>   Data:                              2's complement, big endian
>   Version:                           1 (current)
>   OS/ABI:                            UNIX - System V
>   ABI Version:                       0
>   Type:                              DYN (Shared object file)
>   Machine:                           MIPS R3000
>   Version:                           0x1
>   Entry point address:               0x1500
>   Start of program headers:          52 (bytes into file)
>   Start of section headers:          22340 (bytes into file)
>   Flags:                             0x808d1107, noreorder, pic, cpic, 32=
bitmode, octeon2, o32, mips64r2
>
> The ABI Version being the issue.
>

This is due to switching default hash style from sysv to gnu starting
dunfell. You can switch back to sysv either via LDFLAGS
or explicitly define

LINKER_HASH_STYLE_mipsarch =3D "sysv"

in your distro.
