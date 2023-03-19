Return-Path: <tsu.yubo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30523C7618A
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 14:50:52 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.18160.1679237448492426404
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Mar 2023 07:50:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PRFwTBD7;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: tsu.yubo@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id ja10so9973700plb.5
        for <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 07:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679237448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jA951yQNQkgGtOWoIfQwarchcqA1FTJZkGrwLClqoPI=;
        b=PRFwTBD7ySZYwl0QodRerhzQIQFUgsurRsoP9I/KhOCqDSbrBH8SDn+RpZjQWjWWGd
         UYcg3mRYpNnFMe6JFTXfvDZ9gE0/lbAx8rpLUmDBRgr1Iy4l+7CdH5pCpAshLDzCRT9F
         eOx0TgZGI2jTbQ3uM6tMWI38VjQ9MdZ8uol86Am68N7D2I5Vd9vsiM/sc+RbK7k5rM4D
         A48f7hdd+YAoQsJqxKu5woRAeNWQGJS4JtfpZYfH4s8/hC0hLvsvBUOfM74zROPrH+dg
         fyUOdX011XauCwX6gHRr/hEVU+S7lzqhQ5aB2nKfXI3bBoTiQ9tnTS6hsX99fzNm6pIz
         Vmrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679237448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jA951yQNQkgGtOWoIfQwarchcqA1FTJZkGrwLClqoPI=;
        b=NpE3bA71Tt4m++hy1aR7sw64sbr50H5aUyuKR9Jtk7Cav3M+qHJgDf8muxGDzyhUoH
         Gg/9u0/SoIXNMEv+eBfFHcghH8hx771+r64Wd7JCpPW1GQwQvdb1LPKCDN1h/gyUvWWW
         pzV2nwd6CFciLhD6Q12TI48iGVCF5VyP7sRNpeaQdCdSLmdd2yaAvwOlnKZjF2g6aTBS
         8VSfxLYo8ZJpYmEZblCxpvFmK6xbgXTC/NEWH/mBw7qnaGjpcwxBszehXxOg3N+Gf5xH
         CJ2En5KXRKvUrKG0P2Sj6fS9JLxRR3WQIlJnLNtlGil4+eEfvxC2yAhSXOOv0UQ1AAMO
         zjiQ==
X-Gm-Message-State: AO0yUKWhdOlUmazFa6jqqL1PPoF5AJenRV07CTOt5nDuHu6a4HX6dZpZ
	164oO2Z63Lf+nuPKMLXK1N4=
X-Google-Smtp-Source: AK7set/QaFmCuhbKXdEqeqTQl2xGibWwx/D+rBNjHo6SLu3e+PEFrhstF58AmYRCfNyhufljLPhsGA==
X-Received: by 2002:a17:90b:1d04:b0:23d:1bf6:5c74 with SMTP id on4-20020a17090b1d0400b0023d1bf65c74mr15345879pjb.41.1679237447877;
        Sun, 19 Mar 2023 07:50:47 -0700 (PDT)
Received: from debian ([47.242.94.15])
        by smtp.gmail.com with ESMTPSA id w3-20020a170902d70300b0019f0e766809sm4836860ply.306.2023.03.19.07.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 07:50:47 -0700 (PDT)
Date: Sun, 19 Mar 2023 22:50:45 +0800
From: Bo YU <tsu.yubo@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to use mirror to download linux-yocto?
Message-ID: <20230319145045.4ygasd2jggop2ljo@debian>
X-PGP-Key: https://github.com/yuzibo/yuzibo.github.io/blob/master/_includes/subkey-signing-06-18-143E4BAF-pub.asc
References: <CAKq8=3LHPJgXuUvXuStP9J2Esyg6b9ODkj9dt5SBYVNJf2XunA@mail.gmail.com>
 <CANNYZj_AAgMq85wwv_fwrryZESPPep=+KnRB5RJ6SJCMtTw7UA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zpbpqhk3wir5dwtq"
Content-Disposition: inline
In-Reply-To: <CANNYZj_AAgMq85wwv_fwrryZESPPep=+KnRB5RJ6SJCMtTw7UA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 14:50:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59468


--zpbpqhk3wir5dwtq
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,
On Sat, Mar 18, 2023 at 09:29:34AM +0000, Alexander Kanavin wrote:
>   When the slow download is happening, can you please check (e.g. from a
>   process listing), which server specifically is being accessed and with
>   which command? Just to be sure where the problem is.

Thanks for tips. I downloaded linux-yocto about 3 days but failed and
one night to download it after just sent the mail.

I suspected the accessing to git://git.yoctoproject.org/linux-yocto.git=20
is very slow under my network. So I think there is one way to replace=20

```
SRC_URI =3D
"git://git.yoctoproject.org/linux-yocto.git;name=3Dmachine;branch=3D${KBRAN=
CH};
\
git://git.yoctoproject.org/yocto-kernel-cache;type=3Dkmeta;name=3Dmeta;bran=
ch=3Dyocto-6.1;destsuffix=3D${KMETA}"
```

Or use another bb file to download linux-yocto kernel with mirror I
mentioned. But I am fail to try this.

Anway, Thank you very much!

>

--=20
Regards,
--
   Bo YU


--zpbpqhk3wir5dwtq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEIcmhjYVTlmab0tjp+RVP3hQ+S68FAmQXIT4ACgkQ+RVP3hQ+
S6+YSQ/+O3m3Gdd75EP5VBpXUr6WQhqjDp7GTLTvyAkWvGgt3vdHxvZbgf2bJ46U
uXA5S26R0qUURTd3VhDhzVjI86tbEAk9Q3zYHpoPxDMybZp55EgsM2h29uT+zjfa
QDoDn4lCDLyFzFT3Od2x67S21Hns+Nmtu4SBPsbPi/MDjaV0iUUjpy11LgDQ0Rwc
9Fe+KoE4H+97l/MIbox47IiVUsLYL9zBxkoV8K5s1LKR1sqMX954dVXxRIs0YPYW
kwG5OT6npvxUYTnH5QNS90U9tzKwMH8BxP8+5xzR0eanbDHzjYLEcRdG+8iLtNbJ
HAExXT0VukTGd+BdlABP0qZKB2ffNWdG+/XZSu0Ph1gB+allcWTSQMC2tpZwvyK9
NbwLTipioi6MNNl3J81q+cwWcboLG6H1zupGktwxwGnVq2tzJpq+Dz3jOT/Zkc9l
tHzmnWr/HVC7Ygk6sqmzYPGt2m4WrjicpkVp+YBaGMGHPxueryAAFEb2uE/YBIKI
4H5WMG5s5T5Cr6FEX+zFQOPGnMECXlpmM3u25piWwqnT1glMAilp4bZ6smtLRamK
dRSiJcG6DXQLWLK7jgaa+93HY5AUsQubWK7G2LlAhJ+jJVoQ13McwPa5Hx6wYdFs
wm+dA5pk0AP+cfid6Zu9hyq3tdRazYGOIUF4ZSKt1Ar3n7OIrOE=
=Kp5x
-----END PGP SIGNATURE-----

--zpbpqhk3wir5dwtq--

