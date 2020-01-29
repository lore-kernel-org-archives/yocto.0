Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com [209.85.222.65])
 by mx.groups.io with SMTP id smtpd.web12.8149.1580316750151161577
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 08:52:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7vK7lfb;
 spf=pass (domain: gmail.com, ip: 209.85.222.65, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-ua1-f65.google.com with SMTP id 59so6376281uap.12
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 08:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=oEUNRPzh9SpuXmJb0kTRKl5Xo4uFteDif+eulvnj6gI=;
        b=S7vK7lfb+dy8mgZ4+Z5EOESlaQG2kDs45gQyILcC0a4vQDi0jgxZUdxrmvDMDBdBiN
         D7zKwHgD0i7v+ho75VKyfYWQWblQ+cBino7r8zU/1BEsW8OGP7lj8UvCYHJqdKq9FZ28
         Vp9UjOMmxt1bgB9V5bTs58i0tTDxpR5oxNEkDAjcT0kVc1hr+a6TYsFKcr3Q6++RR1Mi
         Y4YZTFZ1G8m4eex6II90lF0NUpfZaZ3Vna8yyHS9rT00EO4uzAIVq1VZRjJfitiDycYJ
         l32yEySys0KyjhKqOfTMGKr1o0H62rcHkbw5iKEh9fwtr8JarPZTr3cmEmx73qCHPzhO
         YHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=oEUNRPzh9SpuXmJb0kTRKl5Xo4uFteDif+eulvnj6gI=;
        b=qBYADYNOWfkxXDQSwRFCMrvfFm4m1HLpTWKPPuZuKuRWUHZxsRsWeeqpCGd+SiFlqo
         5NUYYrzilwo/aztTU5RAezC1DEiAsfeXziknjS5rHuk3oQUUtv2oGpj7b1qe980ZyuBa
         w+FcwLyy2I/1lg+SpnxJx+1ZiJnn0iCvXDj3BftPYCmIV3TjjAiug3QY9qZbbvspIlGZ
         aHzjgewuQFy+EKU6ThGSsLcPn0jgP/rp/IIwvmB53NK6kUQVhOFSyEobWyDSEO3iBjzB
         P4jImFQ1RPboKxAa+cLsTUnfON89G16ZD24DWuEQP9HzfE5pRTIN8lQ8n2vmDUJZFeYx
         Diog==
X-Gm-Message-State: APjAAAUU9kaeUoNZdY2DxkbxUdF+sgr3IBHpL15whyIZp+1OOcD2nVl5
	kSDig6vdRT62QUnUdge6Zo0eJUK2e3bCtQDplwg=
X-Google-Smtp-Source: APXvYqw1xREB4WYSnuAu3JX5RNG3eafm2H0qeSiTnng3e2LPuHpT1+xJhdBeukmlecrXo//oKgc6MbsucdsIyc7cCQk=
X-Received: by 2002:ab0:7154:: with SMTP id k20mr16265317uao.49.1580316748939;
 Wed, 29 Jan 2020 08:52:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Wed, 29 Jan 2020 08:52:28
 -0800 (PST)
In-Reply-To: <CAAx3WaDx71Cp+1_hyascYEzQsj3cNAjCuZQhbeHi-=ZbtYKYUw@mail.gmail.com>
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
 <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com> <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
 <CAAx3WaDx71Cp+1_hyascYEzQsj3cNAjCuZQhbeHi-=ZbtYKYUw@mail.gmail.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Wed, 29 Jan 2020 11:52:28 -0500
Message-ID: <CAK4PFCXt0PkyML1WqkOsgctCR1pYCYfSO53J1HAVadMumeBzyA@mail.gmail.com>
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK guys.  I was able to make it work with a higher priority layer and
a bbappend file.

The difference with my config file is that mine actually defines all
the CONFIG_ options but many of them are =3Dn to override selections
made elsewhere.  I just hope that the kernel config is smart enough in
all cases to recognise that
CONFIG_OPTION=3Dn
is the same thins as
# CONFIG_OPTION is not set

I reran the build and verified that only the options I want are in my
staged kernel

Next, I need to figure out how to make sure the built modules end up
in the rootfs, which is currently an fnsroot filesystem.


On 1/29/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Hi Kent,
>
> On Wed, Jan 29, 2020 at 1:53 PM Kent Dorfman <kent.dorfman766@gmail.com>
> wrote:
>
>> I'd prefer to not go that route.    It's a modified "vendor supplied"
>> kernel from an internal tarball source, and for IA/QA reasons we're
>> NOT going to refer to any external GIT repos.
>>
>> There must be a recipe for your "vendor supplied" kernel, why not
> extending it with an append,
> so you will be able to ship your own defconfig?
> Assuming your vendor kernel recipe is called linux-ti-staging_4.19.bb, i=
n
> your layer add the file
> recipes-kernel/linux/linux-ti-staging_4.19.bbappend and then
>
>>>>>>>>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files"
> SRC_URI +=3D " file://defconfig"
> <<<<<<<
>
> and put your defconfig in recipes-kernel/linux/files
>
> Can someone tell me how to just replace the config in an existing
>> recipe and make it permanent without creating/replacing the whole
>> package?
>>
>> I'ts a single file that has to be inserted/used at the correct point
>> in the build.  I'd say it's not rocket science but that's exactly what
>> it is for. LOL
>>
>> On 1/28/20, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
>> > Hi Kent,
>> >
>> > Create your own kernel recipe and provide a defconfig for it:
>> >
>> > SRC_URI +=3D "file://defconfig"
>> >
>> > For example to build a bleeding kernel directly from Linus' repo:
>> >
>> >>>>>>
>> > DESCRIPTION =3D "Linux Kernel from kernel.org Git Repository"
>> > SECTION =3D "kernel"
>> >
>> > LICENSE =3D "GPLv2"
>> >
>> > require recipes-kernel/linux/linux-yocto.inc
>> >
>> > LIC_FILES_CHKSUM =3D
>> > "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7"
>> >
>> > LINUX_VERSION ?=3D "5.5"
>> >
>> > LINUX_VERSION_EXTENSION ?=3D "-mykernel"
>> >
>> > PV =3D "${LINUX_VERSION}+git${SRCPV}"
>> >
>> > SRC_URI =3D
>> > =E2=80=9Cgit://
>> git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=3Dg=
it;nocheckout=3D1
>> "
>> >
>> > SRC_URI +=3D "file://defconfig"
>> >
>> > SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"
>> >
>> > COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"
>> > <<<<<
>> >
>> > :rjs
>> >
>> > On 1/28/20 7:15 PM, Kent Dorfman wrote:
>> >> I have a yocto generated sdk that includes a customized kernel.  I d=
o
>> >> NOT want to play with incremental config files.  What I want is to
>> >> insert a .config file of my own choosing (generated outside of yocto=
)
>> >> into the kernel build, have it use only my .config, and then have th=
at
>> >> .config remain as the persistent authoritative config as part of the
>> >> yocto layer.
>> >>
>> >> I have tried a variety of different approaches:
>> >> * using devtool, then loading my .config into the expanded source, b=
ut
>> >> "devtool finish" throws out my changes!
>> >>
>> >> * doing "bitbake menuconfig", can build a kernel using my config, bu=
t
>> >> it doesn't stay persistent in yocto
>> >>
>> >> * doing elaborate sort/merges on the yocto .config and my prefered
>> >> one...undefined behaviour
>> >>
>> >> and the build always seems to revert to either the original yocto
>> >> config, or a kludge of my options with a bunch of defaults I did not
>> >> specify.
>> >>
>> >> How can I take my existing .config and force yocto to use it, and it
>> >> only, forevermore?
>> >>
>> >>
>> >
>> > --
>> > -----
>> > Rudolf J Streif
>> > CEO/CTO ibeeto
>> > +1.855.442.3386 x700
>> >
>> >
>>
>
> BR,
> Gabriele
>
>>=20
>>
>
