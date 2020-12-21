Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
 by mx.groups.io with SMTP id smtpd.web12.37842.1608550706611626674
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Dec 2020 03:38:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bkhns33O;
 spf=pass (domain: gmail.com, ip: 209.85.166.170, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f170.google.com with SMTP id 75so8539161ilv.13
        for <yocto@lists.yoctoproject.org>; Mon, 21 Dec 2020 03:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KsUVIg3mt4vWsJNIAUa+vQ7rFaXUKnBABp2ccgnOzpk=;
        b=bkhns33OmVEC2haMAhCZJ5GrxCwXyHT+NuxGF5omhUgxvXSh9wEnD7ayPeSKSFUxT/
         pL1sE/6Dipt4E38gce8Kt25sNiVDGYR4Cc2uy5aLCBhT2cZOaBhcYvGJH4nj1L0RYiPR
         pRs1nIlUJjAjiSL8bzIEIH5/s6IO3MHCExiwKDEnBwEA3Gg6WVjm8ih8xEzO46ZsMrkL
         FpvJ1sdqespQQKHEBs3LTjbsvL1H9SWxVCpgiHurYvNV8ftvzMDKZkNwPEbHoBA1PDBE
         3ZY2kqs1CnaFadWAYahnJPIUL5xjlJGos0t4rOvhWTQ7xBRLQb1VwhAYjZjlKLEez/RO
         KDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KsUVIg3mt4vWsJNIAUa+vQ7rFaXUKnBABp2ccgnOzpk=;
        b=DJ+JADKyOpoDM4qP9LqIH6iTQ9Oq0BiTJ7TFJHEtLb869qPicIkx3m25rIIVQMMAji
         qq/Qvm/mbN9qbQSsg9MhehYFT5NOOHpTJxoYBZY/BjatYeb3LzmG0QvaY9GE3noNaIo7
         uPr4KsR8acCHNu6spidofQJGM1StLuqVdgwUS625kbqNfuNyy+ltlg9fMa9q6x7AZ0fp
         R1CRd5D+W9BMXkWV4iTgLZFBavGbpwOSzph88zMbOerCLt8unUUum9Ju38lH8hEwZ4xx
         0XHopYbnAG4cojANvSdOotquYsvjLPU09m4diUVhtWqXR9hSvnitiFpQ7dsGeAcuMDWP
         z71g==
X-Gm-Message-State: AOAM530mUIameiugNOTFnYCuykGkLApy7YR4jDlD5Qh0/5td4RiRUDHV
	RPENlOvFCYyXbJxu6txJ6Qa4WnfrZRC8uzNF4OE=
X-Google-Smtp-Source: ABdhPJwJ2TH4boSx1FEChy4sO6/uqUvBU9b6zlpwVok0iB3O6iUoNf3cYpYYfMedM3GpTw4jw0wdEvrnGWvB3PJs1IY=
X-Received: by 2002:a05:6e02:f93:: with SMTP id v19mr15748846ilo.154.1608550705924;
 Mon, 21 Dec 2020 03:38:25 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nEw6=TZ62bnBbBUGfN+qT4w1W8rNpOy6ADQbwTu81bAQw@mail.gmail.com>
 <CAM9ZRVt8u5_kt49hhw7Sr1u63ifVM117xiMoR4c=bDo89Le7ug@mail.gmail.com> <CAEyb4nFrfJ-SNDirKMoJL3iJKfDHJtspV_Q_0m4jbv_ivyShrw@mail.gmail.com>
In-Reply-To: <CAEyb4nFrfJ-SNDirKMoJL3iJKfDHJtspV_Q_0m4jbv_ivyShrw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 21 Dec 2020 12:38:14 +0100
Message-ID: <CAGAf8LzkWc_HZWsN9mip_d+17LWKuVJoXKEd_nO+JSyy8g1ZSg@mail.gmail.com>
Subject: Re: [yocto] Using U-boot in Yocto
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Paul Barker <pbarker@konsulko.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Jonas,

Do not forget that you can also build and use U-Boot completely out of
a YOCTO tree.

I do things like that, not using the YOCTO U-Boot build.

(As a matter of fact, I do not use the kernel as well, only rootfs for
the testing purposes)

But it depends what and how your business/project management model
looks like, I should say.

Zoran
_______

On Sun, Dec 20, 2020 at 3:10 PM Jonas Vautherin
<jonas.vautherin@gmail.com> wrote:
>
> Oh, for some reason I had not found the docs. Thanks a lot, that looks r=
eally good!
>
> On Sun, Dec 20, 2020 at 2:13 PM Paul Barker <pbarker@konsulko.com> wrote=
:
>>
>> On Sun, 20 Dec 2020 at 09:02, Jonas Vautherin <jonas.vautherin@gmail.co=
m> wrote:
>> >
>> > Hello!
>> >
>> > I am new to Yocto, and hope that this is the right way to ask for hel=
p :-).
>> >
>> > I would like to have a way to flash my RPi over USB using `fastboot`,=
 and it seems to me that one way to do that is to enable a "fastboot mode" =
in U-boot. Therefore, I am trying to use U-boot in my Yocto image.
>> >
>> > There seems to be a recipe for it, hence I just added the package to =
my `-image.bb` file:
>> >
>> > ```
>> > IMAGE_INSTALL +=3D "u-boot"
>> > ```
>> >
>> > However, I am not really used to bootloaders, and I am not sure it is=
 booting with it. How can I check if my system is booting with U-boot? It d=
oes not seem like it's appearing in `dmesg` (which I presume is only starti=
ng with the kernel). Do I need to observe that with a serial connection to =
my RPi, or is there a log saved somewhere on the system?
>> >
>> > Note that my image uses `meta-raspberrypi` for MACHINE "raspberrypi4-=
64" (Raspberry Pi 4 Model B).
>>
>> The IMAGE_INSTALL variable is used for packages to install into the
>> rootfs. Typically bootloaders need some special handling and simply
>> adding them to IMAGE_INSTALL either doesn't work or isn't sufficient
>> to enable booting via the chosen bootloader.
>>
>> For Raspberry Pi we made this simple by adding the RPI_USE_U_BOOT
>> variable which you can set in your distro config or in local.conf. See
>> https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.ht=
ml#boot-to-u-boot
>> for more details.
>>
>> The layer documentation for meta-raspberrypi is actually pretty good,
>> you can find it at
>> https://meta-raspberrypi.readthedocs.io/en/latest/index.html.
>>
>> Thanks,
>>
>> --
>> Paul Barker
>> Konsulko Group
>
>
>=20
>
