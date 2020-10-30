Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web08.9369.1604037364688632474
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 22:56:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Eljmld4P;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id q1so221674qvn.5
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2020 22:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nS+LNLA/6PKv5BUFdQPoqIK7QYcL0XLKspYZzmymWNY=;
        b=Eljmld4PA7PA6HL0+z63/4tPd2wCJ3VXiujHHRdxQJ51fj8k3lapVRhDOda2MkoPq3
         kDhEHR7X22CykuWdGz8wIMGXYi1VNbNwMgzrmG5bLFPdxGkTh5XriTtGblRF2T+pmHbU
         h50pK+/aO4Q9Uxc28/fjS6kRQ1pG0I6rRDiVwTVOxV6R0jZdgajABSr2griQZ5yaZ0YC
         k+UMeusNtsoBY9HIU7bZ2S1f/7l3ofB5uKuK+GgF72au5AjrjAXC3rr69FbLqVsFSkGh
         /LcdrBjclXWixuAvCyhvzGLGKC/Ohoxj8/XfnruylzeSv0/APefIta6GfLlxUJgvPRuy
         bsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nS+LNLA/6PKv5BUFdQPoqIK7QYcL0XLKspYZzmymWNY=;
        b=lRoBHziw+kphCIUoCE49aufhTGgxWRW+t8b+vKEPDwgQr6yLBo2ssKwP2EvqAuyLI+
         a1S0Sur5HRQ7ekftZWa/6xrFDSdGEWZlWXXnxGzAX3L90xe2HP+uProyQ3QC4xgRljCC
         Osz257Kvg4Xp429Jl0Ql/0lcNJ3BDZICocMxlc+f903/tmezjFXJxEoY+2GgwhyXRVZ6
         4mzfGf0Rt8r57WmsMlXa7WJsnoafPdM6HKWl1V+SRrnlfCFEJYL30BWeMWIJwocupI8r
         Ti44hq3+3Oin10r9skRyqZjVu6lpSuv1dP6BBL8ivG9xkOma1x+Sf/vuSmbWqnWd6BOW
         dgXw==
X-Gm-Message-State: AOAM533qlj81K/rlXroVb4cZ1fnwI3A/h03sfmH3FhmmstVUpqfl8Jh9
	umCEAJGLk8Yl9tvj06euBr0N123ucGwbOel2X6c=
X-Google-Smtp-Source: ABdhPJyC26lPlfZGrYaau1zjdF2pv1T46ukN6MGvstITHHDrigkb15jtK7ZJTP7bx9AWCKICFcC/NgTFwIRo2k608TU=
X-Received: by 2002:a05:6214:16d0:: with SMTP id d16mr7843559qvz.38.1604037363728;
 Thu, 29 Oct 2020 22:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAK18fxFr_Td=9sG=G2npGg4G6Dooff6vOym1_rdkunQj6W3dqQ@mail.gmail.com>
 <CAMKF1sq_ZbKuu4j2v7DMm7uC-+ABtA4YmeucYR2mkgxrvhF4KA@mail.gmail.com>
In-Reply-To: <CAMKF1sq_ZbKuu4j2v7DMm7uC-+ABtA4YmeucYR2mkgxrvhF4KA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 29 Oct 2020 22:55:37 -0700
Message-ID: <CAMKF1srpVu+5xOOV1G3XBngMjnGR3xy3eg8QZeU6P0zZq7uDxg@mail.gmail.com>
Subject: Re: musl and reproducible builds
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrei

I have posted a patch for master, please test it out and let me know
if it fixes the issue.
https://patchwork.openembedded.org/patch/177717/

On Thu, Oct 29, 2020 at 6:52 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> Hi Andrei
>
> Thanks for the report. What will help is linker command details to
> find more details but I know
> this issue is not addressed for musl yet so your analysis is right, I
> will see if I can fix it if no one else beats me to it and I have time
> which is scarce these days.
> regardless please open a bug in Bugzilla so we do not forget it.
>
> Thanks
> -Khem
>
> On Thu, Oct 29, 2020 at 3:53 PM Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > Hi,
> >
> > I've hit lately a known issue regarding reproducible builds for which w=
e added a workaround in the case of having glibc as the libc provider[1].
> >
> > Some context. ARM binaries in a Yocto build contain references to the a=
bsolute path of libc C runtime objects `crti.o` and `crtn.o`. Here is an ex=
ample:
> >
> > readelf -sW helloworld | grep crt
> > [...]
> > 35: 00000000     0 FILE    LOCAL  DEFAULT  ABS [...]/yocto//tmp/work/ar=
mv7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crti=
.o
> > 38: 00000000     0 FILE    LOCAL  DEFAULT  ABS [...]/yocto//tmp/work/ar=
mv7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crtn=
.o
> >
> > After stripping the respective binary, these paths end up into the debu=
g symbols but the stripped binary still contains the `.gnu_debuglink` secti=
on. This section includes, along with the filename of the debugging informa=
tion file, a CRC value computed on the respective debugging file[2]. This C=
RC value makes, in turn, the stripped binary, not reproducible.
> >
> > IA platforms are not affected by this issue.
> >
> > I am looking for a fix/workaround when using musl as the libc provider.=
 The fix mentioned above for glibc landed in `thud` so since then, this bug=
 is mitigated when using glibc. But, when musl is preferred, the issue is s=
till reproducible on current master's HEAD[3]. This behaviour can easily be=
 reproduced using the qemuarm/qemux86 machines along with a dummy recipe li=
ke the one in our documentation[4].
> >
> > Has anyone looked into this in the past? It very much sounds to me like=
 a linker bug.
> >
> > [1] http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dcd158dd=
197a3a41a91679107a94c6f213476921c
> > [2] https://sourceware.org/gdb/onlinedocs/gdb/Separate-Debug-Files.html
> > [3] 7231c104303f72c5d72f837de114d4f5a633c7cd
> > [4] http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/documentation/r=
ef-manual/examples/hello-single
> >
> > Regards,
> > --
> > Andrei
