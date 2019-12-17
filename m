Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web09.2110.1576604848629965732
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 09:47:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VWGY4e7C;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id z76so5968049qka.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 09:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kJ0cJeB1CjxzAArhQu88rJdpg52pPs6nFZQq/owjUFo=;
        b=VWGY4e7CeAZJIse/IkQG3ekP7VWqtyKxg/punzxkDOQVEOOGXYJ5R6vyPxN9okfyMv
         bczJwQwr6qVBSRpfo9KEKxFE6dTIMUOhrAyNhnzVxbAttyihV5+uKtWkG+8ciu5HTZMY
         ayAKYh+ecZMOJVn+KpGn9dvlGW22xjpVVcbr3cjQbbAE3hdKDA7xaxxPGsb6DiVq5ItO
         NyfxxRPWpo8VI07tdbr7CA8HEwGOLdCVBxNCClyUy4XNucwo74DlxFbIpHrA2CONl6CS
         GFt3TWi6xWwCEWfhf6cOnu0YfXJo3FeOf4OOWzbZ1L+1DzZ+QJp7MWVM6t+2ej9X6Dja
         C++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kJ0cJeB1CjxzAArhQu88rJdpg52pPs6nFZQq/owjUFo=;
        b=bgu3TYtu6ObekYMBInzlfH5OF9hvSkC4+PfoE+fvm9GegyjQRyfggZQsukrb7u6wU9
         PH7FcSsUNIVN6vzU70Ang873Tn0+6FOl1jE1R+eJe24d+CxhemY5cDcwpRU0+HRMtw+r
         54l5R3EoIzeCok3ahVXmxJx4SsbwQvmAf5M2gFSzIjbXs71RZzf6MQs/g/vt8ahgADC8
         7KmZoMqC4UkX4+lsIHJLggN3984IQAtmHROtpcTr9eqSj0vqragtb76SV13HolKwEvVG
         U972VjQ9ILULRaDYqll6lYNrrn6P0Tz/TDnkaoc/AmnQTWIZcgcflr+ULTGULzUy+tGw
         UCaw==
X-Gm-Message-State: APjAAAV0dLyZOFORmembfUYqzSsHvmTvG+qhQW0nb15+0rjIFN2/2pZI
	tiFWFqzWS44NmU0yl3TcJvbeSG3qr3AcnrdOHRy5Nt6N
X-Google-Smtp-Source: APXvYqxZ87zv9XANzJoSQKnSC2/Z7tFk5eCTRZraPbSep3FfOcX0wcRG/njRzKhwrjurax7JiRvE6pNVcfjU3FrxWqE=
X-Received: by 2002:a37:bf82:: with SMTP id p124mr6433764qkf.337.1576604847359;
 Tue, 17 Dec 2019 09:47:27 -0800 (PST)
MIME-Version: 1.0
References: <em9bff856e-cbee-41f7-ad79-8d077357740d@andys-imac.leeshillfarm.local>
In-Reply-To: <em9bff856e-cbee-41f7-ad79-8d077357740d@andys-imac.leeshillfarm.local>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Dec 2019 09:47:01 -0800
Message-ID: <CAMKF1spqC12dd-K1fEAcgirWT=iyfTrLjQgtZH0C+KoCW4HDGQ@mail.gmail.com>
Subject: Re: [yocto] Dynamic layer or recipe not working
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2019 at 1:15 AM Andy Pont <andy.pont@sdcsystems.com> wrote:
>
> Hello,
>
> I have created a new dynamic layer within my projects custom meta-layer a=
nd have added a new recipe to it.  When I try to build the image it tells m=
e that nothing RPROVIDES the recipe and if I try to build the recipe on its=
 own it says =E2=80=9CNothing PROVIDES=E2=80=A6=E2=80=9D.
>
> I have tried running:
>
> $ bitbake-layers show-recipes | grep <recipe_name>
>
> =E2=80=A6and nothing is returned.
>
> How do I determine whether it is the dynamic layer that isn=E2=80=99t bei=
ng found or the recipe itself that isn=E2=80=99t correct.
>

share what changes you made.

> -Andy.
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47716): https://lists.yoctoproject.org/g/yocto/messag=
e/47716
> Mute This Topic: https://lists.yoctoproject.org/mt/68756945/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmai=
l.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
