Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web11.14967.1603561104817693943
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Oct 2020 10:38:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtWfVvLo;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id j17so4448495ilr.2
        for <yocto@lists.yoctoproject.org>; Sat, 24 Oct 2020 10:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ERY4WT5/kw1Pznf0I9GWFNAxQn8heU+OLRnmM3KMQzc=;
        b=mtWfVvLoKjBDL5M/uoSg+/jkwazMJaKVjzfJVo5JQSFFVjbBpuSV6VoKLk3ns96h+U
         VfScIO0PYLx7QtJSKjcVO6wOt+TAoVbHQbI4QOTw+aR1G11sgeEYfD+5ILmi/rzzdd+N
         bE9jtSL9B9xMkvSs3qKvz0DWdJ905qg0KVNmXYch5kFY5pdaES3Luhal85U2SkfiP+oB
         vly0bR07Y5noz9Obhey6hOxM+JN41OC8GqVoD+eCVBzw2xhCfVpvLS89UFR16XPtC8hZ
         cDJOis2BJFqY7L5azcRgrGN6WMMmASEwYTwiP8hGmdGRw6Omw2wapH82butT3R4tX34a
         JIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ERY4WT5/kw1Pznf0I9GWFNAxQn8heU+OLRnmM3KMQzc=;
        b=Ud0tSgQJibS6l/vxEhOiCa7dV/xU3e7vpdkmL8/T/KhkngH7cjnaiwZxcpEAVJf6S8
         bKU3ESDHKgu5ah0BowOW+Gd5IwZUVtc48ZWuFsgnFfWBzzRUMmvvpPRdu3w4UqZhRGwG
         z9QPWK8+DcbLcJU3mVHvRDK8aUShOpiPv88DtXDx11jJawQNQku2L43vQhkXwd83N2Eq
         hhrAeq2BvoOztrDZL7D0Mzjx+h1ccOZ+E7sOgyOw4y+lXQiWsxih1KZBPmv+yP9sG489
         wn9vL7/q4QgMEbffFu5V2RaItFdbqC85b0Gpl8WzLK9Td2Y3oQMNWD/3+JtUoUreQ2r/
         MQMw==
X-Gm-Message-State: AOAM530ijVHYWHYEKFOPd+e2TbZLKaFmsKBY+HqwpgTo/4McwJi6R6Ov
	gHjNDrDvEMdk/LcfqqlDPiMN6GGxtZtI53u786E=
X-Google-Smtp-Source: ABdhPJzrH7N9jsMApSNww9usehW8LlxIUT+MN9PZ7TEgzHLrN6aRvsYTP7596HjDtFFUE2JvBxxj74OaBkaxsOoFArA=
X-Received: by 2002:a92:c5ce:: with SMTP id s14mr5883000ilt.40.1603561104072;
 Sat, 24 Oct 2020 10:38:24 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
 <1640E842B1461A14.10923@lists.yoctoproject.org>
In-Reply-To: <1640E842B1461A14.10923@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 24 Oct 2020 19:38:12 +0200
Message-ID: <CAGAf8LwEANwgRoXr39xJ1BP5t3XYb9B_8Sf2fYBx_-CfiRAB9Q@mail.gmail.com>
Subject: Re: [yocto] Let me tell you how I really feel. Zero filter. If you need meta-python2, you need to become a maintainer. Immediately. Period.
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Tim Orling <ticotimo@gmail.com>, yocto@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alex,

Either do it voluntarily, either do not.

Do not complain, or brag about it.

We all understand Open Source rules, or we do not, do we???

Thank you,
Zoran Stojsavljevic
_______





On Sat, Oct 24, 2020 at 12:54 PM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> > I have absolutely no need for python2, I made this abundantly
> > clear when I created the meta-python2 layer.
>
> WTH? Let me tell you how I really feel.
>
> I  have absolutely no need for python2, as well.
>
> > You are not paying me to do this. You cannot pay me enough
> > to do this. Period. Support yourself.
>
> What is the amount of cash for you, you'll consider it enough to
> do that???
>
> Better... What is the real message behind this/yours "announcement"?
>
> Thank you,
> Zoran
> _______
>
> On Wed, Oct 21, 2020 at 2:48 AM Tim Orling <ticotimo@gmail.com> wrote:
> >
> > I have absolutely no need for python2, I made this abundantly clear wh=
en I created the meta-python2 layer.
> >
> > If you depend upon continuing support of python2 via the meta-python2 =
layer, this is your call to arms.
> >
> > I was originally intending to abdicate any support after the 3.1 "dunf=
ell" release, but managed to somehow continue supporting it into the crest =
of the 3.2 "gatesgarth" release.
> >
> > I will stop all support and actively refuse lo respond to any emails a=
nd this layer will be dead and I have zero care in the world that it stops =
being useful. I do not use it. I do not depend upon it. You are not paying =
me to do this. You cannot pay me enough to do this. Period. Support yoursel=
f.
> >
> > If this is not clear enough, I am happy to have a virtual video call w=
ith you that you will not like.
> >
> > --moto-timo
> >
> >
>
>=20
>
