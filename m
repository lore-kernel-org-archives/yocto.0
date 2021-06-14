Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web08.28037.1623667988987782424
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 03:53:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nVH9f7Jg;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id z3-20020a17090a3983b029016bc232e40bso9896587pjb.4
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 03:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K2XdHPNbw2pw9Ad53i8V2xdoi/LrFm73teVJ8bE+M8Q=;
        b=nVH9f7JgMpGkp1vjKdMhwh7/yEGLfasxnxslCj8ZMSwiJu86IiKwQyAce/+ouijy2Y
         2HtVviGLoz/RBy3Sz4pDiva9NI0AsstffBpXYuQ3YrHM2KXwp98S5+s1tlQZLBNSDBye
         zoNTYcMmqF1h+u0tlkWS4+bqRQwNziHr/ueR28g53bYYKJCehdm0dd9Ddf4On2YUvoW6
         Zl3O9F6WE7RZcoZbWNLCJ8snAOtJCItp7SyaZoEN+czqEU2szTPpgT/w46yG/FDNrywZ
         T7OLo1NCaIsTjFPL73ZjBBya095HgYqzYlYtDnu9rb41EKc1SMJWftf2+wS0aS8j20m2
         6I+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K2XdHPNbw2pw9Ad53i8V2xdoi/LrFm73teVJ8bE+M8Q=;
        b=YV0ihsnt13CBA0z+tnoKtf4eQzykCc1fSMdoboofvPEi29Fi5TXH1+gN5tOIT/AYRJ
         ud9xnLlsLUrw+eNg+GzrJcvlcB4PE57HDXNLZxrrVhmlHYYmmnnZSONJz53s0FlfFQbv
         s4aGOovoKv59j6jr+cuoF0kEOCyzk84jn3eREPod+0ruifH1E+V6/hnj6RUWxWw4vJ1D
         x8XhdUAUDojcwWioLgFmsjy9LHaukV47yj6PpJoAUy9MMR257j3l8s0QOrbLLWRMj1bq
         kscKgIMAhrgAu9qg5xJ/nxLb8dY30mLiuvF55sbuFGBz68m1ufT2y0BBSgCeB/0FP/wu
         MYhQ==
X-Gm-Message-State: AOAM531UJbp63aa5KcczbkmcYJwSPejZ+WNZSC2Cu5KPYG7sVgFmL6v9
	x8hqsQltv4BK44v2fLFkWfyc3t5qDFotsslj74E=
X-Google-Smtp-Source: ABdhPJw8CBtqzLPScAEO3vU0oDt2Y7XjWM0cX7EM3UYNf21g37PkR9uKWJ2jHsPsFwy/xiD/CsVP9JL050Ph6tco2Jw=
X-Received: by 2002:a17:902:d88e:b029:10e:601e:d779 with SMTP id
 b14-20020a170902d88eb029010e601ed779mr16129261plz.82.1623667988068; Mon, 14
 Jun 2021 03:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
 <CAAnfSTsEsgc7cAdikFhiZFZDfCX6HZ0mfq49yrrTcgYBS2sC2A@mail.gmail.com>
 <CANVQz1brFG-t4k3HZvWU_d6qp6DM_h3R_23hkME-Fx7i5GWTAQ@mail.gmail.com> <CAAnfSTvV1BbXEeM+8HO01ZYR8rhq2AibN1i2LwJzYavSBin1aw@mail.gmail.com>
In-Reply-To: <CAAnfSTvV1BbXEeM+8HO01ZYR8rhq2AibN1i2LwJzYavSBin1aw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 14 Jun 2021 12:52:56 +0200
Message-ID: <CAGAf8LyJOS2USVCa06w2TiBpGqbFDB_jqs1G2XC6GUa53VR-Eg@mail.gmail.com>
Subject: Re: [yocto] QEMU Size Increase from Yocto Thud to Zeus
To: Ross Burton <ross@burtonini.com>
Cc: Aashik Aswin <thisisaash9698@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> Yes, look at the PACKAGECONFIGs and setting QEMU_TARGETS.

Does it mean that with the local.conf line:

# enable,disable,depends,rdepends
#
PACKAGECONFIG[qemu] = "--with-qemu,--without-qemu,qemu,"

The QEMU is completely removed (this is all that needs to be done, or...)?

Thank you,
Zee
_______

On Mon, Jun 14, 2021 at 12:14 PM Ross Burton <ross@burtonini.com> wrote:
>
> Yes, look at the PACKAGECONFIGs and setting QEMU_TARGETS.
>
> Ross
>
> On Mon, 14 Jun 2021 at 09:04, Aashik Aswin <thisisaash9698@gmail.com> wrote:
> >
> > Thanks for the clarification, yes I am installing QEMU in my image. Is there some way that we can disable the additional architectures and streamline the size ?
> >
> > Thanks
> >
> > On Fri, Jun 11, 2021 at 8:48 PM Ross Burton <ross@burtonini.com> wrote:
> >>
> >> Are you installing qemu into your image though?
> >>
> >> Qemu did get larger as it is built with more architectures enabled,
> >> but unless you're installing it in your image it won't make a
> >> difference.
> >>
> >> Ross
> >>
> >> On Fri, 11 Jun 2021 at 11:40, Aashik Aswin <thisisaash9698@gmail.com> wrote:
> >> >
> >> > Hi Experts,
> >> >
> >> > I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) . After building I could see a significant increase in the size of the image.
> >> > On checking with buildhistory enabled, I could see that qemu has nearly doubled in size.
> >> >
> >> > Thud (4.19) - 223084  KiB     qemu
> >> > Zeus (5.4) - 474757  KiB     qemu
> >> >
> >> > Is this size increase expected or are there some additional configs that might have been added as a part of the upgrade ?
> >> >
> >> > Appreciate your help.
> >> >
> >> > TIA,
> >> > Aashik
> >> >
> >> >
> >> >
>
> 
>
