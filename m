Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web08.23354.1608469983317838310
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Dec 2020 05:13:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Nr9ByroX;
 spf=pass (domain: konsulko.com, ip: 209.85.161.54, mailfrom: paul.barker@konsulko.com)
Received: by mail-oo1-f54.google.com with SMTP id x203so1669849ooa.9
        for <yocto@lists.yoctoproject.org>; Sun, 20 Dec 2020 05:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xeOnmEVm88zuOCD+94t1BqphCM6ldHJiWKE9tph7P8I=;
        b=Nr9ByroXYW2cmkL0nzPHwZRIgzxfT4CBqeOqGEWCwsCyr1KcBBCJX7k7oI6T0KRloR
         ry5nLtj7Pi8dN95TKYjUL2Kl1+VUSx3Efixm9XLE0lxmC7NsumRbqdolgmojLQchtg8l
         Wg/3kgudUxBRlgXER1Pmif20fzxKN7xeayoy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xeOnmEVm88zuOCD+94t1BqphCM6ldHJiWKE9tph7P8I=;
        b=Ib/W8cjwu1zX7xbJ2UXI0vQxV6tqsK7A8A1HgA20k3QhgMxYoNvYo/CD+4+uLY3G1T
         RxRkDEXI4xyMx55+Fi+dKNMIqjPVtwBahYosyrNcE8NEhlXuRgYJyxZizZLRqYQigkHV
         FyrHe/GgldsW2Wx8Dx2BrNxdfvYrxz5rTF0ZL+sjSSaM2ZjvuYXsnqSWkj6IMIjxgelo
         Ynepmm8b7sBO1bU1KYAjPOMHDbuwOjlyKTh1LQvpSeElcI3CccDwNH7n6iECsOldA51x
         7C7Mj3GTPamYe09+4Am6t0zaTW+Pcof40+w53AhUKnpDWQTWvkdulk115qHDPPXcYeES
         onvw==
X-Gm-Message-State: AOAM533FK20//uF9luVvpY85h61GtdyYxuhp8wcyhx0WsvcROdu17Tmz
	6I5bWyM+MLXEIigFK1KrUKr8cujrU1ck72ifuo/asQ==
X-Google-Smtp-Source: ABdhPJxCc8Yoi28qzuWuCRM9mtESo+u3YD2o66Jt5gxtSQ76mAW7jP8zpfby+k7ugD4zN6WeaBXpeCl1QCHfxwMRE2c=
X-Received: by 2002:a4a:751a:: with SMTP id j26mr8676843ooc.68.1608469982697;
 Sun, 20 Dec 2020 05:13:02 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nEw6=TZ62bnBbBUGfN+qT4w1W8rNpOy6ADQbwTu81bAQw@mail.gmail.com>
In-Reply-To: <CAEyb4nEw6=TZ62bnBbBUGfN+qT4w1W8rNpOy6ADQbwTu81bAQw@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Sun, 20 Dec 2020 13:12:52 +0000
Message-ID: <CAM9ZRVt8u5_kt49hhw7Sr1u63ifVM117xiMoR4c=bDo89Le7ug@mail.gmail.com>
Subject: Re: [yocto] Using U-boot in Yocto
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 20 Dec 2020 at 09:02, Jonas Vautherin <jonas.vautherin@gmail.com> w=
rote:
>
> Hello!
>
> I am new to Yocto, and hope that this is the right way to ask for help :-=
).
>
> I would like to have a way to flash my RPi over USB using `fastboot`, and=
 it seems to me that one way to do that is to enable a "fastboot mode" in U=
-boot. Therefore, I am trying to use U-boot in my Yocto image.
>
> There seems to be a recipe for it, hence I just added the package to my `=
-image.bb` file:
>
> ```
> IMAGE_INSTALL +=3D "u-boot"
> ```
>
> However, I am not really used to bootloaders, and I am not sure it is boo=
ting with it. How can I check if my system is booting with U-boot? It does =
not seem like it's appearing in `dmesg` (which I presume is only starting w=
ith the kernel). Do I need to observe that with a serial connection to my R=
Pi, or is there a log saved somewhere on the system?
>
> Note that my image uses `meta-raspberrypi` for MACHINE "raspberrypi4-64" =
(Raspberry Pi 4 Model B).

The IMAGE_INSTALL variable is used for packages to install into the
rootfs. Typically bootloaders need some special handling and simply
adding them to IMAGE_INSTALL either doesn't work or isn't sufficient
to enable booting via the chosen bootloader.

For Raspberry Pi we made this simple by adding the RPI_USE_U_BOOT
variable which you can set in your distro config or in local.conf. See
https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.html#b=
oot-to-u-boot
for more details.

The layer documentation for meta-raspberrypi is actually pretty good,
you can find it at
https://meta-raspberrypi.readthedocs.io/en/latest/index.html.

Thanks,

--=20
Paul Barker
Konsulko Group
