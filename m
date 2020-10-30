Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web08.7326.1604022799882816572
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 18:53:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qj6y9UEC;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 63so2181976qva.7
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2020 18:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7HBSI2jXpXcmCGu9OuLDoYinYXsKVPZ3uIsTT93c9Us=;
        b=qj6y9UECj1Hp4rQ7YQy35Fwao+FaxT1CTu2qkFEv9FBiCJXa2r46QG7fESyv58xibD
         x8MkcIli2PsSdw0fzXp9HeRkA5EWRytX1oXKW9WvwFbRiQy00FjHdyDlxzCAW/gAvVYK
         TQUthUoSx4tZaAkEqkMj4osM7pKL9/qlTTs/nPjxDu74Rv0nevTW3+mGuvKREaymqvcV
         dGGOSc5mjBZTz+kpmN2G0vZQdP0gKRWLtQOrjE45VFvF7RqZ//8McdqWjK2h/3rKhykY
         EWhTEB3R76cJqCkBOcO74FsiSccclcEcYeWZgrMW1ODrDZh1b9C6XXlyO2S6zuUFSR70
         TaSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7HBSI2jXpXcmCGu9OuLDoYinYXsKVPZ3uIsTT93c9Us=;
        b=BbDEZDbqGrCTzYmMzwGZlc9idCg5LCIMRTJdSGrSy8Ba2PeDmDv0bvJEy9UjWq7oJ5
         6FWOGX6DjLCxXfffOqZo47rbhYGXci5qzvlL+Ygl7kZnN8JgHp7tPxKDsWZz2pQ9/dZ+
         XI+oEE8tjQAaqaJJdXDGE2zF+Rgw9rYS6+GWpwg6GiIrd5dd8PTB1lwUXdljoWEdl22F
         kaDRrOri1YpHuajn/CRLCdwJwDbJWs0apr25NveopTATZXL5/oJCdGMaGYdy+G9vOqoo
         WL5jzfIaQQNH72Ukj5J5dMycr9QaTXDO073ZNT5Dg0JdenzXzWF6/t2ChqFZaN9go6ka
         P0VA==
X-Gm-Message-State: AOAM5320dbAJquIK1iHfXAXtRSlGSSTzmYULhNNunq5OAdBnT7+zgC4+
	UaRrhkpy4NJiixqtnpmihW8OD5592WB+U6/SiPU=
X-Google-Smtp-Source: ABdhPJyyJxsIWzaG0SE1S6cUIIyc3BYUxZkhdEqJeZ3XW7gfMQJl0GFnuTB4ZiTbk4dr9ZWsr/H1V9JQOtMbv/VdVXU=
X-Received: by 2002:a0c:e387:: with SMTP id a7mr7479122qvl.21.1604022798715;
 Thu, 29 Oct 2020 18:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAK18fxFr_Td=9sG=G2npGg4G6Dooff6vOym1_rdkunQj6W3dqQ@mail.gmail.com>
In-Reply-To: <CAK18fxFr_Td=9sG=G2npGg4G6Dooff6vOym1_rdkunQj6W3dqQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 29 Oct 2020 18:52:52 -0700
Message-ID: <CAMKF1sq_ZbKuu4j2v7DMm7uC-+ABtA4YmeucYR2mkgxrvhF4KA@mail.gmail.com>
Subject: Re: musl and reproducible builds
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrei

Thanks for the report. What will help is linker command details to
find more details but I know
this issue is not addressed for musl yet so your analysis is right, I
will see if I can fix it if no one else beats me to it and I have time
which is scarce these days.
regardless please open a bug in Bugzilla so we do not forget it.

Thanks
-Khem

On Thu, Oct 29, 2020 at 3:53 PM Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> Hi,
>
> I've hit lately a known issue regarding reproducible builds for which we =
added a workaround in the case of having glibc as the libc provider[1].
>
> Some context. ARM binaries in a Yocto build contain references to the abs=
olute path of libc C runtime objects `crti.o` and `crtn.o`. Here is an exam=
ple:
>
> readelf -sW helloworld | grep crt
> [...]
> 35: 00000000     0 FILE    LOCAL  DEFAULT  ABS [...]/yocto//tmp/work/armv=
7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crti.o
> 38: 00000000     0 FILE    LOCAL  DEFAULT  ABS [...]/yocto//tmp/work/armv=
7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crtn.o
>
> After stripping the respective binary, these paths end up into the debug =
symbols but the stripped binary still contains the `.gnu_debuglink` section=
. This section includes, along with the filename of the debugging informati=
on file, a CRC value computed on the respective debugging file[2]. This CRC=
 value makes, in turn, the stripped binary, not reproducible.
>
> IA platforms are not affected by this issue.
>
> I am looking for a fix/workaround when using musl as the libc provider. T=
he fix mentioned above for glibc landed in `thud` so since then, this bug i=
s mitigated when using glibc. But, when musl is preferred, the issue is sti=
ll reproducible on current master's HEAD[3]. This behaviour can easily be r=
eproduced using the qemuarm/qemux86 machines along with a dummy recipe like=
 the one in our documentation[4].
>
> Has anyone looked into this in the past? It very much sounds to me like a=
 linker bug.
>
> [1] http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dcd158dd19=
7a3a41a91679107a94c6f213476921c
> [2] https://sourceware.org/gdb/onlinedocs/gdb/Separate-Debug-Files.html
> [3] 7231c104303f72c5d72f837de114d4f5a633c7cd
> [4] http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/documentation/ref=
-manual/examples/hello-single
>
> Regards,
> --
> Andrei
