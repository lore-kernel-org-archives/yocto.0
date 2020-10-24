Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web09.17467.1603571172344295619
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Oct 2020 13:26:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JERKGdcp;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id n5so4646966ile.7
        for <yocto@lists.yoctoproject.org>; Sat, 24 Oct 2020 13:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kh21rYvu3u0j+Sg4ENRKO9RbO9ELRcrrNl/gORwD/b4=;
        b=JERKGdcpMZxaStI9SpnZZ4G9NW4o9CGPV8uLHoqvi3UbZtKDH1KVOAYr7VNLD8IhSG
         +FdKVNpXeRUx2VypWecQDpidrdawy9YVFsDhICAAAozMGfUJT2yC183wzgpSmVFfBJIi
         wFcRf4mbYFWFeGw7nNgiifMmepQomp2qQXT0Nfc9WfNceT5PVWBRZ4lyBflNgm/3wjP8
         zLu1zpOOEJ/YUGVNN+s+lIvS9bkdo0XuY/DsfTkConjIJc20oSkBaldUHC8WE79sW4Yb
         DImpmww/lwjtCghPBdvqOWuID4MJVLNy0UVNvBWery3Z+itsVq6PvzJydbOb3mh/ls+E
         ZTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kh21rYvu3u0j+Sg4ENRKO9RbO9ELRcrrNl/gORwD/b4=;
        b=oeURwIQrN7qz3c46YUQ08bNYGOtpRCGYvWGsLxt0XZoYAAnR5lfCwPf5w7ekMzrzXc
         kZrgzTeEZiFCoI8ntF3QX3/lEYQeqhrEriERueSkVtdipfMX3jBA9iKZwUybweU4V+it
         mU1RaJc1KT5tdRzB8VhkFLwyFJ+tMKpnnZlhU9k2zVzsWswd56nQIK3mLpNFPYAtZLIk
         QUmKFcyYIPw/fWVa6iexy3La4B3Ivecu5NRVVHKYjdnfKeAwfN5O3EySkmrPQQRSecFF
         XQ5sO11h4n4abJi+aO8Zz3VLMuwt8b9reGEOozHHtXWc2lbQDuyexzidC8Roj77zol70
         XbgQ==
X-Gm-Message-State: AOAM5322nAmf4JwHZi5DOVGtzALmYHaKazVwOCYekVPCQpqeacnL5aPo
	tnXShEdRumSTMupNhLGQYx4KsY0YfUpZ6/nUyLc=
X-Google-Smtp-Source: ABdhPJyAyU1nipeeUxcyIcSqgsD6YkQrJdKFQ04FPhIXRBrhPU61EuogRDezrug67LKZI6QmYJD2kekp9m2yQ0ez9iI=
X-Received: by 2002:a92:cc83:: with SMTP id x3mr6193841ilo.232.1603571171505;
 Sat, 24 Oct 2020 13:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
 <1640E842B1461A14.10923@lists.yoctoproject.org> <CAGAf8LwEANwgRoXr39xJ1BP5t3XYb9B_8Sf2fYBx_-CfiRAB9Q@mail.gmail.com>
 <CANNYZj_g=0mt7d+f4Gu0HhmikgZ8M6gpGStZLtsDgRqSBXH+vQ@mail.gmail.com>
In-Reply-To: <CANNYZj_g=0mt7d+f4Gu0HhmikgZ8M6gpGStZLtsDgRqSBXH+vQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 24 Oct 2020 22:26:00 +0200
Message-ID: <CAGAf8Lzf2NV+MTKimLqnO=uBZ2DizrhCefLgkj3oBZSqkRoKUA@mail.gmail.com>
Subject: Re: [yocto] Let me tell you how I really feel. Zero filter. If you need meta-python2, you need to become a maintainer. Immediately. Period.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Tim Orling <ticotimo@gmail.com>, yocto@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I do get this.

But if you deliver/target this message to me, you are barking under
the wrong tree.

Best Regards,
Zoran

On Sat, Oct 24, 2020 at 10:22 PM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> I am not complaining or bragging. I only want to set expectations, in pu=
blic, and clearly. Otherwise some people will treat the project contributor=
s as their unpaid contractors, and get upset when help is not given, or wor=
k is not done for them.
>
> Alex
>
> On Sat, 24 Oct 2020 at 19:38, Zoran Stojsavljevic <zoran.stojsavljevic@g=
mail.com> wrote:
>>
>> Alex,
>>
>> Either do it voluntarily, either do not.
>>
>> Do not complain, or brag about it.
>>
>> We all understand Open Source rules, or we do not, do we???
>>
>> Thank you,
>> Zoran Stojsavljevic
>> _______
>>
>>
>>
>>
>>
>> On Sat, Oct 24, 2020 at 12:54 PM Zoran via lists.yoctoproject.org
>> <zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > > I have absolutely no need for python2, I made this abundantly
>> > > clear when I created the meta-python2 layer.
>> >
>> > WTH? Let me tell you how I really feel.
>> >
>> > I  have absolutely no need for python2, as well.
>> >
>> > > You are not paying me to do this. You cannot pay me enough
>> > > to do this. Period. Support yourself.
>> >
>> > What is the amount of cash for you, you'll consider it enough to
>> > do that???
>> >
>> > Better... What is the real message behind this/yours "announcement"?
>> >
>> > Thank you,
>> > Zoran
>> > _______
>> >
>> > On Wed, Oct 21, 2020 at 2:48 AM Tim Orling <ticotimo@gmail.com> wrote=
:
>> > >
>> > > I have absolutely no need for python2, I made this abundantly clear=
 when I created the meta-python2 layer.
>> > >
>> > > If you depend upon continuing support of python2 via the meta-pytho=
n2 layer, this is your call to arms.
>> > >
>> > > I was originally intending to abdicate any support after the 3.1 "d=
unfell" release, but managed to somehow continue supporting it into the cre=
st of the 3.2 "gatesgarth" release.
>> > >
>> > > I will stop all support and actively refuse lo respond to any email=
s and this layer will be dead and I have zero care in the world that it sto=
ps being useful. I do not use it. I do not depend upon it. You are not payi=
ng me to do this. You cannot pay me enough to do this. Period. Support your=
self.
>> > >
>> > > If this is not clear enough, I am happy to have a virtual video cal=
l with you that you will not like.
>> > >
>> > > --moto-timo
>> > >
>> > >
>> >
>> >=20
>> >
