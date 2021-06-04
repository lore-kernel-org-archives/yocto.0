Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web12.8008.1622811843867723568
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 06:04:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CRqmCxvE;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id w21so10958490edv.3
        for <yocto@lists.yoctoproject.org>; Fri, 04 Jun 2021 06:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BuXJdliogHWisNhwiqS83japuYLTH+ou+2wDLzwa3Dg=;
        b=CRqmCxvEohxPnYrAeZq0bIprcqOGGdZcdJdjgN9iSNzJS6PQig8NLc4zF/BB3ArBGd
         bSQivmSTqI6Q9JEipKR5tX2U8iuaU0Obd0FUthScvvgxnnbfqC2pCIiDen+Wd/x1DVuc
         +dzV5gDy9FHzBFv6KvbQ5t3wtgb6IV8feIZSX1DfNsd+A1j2fMNefeOhlYXS8ZKvn91n
         oc3MfBREl42Vc27tAekPfhoyXr6UQkYcKprPr1FbXbxMJAioSVH0CTW8zuV8Z9dqugUa
         542CJ6YWZc3B/Ye1A3BZYW+LbcP0riIZ6Hbx8/XHuGfMIeHuBIlM0LFqTD/ZpE9Q7WCv
         Ncyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BuXJdliogHWisNhwiqS83japuYLTH+ou+2wDLzwa3Dg=;
        b=lxM6pqCpfWYJm2bGK4NDOCJhxiljculHIT6L7zLaUE8oelhE/Md2jmVyqwHvdLTi5r
         YlfmJtxbXoYQLg7oWFfsDxMix/QhZtA6cDr8b3U8W/1Sy69iqQfivzpO5VCeUUl6++ZO
         3wUqTrifYCRRiD188EiWiwPJeyqvMyyqWOHJ0E4jqdlkIH87n0hKVSOOOtRlMIw+V5XA
         bn9FpUyvLVVZNLfltYyY7icA3Q7YMX7z9QunQw4mz2kGXSrF/XIokP7gnnb6PzGyNFih
         bpm2dI6gvZdTfAhKMDOC4EExISmFVKcYlKfuLzMHqTOzjVe9qeksDI3Tp+2Y1KmkTnuL
         d+7A==
X-Gm-Message-State: AOAM531bqG5OW8XZBVxFRvG47E2DARwDsZF7ViZ6fir7pKrNBNv7krZm
	Kx+D/fUCiBX2fRKh0J2Op0u4fpPs0+cGoKY/Anc=
X-Google-Smtp-Source: ABdhPJw4m6sekh2QoJ6kOrGzm/x5lqyRh73x/rTZno+o0Ea3D0c/xSWCfsNMe8GJzudxbRXc8l3ZA7aWHZ0tzBykAD8=
X-Received: by 2002:a05:6402:35d4:: with SMTP id z20mr4528089edc.164.1622811842151;
 Fri, 04 Jun 2021 06:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <td3c.1622797217734922140.8fqZ@lists.yoctoproject.org>
In-Reply-To: <td3c.1622797217734922140.8fqZ@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 4 Jun 2021 09:03:51 -0400
Message-ID: <CADkTA4NEZ0h7rEiSw4Q0CwLbReoSNkZAuyS=NO0LN-GPf1dKGA@mail.gmail.com>
Subject: Re: [yocto] Can the Linux kernel reuse the barebox device tree? #kernel
To: florian.kauer@koalo.de
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 4, 2021 at 5:00 AM <florian.kauer@koalo.de> wrote:
>
> Hi,
> I made the following observation in my custom Yocto system:
> The device tree loaded by the Linux kernel is one that is only available=
 in the barebox directory, but not available in the kernel sources. In fact=
, it is quite similar, but I made some changes to it in the device tree pro=
vided to the kernel. Especially the machine model that is shown during kern=
el boot is a string that can only be found in the compiled barebox image, b=
ut not in the dtb files (where I can find the correct machine model string)=
 or anywhere else in the compilation results. But also other messages indic=
ate that the wrong device tree is loaded.
>
> It was correct before, and I am not really sure what triggered that (jus=
t upgraded from zeus, but it might or might not be triggered by that) and I=
 wouldn't expect that anyone could guess what I have done wrong without deb=
ugging my setup in depth. But, my general question is: Is there any mechani=
sm that could explain such a behavior? Any configuration that means "extrac=
t the device tree from the bootloader" or something similar?
>

In your upgrade, did the bootloader/initramfs/kernel version change ?
The passing of the device tree to the kernel is (commonly) part of the
bootflow, so changes to any of the components in that flow could cause
the different device tree usage you are seeing.

The bbclass and recipes involved wouldn't have been packaging up the
barebox tree and pulling it into the kernel in zeus, so while it isn't
impossible, it isn't likely to be in the build or packaging changes.

Bruce

> Greetings,
> Florian
>=20
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
