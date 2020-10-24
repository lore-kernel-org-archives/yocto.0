Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
 by mx.groups.io with SMTP id smtpd.web11.10154.1603536840219411365
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Oct 2020 03:54:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsAPI3yK;
 spf=pass (domain: gmail.com, ip: 209.85.166.65, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f65.google.com with SMTP id q25so5086056ioh.4
        for <yocto@lists.yoctoproject.org>; Sat, 24 Oct 2020 03:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=PtqGUiNJeSB+HP3MkEvurjxrr3Nw//IP8Y9xrjlwVhs=;
        b=lsAPI3yKLFEhNE/v7NvCVn+f6q1nCxZxztbqnS1gV+QuK3JymW/2dVnMoNAkU9Fk0n
         VRLdmVtU/R4L0C62jAFMvCcItsGkZdeEPyzj4DDPpjMUb8ZeklYLizIOKC+/Fyqxuhlz
         iZibhFPsIAWpkWKxyMkBptcl35AnKpWLfxf4kXkJQYzn/ofHL0VdK2Wm/XDV5RlYO9kG
         +53I8WzyDaZSZARtMYViutQzCkjeKHYVS/8eDNF7gL2D6C/H5/wBLcfs5BQUYpZy307h
         Zvix+sqQvXNWF6PuRbL5MWx0sy/AMYMHP953t0Qqbrij2KY8DPuybGqdwgGoRTqWfYvc
         uXLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=PtqGUiNJeSB+HP3MkEvurjxrr3Nw//IP8Y9xrjlwVhs=;
        b=HuUxkHOKy9ci9EG05L0GYMF6E6LU/jJAlGnFZYbQO4phBTCFx0VtNz2UOw89F1JeIX
         DIefiDX3zO6dssv0z70jnm9lgOXD8tWG2GbZHyFO0JGMywDAPeliS6KrWZHklMRvr8m8
         Yyyl/0whgh6aNm/Cnwbt2IdbR823J45DStuREe0uzp6HOpzIq+jlMbasTCl2Q8MP47Bk
         XuVtwlZjHR3uerdTDK0ig46qR03otvZr02nneubO7vCMzFQms2jRy7pJlGOIP9pRqKBp
         1MMMHV0IIR7ai8Fa1aI18yqqCs+GRPymlCQhb4MZV6ikhXGbjs2heOQ3iQbxXodrqk3A
         Na+w==
X-Gm-Message-State: AOAM533I8YAACMTmSz4SwSr4zEl1HY+a1YtmEoSm/hswijeankCt1Yfw
	YmOGcgqLdavTQtGRzWgj56QBaIAo7zNwBrMMbE8=
X-Google-Smtp-Source: ABdhPJydrrZDtx0zm6zTA0xkWtm/wVHt9LY7mYCv39POp5g6EGpfvyA5hOGJR4Rby/fElmIIRKyPDyp+lumvQOY/m6M=
X-Received: by 2002:a02:5849:: with SMTP id f70mr5077624jab.97.1603536839259;
 Sat, 24 Oct 2020 03:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
In-Reply-To: <CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 24 Oct 2020 12:53:48 +0200
Message-ID: <CAGAf8Lxi0r2ak62JMAGwRbsO=9b5yXWQyDj5PH4g8uauSDZDYw@mail.gmail.com>
Subject: Re: [yocto] Let me tell you how I really feel. Zero filter. If you need meta-python2, you need to become a maintainer. Immediately. Period.
To: Tim Orling <ticotimo@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I have absolutely no need for python2, I made this abundantly
> clear when I created the meta-python2 layer.

WTH? Let me tell you how I really feel.

I  have absolutely no need for python2, as well.

> You are not paying me to do this. You cannot pay me enough
> to do this. Period. Support yourself.

What is the amount of cash for you, you'll consider it enough to
do that???

Better... What is the real message behind this/yours "announcement"?

Thank you,
Zoran
_______

On Wed, Oct 21, 2020 at 2:48 AM Tim Orling <ticotimo@gmail.com> wrote:
>
> I have absolutely no need for python2, I made this abundantly clear when=
 I created the meta-python2 layer.
>
> If you depend upon continuing support of python2 via the meta-python2 la=
yer, this is your call to arms.
>
> I was originally intending to abdicate any support after the 3.1 "dunfel=
l" release, but managed to somehow continue supporting it into the crest of=
 the 3.2 "gatesgarth" release.
>
> I will stop all support and actively refuse lo respond to any emails and=
 this layer will be dead and I have zero care in the world that it stops be=
ing useful. I do not use it. I do not depend upon it. You are not paying me=
 to do this. You cannot pay me enough to do this. Period. Support yourself.
>
> If this is not clear enough, I am happy to have a virtual video call wit=
h you that you will not like.
>
> --moto-timo
>
>=20
