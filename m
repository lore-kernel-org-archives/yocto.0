Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
 by mx.groups.io with SMTP id smtpd.web11.6733.1578745627390472196
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jan 2020 04:27:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rTE0xd7k;
 spf=pass (domain: gmail.com, ip: 209.85.166.195, mailfrom: schnitzeltony@gmail.com)
Received: by mail-il1-f195.google.com with SMTP id s15so4082099iln.1
        for <yocto@lists.yoctoproject.org>; Sat, 11 Jan 2020 04:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1EqaayV8PPcm5SePFSy0CK7aOU9TlP7ZxYwNEujd95s=;
        b=rTE0xd7kSFuLbWwFsMvKJqFkoyF9OJbKIFzvkafSCL4XTZWREbvkG/VIZ4MNbWuyfr
         XtvvuPpmCnMxhW1KX0n7CQVnVB1EwMzjruovPwhiHluX4QbXjqA0nY+7Yt027meop7FC
         xxaQzEbrfMkpBHB1cTs52yeqovwmINubqn1Y89FWyAFytq/93mOMSJ5Rz3vCB1Pmh9Sy
         IDcnOulXkSTFWBUeOXh5dk2Bpq4OkDnaBb/E2wVHce3TtDhMP7sIgbVN7iqfXGv7VnKE
         tvT2OXMyq7v0f6fMfzBMcHNy/gg0/O1Uj64anFgb+Pj4ppk2pO8TTFZISFMWCOFkrujy
         mS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1EqaayV8PPcm5SePFSy0CK7aOU9TlP7ZxYwNEujd95s=;
        b=BHlasSqk+LiQljtQEbaZ6i29OtMM5X37i6zuXbliKRSA5nCln/O86EeRY9bZ3JxaBo
         ipIA2d8BTs8t9aA8caK4LgSE1SL9N8lIDsfmXjSrC89HPXblokAt9swjLutIYgOwnsMB
         sy0eb7k7z2cmMrvh9PVswa/xfKHlrvAmefBTtVQ1THzNAaSS4IBbIG15A2jxPfrIozqK
         a41Q11WZCllzf78cYHWDTi2G+MncCTwQBU5sfF9VwH/wjRz5ezSGvaoHd3UZ0emda0+b
         VzL6EaTYLi7NnaSu4puhhfenDuaMuPTgOaC6MaPoi2/0W1aT32dFvjXDs5IFLulJacTY
         xqUQ==
X-Gm-Message-State: APjAAAXj5ZNVMW/CqODqDRCIaPiBB7ycWUzdofg228gnkw/Th54/aOsP
	WhMlgArq+9OTABp6meTZpwBEV1az809bDAY3/MQ=
X-Google-Smtp-Source: APXvYqwHw8dtx31JY52slFnDDyBEmOi1FNGKdseoGLO4amRhjmxo5M47kwuJddtv8Tuvu6iXO2c+X6haspJ7pv24THc=
X-Received: by 2002:a92:cb09:: with SMTP id s9mr7471423ilo.224.1578745626812;
 Sat, 11 Jan 2020 04:27:06 -0800 (PST)
MIME-Version: 1.0
References: <15E744ED02F41EEB.31817@lists.yoctoproject.org>
 <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net> <CAP71WjxqsYGRx8cn0JeyqrhvJbNQkQH_S7N0eURmJ411C9JAew@mail.gmail.com>
In-Reply-To: <CAP71WjxqsYGRx8cn0JeyqrhvJbNQkQH_S7N0eURmJ411C9JAew@mail.gmail.com>
From: "Andreas M?ller" <schnitzeltony@gmail.com>
Date: Sat, 11 Jan 2020 13:26:55 +0100
Message-ID: <CALbNGRQzPKmUR8OK6ZA=yD6yZzVt=JyW=akCMmFrPtMkRP+1vA@mail.gmail.com>
Subject: Re: [yocto] mailing list mangling name?
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: "Andr? Draszik" <git@andred.net>, Michael Halstead <mhalstead@linuxfoundation.org>, 
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2020 at 6:28 PM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> On Wed, Jan 8, 2020 at 3:45 PM Andr? Draszik <git@andred.net> wrote:
> >
> > The mailing list started mangling my name.
> >
> >
> > The From is sent as:
> > From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
> >
> > but it comes back as:
> > From: "Andr? Draszik" <git@andred.net>
> >
> > (and of course the patches in git look funny now)
> >
> > Could sombody please look into that?
>
> Your name was mangled in the groups.io database (because of the "=C3=A9")=
.
> I have updated it.. though I am not sure if this will fix the actual
> problem. I guess we will know with your next message..

As being affected either by '=C3=BC' in my name: This is a testmail :)

Andreas
