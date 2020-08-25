Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web11.6214.1598324927167406631
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 20:08:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PaKkthLy;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id g26so9793613qka.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 20:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UKtta53p9yBLASSCKfgDXq96nCElS0LT3pvqexedcw0=;
        b=PaKkthLyff93Vpc45cTADKm69uA0szKRifj4PUWgSSYkpqPN75NNl62jcPhC5KbZMZ
         0tvywX0s3hP2K/zoeAl2E7PmSZItSPX9173S7aNrPgskYLANMQFM87vwM8lOTgREK9Fr
         YSLe79P+mNZPF4Ol6+/MPjLtCmL3duEy+XYzJdl0aJ7BSd1nMICdvaz3Nc/tQ1EL1g0O
         GYZQEmqEbgf1bh5qSWO6Y2tLuA7QNis5tbg7igQV/GmOTYidWwQjy0ntOJcHwFeKBjwE
         EpCZmt1KD6GE0ZISShQ9d3++VhN6h6PxSECoE/1omtZ72+YFaNi7NcfReOQVD8c3BypZ
         fg1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UKtta53p9yBLASSCKfgDXq96nCElS0LT3pvqexedcw0=;
        b=EQ0owNWgwE91y9u5r25JVw3n2FqX3oiFNFAbHIO8bv3pSo1qXRRouavEyuHf1JgUKd
         q/uQLLqrqc4vgkZBdW59Bo+gfy7bRZuBihQvxgQle6q7KtEeAnMOfNkPq9EpGQTEV86w
         wGpkGOn16LKRJqi1rOHPHkBpdO6LOIM/b6NtB6EmXHCOiYStj0RvFbYBVuYA4KfYlIla
         rfjGXURhOPEthVSzJ5gGd7KrBvG6PpOYmGaulwWEHNo37AC1R6PkC6ckj+VBV19qpm1g
         spKDDghxE375RrENvjMlr1rCibiyAWwCbmTEyJrRFkd2dAbORDrZzs/6qDlVC3wp+2zX
         REQw==
X-Gm-Message-State: AOAM531Vks+Lq52Iy8vDyaWIs9bjaN4TZ0FeYnS8mbgrjXs8dPhpDOEe
	TQBT4rXwke8TxD8pMWkYfrl4s9IMoCOnSa9lLXc=
X-Google-Smtp-Source: ABdhPJwZL0PX2bDTKtDnxBHJwhkzDKN4YqdVRagJC0ePjrrD/8Ln8/DI4UUDlBzAJdVsXPQE71x05rd4enbw7QDWqXM=
X-Received: by 2002:a37:9b15:: with SMTP id d21mr7827866qke.9.1598324926087;
 Mon, 24 Aug 2020 20:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <BFF4.1597831628584042378.2lCW@lists.yoctoproject.org>
 <CAMKF1spzPrsr=Wcz0zcYiWuPhQgYA2dmxziq=dKg_q4ErKHa4g@mail.gmail.com> <CAAuRgKDYqZ2aEVu8KhZmvX975QbXq-Sob1q8RfhCCkRxw1Gm2w@mail.gmail.com>
In-Reply-To: <CAAuRgKDYqZ2aEVu8KhZmvX975QbXq-Sob1q8RfhCCkRxw1Gm2w@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 24 Aug 2020 20:08:19 -0700
Message-ID: <CAMKF1spKxuadQML7Kth=dap0L9agYvaUF4OmrKzrNYgQ+N5=+w@mail.gmail.com>
Subject: Re: [yocto] ABI Version for MIPS platform changed from 0 to 5
To: MikeB <mabnhdev@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 24, 2020 at 7:13 AM MikeB <mabnhdev@gmail.com> wrote:
>
> Your solution worked great!  Thank you for that as I don't think I would =
have tracked that down soon.
>
> I now have a follow on problem that I have not been able to solve yet - m=
ostly because my knowledge of the GNU toolchain is not very deep.
>
> This problem only shows up in my Dunfell MIPS build - I also maintain x86=
_64, AARCH64, and ARM platforms.
>
> I use the SDK to build some proprietary apps.
>
> I have a library libcommon.so that contains many functions used by the pr=
oprietary apps.
>
> I have an app that uses only a few of the functions in libcomon.so and no=
ne of those functions have any further dependencies.
>
> When I try to link the app using the Dunfell MIPS SDK, it looks like the =
linker is including every function in libcommon.so into my app.  Many of th=
e unused functions have further dependencies on other libraries which I do =
not link in because this app isn't using any of those functions.
>
> I've tried everything I can think of to fix this link failure, but no luc=
k.
>
> I assume I'm missing some linker flag now required in Dunfell, but I don'=
t know which one.
>
> Any thoughts on how to fix my linker failure?

which linker are you using by default, is it gold linker on other
platforms and bfd linker on mips ?
maybe you want to try --allow-shlib-undefined linker option.

>
> Thanks, Mike
>
>
> On Thu, Aug 20, 2020 at 8:04 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Aug 19, 2020 at 3:08 AM MikeB <mabnhdev@gmail.com> wrote:
>> >
>> > Reposting in the hopes of getting an answer - I'm stuck.
>> >
>> > I'm in the process of upgrading from Zeus to Dunfell.  For my MIPS pla=
tform, the library ABI version has changed from 0 to 5.  I have some backwa=
rd compatibility issues that require generating at least some libraries wit=
h ABI version 0.  I've tried using -fabi_version=3D0 in my CCFLAGS, but tha=
t seems to be ignored.  Can someone tell me how to set the ABI version back=
 to 0 in my image and SDK?
>> >
>> > I'm building for a custom MIPs platform running on a Cavium Octeon II =
in 32-bit mode.
>> >
>> > TUNE_FEATURES  =3D "o32 bigendian fpu-hard octeon2"
>> >
>> > A current Dunfell shared library ELF Header looks like this:
>> >
>> > ELF Header:
>> >   Magic:   7f 45 4c 46 01 02 01 00 05 00 00 00 00 00 00 00
>> >   Class:                             ELF32
>> >   Data:                              2's complement, big endian
>> >   Version:                           1 (current)
>> >   OS/ABI:                            UNIX - System V
>> >   ABI Version:                       5
>> >   Type:                              DYN (Shared object file)
>> >   Machine:                           MIPS R3000
>> >   Version:                           0x1
>> >   Entry point address:               0x1630
>> >   Start of program headers:          52 (bytes into file)
>> >   Start of section headers:          22488 (bytes into file)
>> >   Flags:                             0x808d1107, noreorder, pic, cpic,=
 32bitmode, octeon2, o32, mips64r2
>> >
>> > The same library built with Zeus looks like this.
>> >
>> > ELF Header:
>> >   Magic:   7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00
>> >   Class:                             ELF32
>> >   Data:                              2's complement, big endian
>> >   Version:                           1 (current)
>> >   OS/ABI:                            UNIX - System V
>> >   ABI Version:                       0
>> >   Type:                              DYN (Shared object file)
>> >   Machine:                           MIPS R3000
>> >   Version:                           0x1
>> >   Entry point address:               0x1500
>> >   Start of program headers:          52 (bytes into file)
>> >   Start of section headers:          22340 (bytes into file)
>> >   Flags:                             0x808d1107, noreorder, pic, cpic,=
 32bitmode, octeon2, o32, mips64r2
>> >
>> > The ABI Version being the issue.
>> >
>>
>> This is due to switching default hash style from sysv to gnu starting
>> dunfell. You can switch back to sysv either via LDFLAGS
>> or explicitly define
>>
>> LINKER_HASH_STYLE_mipsarch =3D "sysv"
>>
>> in your distro.
