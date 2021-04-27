Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.11354.1619543355057321029
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 10:09:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ossystems-com-br.20150623.gappssmtp.com header.s=20150623 header.b=A92KOCOn;
 spf=softfail (domain: ossystems.com.br, ip: 198.145.29.25, mailfrom: otavio.salvador@ossystems.com.br)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 489CA38C0738
	for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 17:09:14 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id dm16so4527813qvb.3
        for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 10:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
        h=from:mime-version:references:in-reply-to:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ooEpEwCZsA23m5QF3RdvHPVa+RYtbxKa7lMW7gKl/jg=;
        b=A92KOCOn9QgCWt4DDjZLHvuYRf5+j5LFrIrxB4QwV7hKFzpzK53/J7T38hdvANLcwJ
         Rhx0GS1QicOc3pfBfy8Umaic17+6bva7fCA7Z7EupBSBS7jbOGoOLCIdEeLMASiVA9Bn
         P6kOeHsJrE/XxzLgWshvDi4gJzLcesdzxRvGUOhWM2HeS8n6rXpq0X/THMZDJdjdQPkp
         BSmm17sxtr1/ctyyS5XU+CuSArSdgcU4L3hkGazVpHQ0y11oRAXfpSO2kq5JpMRvekPs
         m+kfeh6k6J9FSm05Y6J0+i3NNzNlHqrnW+Oi26xS3zL34E4UMWi7GE9aW1pWknNuIBxn
         TBXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:references:in-reply-to:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ooEpEwCZsA23m5QF3RdvHPVa+RYtbxKa7lMW7gKl/jg=;
        b=ETLsC8jbnN2mDh+0WY9D4KZO7ww8+0RQIrSM/VY9LlrfgSH38fNXR3xtxtXK5lH6ax
         5ZJY2g02UHf83zd91oShW175Q3UqdsttXOoQjBLCv4znuwFo6Stg1f71zvfP1rjbXs0s
         9+PFTSGV3WfRPwRkv7q/9mEThgesGORuu8xL2GQ4jurnWXSNoV/KPT1JgjnOWTj0hKZA
         KNnwOaz1dUHWGxx4pzGhvj2a4A+/GY25M7+28vrYqb3aK2+Dn1VpfRBE7HLxM1/Ao10c
         eC8/pFWauMOV2nNqsP9OKHLNm+gMK4xMeAyIpDP7U/cfB4mYUJDN30+XhONh+MjQek4l
         Sevg==
X-Gm-Message-State: AOAM531BxZaN8FreBDMUxpsNGTOWfaKe7J+NKQXLqdnyfnU6s2uiVCSh
	3KDW688aNtVR8VfnznrOw/flbNH+21deyHaa
X-Google-Smtp-Source: ABdhPJxDzv73sZ0COj7PsVkHOgWqKI622ktq0U4kABFfRIdEVTjzwUTnvt6EF9EfV+PD8pVGGnYGGg==
X-Received: by 2002:ad4:59c7:: with SMTP id el7mr17439713qvb.26.1619543352958;
        Tue, 27 Apr 2021 10:09:12 -0700 (PDT)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com. [209.85.222.179])
        by smtp.gmail.com with ESMTPSA id a10sm322194qtm.16.2021.04.27.10.09.12
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:09:12 -0700 (PDT)
From: "Otavio Salvador" <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qk1-f179.google.com with SMTP id q127so1534045qkb.1
        for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 10:09:12 -0700 (PDT)
X-Received: by 2002:a37:7646:: with SMTP id r67mr23707786qkc.78.1619543352200;
 Tue, 27 Apr 2021 10:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210423180254.706537-1-alex.kanavin@gmail.com>
 <20210423180254.706537-6-alex.kanavin@gmail.com> <8295040a-2b00-92f2-7ad5-95e2941f0dd6@windriver.com>
In-Reply-To: <8295040a-2b00-92f2-7ad5-95e2941f0dd6@windriver.com>
Date: Tue, 27 Apr 2021 14:09:00 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqCevEQXOLn4xW0vQkrUOP3xgnQBLiRoG3d9rz3tY6znQ@mail.gmail.com>
Message-ID: <CAP9ODKqCevEQXOLn4xW0vQkrUOP3xgnQBLiRoG3d9rz3tY6znQ@mail.gmail.com>
Subject: Re: [OE-core] [PATCH 6/7] default-distrovars.inc: add wayland/opengl to default distro features
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	"Wei, Yunguo (Bryan)" <Yunguo.Wei@windriver.com>, Kevin Hao <kexin.hao@windriver.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Em ter., 27 de abr. de 2021 =C3=A0s 13:10, Randy MacLeod
<randy.macleod@windriver.com> escreveu:
>
> Cross-posting to yocto since this is of general interest.
>
> On 2021-04-23 2:02 p.m., Alexander Kanavin wrote:
> > This puts them on equal terms with x11 distro feature
> > (which I think is due).
> >
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >   meta/conf/distro/include/default-distrovars.inc | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta/conf/distro/include/default-distrovars.inc b/meta/con=
f/distro/include/default-distrovars.inc
> > index 9fcc10f83a..384ee7fc98 100644
> > --- a/meta/conf/distro/include/default-distrovars.inc
> > +++ b/meta/conf/distro/include/default-distrovars.inc
> > @@ -10,7 +10,7 @@ LOCALE_UTF8_ONLY ?=3D "0"
> >   LOCALE_UTF8_IS_DEFAULT ?=3D "1"
> >   LOCALE_UTF8_IS_DEFAULT_class-nativesdk =3D "0"
> >
> > -DISTRO_FEATURES_DEFAULT ?=3D "acl alsa argp bluetooth debuginfod ext2 =
ipv4 ipv6 largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g=
 nfc x11 vfat"
> > +DISTRO_FEATURES_DEFAULT ?=3D "acl alsa argp bluetooth debuginfod ext2 =
ipv4 ipv6 largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g=
 nfc x11 vfat wayland opengl"
> >   DISTRO_FEATURES ?=3D "${DISTRO_FEATURES_DEFAULT}"
> >   IMAGE_FEATURES ?=3D ""
> >
> >
>
> We (Wind River) already drop the x11 DF from some of our distros and
> we'd likely do the same for wayland and opengl so while this seems
> like the wrong change for headless systems it is one we could deal with.

Adding wayland seems Ok but forcing the opengl support doesn't seems a
good default. Especially because we just also ensure software
rendering is also wrong (slow or not).

--=20
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750
