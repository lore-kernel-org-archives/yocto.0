Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web08.61841.1629325391773514084
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 15:23:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IzeB+amG;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id t190so4918689qke.7
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 15:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mncsh2qYsQlLu7ZQUwb9cS+u65C/ZAHnqHAy7EAQymE=;
        b=IzeB+amGfYrtko79uSH8SKIoCjxyuzFXxYYsM5a1ellABwJqyRnxCzfR1bSlVIEE/O
         q400XTLuv7aBS1iCXO9Fy6k5oAOzmpTGYCPdFee8YAgikMKLSlW2MGyktcHGgBgTFLty
         FyeQdX0Px91Bv2QFb44XfM3lQ9RFURasn894MgwZTnjvu/s+a3Bvy0ErVIe0bcJJVFB3
         rmykIrDteMBDUgLGxoKEV0MudHKoX84EdIgapJqJrbnuiFhg8O9cDvlw7YKZBhtkxQ57
         pwPbMS3b1tPGyC0dHb+sBRbz+l6wWmp3dyNxU4ysFXGvcP6kGw6qEpej5//87wE6TA45
         XmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mncsh2qYsQlLu7ZQUwb9cS+u65C/ZAHnqHAy7EAQymE=;
        b=gVtJnbRNc+1Y0bQwqwNBVMprTjXkDf6xWyP6gVe0T6vpynp5vW6MliK4e9TvSAn0cO
         cgNDQFjEgmcZN5+O4SksLvpo9ssj6XBn1fOh3G6X1QzJqtz4uTcmBFYdvOmnzQv/ry7G
         W7sniJPfqSOIq083oZADDQwayl798Wm9AASRdMpV7noHpscZXJCnj07RZq5tGEYKOkWw
         xB00KJoXfnagEqIWonidUsZB5dRqi0EsxKjDqZ4Lf8+YTH62VAKaePXj3LbxQLmTtyTK
         U2TLr+m1qlv6GzXa0m+TDkx39uDtjBuCGv4HfRJNw5Fzxk1XH4j5hVC3ABYMfaoG709p
         Uq6w==
X-Gm-Message-State: AOAM530Rbk0g8npLWqSGlNQUnxV4d6EC7J6kutWoqz+GG1gvqq3eoSeY
	k1DyfN7xOFhAs87jqSOEg77AYxf5HpJ4uGAHm8o=
X-Google-Smtp-Source: ABdhPJyt4aUUueFhlAYHrwmOy8305TodcCQxElPCoBUDir2FoBkicKfW5fyKFj6JbBTZvMpuPnNT8SDkL+7os2GMtIs=
X-Received: by 2002:a37:58b:: with SMTP id 133mr583945qkf.146.1629325390813;
 Wed, 18 Aug 2021 15:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <36684fbc-136b-4802-a1f4-d82af4e6348c@www.fastmail.com>
In-Reply-To: <36684fbc-136b-4802-a1f4-d82af4e6348c@www.fastmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 18 Aug 2021 15:22:44 -0700
Message-ID: <CAMKF1soX249Typnn9OoJmLbBg1S-8egj5rLvpXqHYv2aiTwWJw@mail.gmail.com>
Subject: Re: [yocto] Wayland and X11 on Yocto
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 18, 2021 at 3:06 PM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>
> Hello all,
>
> I'm building an image to run on various SBCs and would like to equip it with a graphical interface.
>
> There are quite a few things very unclear to me. Can someone help me with that?
>
> * Why is X11 enabled by setting an IMAGE_FEATURE (namely  x11, x11-base or x11-sato), while Wayland is enabled by IMAGE_INSTALL only (weston-init and weston)?

x11-* features is primarily to control what kind of x11 packages you
want to include in image e.g.
./meta/recipes-sato/packagegroups/packagegroup-core-x11-sato.bb is
pulled in when x11-sato is added to IMAGE_FEATURES
we have many X11 based images and sato is one of them so thats why its
separated out.

you should really is looking at DISTRO_FEATURES e.g. wayland distro
feature is needed for core-image-weston to build.

> * Theory: Is IMAGE_FEATURE +=x11 manipulating IMAGE_INSTALL under the hood so you don't have to do it manually? And as there is no IMAGE_FEATURE "wayland", you have do it manually. Correct?
> * Why is Wayland different in that it doesn't need an IMAGE_FEATURE to enable it?

there are not many wayland based compositors or images we have in core
as of now.

> * Why does core-image-weston.bb need to enable IMAGE_FEATURE hwcodec, while core-image-x11.bb does not? (Dunfell branch.)

openGL is needed for wayland/weston to work too but hwcodec feature is
infact to pull in machine specific drivers MACHINE_HWCODECS into image
if a given BSP defined it.
e.g. intel bsps define vaapi codecs and mediasdk for specific machines
via MACHINE_HWCODECS
defaults for this image features are empty
>
> Thank you.
> Regards, Manuel
>
> 
>
