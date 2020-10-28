Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web09.1300.1603843281347748891
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 17:01:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vnkbleg+;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id h140so3040383qke.7
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 17:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fj7Gjf128RcaRDQ0jYMhYVelwTw/GeoWgHExof3xmGo=;
        b=Vnkbleg+5HDE3b8hPf/BEVOyJMi6K7QsCcDaZhZCqBtE2h+RzQWHfX+Q1luW0gBE5D
         wV4kDfaqeK6f1jScw7DJlJatO4u5kKlR0MZy/iTOU4eGRXmaMw95F0kMx2FmbHEtqJs4
         xmv3phndcRwjllN2L0mcK7+3v1aPPPsPKlsiYDcjOrqR4GKxhZl2ybcvUL1DbroUek+y
         BrJzNR1dDWgvMkAfYByKunEg9WmNdGOmuhCQYTcNP6UjoxNDC4YKXJ8ONIQKsqnio77m
         0o3U0u4UtRgFc9r6bheY+90NZLuAqnusPpVZdfCv4GypDuHLoXkOWPiEMb1LSyirKB7Z
         WvKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fj7Gjf128RcaRDQ0jYMhYVelwTw/GeoWgHExof3xmGo=;
        b=Lr/0lC7vH9QNnUilT8VLGNhIKsNnMqFrgi2xsulfzrZ1Tz3BD+lof2Q/buKjt2x7VJ
         M33C8pa9Q0LIac1/JH4l/EPDSAZO9a5lLfV4H6EZmoHgnmo0yA0e/TJrKX3ulTmpN15J
         4/bKVWzNWcemh+edWZDlVl5JLhsBLPV63843OuEvy0v9Af7kiBFEcc3YZO569V+0/DT7
         vFn6K1kncDQq8LqwV+fggwTC6lB35iZPkdyBRQy5kbl/14xINTjrPKJZT+Qd420xiYZn
         vkzjAmnMi1CW43SS7sWNYnB0tiP8UD9r9bPjMHgIfqcGE+o75lypH7sbZ3e4GnjXVg9B
         iUUA==
X-Gm-Message-State: AOAM530DKSVpiU8fhJ8FAd6KU2IE9sDYkXpRJzq03IzBNJtpi/XpuDr8
	3S7uYvyBXIkTtrVe2No+wdoehFzQrD7kKvhD7fJysvtckq4=
X-Google-Smtp-Source: ABdhPJyiuMBMO4a+h1rYgCJAzJJ8FJ6jSVW4AUbvLXB2mIMr+gXVNKq45LxQh/Lj4JMHwGEEMBc8pgDrI/EdhKxpfKI=
X-Received: by 2002:a37:a751:: with SMTP id q78mr4812323qke.337.1603843280375;
 Tue, 27 Oct 2020 17:01:20 -0700 (PDT)
MIME-Version: 1.0
References: <cead7465-bedd-18cc-6fab-843e678a1171@gmail.com> <30641.1603843165906897743@lists.yoctoproject.org>
In-Reply-To: <30641.1603843165906897743@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 27 Oct 2020 17:00:54 -0700
Message-ID: <CAMKF1srEt6OAZWEsGQtgLg64S5irxn6u=sj5Q2qHLSEp0jV1NQ@mail.gmail.com>
Subject: Re: [yocto] grubenv not being generated
To: Howard <howard.egan@avid.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 27, 2020 at 4:59 PM Howard <howard.egan@avid.com> wrote:
>
> Thanks Khem:
>
> Not entirely certain what that means.   Apologies, I'm learning about 10 different things at the same time here.
>
> I probably should have also asked, should I expect grubenv to be present?
>

I meant follow the lead from one of the emails you pointed and in
addition add a dependency on grub-native so you get the tool you are
looking for during build.

>
>
> 
>
