Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web09.5089.1605600519475552181
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 00:08:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJAI+CWN;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id r7so19653182qkf.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2020 00:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V2SgyEl0d793y/UyrAthGk7tfG0uhLKwMRvSY0cX9dY=;
        b=iJAI+CWNMrGJEE1ZqSug1Vv2N1WVAqpXsWxjx7DoUmO/udsoS8CGJtPyA+nZhxMOmw
         2U34hkr/Q6KpW/+fvi7xJUmjWt0rSKX6sgC79Qwx0dWIRIx32DTgcj/b27+hOUnwgJBF
         9/vVUm8HqUZdwsyFVxgfWu2q/0uEcx1oKpOvAMDq+J6KySMFwQU9F5ijJbBv9uFSubMp
         Vxnl+4QL+mSAbBdV832WO841xarJe28IXb1wpWaS51LAzg6RdSsFofBmdbXxlgNWTTZb
         lG6ou8Ho1uFYhduLBxXyZYVY2V3AUqRLvxSUEJUVggw3yXsYBk4G98+Eul73mwMTOTgB
         HtTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V2SgyEl0d793y/UyrAthGk7tfG0uhLKwMRvSY0cX9dY=;
        b=h3NCr8enIi3153bcBEumsHLHMoo5BPZ5/uymsFN+yo0R0bjZuZF+ispLSDp5k8NPbG
         yQWreaI8S9HpAeHBlBWJs/EtjdxoihEgZERm1hK+AXjntcGSglQk+WQt9MOhn2X6A0nu
         B60COZXUFPBixcYXhqw1+DUWKuXfzGG6ObcKkh/NNBM0An0PKmqts+MG+61APDM9tto8
         tZyoSs73h4RrUkGx6R8II5AlXoM4Z5azEXXQP+k3y9xshpcosxa9KdKrUt2lvLkDQI8c
         GQO1JVp06ETdRnMMYPvIcBqqKRtGZY+0Kx8OoGyAnMTzRKboDfGmF/vYVQla8nKWB6+D
         UUoA==
X-Gm-Message-State: AOAM533wrXnkPJtALvHcvKl8v6iiFW1/2jcfnwFjDcVi5kAYjklpEqNZ
	TLqnlLPy5wYnOfsHTWoHaHQHH2OFxAj24oq1jy0=
X-Google-Smtp-Source: ABdhPJwWB5l1RlCxzMwLaycp8sl1/edbEFiLg2nDtQkO5x4WVk20MeMwkPBqYOcRCe726QCBbbgR2KsGeTWpYEjFfHY=
X-Received: by 2002:a37:a70e:: with SMTP id q14mr18365499qke.337.1605600512340;
 Tue, 17 Nov 2020 00:08:32 -0800 (PST)
MIME-Version: 1.0
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com> <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
In-Reply-To: <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Nov 2020 00:08:06 -0800
Message-ID: <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: chuckkamas@yahoo.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
wrote:
>
> Hi all,
>
>
> I have been spinning my wheels for two days trying to discover how to
> enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
> on the CM3 and it inits the MMC1 and its pins just fine. I can
> read/write to my SD card from it etc. However, when I build yocto it
> leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
> I have tried changing the device tree as described here:
>
> https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto
>
> That compiles and add the .dtbo to my build, but still the GPIOS are not
> set to MMC1 mode.
>
> > cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
> > Pinmux settings per pin
> > Format: pin (name): mux_owner gpio_owner hog?
> > ....
> >
> > pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> > pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> > pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> > pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> > pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> > pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >
> > .....
> >
> I have looked at:
>
> https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/
>
>
> Any ideas of where to look next to turn on the sdio would be appreciated!
>
>

what does /boot/config.txt look like on raspbian and yocto built images

> Chuck
>
>
>
> 
>
