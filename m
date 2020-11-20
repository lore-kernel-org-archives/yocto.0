Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web09.1002.1605894778414922159
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 09:52:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5s6tdzr;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id y197so9691646qkb.7
        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 09:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SEYEsbamDNmXvZbP1WJsU8bTLI+iguAW9T09L+HQuUU=;
        b=W5s6tdzrev+0YRzYqJ02/W6jIZnM2IAjQv4DLAo26uCp5k5k8wNTptj9htF6oDw/HD
         QdnagFBSFxinCVTiQMy+7vuCjz6HCgTrrkd5u1PsPasweOf9Bc+GkhkNHcWjjH1Ps9WL
         qTi5JAuENGI0OLemz8uTnwocIy1k/0e7KIrwE8zUa3ZgtTDv+4rrNu5aRFKCp5PSzEQU
         jwhAa06HV2DVFSPbH//bRKi4a9XseSZKYcUYa+qOKhFQ3cBLCDsdIFLdfcYfl+TM/aqz
         Ixa6LhBp+IflRqGcJq8GjSdnhpUGtCsELg5xSbXGaN0pr3r4zs5ez69Yz6RlCjPvookA
         SHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SEYEsbamDNmXvZbP1WJsU8bTLI+iguAW9T09L+HQuUU=;
        b=Pgr2/1MbnVqn0++DFbGuFRD0xKojVJHKyfllf5ZgWR0+ilPVIyjn4s7PWrLOixoPgn
         vckHYB0wntgAbq1x1wGLHnMxb1kZQl19DRDcyrPEWjmHFc27mZhaAEAKtcs3Ag5Bx14Q
         yAhzRJRL46O7bGFEW77acsTRS7aM4m7zrVlNCTPUDhrpB61Jza5MF+9LzWz3Es4I4xJL
         4CNf8wYNDd6zv4oEV1ZTo624fU91Wgt1mj5Hf8XPYuzLxZzbv2E3sQW9toeS2b/bSPdE
         CqFuzMjMjoQSOQG3E8ND4ve7WnJ+fxuTM0U3XAkbAPYOa4TDKo6DNpS1Tvt2oYip4kWC
         93kA==
X-Gm-Message-State: AOAM531sQBY2DduEu+ezZXJwPUr/8R9dCIUI2n7IM8EH0uIZWM3iPQhp
	l+8TUq9sU+TQ5BpGcvlAhBcCm0dZeNr2PMmRzbE=
X-Google-Smtp-Source: ABdhPJwoBlKkEWLLQMbEho45J0lPgT2+0heksAcc7LhiJODIDsMB6i+qCbMki80Dl06QG0LMHWywpUwN2b8WJKRt4vk=
X-Received: by 2002:a37:6195:: with SMTP id v143mr16507791qkb.71.1605894777457;
 Fri, 20 Nov 2020 09:52:57 -0800 (PST)
MIME-Version: 1.0
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
 <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com> <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
 <d7618e11-7af7-2d3b-4854-47240be0a8fd@yahoo.com>
In-Reply-To: <d7618e11-7af7-2d3b-4854-47240be0a8fd@yahoo.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 20 Nov 2020 09:52:31 -0800
Message-ID: <CAMKF1sqbU=S9PAGBs7cAXh+rALSR4p=HW3nzk7fX=Ap37YzcJg@mail.gmail.com>
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: Chuck Kamas <chuckkamas@yahoo.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Can you also post the content list of /boot/overlays directory on raspbian

On Tue, Nov 17, 2020 at 4:29 PM Chuck Kamas <chuckkamas@yahoo.com> wrote:
>
> Raj,
>
>
> Thanks for taking the time to respond. I thought of that too. My custom
> Yocto build has the line to turn on the sdio in it:
>
> > dtoverlay=sdio,poll_once=off
>
> I have attached the entire file: config.txt.yocto
>
> However, the Rasbian image does not have any mention of the dtoverlay
> for the sdio.  Curious. See config.txt attached.
>
>
> Thanks for the help!
>
> Chuck
>
>
> On 11/17/20 12:08 AM, Khem Raj wrote:
> > On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
> > lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
> > wrote:
> >> Hi all,
> >>
> >>
> >> I have been spinning my wheels for two days trying to discover how to
> >> enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
> >> on the CM3 and it inits the MMC1 and its pins just fine. I can
> >> read/write to my SD card from it etc. However, when I build yocto it
> >> leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
> >> I have tried changing the device tree as described here:
> >>
> >> https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto
> >>
> >> That compiles and add the .dtbo to my build, but still the GPIOS are not
> >> set to MMC1 mode.
> >>
> >>> cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
> >>> Pinmux settings per pin
> >>> Format: pin (name): mux_owner gpio_owner hog?
> >>> ....
> >>>
> >>> pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >>> pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >>> pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >>> pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >>> pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >>> pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> >>>
> >>> .....
> >>>
> >> I have looked at:
> >>
> >> https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/
> >>
> >>
> >> Any ideas of where to look next to turn on the sdio would be appreciated!
> >>
> >>
> > what does /boot/config.txt look like on raspbian and yocto built images
> >
> >> Chuck
> >>
> >>
> >>
> >> 
> >>
