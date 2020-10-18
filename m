Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web10.16541.1603012096671277791
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 02:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tF8keRYf;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id z5so860098iob.1
        for <yocto@lists.yoctoproject.org>; Sun, 18 Oct 2020 02:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LtoUPJfPNe1cJJkI931FOI+bwssldg3Nee3UBbtq4Kg=;
        b=tF8keRYf49D8JNNKiJ+zZIyscDaVpUBkxeZSt0tAtLaH9g/lLCaqLfYEN8Ir7DB6+/
         K0R+2QDQGgYcqaeTyM7osgHANTvB7ir3NNe4qoTGM2t4ShROyCLUqXvm4864H+/u1TDL
         dGoi5FEIFSmFzrk1EcYHX2lhQA23itFfkAk4vV5h5oGiNnFpyjbr8JhCOl1+IgPJICT2
         Vh2mLEjHUimy/BUxq+tL26RSX2karamUqyL7ANRPg9k+9D4egOVR3Aqi2JU0GmjBTaUV
         YzqboT8TmQXqa1bbQrOckWcaa+26iY4a+QxzbA7arbRdMlTR0sJbW3Hw3vK6LdZJKWq3
         9RFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LtoUPJfPNe1cJJkI931FOI+bwssldg3Nee3UBbtq4Kg=;
        b=tTPOEayobe2ehyrW8UgQnIobJwQi987GAVtw2Q+cYfqdV6OqbhJwqyb+eaNL/8ku9p
         Px7jpj3usewu5tEhrVuPfVXIx9g1q+RNfM6W0VcjF6LBh3ZDLjSkLtEtqw5RzoGuVC1n
         BSXswRh1KBmAQwobrR6a6+eJUgS6LD8vvtXJ8gkVijzoS+C0HSjWEcC1D3IRNn+6qJ6m
         7SJy9N0t93OUtlBSjbkAurMjWC4PtSEp0AhuNQ+JrtlKEPsaLhHjdXSxooQB014awzHy
         Z0USwFOjxNI428qL3kRiNNtuWtTWQRoe21GCG7i6DNWJZvoYOJEvOVoBnCcCjO00Xath
         jPCA==
X-Gm-Message-State: AOAM533DCSwNT4IRaOPu2u7j4CFHiPPcX48Zkd6JqXdvNf4GqCZ8fORf
	yb/n3F3829wAXoGGUhTa/TjhEn5BZ8/rEhM9vxE=
X-Google-Smtp-Source: ABdhPJwqFdsnrUic+ctMRTsbHnhUtUdVqTusx/v5EPQpE7k+RLZ4XiCcAP9kRoxUOz6xHoq6dXTbWic07lh9RYsFDK4=
X-Received: by 2002:a6b:b2cb:: with SMTP id b194mr7457795iof.132.1603012095803;
 Sun, 18 Oct 2020 02:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <40cb2bfe-b789-de46-d05a-6f331781846a@dajac.com>
In-Reply-To: <40cb2bfe-b789-de46-d05a-6f331781846a@dajac.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sun, 18 Oct 2020 11:08:03 +0200
Message-ID: <CAGAf8LwuRymGnLoCbeDcumNZE1ffYqsLNPwTLyvPOPTNympNZA@mail.gmail.com>
Subject: Re: [yocto] Which dts is being compiled?
To: David Novak <david.novak@dajac.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello David,

Not sure if  your question has anything to do with YOCTO (in contrary,
I this is has nothing to do with it). I see kerne's .dtb from U-BOOT
messages while booting the system:

debug: [enable_uboot_overlays=1] ...
debug: [enable_uboot_cape_universal=1] ...
debug: [uboot_base_dtb_univ=am335x-boneblack-uboot-univ.dtb] ...
uboot_overlays: [uboot_base_dtb=am335x-boneblack-uboot-univ.dtb] ...
<<======= .dtb used
uboot_overlays: Switching too: dtb=am335x-boneblack-uboot-univ.dtb ...
loading /boot/dtbs/5.7.4-bone10/am335x-boneblack-uboot-univ.dtb ...
<<======= .dtb loaded
210649 bytes read in 183 ms (1.1 MiB/s)
uboot_overlays: [fdt_buffer=0x60000] ...
uboot_overlays: loading /lib/firmware/BB-SPI0-SC16IS740-00A0.dtbo ...
2291 bytes read in 698 ms (2.9 KiB/s)

You can also stop in U-BOOT monitor and issue: printenv, then search
for dtb variables.

In my case it gives me the following:
...
uboot_base_dtb=am335x-boneblack-uboot.dtb <<======= This one is
probably one which U-BOOT uses for its purposes
uboot_base_dtb_univ=am335x-boneblack-uboot-univ.dtb <<======= One used
by the kernel
...

Hope this helps.

Best Regards,
Zoran
_______


On Sun, Oct 18, 2020 at 12:16 AM David Novak <david.novak@dajac.com> wrote:
>
> Hi all. I've found the device tree files and I'm fairly certain I know
> which one is being used in out image, but I want to be certain.
>
> What process is used by Yocto to determine which top level dts file to
> compile?
>
> Thanks,
> David
>
>
>
>
> 
>
